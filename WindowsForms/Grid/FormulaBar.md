---
layout: post
title: Formula Bar of GridControl for Syncfusion Essential WindowsForms
description: This section explains on how to add formula bar(GridAwareTextBox) in applicaation and its usablilities
platform: WindowsForms
control: GridControl
documentation: ug

---
# Formula Bar

The formula bar is derived from the [TextBox](https://msdn.microsoft.com/en-us/library/system.windows.forms.textbox.aspx#) control which is used to bind to the [CurrentCell](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridNestedTableControl~CurrentCell.html#) of GridControl. This is similar to the formula bar in Excel. It will allow to view and edit the formula and values of the current cell.  

To have the formula bar in the form, open the designer and drag and drop the [GridAwareTextBox](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridAwareTextBox_members.html#) from the toolbox along with the GridControl.

The `GridAwareTextBox` can be synchronized with GridControl using [WireGrid](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridAwareTextBox~WireGrid.html#) method. 

{% tabs %}
{% highlight c# %}
//Synchronize GridAwareTextBox with the Grid
this.gridAwareTextBox1.WireGrid(this.gridControl1);
{% endhighlight %}

{% highlight vb %}
'Synchronize GridAwareTextBox with the Grid
Me.gridAwareTextBox1.WireGrid(Me.gridControl1)
{% endhighlight %}
{% endtabs %}

![](CellGrid_FormulaBar_images/CellGrid_FormulaBar_img1.jpeg)


Note: If the cell has formula, `GridAwareTextBox` will display the formula instead of calculated value.

![](CellGrid_FormulaBar_images/CellGrid_FormulaBar_img2.jpeg)


## Applying Back color 

`GridAwareTextBox` background color can be customized based on the editable state of the current cell. [EnabledBackColor](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridAwareTextBox~EnabledBackColor.html#) property is used to set background color when current cell is editable and [DisabledBackColor](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridAwareTextBox~DisabledBackColor.html#) property is used to set background color when current cell is disabled for editing. 

{% tabs %}

{% highlight c# %}
// To set the back color for the GridAwareTextBox while editing 
this.gridAwareTextBox1.EnabledBackColor = Color.Yellow;

// To set the back color for the formula bar when editing is disabled in the current cell
this.gridAwareTextBox1.DisabledBackColor = Color.Orange;
{% endhighlight %}

{% highlight vb %}
' To set the back color for the GridAwareTextBox while editing 
Me.gridAwareTextBox1.EnabledBackColor = Color.Yellow

' To set the back color for the GridAwareTextBox when editing is disabled in the current cell
Me.gridAwareTextBox1.DisabledBackColor = Color.Orange
{% endhighlight %}
{% endtabs %}

![](CellGrid_FormulaBar_images/CellGrid_FormulaBar_img3.jpeg)

![](CellGrid_FormulaBar_images/CellGrid_FormulaBar_img4.jpeg)


## Auto Suggestion

To enable the auto suggestion of formulas while editing the cell, set the [AutoSuggestFormula](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridAwareTextBox~AutoSuggestFormula.html#) property to `true` before wiring the formula bar with the grid. 

{% tabs %}
{% highlight c# %}
//Enable Auto Suggest
this.gridAwareTextBox1.AutoSuggestFormula = true;
{% endhighlight %}

{% highlight vb %}
'Enable Auto Suggest
Me.gridAwareTextBox1.AutoSuggestFormula = True
{% endhighlight %}
{% endtabs %}

The custom collections can also use for the auto suggestion in the formula bar. To add the custom suggestion list to the `GridAwareTextBox`, set the [AutoCompleteSource](https://msdn.microsoft.com/en-us/library/system.windows.forms.textbox.autocompletesource.aspx# "") value as `AutoCompleteSource.CustomSource` and then add the custom collection to [AutoSuggestCustomSource](https://msdn.microsoft.com/en-us/library/system.windows.forms.textbox.autocompletecustomsource.aspx# "") collection.

{% tabs %}
{% highlight c# %}
//Set Auto Complete Mode to append the suggestion while typing the text
this.gridAwareTextBox1.AutoCompleteMode = AutoCompleteMode.SuggestAppend;

// Set custom collection to be displayed while typing on the GridAwareTextBox
this.gridAwareTextBox1.AutoCompleteSource = AutoCompleteSource.CustomSource;

string[] items = new string[] { "Boolean", "Base", "Bold", "Bind", "Integer" };

//Add the items to the Auto Complete Custom Source
this.gridAwareTextBox1.AutoCompleteCustomSource.AddRange(items);
{% endhighlight %}

{% highlight vb %}
'Set Auto Complete Mode to append the suggestion while typing the text
Me.gridAwareTextBox1.AutoCompleteMode = AutoCompleteMode.SuggestAppend

' Set custom collection to be displayed while typing on the GridAwareTextBox
Me.gridAwareTextBox1.AutoCompleteSource = AutoCompleteSource.CustomSource

Dim items() As String = { "Boolean", "Base", "Bold", "Bind", "Integer" }

'Add the items to the Auto Complete Custom Source
Me.gridAwareTextBox1.AutoCompleteCustomSource.AddRange(items)
{% endhighlight %}
{% endtabs %}

![](CellGrid_FormulaBar_images/CellGrid_FormulaBar_img5.jpeg)


## Multi-line Support

Formula Bar can be used like multi-line textbox. While typing the text in the current cell the content will be automatically wrapped into the next row while reaching the width of the `GridAwareTextBox`. 

{% tabs %}
{% highlight c# %}
// Enable Multi-Line GridAwareTextBox
this.gridAwareTextBox1.Multiline = true;
{% endhighlight %}

{% highlight vb %}
' Enable Multi-Line GridAwareTextBox
Me.gridAwareTextBox1.Multiline = True
{% endhighlight %}
{% endtabs %}

![](CellGrid_FormulaBar_images/CellGrid_FormulaBar_img6.jpeg)


N> Formula bar supports all the events and methods which are provided by the `TextBox` control.

## Unwiring Formula Bar

The formula bar can be unwired from the grid by using the [UnwireGrid](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridAwareTextBox~UnwireGrid.html#) method. It will break the connection between the grid and the formula bar.

{% tabs %}
{% highlight c# %}
//Unwire the Grid from the GridAwareTextBox
this.gridAwareTextBox1.UnwireGrid(this.gridControl1);
{% endhighlight %}

{% highlight vb %}
'Unwire the Grid from the GridAwareTextBox
Me.gridAwareTextBox1.UnwireGrid(Me.gridControl1)
{% endhighlight %}
{% endtabs %}

