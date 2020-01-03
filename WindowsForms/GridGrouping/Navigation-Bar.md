---
layout: post
title: NavigationBar for Syncfusion Essential WindowsForms
description: This section explains on how to use the NavigationBar in GridGroupingControl.
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Navigation Bar
GridGroupingControl comes with an in-built navigation control that allows the user to browse through the records with ease. The navigation bar consists of buttons that facilitate navigation to first, next, previous, last records and also to add new records in the grid. It also contains a label that displays the current record number together with the total record count.

### Adding Navigation Bar Through Code
Navigation Bar can added through code by setting the [ShowNavigationBar](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~ShowNavigationBar.html) property to `true`. Tooltips can be enabled for the navigation bar by setting the property, [ShowNavigationBarToolTips](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~ShowNavigationBarToolTips.html) to `true`. 

{% tabs %}
{% highlight c# %}
// Shows the record navigation bar.
this.gridGroupingControl1.ShowNavigationBar = true;

// Show tooltips when the user hovers the mouse over the elements of the RecordNavigationBar.
this.gridGroupingControl1.ShowNavigationBarToolTips = true;
{% endhighlight %}
{% highlight vb %}
' Shows the record navigation bar.
Me.gridGroupingControl1.ShowNavigationBar = True

' Show tooltips when the user hovers the mouse over the elements of the RecordNavigationBar.
Me.gridGroupingControl1.ShowNavigationBarToolTips = True
{% endhighlight %}
{% endtabs %}

### Adding Navigation Bar Through Designer
In the property window, make use of the [ShowNavigationBar](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~ShowNavigationBar.html) property to enable the Navigation Bar in design mode.

![](Navigation-Bar_images/Navigation-Bar_img1.png)

The Grid with the Navigation bar will be look like the following screenshot,

![](Navigation-Bar_images/Navigation-Bar_img2.png)

The user can set the current record of NavigationBar programmatically by using the [SetCurrentRecord](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.RecordNavigationBar~SetCurrentRecord.html) method.

{% tabs %}
{% highlight c# %}
// Set the current record of the NavigationBar
this.gridGroupingControl1.RecordNavigationBar.SetCurrentRecord(5, true);
{% endhighlight %}
{% highlight vb %}
' Set the current record of the NavigationBar
Me.gridGroupingControl1.RecordNavigationBar.SetCurrentRecord(5, True)
{% endhighlight %}
{% endtabs %}

## Customizing the Appearance 
It is possible to customize default appearance of the navigation bar by setting appropriate properties. 

{% tabs %}
{% highlight c# %}
// Changing the default Back and Fore color of the Navigation Bar
this.gridGroupingControl1.RecordNavigationBar.BackColor = Color.Green;
this.gridGroupingControl1.RecordNavigationBar.ForeColor = Color.White;
{% endhighlight %}
{% highlight vb %}
' Changing the default Back and Fore color of the Navigation Bar
Me.gridGroupingControl1.RecordNavigationBar.BackColor = Color.Green
Me.gridGroupingControl1.RecordNavigationBar.ForeColor = Color.White
{% endhighlight %}
{% endtabs %}

The customized navigation bar is showed in the below screenshot,

![](Navigation-Bar_images/Navigation-Bar_img3.png)

### Arrow Buttons
The arrow buttons of the record navigation bar can be customized to display single button for navigating the records.

{% tabs %}
{% highlight c# %}
// To Display Single Button for Navigating the records
this.gridGroupingControl1.RecordNavigationBar.DisplayArrowButtons = DisplayArrowButtons.Single;
{% endhighlight %}
{% highlight vb %}
' To Display Single Button for Navigating the records
Me.gridGroupingControl1.RecordNavigationBar.DisplayArrowButtons = DisplayArrowButtons.Single
{% endhighlight %}
{% endtabs %}

![](Navigation-Bar_images/Navigation-Bar_img4.png)

User can change the arrow type of the navigation bar while clicking the arrow buttons. It can be achieved by using the [ArrowButtonClicked](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.RecordNavigationControl~ArrowButtonClicked_EV.html) event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.RecordNavigationBar.ArrowButtonClicked += RecordNavigationBar_ArrowButtonClicked;

void RecordNavigationBar_ArrowButtonClicked(object sender, ArrowButtonEventArgs e)
{

    // Set the arrow type of the navigation bar
    e.Arrow = ArrowType.AddNew;
}
{% endhighlight %}
{% highlight vb %}
Private Me.gridGroupingControl1.RecordNavigationBar.ArrowButtonClicked += AddressOf RecordNavigationBar_ArrowButtonClicked

Private Sub RecordNavigationBar_ArrowButtonClicked(ByVal sender As Object, ByVal e As ArrowButtonEventArgs)

    ' Set the arrow type of the navigation bar
    e.Arrow = ArrowType.AddNew
End Sub
{% endhighlight %}
{% endtabs %}

### RTL Mode
It also supports RTL mode for navigating the records.  It can be enabled by using the following code snippet,

{% tabs %}
{% highlight c# %}
// Enable RTL mode for Record Navigation Bar
this.gridGroupingControl1.RecordNavigationBar.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
{% endhighlight %}
{% highlight vb %}
' Enable RTL mode for Record Navigation Bar
Me.gridGroupingControl1.RecordNavigationBar.RightToLeft = System.Windows.Forms.RightToLeft.Yes
{% endhighlight %}
{% endtabs %}

![](Navigation-Bar_images/Navigation-Bar_img5.png)

### Changing the Text of the Navigation
By default, GridGroupingControl navigation bar will display the `Record` at the prefix of the navigation bar text. This can be changed by setting the [Label](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridRecordNavigationControl~Label.html) property as of follows,

{% tabs %}
{% highlight c# %}
//Label for navigation bar
this.gridGroupingControl1.RecordNavigationBar.Label = "Row";
{% endhighlight %}
{% highlight vb %}
' Label for navigation bar
this.gridGroupingControl1.RecordNavigationBar.Label = "Row";
{% endhighlight %}
{% endtabs %}

![](Navigation-Bar_images/Navigation-Bar_img6.png)

### Setting the Width of the Navigation Bar
The width of the navigation bar can be changed by using the [RecordNavigationControl.NavigationBarWidth](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridRecordNavigationControl~NavigationBarWidth.html) property.

{% tabs %}
{% highlight c# %}
//Set the width of the navigation bar
this.recordNavigationControl.NavigationBarWidth = 400;
{% endhighlight %}
{% highlight vb %}
'Set the width of the navigation bar
Me.recordNavigationControl.NavigationBarWidth = 400
{% endhighlight %}
{% endtabs %}

![](Navigation-Bar_images/Navigation-Bar_img7.png)

### Changing the back color for the Navigation Bar
To set back color for the record navigation bar, use the [NavigationBarBackColor](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridRecordNavigationControl~NavigationBarBackColor.html) property as of follows.

{% tabs %}
{% highlight c# %}
// Sets the back color for navigation bar
this.gridGroupingControl1.RecordNavigationControl.NavigationBarBackColor = Color.LightCoral;

// Sets the foreground color of the navigation bar
this.gridGroupingControl1.RecordNavigationControl.ForeColor = Color.White;
{% endhighlight %}
{% highlight vb %}
' Sets the back color for navigation bar
Me.gridGroupingControl1.RecordNavigationControl.NavigationBarBackColor = Color.LightCoral

' Sets the foreground color of the navigation bar
Me.gridGroupingControl1.RecordNavigationControl.ForeColor = Color.White
{% endhighlight %}
{% endtabs %}

![](Navigation-Bar_images/Navigation-Bar_img8.png)

## VisualStyles
The style of the `NavigationBar` can be changed by using the [GridOfficeScrollBar](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~GridOfficeScrollBars.html) property which automatically changes the visual style. Check [Scrolling](http://help.syncfusion.com/windowsforms/gridgrouping/getting-started) topic for more information on this.

{% tabs %}
{% highlight c# %}
// Changes the visual style of the GridGroupingControl
this.gridGroupingControl1.GridVisualStyles = GridVisualStyles.Office2010Blue;

// Changes the visual style of the NavigationBar control
this.gridGroupingControl1.GridOfficeScrollBars = OfficeScrollBars.Office2010;
{% endhighlight %}
{% highlight vb %}
' Changes the visual style of the GridGroupingControl
Me.gridGroupingControl1.GridVisualStyles = GridVisualStyles.Office2010Blue

' Changes the visual style of the NavigationBar control
Me.gridGroupingControl1.GridOfficeScrollBars = OfficeScrollBars.Office2010
{% endhighlight %}
{% endtabs %}

![](Navigation-Bar_images/Navigation-Bar_img9.png)

## Navigating Records
The grid records can be programmatically navigate by using some of the methods in the [NavigationBar](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.RecordNavigationControl~NavigationBar.html). The followings are the methods used for navigation,

{% tabs %}
{% highlight c# %}
//Moves the current record position to the first row 
this.gridGroupingControl1.RecordNavigationBar.MoveFirst();

//Moves the current record position to the last row 
this.gridGroupingControl1.RecordNavigationBar.MoveLast();

//Moves the current record position to the next row 
this.gridGroupingControl1.RecordNavigationBar.MoveNext();

//Moves the current record position to the previous row 
this.gridGroupingControl1.RecordNavigationBar.MovePrevious();
{% endhighlight %}
{% highlight vb %}
'Moves the current record position to the first row 
Me.gridGroupingControl1.RecordNavigationBar.MoveFirst()

'Moves the current record position to the last row 
Me.gridGroupingControl1.RecordNavigationBar.MoveLast()

'Moves the current record position to the next row 
Me.gridGroupingControl1.RecordNavigationBar.MoveNext()

'Moves the current record position to the previous row 
Me.gridGroupingControl1.RecordNavigationBar.MovePrevious()
{% endhighlight %}
{% endtabs %}

For more information, refer our dashboard sample which is located in this path &lt;Installed_Location&gt;\Syncfusion\EssentialStudio\&lt;Installed_Version&gt;\Windows\Grid.Grouping.Windows\Samples\Selection\Record Range Selection Demo\

## Visibility of Arrow Buttons
The visibility of the arrow buttons can be changed by setting the [NavigationButtons](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridRecordNavigationControl~NavigationButtons.html) property appropriate value from the [DisplayArrowButtons](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.DisplayArrowButtons.html) enumeration.

{% tabs %}
{% highlight c# %}
//Display only next and previous buttons in the navigation bar
this.gridGroupingControl1.RecordNavigationControl.NavigationButtons = Syncfusion.Windows.Forms.DisplayArrowButtons.Single;
{% endhighlight %}
{% highlight vb %}
'Display only next and previous buttons in the navigation bar
Me.gridGroupingControl1.RecordNavigationControl.NavigationButtons = Syncfusion.Windows.Forms.DisplayArrowButtons.Single
{% endhighlight %}
{% endtabs %}
![](Navigation-Bar_images/Navigation-Bar_img10.png)

