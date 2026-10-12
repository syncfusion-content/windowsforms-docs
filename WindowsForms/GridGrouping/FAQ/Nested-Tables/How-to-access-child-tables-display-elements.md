---
layout: post
title: ChildTable Elements in WinForms GridGroupingControl | Syncfusion®
description: Access child table display elements in Syncfusion® WinForms GridGroupingControl, its nested tables, display elements, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Get ChildTable DisplayElements in WinForms GridGroupingControl

This can be done using the code below.

{% tabs %}
{% highlight C# %}

//Loops for the number of elements in the display elements.
for(int i = 0; i < this.gridGroupingControl1.Table.DisplayElements.Count; i++)
{
    Element el = this.gridGroupingControl1.Table.DisplayElements[i];

//If the element is a nested table
    if(el.Kind == DisplayElementKind.NestedTable)
    {

//Displays the nested table elements.
        GridNestedTable gridNestedTable = (GridNestedTable) el;
        foreach(Element el1 in gridNestedTable.ChildTable.NestedDisplayElements)
        {
            System.Diagnostics.Trace.WriteLine(el1);
        }
        i += (gridNestedTable.ChildTable.NestedDisplayElements.Count - 1);
    }
}    
{% endhighlight %}

{% highlight vb %}

'Loops for the number of elements in the display elements.
Dim i As Integer = 0
Do While i < Me.gridGroupingControl1.Table.DisplayElements.Count
Dim el As Element = Me.gridGroupingControl1.Table.DisplayElements(i)

'If the element is a nested table.
If el.Kind = DisplayElementKind.NestedTable Then

'Displays the nested table elements.
Dim gridNestedTable As GridNestedTable = CType(el, GridNestedTable)
For Each el1 As Element In gridNestedTable.ChildTable.NestedDisplayElements
System.Diagnostics.Trace.WriteLine(el1)
Next el1
i += (gridNestedTable.ChildTable.NestedDisplayElements.Count - 1)
End If
i += 1
Loop

{% endhighlight %}
{% endtabs %}

