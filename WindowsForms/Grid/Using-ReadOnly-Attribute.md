---
layout: post
title: Using-ReadOnly-Attribute
description: using readonly attribute
platform: windowsform
control: GridControl
documentation: ug
---

# Using ReadOnly Attribute

There are several ways to prevent the user from making a change to the contents of a grid cell. If you set a cell's GridStyleInfo.CellType to "Static", the user will not be able to type in the cell. Another way to accomplish this is to use Read-only attribute. This can be done on a grid-wide or cell-by-cell basis. 

A Static cell will not allow the edit cursor to become visible. With Read-only text box cell, edit cursor may be visible. But, a Static cell can be pasted over or cleared by hitting the Delete key. Read-only cells cannot be pasted over or cleared. If you want a cell that will not show an edit cursor and cannot be pasted over or cleared, you must set the CellType to "Static" and also set the Read-only property to True.

## Setting ReadOnly Grid Wide

The property GridControl.ReadOnly or GridDataBoundGrid.Model.ReadOnly will allow you to set ReadOnly behavior on a grid-wide basis.

{% highlight c#  %}
//Changes cannot be made to the Grid control.this.gridControl1.ReadOnly = true;  //Changes cannot be made to the DataBound Grid.this.gridDataBoundGrid1.ReadOnly = true;
{% endhighlight   %}
{% highlight vbnet  %}
'Changes cannot be made to the Grid control.Me.GridControl1.ReadOnly = True   'Changes cannot be made to the DataBound Grid.Me.GridDataBoundGrid1.ReadOnly = True
{% endhighlight   %}

## Setting ReadOnly Cell by Cell



To set ReadOnly behavior on a cell-by-cell basis, you must use the cell's GridStyleInfo object which has ReadOnly property. 



{% highlight c#  %}

//Changes cannot be made to the cell (1,1).

this.gridControl1[1,1].ReadOnly = true;

{% endhighlight   %}


{% highlight vbnet  %}


'Changes cannot be made to the cell (1,1).

Me.GridControl1(1,1).ReadOnly = True
{% endhighlight   %}

## Making a Change to ReadOnly Cell

If you set Read-Only behavior, the user will not be able to type in the cell and he will also not be able to change the cell's value programmatically. So, to make changes to Read-Only cell, you must use GridControl.IgnoreReadOnly property, which will allow you to change a Read-Only cell.






{% highlight c#  %}
this.gridControl1[1,1].ReadOnly = true; 



//Cell (1,1) has been set to Read-only. 

//To change its value, you need to use IgnoreReadOnly property.

this.gridControl1.IgnoreReadOnly = true;



//Turns off Read-only checking.

this.gridControl1[1,1].CellValue = 256; 



//Now you can change the cell value.

//Turns on Read-only checking.

this.gridControl1.IgnoreReadOnly = false;



{% endhighlight   %}
{% highlight vbnet  %}



Me.GridControl1(1, 1).ReadOnly = True 



'Cell (1,1) has been set to Read-only.

'To change its value, you need to use the IgnoreReadOnly property.

Me.GridControl1.IgnoreReadOnly = True   



'Turns off Read-only checking.

Me.GridControl1(1, 1).CellValue = 256  



'Now you can change the cell value.

'Turns on Read-only checking.

this.Me.GridControl1.IgnoreReadOnly = False   

{% endhighlight   %}

