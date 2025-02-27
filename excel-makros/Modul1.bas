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
    Dim i As Integer, j As Integer, k As Integer
    Dim topValue As Variant, lastValue As String
    Dim colorCode As Long
    Dim occurrences As Integer
    Dim cellDate As Variant, cellTime As Variant
    Dim timeArray() As Double, sortedCells() As Range
    Dim allDates As Object
    Dim sortedList() As Variant, temp As Variant

    Set ws = ThisWorkbook.Sheets("Tourenplan Dispo")
    Set containerMap = CreateObject("Scripting.Dictionary")
    Set colorMap = CreateObject("Scripting.Dictionary")
    Set containerCount = CreateObject("Scripting.Dictionary")
    Set dateMap = CreateObject("Scripting.Dictionary")

    ' Touren Felder (Top Section)
    topColumns = Array(4, 7, 10, 13, 16, 19) ' D, G, J, M, P, S
    topdateColumns = Array(3, 6, 9, 12, 15, 18) ' D, G, J, M, P, S
    ' WAB Felder (Bottom Section)
    lastColumns = Array(2, 5, 8, 11, 14, 17) ' B, E, H, K, N, Q

    ' **STEP 1: Count occurrences and store date & time**
    For i = LBound(topColumns) To UBound(topColumns)
        Set topRange = ws.Range(ws.Cells(3, topColumns(i)), ws.Cells(23, topColumns(i)))

        For Each topCell In topRange
            topValue = CleanNumber(topCell.value)
            If topValue <> "" Then
                ' Extract Date from Row 2
                cellDate = ws.Cells(2, topdateColumns(i)).value
                ' Extract Time from row below container number
                cellTime = ws.Cells(topCell.Row + 1, topColumns(i)).value

                ' Store count of containers
                If containerCount.exists(topValue) Then
                    containerCount(topValue) = containerCount(topValue) + 1
                Else
                    containerCount.Add topValue, 1
                End If

                ' Assign color if not already assigned
                If Not colorMap.exists(topValue) Then
                    If containerCount.exists(topValue) Then
                        Randomize topValue
                        colorCode = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
                        colorMap.Add topValue, colorCode
                    End If
                End If
                colorCode = colorMap(topValue)

                ' Apply color to top section
                topCell.Interior.Color = colorCode
                topCell.Offset(1, 0).Interior.Color = colorCode ' Also color time row

                ' Store date/time for sorting
                If Not dateMap.exists(topValue) Then
                    Set dateMap(topValue) = CreateObject("Scripting.Dictionary")
                End If
                If Not dateMap(topValue).exists(cellDate) Then
                    Set dateMap(topValue)(cellDate) = CreateObject("Scripting.Dictionary")
                End If
                ' **Fix: Only add unique time entries**
                If Not dateMap(topValue)(cellDate).exists(cellTime) Then
                    dateMap(topValue)(cellDate).Add cellTime, topCell
                End If
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
            Set allDates = CreateObject("Scripting.Dictionary")

            ' Collect all date-time pairs for the container
            For Each cellDate In dateMap(topValue).keys
                For Each cellTime In dateMap(topValue)(cellDate).keys
                    allDates.Add cellDate & "_" & cellTime, Array(cellDate, cellTime, dateMap(topValue)(cellDate)(cellTime))
                Next cellTime
            Next cellDate

            ' Sort all dates and times globally
            ReDim sortedList(allDates.count - 1)

            j = 0
            For Each Key In allDates.keys
                sortedList(j) = allDates(Key)
                j = j + 1
            Next Key

            ' Sort based on date & time
            For j = LBound(sortedList) To UBound(sortedList) - 1
                For k = j + 1 To UBound(sortedList)
                    If sortedList(j)(0) > sortedList(k)(0) Or (sortedList(j)(0) = sortedList(k)(0) And sortedList(j)(1) > sortedList(k)(1)) Then
                        temp = sortedList(j)
                        sortedList(j) = sortedList(k)
                        sortedList(k) = temp
                    End If
                Next k
            Next j

            ' Assign fractions based on global sorting
            For j = LBound(sortedList) To UBound(sortedList)
                sortedList(j)(2).Offset(0, -1).value = (j + 1) & "/" & allDates.count
            Next j
        End If
    Next topValue

    ' Cleanup
    Set containerMap = Nothing
    Set colorMap = Nothing
    Set containerCount = Nothing
    Set dateMap = Nothing
    Set allDates = Nothing
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
