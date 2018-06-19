---
layout: post
title: Scrolling for Syncfusion Essential WindowsForms
description: This section explains about the scrolling functionality in GridGroupingControl.
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Scrolling
GridGroupingControl provides the built in support for scrolling. Scrolling can be enabled or disabled in GridGroupingControl by using the [HScrollBehavior](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupDropArea~HScrollBehavior.html) and [VScrollBehavior](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupDropArea~VScrollBehavior.html) properties respectively.

{% tabs %}
{% highlight c# %}
// Enables Horizontal ScrollBar
this.gridGroupingControl1.TableControl.HScroll = true;
this.gridGroupingControl1.TableControl.HScrollBehavior = GridScrollbarMode.Enabled;

// Enables Vertical ScrollBar
this.gridGroupingControl1.TableControl.VScroll = true;
this.gridGroupingControl1.TableControl.VScrollBehavior = GridScrollbarMode.Enabled;

// Disables Horizontal ScrollBar
this.gridGroupingControl1.TableControl.HScroll = false;
this.gridGroupingControl1.TableControl.HScrollBehavior = GridScrollbarMode.Disabled;

// Disables Vertical ScrollBar
this.gridGroupingControl1.TableControl.VScroll = false;
this.gridGroupingControl1.TableControl.VScrollBehavior = GridScrollbarMode.Disabled;
{% endhighlight %}
{% highlight vb %}
'Enables Horizontal ScrollBar
Me.gridGroupingControl1.TableControl.HScroll = True
Me.gridGroupingControl1.TableControl.HScrollBehavior = GridScrollbarMode.Enabled

'Enables Vertical ScrollBar
Me.gridGroupingControl1.TableControl.VScroll = True
Me.gridGroupingControl1.TableControl.VScrollBehavior = GridScrollbarMode.Enabled

'Disables Horizontal ScrollBar
Me.gridGroupingControl1.TableControl.HScroll = False
Me.gridGroupingControl1.TableControl.HScrollBehavior = GridScrollbarMode.Disabled

'Disables Vertical ScrollBar
Me.gridGroupingControl1.TableControl.VScroll = False
Me.gridGroupingControl1.TableControl.VScrollBehavior = GridScrollbarMode.Disabled
{% endhighlight %}
{% endtabs %}

![](Scrolling_images/Scrolling_img1.png)

Properties and methods related to scrolling has been already explained in our GridControl topic under the section [Scrolling](http://help.syncfusion.com/windowsforms/grid/scrolling). You can check that link for more information on Scrolling.

## Programmatic Scrolling
It is possible to scroll programmatically in GridGroupingControl by using the [ScrollCellInView](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~ScrollCellInView.html) method. You can directly pass the row and column index in this method or you can pass a range of cells using the [GridRangeInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridRangeInfo.html) class.

{% tabs %}
{% highlight c# %}
// Grid will scroll to the position of 7,7.
this.gridGroupingControl1.TableControl.ScrollCellInView(7, 7);
{% endhighlight %}
{% highlight vb %}
' Grid will scroll to the position of 7,7.
Me.gridGroupingControl1.TableControl.ScrollCellInView(7, 7)
{% endhighlight %}
{% endtabs %}

## Scrollbars Appearance
The columns and rows of the GridGroupingControl can be scrolled horizontally and vertically using built-in scrollbars. The appearance of the scrollbar can be applied using [GridOfficeScrollBar](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~GridOfficeScrollBars.html) property. The default scrollbar is `OfficeScrollBars.None`. The following are the different styles of scrollbars available for GridGroupingControl,

* Metro
* Office2007
* Office2010
* None

{% tabs %}
{% highlight c# %}
// Sets the Metro theme for Grid Office Scroll Bars
this.gridGroupingControl1.GridOfficeScrollBars = Syncfusion.Windows.Forms.OfficeScrollBars.Metro; 
{% endhighlight %}
{% highlight vb %}
' Sets the Metro theme for Grid Office Scroll Bars
Me.gridGroupingControl1.GridOfficeScrollBars = Syncfusion.Windows.Forms.OfficeScrollBars.Metro
{% endhighlight %}
{% endtabs %}

![](Scrolling_images/Scrolling_img2.png)

### Setting the Color Scheme for Office Scrollbars 
The themes can be applied for the office scrollbars by setting the appropriate color scheme. Following are the color schemes available for the GridGroupingControl.

[Office2007ScrollBarsColorScheme](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelOptions~Office2007ScrollBarsColorScheme.html) – Used to apply the color scheme for Office 2007 Scrollbars
[Office2010ScrollBarsColorScheme](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~Office2010ScrollBarsColorScheme.html) – Used to apply color scheme for Office 2010 scrollbars

{% tabs %}
{% highlight c# %}
// Sets the Office2010 Office ScrollBars
this.gridGroupingControl1.GridOfficeScrollBars = Syncfusion.Windows.Forms.OfficeScrollBars.Office2010;

//Set the color scheme
this.gridGroupingControl1.Office2010ScrollBarsColorScheme = Syncfusion.Windows.Forms.Office2010ColorScheme.Black;
{% endhighlight %}
{% highlight vb %}
' Sets the Office2010 Office ScrollBars
Me.gridGroupingControl1.GridOfficeScrollBars = Syncfusion.Windows.Forms.OfficeScrollBars.Office2010

'Set the color scheme
Me.gridGroupingControl1.Office2010ScrollBarsColorScheme = Syncfusion.Windows.Forms.Office2010ColorScheme.Black
{% endhighlight %}
{% endtabs %}

![](Scrolling_images/Scrolling_img3.png)

{% tabs %}
{% highlight c# %}
// Sets the Office2007 Office ScrollBars
this.gridGroupingControl1.GridOfficeScrollBars = Syncfusion.Windows.Forms.OfficeScrollBars.Office2007;

//Set the color scheme
this.gridGroupingControl1.Office2007ScrollBarsColorScheme = Syncfusion.Windows.Forms.Office2007ColorScheme.Silver;
{% endhighlight %}
{% highlight vb %}
' Sets the Office2007 Office ScrollBars
Me.gridGroupingControl1.GridOfficeScrollBars = Syncfusion.Windows.Forms.OfficeScrollBars.Office2007

'Set the color scheme
Me.gridGroupingControl1.Office2007ScrollBarsColorScheme = Syncfusion.Windows.Forms.Office2007ColorScheme.Silver
{% endhighlight %}
{% endtabs %}

![](Scrolling_images/Scrolling_img4.png)

### Changing the Back Color for the Metro Scrollbars 
The back color of the metro scrollbars can be customized to the desired color by using [ScrollerBackground](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.MetroColorTable~ScrollerBackground.html) property of the `MetroColorTable`.

{% tabs %}
{% highlight c# %}
// Sets the Metro theme for Grid Office Scroll Bars
this.gridGroupingControl1.GridOfficeScrollBars = Syncfusion.Windows.Forms.OfficeScrollBars.Metro;

// Changes the back color of the scroll bar
this.gridGroupingControl1.TableControl.MetroColorTable.ScrollerBackground = Color.CadetBlue;
{% endhighlight %}
{% highlight vb %}
' Sets the Metro theme for Grid Office Scroll Bars
Me.gridGroupingControl1.GridOfficeScrollBars = Syncfusion.Windows.Forms.OfficeScrollBars.Metro

' Changes the back color of the scroll bar
Me.gridGroupingControl1.TableControl.MetroColorTable.ScrollerBackground = Color.CadetBlue
{% endhighlight %}
{% endtabs %}

![](Scrolling_images/Scrolling_img5.png)

## Intelligence Mouse Scrolling 
The contents of the GridGroupingControl can be automatically scrolled by setting the [EnableIntelliMouse](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ISupportIntelliMouse~EnableIntelliMouse.html) property to `true`. 

{% tabs %}
{% highlight c# %}
//Enable intelligent Mouse scroll
this. gridGroupingControl1.EnableIntelliMouse = true;
{% endhighlight %}
{% highlight vb %}
'Enable intelligent Mouse scroll
Me. gridGroupingControl1.EnableIntelliMouse = True
{% endhighlight %}
{% endtabs %}

![](Scrolling_images/Scrolling_img6.png)

## Shared Scrollbars
The GridGroupingControl can share the scroll bars with other controls by setting the [HScrollBehavior](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~HScrollBehavior.html) and [VScrollBehavior](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~VScrollBehavior.html)  property value as `GridScrollbarMode.Shared`. This can be used to synchronize the scrolling of multiple grids. 

{% tabs %}
{% highlight c# %}
//Set the shared scrollbar mode 
this.gridGroupingControl1.TableControl.HScrollBehavior = GridScrollbarMode.Shared;
this.gridGroupingControl1.TableControl.VScrollBehavior = GridScrollbarMode.Shared;

//Enable the Shared Scrollbars
this.gridGroupingControl1.TableControl.UseSharedScrollBars = true;

//Set the inner scrollbar which is shared to the grid
this.gridGroupingControl1.TableControl.HScrollBar.InnerScrollBar = hScrollBar1;
this.gridGroupingControl1.TableControl.VScrollBar.InnerScrollBar = vScrollBar1;
{% endhighlight %}
{% highlight vb %}
'Set the shared scrollbar mode 
Me.gridGroupingControl1.TableControl.HScrollBehavior = GridScrollbarMode.Shared
Me.gridGroupingControl1.TableControl.VScrollBehavior = GridScrollbarMode.Shared

'Enable the Shared Scrollbars
Me.gridGroupingControl1.TableControl.UseSharedScrollBars = True

'Set the inner scrollbar which is shared to the grid
Me.gridGroupingControl1.TableControl.HScrollBar.InnerScrollBar = hScrollBar1
Me.gridGroupingControl1.TableControl.VScrollBar.InnerScrollBar = vScrollBar1
{% endhighlight %}
{% endtabs %}

![](Scrolling_images/Scrolling_img7.png)

## Scrolling Events
[HorizontalScroll](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollControl~HorizontalScroll_EV.html) and [VerticalScroll](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollControl~VerticalScroll_EV.html) are the events that gets fired each time when scroll bar is moved respectively. The [e.NewValue](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollControl~HorizontalScroll_EV.html) will get the value of the scroll bar for each changes done in the Horizontal and Vertical scroll bar respectively. To know more on events, check the [Scrolling Events](http://help.syncfusion.com/windowsforms/grid/scrolling#scrolling-events ) topic in GridControl.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.HorizontalScroll += new ScrollEventHandler(TableControl_HorizontalScroll);

void TableControl_HorizontalScroll(object sender, ScrollEventArgs e)
{

    // Displays the changed horizontal scroll value
    Console.WriteLine(e.NewValue);
}
this.gridGroupingControl1.TableControl.VerticalScroll += new ScrollEventHandler(TableControl_VerticalScroll);

void TableControl_VerticalScroll(object sender, ScrollEventArgs e)
{

    // Displays the changed vertical scroll value
    Console.WriteLine(e.NewValue);
}

{% endhighlight %}
{% highlight vb %}
Private Me.gridGroupingControl1.TableControl.HorizontalScroll += New ScrollEventHandler(AddressOf TableControl_HorizontalScroll)

Private Sub TableControl_HorizontalScroll(ByVal sender As Object, ByVal e As ScrollEventArgs)

	'Displays the changed horizontal scroll value
	Console.WriteLine(e.NewValue)
End Sub

Private Me.gridGroupingControl1.TableControl.VerticalScroll += New ScrollEventHandler(AddressOf TableControl_VerticalScroll)

Private Sub TableControl_VerticalScroll(ByVal sender As Object, ByVal e As ScrollEventArgs)

	'Displays the changed vertical scroll value
	Console.WriteLine(e.NewValue)
End Sub

{% endhighlight %}
{% endtabs %}

## Custom Scrolling
Custom scroll bar can be added by using the [ScrollersFrame](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollersFrame.html) control. ScrollersFrame control has to be added into the application and then the GridGroupingControl has to be added. The GridGroupingControl and ScrollersFrame control has to be referred to each other by using the [AttachedTo](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollersFrame~AttachedTo.html) property.

{% tabs %}
{% highlight c# %}
//Attach the scroll Frame to the GridGroupingControl
this.scrollersFrame1.AttachedTo =this.gridGroupingControl1.TableControl;
{% endhighlight %}
{% highlight vb %}
'Attach the scroll Frame to the GridGroupingControl
Me.scrollersFrame1.AttachedTo = Me. gridGroupingControl1.TableControl
{% endhighlight %}
{% endtabs %}
N> For more information regarding the custom scrolling and its styles, refer the GridControl topic under the section [Custom Scrolling](http://help.syncfusion.com/windowsforms/grid/scrolling#custom-scrollbar). 

![](Scrolling_images/Scrolling_img8.png)
