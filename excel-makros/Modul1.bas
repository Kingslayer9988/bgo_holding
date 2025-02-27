Sub FixContainerColoringAndPercentages()
    Dim ws As Worksheet
    Dim topRange As Range, lastRows As Range
    Dim topCell As Range, lastCell As Range
    Dim containerMap As Object
    Dim colorMap As Object
    Dim containerCount As Object
    Dim dateMap As Object
    Dim timeMap As Object
    Dim topColumns As Variant, lastColumns As Variant
    Dim i As Integer, j As Integer
    Dim topValue As String, lastValue As String
    Dim colorCode As Long
    Dim occurrences As Integer
    Dim cellDate As String, cellTime As Double
    Dim timeArray() As Double, sortedCells() As Range

    Set ws = ThisWorkbook.Sheets("Tourenplan Dispo")
    Set containerMap = CreateObject("Scripting.Dictionary")
    Set colorMap = CreateObject("Scripting.Dictionary")
    Set containerCount = CreateObject("Scripting.Dictionary")
    Set dateMap = CreateObject("Scripting.Dictionary")

    ' Touren Felder (Top Section)
    topColumns = Array(4, 7, 10, 13, 16, 19) ' D, G, J, M, P, S
    ' WAB Felder (Bottom Section)
    lastColumns = Array(2, 5, 8, 11, 14, 17) ' B, E, H, K, N, Q

    ' **STEP 1: Count occurrences and store date & time**
    For i = LBound(topColumns) To UBound(topColumns)
        Set topRange = ws.Range(ws.Cells(2, topColumns(i)), ws.Cells(23, topColumns(i)))

        For Each topCell In topRange
            topValue = CleanNumber(topCell.value)
            If topValue <> "" Then
                ' Extract Date from Row 2
                cellDate = ws.Cells(2, topColumns(i)).value
                ' Extract Time from row below container number
                cellTime = ws.Cells(topCell.Row + 1, topColumns(i)).value

                ' Store count of containers
                If containerCount.exists(topValue) Then
                    containerCount(topValue) = containerCount(topValue) + 1
                Else
                    containerCount.Add topValue, 1
                End If

                ' Store date/time for sorting
                If Not dateMap.exists(topValue) Then Set dateMap(topValue) = CreateObject("Scripting.Dictionary")
                If Not dateMap(topValue).exists(cellDate) Then Set dateMap(topValue)(cellDate) = CreateObject("Scripting.Dictionary")
                dateMap(topValue)(cellDate).Add cellTime, topCell
            End If
        Next topCell
    Next i

    ' **STEP 2: Assign Colors for WAB Fields**
    For i = LBound(topColumns) To UBound(topColumns)
        Set lastRows = ws.Range(ws.Cells(35, lastColumns(i)), ws.Cells(38, lastColumns(i)))

        For Each lastCell In lastRows
            lastValue = CleanNumber(lastCell.value)
            If lastValue <> "" Then
                ' Assign color if not already assigned
                If Not colorMap.exists(lastValue) Then
                    If containerCount.exists(lastValue) Then
                        Randomize lastValue
                        colorCode = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
                        colorMap.Add lastValue, colorCode
                    End If
                End If
                colorCode = colorMap(lastValue)

                ' Apply color
                lastCell.Interior.Color = colorCode
                lastCell.Offset(0, 1).Interior.Color = colorCode
                lastCell.Offset(1, 0).Interior.Color = colorCode
                lastCell.Offset(1, 1).Interior.Color = colorCode
            End If
        Next lastCell
    Next i

    ' **STEP 3: Assign percentages & sort time for fraction calculation**
    For Each topValue In containerCount.keys
        If dateMap.exists(topValue) Then
            For Each cellDate In dateMap(topValue).keys
                Set timeMap = dateMap(topValue)(cellDate)

                ' Sort times
                ReDim timeArray(timeMap.Count - 1)
                ReDim sortedCells(timeMap.Count - 1)

                j = 0
                For Each cellTime In timeMap.keys
                    timeArray(j) = cellTime
                    Set sortedCells(j) = timeMap(cellTime)
                    j = j + 1
                Next cellTime

                ' Bubble sort by time
                Dim k As Integer, tempTime As Double, tempCell As Range
                For j = LBound(timeArray) To UBound(timeArray) - 1
                    For k = j + 1 To UBound(timeArray)
                        If timeArray(j) > timeArray(k) Then
                            tempTime = timeArray(j)
                            timeArray(j) = timeArray(k)
                            timeArray(k) = tempTime

                            Set tempCell = sortedCells(j)
                            Set sortedCells(j) = sortedCells(k)
                            Set sortedCells(k) = tempCell
                        End If
                    Next k
                Next j

                ' Assign fractions (1/total, 2/total, etc.)
                For j = LBound(sortedCells) To UBound(sortedCells)
                    sortedCells(j).Offset(0, -1).value = (j + 1) & "/" & timeMap.Count
                Next j
            Next cellDate
        End If
    Next topValue

    ' Cleanup
    Set containerMap = Nothing
    Set colorMap = Nothing
    Set containerCount = Nothing
    Set dateMap = Nothing
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
