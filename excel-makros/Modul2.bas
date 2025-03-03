Sub FixContainerColoringAndPercentagesNew()
    Dim ws As Worksheet
    Dim topRange As Range, lastRows As Range
    Dim topCell As Range, lastCell As Range
    Dim containerMap As Object
    Dim colorMap As Object
    Dim containerCount As Object
    Dim containerCells As Object
    Dim i As Integer, j As Integer, k As Integer
    Dim topValue As Variant, lastValue As String
    Dim colorCode As Long
    Dim cellDate As Variant, cellTime As Variant
    Dim sortedKeys() As String, temp As Variant
    Dim Key As Variant
    Dim fractionCell As Range
    Dim row As Long, col As Long
    Dim textColor As Long ' Added for contrasting text color

    Set ws = ThisWorkbook.Sheets("Tourenplan Dispo")
    Set containerMap = CreateObject("Scripting.Dictionary")
    Set colorMap = CreateObject("Scripting.Dictionary")
    Set containerCount = CreateObject("Scripting.Dictionary")
    Set containerCells = CreateObject("Scripting.Dictionary")

    ' Touren Felder (Top Section)
    Dim topColumns As Variant
    topColumns = Array(4, 7, 10, 13, 16, 19) ' D, G, J, M, P, S
    
    Dim dateColumns As Variant
    dateColumns = Array(2, 5, 8, 11, 14, 17) ' B, E, H, K, N, Q
    
    ' WAB Felder (Bottom Section)
    Dim lastColumns As Variant
    lastColumns = Array(2, 5, 8, 11, 14, 17) ' B, E, H, K, N, Q
    
    ' STEP 1: First collect all container cells and assign colors
    For i = LBound(topColumns) To UBound(topColumns)
        Set topRange = ws.Range(ws.Cells(3, topColumns(i)), ws.Cells(23, topColumns(i)))
        
        For Each topCell In topRange
            topValue = CleanNumber(topCell.value)
            If topValue <> "" Then
                ' Extract Date from Row 2
                cellDate = ws.Cells(2, dateColumns(i)).value
                
                ' IMPORTANT FIX: Extract Time from row DIRECTLY below container number
                ' This is the critical fix needed
                cellTime = ws.Cells(topCell.row + 1, topCell.Column).value
                
                ' Create a sort key for this container occurrence
                Dim sortKey As String
                If IsDate(cellDate) Then
                    sortKey = Format(cellDate, "yyyy-mm-dd")
                Else
                    sortKey = "1900-01-01"
                End If
                
                ' FIX: Handle time values correctly for sorting
                ' Convert any time format to a standardized string for sorting
                If Not IsEmpty(cellTime) Then
                    ' For numeric time formats (e.g., 8.5 representing 8:30)
                    If IsNumeric(cellTime) Then
                        sortKey = sortKey & " " & Format(cellTime, "hh:mm:ss")
                    ' For time strings like "08:00" or "0800"
                    ElseIf VarType(cellTime) = vbString Then
                        If Len(cellTime) = 4 And IsNumeric(cellTime) Then
                            ' Handle "0800" format
                            sortKey = sortKey & " " & Left(cellTime, 2) & ":" & Right(cellTime, 2) & ":00"
                        ElseIf InStr(cellTime, ":") > 0 Then
                            ' Handle "08:00" format
                            sortKey = sortKey & " " & cellTime & ":00"
                        Else
                            sortKey = sortKey & " 99:99:99" ' Invalid time format
                        End If
                    Else
                        sortKey = sortKey & " 99:99:99" ' Unknown time format
                    End If
                Else
                    sortKey = sortKey & " 99:99:99" ' No time value
                End If
                
                ' Ensure uniqueness by adding cell address at the end
                sortKey = sortKey & "_" & topCell.Address
                
                ' Debug the sort key being created
                ' ws.Cells(topCell.row, 20).value = sortKey ' Uncomment to see sort keys
                
                ' Store container cell with sort key
                If Not containerCells.Exists(topValue) Then
                    Set containerCells(topValue) = CreateObject("Scripting.Dictionary")
                End If
                
                ' Use the sortKey as dictionary key to enable proper sorting
                containerCells(topValue).Add sortKey, topCell
                
                ' Count containers
                If containerCount.Exists(topValue) Then
                    containerCount(topValue) = containerCount(topValue) + 1
                Else
                    containerCount.Add topValue, 1
                End If
                
                ' Assign color if not already assigned
                If Not colorMap.Exists(topValue) Then
                    Randomize topValue
                    colorCode = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
                    colorMap.Add topValue, colorCode
                End If
                colorCode = colorMap(topValue)
                
                ' Get contrasting text color (black or white)
                textColor = GetContrastingTextColor(colorCode)
                
                ' Apply color to top section
                topCell.Interior.Color = colorCode
                topCell.Font.Color = textColor
                
                ' Also color time cell below
                topCell.Offset(0, 0).Interior.Color = colorCode
                topCell.Offset(0, 0).Font.Color = textColor
            End If
        Next topCell
    Next i
    
    ' STEP 2: Assign Colors for WAB Fields
    For i = LBound(topColumns) To UBound(topColumns)
        Set lastRows = ws.Range(ws.Cells(35, lastColumns(i)), ws.Cells(38, lastColumns(i)))
        
        For Each lastCell In lastRows
            lastValue = CleanNumber(lastCell.value)
            If lastValue <> "" Then
                ' Assign color if not already assigned
                If Not colorMap.Exists(lastValue) Then
                    If containerCount.Exists(lastValue) Then
                        Randomize lastValue
                        colorCode = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
                        colorMap.Add lastValue, colorCode
                    End If
                End If
                colorCode = colorMap(lastValue)
                
                ' Get contrasting text color (black or white)
                textColor = GetContrastingTextColor(colorCode)
                
                ' Apply color and text color to cells
                lastCell.Interior.Color = colorCode
                lastCell.Font.Color = textColor
                
                lastCell.Offset(0, 1).Interior.Color = colorCode
                lastCell.Offset(0, 1).Font.Color = textColor
                
                lastCell.Offset(1, 0).Interior.Color = colorCode
                lastCell.Offset(1, 0).Font.Color = textColor
                
                lastCell.Offset(1, 1).Interior.Color = colorCode
                lastCell.Offset(1, 1).Font.Color = textColor
                
                lastCell.Offset(0, 2).Interior.Color = colorCode
                lastCell.Offset(0, 2).Font.Color = textColor
                
                lastCell.Offset(1, 2).Interior.Color = colorCode
                lastCell.Offset(1, 2).Font.Color = textColor
            End If
        Next lastCell
    Next i
    
    ' STEP 3: Assign fractions globally for each container
    For Each topValue In containerCells.Keys
        If containerCells(topValue).count > 0 Then
            ' Get all sort keys for this container
            ReDim sortedKeys(containerCells(topValue).count - 1)
            j = 0
            For Each Key In containerCells(topValue).Keys
                sortedKeys(j) = Key
                j = j + 1
            Next Key
            
            ' Sort the keys to ensure correct order by date + time
            For j = LBound(sortedKeys) To UBound(sortedKeys) - 1
                For k = j + 1 To UBound(sortedKeys)
                    If sortedKeys(j) > sortedKeys(k) Then
                        temp = sortedKeys(j)
                        sortedKeys(j) = sortedKeys(k)
                        sortedKeys(k) = temp
                    End If
                Next k
            Next j
            
            ' Optional debug - show sorted keys for verification
            ' For j = LBound(sortedKeys) To UBound(sortedKeys)
            '    Debug.Print j & ": " & sortedKeys(j)
            ' Next j
            
            ' Assign fractions in order
            For j = LBound(sortedKeys) To UBound(sortedKeys)
                ' Get the container cell
                Set topCell = containerCells(topValue)(sortedKeys(j))
                
                ' CRITICAL: Get EXACT column and row for the fraction cell
                col = topCell.Column - 1
                row = topCell.row
                
                ' Now use direct cell reference - avoid using Offset which might introduce errors
                ws.Cells(row, col).NumberFormat = "@"
                ws.Cells(row, col).value = (j + 1) & "/" & containerCells(topValue).count
            Next j
        End If
    Next topValue
    
    ' VERIFICATION STEP: Double-check no values in cells below fractions
    ' This is a safeguard to ensure no values appear where they shouldn't
    For i = LBound(topColumns) To UBound(topColumns)
        Set topRange = ws.Range(ws.Cells(3, topColumns(i)), ws.Cells(23, topColumns(i)))
        
        For Each topCell In topRange
            If topCell.value <> "" Then
                ' Check the cell below the fraction
                On Error Resume Next
                ws.Cells(topCell.row + 1, topCell.Column - 1).value = ""
                On Error GoTo 0
            End If
        Next topCell
    Next i
    
    ' Cleanup
    Set containerMap = Nothing
    Set colorMap = Nothing
    Set containerCount = Nothing
    Set containerCells = Nothing
End Sub

' Function to clean numbers (removes text)
Function CleanNumber(value As String) As String
    Dim cleanedValue As String
    Dim i As Integer
    cleanedValue = ""
    
    For i = 1 To Len(value)
        If Mid(value, i, 1) Like "#" Then
            cleanedValue = cleanedValue & Mid(value, i, 1)
        End If
    Next i
    
    CleanNumber = Trim(cleanedValue)
End Function

' Function to determine if a color is light or dark and return a contrasting color
Function GetContrastingTextColor(ByVal backgroundColor As Long) As Long
    ' Extract RGB components
    Dim r As Integer, g As Integer, b As Integer
    r = backgroundColor Mod 256
    g = (backgroundColor \ 256) Mod 256
    b = (backgroundColor \ 65536) Mod 256
    
    ' Calculate luminance (perceived brightness)
    ' Using the formula: 0.299*R + 0.587*G + 0.114*B
    Dim luminance As Double
    luminance = (0.299 * r + 0.587 * g + 0.114 * b) / 255
    
    ' If color is dark (luminance < 0.5), return white, else return black
    If luminance < 0.5 Then
        GetContrastingTextColor = RGB(255, 255, 255) ' White
    Else
        GetContrastingTextColor = RGB(0, 0, 0) ' Black
    End If
End Function
