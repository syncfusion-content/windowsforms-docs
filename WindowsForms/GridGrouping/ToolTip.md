---
layout: post
title: ToolTip of GridGroupingControl for Syncfusion Essential WindowsForms
description: The ToolTip of GridGroupingControl is explained in the following topic.
platform: WindowsForms
control: GridGroupingControl
documentation: ug
---

# Tool Tip

The ToolTip can be added to the individual cells. This allows a user to show more information about the particular cell on mouse hover.

![](ToolTip_images/ToolTip_img1.jpeg)


## Adding ToolTip

The ToolTip can be added to the particular cell by setting [CellTipText](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~CellTipText.html) property in the [QueryCellStyleInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~QueryCellStyleInfo_EV.html) event. 

{% highlight c# %}
this.gridGroupingControl1.QueryCellStyleInfo += gridGroupingControl1_QueryCellStyleInfo;

void gridGroupingControl1_QueryCellStyleInfo(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventArgs e)

{

if (e.Style.TableCellIdentity.Column != null && e.Style.TableCellIdentity.Column.Name == "FirstName")

{

if (e.TableCellIdentity.DisplayElement != null && e.TableCellIdentity.DisplayElement.Kind == Syncfusion.Grouping.DisplayElementKind.Record)

{

//Setting the ToolTip text.

e.Style.CellTipText = e.TableCellIdentity.Column.Name + " is " + e.Style.Text;

}

}

}



{% endhighlight %}

{% highlight vb %}
AddHandler gridGroupingControl1.QueryCellStyleInfo, AddressOf gridGroupingControl1_QueryCellStyleInfo

Private Sub gridGroupingControl1_QueryCellStyleInfo(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventArgs)

If e.Style.TableCellIdentity.Column IsNot Nothing AndAlso e.Style.TableCellIdentity.Column.Name = "FirstName" Then

If e.TableCellIdentity.DisplayElement IsNot Nothing AndAlso e.TableCellIdentity.DisplayElement.Kind Is Syncfusion.Grouping.DisplayElementKind.Record Then

'Setting the ToolTip text.

e.Style.CellTipText = e.TableCellIdentity.Column.Name & " is " & e.Style.Text

End If

End If

End Sub



{% endhighlight %}

![](ToolTip_images/ToolTip_img2.jpeg)


### Adding ToolTip for Column

The ToolTip can be added to specific column by setting the `Appearance.AnyRecordFieldCell.CellTipText` property of the particular column descriptor. It will enable the ToolTip for all the cells in the column with same tip text.

{% highlight c# %}
//Setting ToolTip for particular column.

this.gridGroupingControl1.TableDescriptor.Columns["City"].Appearance.AnyRecordFieldCell.CellTipText = "City";



{% endhighlight %}

{% highlight vb %}
'Setting ToolTip for particular column.

Me.gridGroupingControl1.TableDescriptor.Columns("City").Appearance.AnyRecordFieldCell.CellTipText = "City"



{% endhighlight %}

![](ToolTip_images/ToolTip_img3.jpeg)


### Adding ToolTip to Nested table

The ToolTip can be added for the nested tables by getting the child table descriptor using the  [GetTableDescriptor](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~GetTableDescriptor.html) method and setting the `CellTipText` to the column which you want.

{% highlight c# %}
// Adding ToolTip for nested table cells

this.gridGroupingControl1.GetTableDescriptor("Orders").Columns["Freight"].Appearance.AnyRecordFieldCell.CellTipText = "Hello";



{% endhighlight %}

{% highlight vb %}
' Adding ToolTip for nested table cells

Me.gridGroupingControl1.GetTableDescriptor("Orders").Columns("Freight").Appearance.AnyRecordFieldCell.CellTipText = "Hello"



{% endhighlight %}

![](ToolTip_images/ToolTip_img4.jpeg)


## Removing ToolTip

The ToolTip for the cell can be removed by using the [ResetCellTipText](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~ResetCellTipText.html) method. It will reset the `CellTipText` property to the default values.

{% highlight c# %}
//Remove the ToolTip for particular column.

this.gridGroupingControl1.TableDescriptor.Columns["ColumnName"].Appearance.AnyRecordFieldCell.ResetCellTipText();



{% endhighlight %}

{% highlight vb %}
'Remove the ToolTip for particular column.

Me.gridGroupingControl1.TableDescriptor.Columns("ColumnName ").Appearance.AnyRecordFieldCell.ResetCellTipText()



{% endhighlight %}

## Disabling ToolTip window for Control

The displaying of ToolTip window on mouse hover for control can be restricted by setting the `Active` property of `CellToolTip` to `false`.

{% highlight c# %}
//Disable the ToolTip for GridGroupingcontrol.

this.gridGroupingControl1.TableControl.CellToolTip.Active = false;



{% endhighlight %}

{% highlight vb %}
'Disable the ToolTip for GridGroupingcontrol.

Me.gridGroupingControl1.TableControl.CellToolTip.Active = False



{% endhighlight %}

## Setting ToolTip delay time

The below properties are used to set the ToolTip delay time.

* [AutoPopDelay](https://msdn.microsoft.com/en-us/library/system.windows.forms.tooltip.autopopdelay(v=vs.110).aspx)
* [InitialDelay](https://msdn.microsoft.com/en-us/library/system.windows.forms.tooltip.initialdelay(v=vs.110).aspx)
* [ReshowDelay](https://msdn.microsoft.com/en-us/library/system.windows.forms.tooltip.reshowdelay(v=vs.110).aspx)
* [AutomaticDelay](https://msdn.microsoft.com/en-us/library/system.windows.forms.tooltip.automaticdelay(v=vs.110).aspx)

### AutoPopDelay


In order to increase or decrease tooltip visible state time, `CellToolTip.AutoPopDelay` property can be used.

{% highlight c# %}
//Set the ToolTip display time.

this.gridGroupingControl1.TableControl.CellToolTip.AutoPopDelay = 5000;



{% endhighlight %}

{% highlight vb %}
//Set the ToolTip display time.

Me.gridGroupingControl1.TableControl.CellToolTip.AutoPopDelay = 5000



{% endhighlight %}

### InitialDelay

In order to increase or decrease the time that the ToolTip waits before displaying a ToolTip window, `CellToolTip.InitialDelay` property can be used.

{% highlight c# %}
//Set the ToolTip Initial delay time.

this.gridGroupingControl1.TableControl.CellToolTip.InitialDelay = 1000;



{% endhighlight %}

{% highlight vb %}
'Set the ToolTip Initial delay time.

Me.gridGroupingControl1.TableControl.CellToolTip.InitialDelay = 1000



{% endhighlight %}

### ReshowDelay

In order to increase or decrease the time that the ToolTip waits before displaying the next ToolTip, `CellToolTip.ReshowDelay` property can be used.

{% highlight c# %}
//Set the ToolTip reshow delay time.

this.gridGroupingControl1.TableControl.CellToolTip.ReshowDelay = 500;



{% endhighlight %}

{% highlight vb %}
'Set the ToolTip reshow delay time.

Me.gridGroupingControl1.TableControl.CellToolTip.ReshowDelay = 500



{% endhighlight %}

### AutomaticDelay

In order to increase or decrease tooltip timing, `CellToolTip.AutomaticDelay` property can be used. The `CellToolTip.AutomaticDelay` property used to set the values of the *AutoPopDelay*, *InitialDelay*, *ReshowDelay* properties. Each time the `CellToolTip.AutomaticDelay` property is set, the following values are set by default.

<table>
<tr>
<td>
<b>Property</b><br/><br/></td><td>
<b>Default Values</b><br/><br/></td></tr>
<tr>
<td>
AutoPopDelay<br/><br/></td><td>
10 times the AutomaticDelay value.<br/><br/></td></tr>
<tr>
<td>
InitialDelay<br/><br/></td><td>
Equal to the AutomaticDelay value.<br/><br/></td></tr>
<tr>
<td>
ReshowDelay<br/><br/></td><td>
1/5 of the AutomaticDelay value.<br/><br/></td></tr>
</table>
{% highlight c# %}
//Set the delay time for ToolTip

this.gridGroupingControl1.TableControl.CellToolTip.AutomaticDelay = 1000;



{% endhighlight %}

{% highlight vb %}
'Set the delay time for ToolTip

Me.gridGroupingControl1.TableControl.CellToolTip.AutomaticDelay = 1000



{% endhighlight %}

N> The [CellToolTip  ](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableControl~CellToolTip.html#) property can be accessed through [TableControl](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableControl.html#) . The ToolTip delay time can be assigned to Nested tables by using the [GetTableControl](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~GetTableControl.html) method.

## Event

### ActivateToolTip event

[ActivateToolTip](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableControl~ActivateToolTip_EV.html) event will be occurred whenever mouse has moved to a new cell and ToolTip is initialized for that cell.

{% highlight c# %}
this.gridGroupingControl1.TableControl.ActivateToolTip += TableControl_ActivateToolTip;

private void TableControl_ActivateToolTip(object sender, Syncfusion.Windows.Forms.Grid.GridActivateToolTipEventArgs e)

{

e.Style.CellTipText = "Active";

}



{% endhighlight %}

{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.ActivateToolTip, AddressOf TableControl_ActivateToolTip

Private Sub TableControl_ActivateToolTip(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridActivateToolTipEventArgs)

e.Style.CellTipText = "Active"

End Sub



{% endhighlight %}

![](ToolTip_images/ToolTip_img5.jpeg)


## Disabling the ToolTip Window for particular cell

The displaying of ToolTip window on mouse hover for particular cells can be restricted by cancelling the `ActivateToolTip` event instead of setting the empty string to `CellTipText` property.

{% highlight c# %}
this.gridGroupingControl1.TableControl.ActivateToolTip += TableControl_ActivateToolTip;

private void TableControl_ActivateToolTip(object sender, GridActivateToolTipEventArgs e)

{

GridTableCellStyleInfo cellstyle = e.Style as GridTableCellStyleInfo; ;

//Diable the ToolTip for "FirstName" Column.

if(cellstyle != null && cellstyle.TableCellIdentity.Column.Name == "FirstName")

{

e.Cancel = true;

}

}



{% endhighlight %}

{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.ActivateToolTip, AddressOf TableControl_ActivateToolTip

Private Sub TableControl_ActivateToolTip(ByVal sender As Object, ByVal e As GridActivateToolTipEventArgs)

Dim cellstyle As GridTableCellStyleInfo = TryCast(e.Style, GridTableCellStyleInfo)

'Diable the ToolTip for "FirstName" Column.

If cellstyle IsNot Nothing AndAlso cellstyle.TableCellIdentity.Column.Name = "FirstName" Then

e.Cancel = True

End If

End Sub



{% endhighlight %}

## Highlighting the ToolTip cell

To highlight or customize the cells if that cell has ToolTip, [HasCellTipText](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~HasCellTipText.html) property can be used in the `QueryCellStyleInfo` event.

{% highlight c# %}
this.gridGroupingControl1.QueryCellStyleInfo += gridGroupingControl1_QueryCellStyleInfo;

void gridGroupingControl1_QueryCellStyleInfo(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventArgs e)

{   

//Checking whether the cell has ToolTip or not.

if (e.Style.HasCellTipText)

{

e.Style.BackColor = Color.Green;

e.Style.TextColor = Color.White;

}

}



{% endhighlight %}

{% highlight vb %}
AddHandler gridGroupingControl1.QueryCellStyleInfo, AddressOf gridGroupingControl1_QueryCellStyleInfo

Private Sub gridGroupingControl1_QueryCellStyleInfo(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventArgs)

'Checking whether the cell has ToolTip or not.

If e.Style.HasCellTipText Then

e.Style.BackColor = Color.Green

e.Style.TextColor = Color.White

End If

End Sub



{% endhighlight %}

![](ToolTip_images/ToolTip_img6.jpeg)


