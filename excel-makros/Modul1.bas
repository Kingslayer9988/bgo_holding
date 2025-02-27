Sub FixContainerColoringAndPercentages()
    Dim ws As Worksheet
    Dim topRange As Range, lastRows As Range
    Dim topCell As Range, lastCell As Range
    Dim containerMap As Object
    Dim colorMap As Object
    Dim containerCount As Object
    Dim containerSequence As Object
    Dim topColumns As Variant, lastColumns As Variant
    Dim i As Integer, count As Integer
    Dim topValue As String, lastValue As String
    Dim colorCode As Long
    Dim dateDict As Object
    Dim timeDict As Object
    Dim cellDate As String, cellTime As Double

    Set ws = ThisWorkbook.Sheets("Tourenplan Dispo")
    Set containerMap = CreateObject("Scripting.Dictionary")
    Set colorMap = CreateObject("Scripting.Dictionary")
    Set containerCount = CreateObject("Scripting.Dictionary")
    Set containerSequence = CreateObject("Scripting.Dictionary")

    ' Touren Felder (Top Section)
    topColumns = Array(4, 7, 10, 13, 16, 19) ' D, G, J, M, P, S
    ' WAB Felder (Bottom Section)
    lastColumns = Array(2, 5, 8, 11, 14, 17) ' B, E, H, K, N, Q

    ' **STEP 1: Count occurrences of each WAB-Container in the upper section**
    For i = LBound(topColumns) To UBound(topColumns)
        Set topRange = ws.Range(ws.Cells(3, topColumns(i)), ws.Cells(23, topColumns(i)))

        For Each topCell In topRange
            topValue = CleanNumber(topCell.value)
            If topValue <> "" Then
                If containerCount.exists(topValue) Then
                    containerCount(topValue) = containerCount(topValue) + 1
                Else
                    containerCount.Add topValue, 1
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
                ' Assign unique color per container (only once)
                If Not colorMap.exists(lastValue) Then
                    If containerCount.exists(lastValue) Then
                        ' Generate the same color for all occurrences of the same container
                        Randomize lastValue ' Ensures same color for same container
                        colorCode = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
                        colorMap.Add lastValue, colorCode
                    End If
                End If
                colorCode = colorMap(lastValue)
                
                ' **Apply color to the correct lower fields**
                lastCell.Interior.Color = colorCode ' Container Number
                lastCell.Offset(0, 1).Interior.Color = colorCode ' LE Field
                lastCell.Offset(1, 0).Interior.Color = colorCode ' Empty Field
                lastCell.Offset(1, 1).Interior.Color = colorCode ' Weight Field
            End If
        Next lastCell
    Next i

    ' **STEP 3: Determine Sequence Order per Container**
    For Each topValue In containerCount.keys
        Set dateDict = CreateObject("Scripting.Dictionary")

        ' Scan through all upper section cells
        For i = LBound(topColumns) To UBound(topColumns)
            Set topRange = ws.Range(ws.Cells(3, topColumns(i)), ws.Cells(23, topColumns(i)))

            For Each topCell In topRange
                If CleanNumber(topCell.value) = topValue Then
                    ' Determine Date (from Row 2)
                    cellDate = ws.Cells(2, topColumns(i) - 1).value
                    
                    ' Determine Time (Row below container number)
                    cellTime = ws.Cells(topCell.Row + 1, topColumns(i)).value

                    ' Store time under the correct date key
                    If Not dateDict.exists(cellDate) Then
                        Set dateDict(cellDate) = CreateObject("Scripting.Dictionary")
                    End If
                    dateDict(cellDate).Add cellTime, topCell
                End If
            Next topCell
        Next i

        ' **Sort and Assign Fractions (1/3, 2/3, etc.)**
        For Each cellDate In dateDict.keys
            Set timeDict = dateDict(cellDate)

            ' Sort time values
            Dim timeArray() As Double, sortedCells() As Range
            ReDim timeArray(timeDict.Count - 1)
            ReDim sortedCells(timeDict.Count - 1)

            Dim j As Integer: j = 0
            Dim t As Variant
            For Each t In timeDict.keys
                timeArray(j) = t
                sortedCells(j) = timeDict(t)
                j = j + 1
            Next t

            ' Sort timeArray and sortedCells using Bubble Sort (smallest first)
            Dim k As Integer, tempTime As Double, tempCell As Range
            For j = LBound(timeArray) To UBound(timeArray) - 1
                For k = j + 1 To UBound(timeArray)
                    If timeArray(j) > timeArray(k) Then
                        ' Swap time values
                        tempTime = timeArray(j)
                        timeArray(j) = timeArray(k)
                        timeArray(k) = tempTime
                        
                        ' Swap corresponding cells
                        Set tempCell = sortedCells(j)
                        Set sortedCells(j) = sortedCells(k)
                        Set sortedCells(k) = tempCell
                    End If
                Next k
            Next j

            ' Assign fractions
            For j = LBound(sortedCells) To UBound(sortedCells)
                sortedCells(j).Offset(0, -1).value = (j + 1) & "/" & timeDict.Count
            Next j
        Next cellDate
    Next topValue

    ' Cleanup
    Set containerMap = Nothing
    Set colorMap = Nothing
    Set containerCount = Nothing
    Set containerSequence = Nothing
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
