---
layout: post
title: Creating-Grid-Object
description: creating grid object
platform: windowsform
control: Grid
documentation: ug
---

# Creating Grid Object

To add Grid control to a form, you must create an instance of Grid control, set row and column count, then position it on your form.

##Through Designer

With the designer, you can drag-and-drop control, size it, and then set a couple of properties.

* Drag a Grid control object from your toolbox and drop it on the form. 
* Size and position it. 
* Change RowCount and ColCount values in the PropertyGrid for this control.

##Through Code


Given below is the code to help you create a grid.

{% highlight c# %}



using Syncfusion.Windows.Forms.Grid;

                        ....

//Creates the Essential Grid.

private GridControl gridControl1;

                        ....

this.gridControl1 = new GridControl();



//Sets the number of rows and columns.

this.gridControl1.ColCount = 10;

this.gridControl1.RowCount = 100;



//Positions it on the form.

this.gridControl1.Location = new System.Drawing.Point(20, 20);

this.gridControl1.Size = new System.Drawing.Size(344, 200);



//Adds it to the forms' controls.

this.Controls.Add(this.gridControl1);
{% endhighlight %}


{% highlight vbnet %}



imports Syncfusion.Windows.Forms.Grid

                ....

'Creates the Essential Grid.

Private WithEvents gridControl1 As GridControl

                ....

Me.gridControl1 = New GridControl()



'Sets the number of rows and columns.

Me.gridControl1.ColCount = 10

Me.gridControl1.RowCount = 100



'Positions it on the form.

Me.gridControl1.Location = New System.Drawing.Point(20, 15)

Me.gridControl1.Size = New System.Drawing.Size(344, 150)



'Adds it to the forms' controls.

Me.Controls.Add(Me.gridControl1)
{% endhighlight %}



