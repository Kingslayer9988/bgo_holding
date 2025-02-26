Attribute VB_Name = "Modul1"
Sub FixContainerColoringAndPercentages()
    Dim ws As Worksheet
    Dim topRange As Range, lastRows As Range
    Dim topCell As Range, lastCell As Range
    Dim containerMap As Object
    Dim colorMap As Object
    Dim containerCount As Object
    Dim topColumns As Variant, lastColumns As Variant
    Dim i As Integer
    Dim topValue As String, lastValue As String
    Dim colorCode As Long
    Dim occurrences As Integer
    
    Set ws = ThisWorkbook.Sheets("Tourenplan Dispo")
    Set containerMap = CreateObject("Scripting.Dictionary")
    Set colorMap = CreateObject("Scripting.Dictionary")
    Set containerCount = CreateObject("Scripting.Dictionary")
    
    ' Touren Felder
    topColumns = Array(4, 7, 10, 13, 16, 19) ' D, G, J, M, P, S
    ' WAB Felder
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
        Set topRange = ws.Range(ws.Cells(3, topColumns(i)), ws.Cells(23, topColumns(i)))
        Set lastRows = ws.Range(ws.Cells(35, lastColumns(i)), ws.Cells(38, lastColumns(i)))

        For Each lastCell In lastRows
            lastValue = CleanNumber(lastCell.value)
            
            If lastValue <> "" Then
                ' Assign unique color per container
                If Not colorMap.exists(lastValue) Then
                    colorCode = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
                    colorMap.Add lastValue, colorCode
                Else
                    colorCode = colorMap(lastValue)
                End If
                
                ' **Apply color to the correct lower fields**
                lastCell.Interior.Color = colorCode ' Container Number
                lastCell.Offset(0, 1).Interior.Color = colorCode ' LE Field
                lastCell.Offset(1, 0).Interior.Color = colorCode ' Empty Field
                lastCell.Offset(1, 1).Interior.Color = colorCode ' Weight Field
                
                ' **STEP 3: Update upper section based on the container matches**
                For Each topCell In topRange
                    topValue = CleanNumber(topCell.value)
                    
                    If lastValue = topValue Then
                        ' Apply color to the container cell
                        topCell.Interior.Color = colorCode
                        ' Place percentage in the yellow field LEFT of the container number
                        If containerCount.exists(lastValue) And containerCount(lastValue) > 0 Then
                            topCell.Offset(0, -1).value = Round(100 / containerCount(lastValue), 0) & "%"
                        End If
                    End If
                Next topCell
            End If
        Next lastCell
    Next i
    
    ' Cleanup
    Set containerMap = Nothing
    Set colorMap = Nothing
    Set containerCount = Nothing
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
