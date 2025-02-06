---
layout: post
title: MiniToolBar in Windows Forms Ribbon control | Syncfusion®
description: Learn about MiniToolBar support in Syncfusion® Windows Forms Ribbon (RibbonControlAdv) control and more details.
platform: windowsforms
control: RibbonControlAdv 
documentation: ug
---

# MiniToolBar in Windows Forms Ribbon (RibbonControlAdv)

Essential Tools comes with MiniToolBar control with similar look and feel of Microsoft Office 2007. It appears when the user selects and right clicks on the text. It gives options to customize the selected text. It will look blurred in the beginning, but once the mouse is focused on it, it will be prominent to the users.

![Mini-ToolBar_img1](Mini_Toolbar_Images/Mini-ToolBar_img1.jpg)

## Adding MiniToolBar

Drag and drop a MiniToolBar from the toolbox.

![Mini-ToolBar_img2](Mini_Toolbar_Images/Mini-ToolBar_img2.jpg)

## Assigning to the Control

Set the MiniToolBar’s AssociatedControl property to the control to which this is to be associated.

![Mini-ToolBar_img3](Mini_Toolbar_Images/Mini-ToolBar_img3.jpg)

{% tabs %}

{% highlight c# %}

//Adds richTextBox1 as associated control to the mini tool bar
this.miniToolBar1.AssociatedControl = this.richTextBox1;

{% endhighlight %}

{% highlight vb %}

Me.miniToolBar1.AssociatedControl = Me.richTextBox1

{% endhighlight %}

{% endtabs %}

## Adding Item through Designer

Open the Items Collection Editor of the MiniToolBar and add the required items into the MiniToolBar and click OK.

![Mini-ToolBar_img4](Mini_Toolbar_Images/Mini-ToolBar_img4.jpg)

## Adding Item through Code

This section guides you with the steps to add a MiniToolbar and associating with a RichTextBox control programmatically.

* Add the given namespaces.

{% capture codesnippet1 %}
{% tabs %}

{% highlight c# %}

using Syncfusion.Windows.Forms;  

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

* Declare and initialize the MiniToolBar control. Also declare the controls to be added to the MiniToolBar, and the control, in this case RichTextBow, to which MiniToolBar is to be associated.

{% capture codesnippet2 %}
{% tabs %}

{% highlight c# %}

//Create all the controls required for mini toolbar
private MiniToolBar miniToolBar1;
private ToolStripPanelItem miniToolBarPanelItem;
private ToolStripPanelItem miniToolBarPanelItem1;
private ToolStripButton increaseFontButton;
private ToolStripButton decreaseFontButton;
private ToolStripPanelItem miniToolBarPanelItem2;
private ToolStripButton boldButton;
private ToolStripButton italicButton;
private ToolStripButton underlineButton;
private ToolStripSplitButton highlightSplitButton;
private ToolStripSplitButton fontColorSplitButton;
private ToolStripSplitButton bulletsSplitButton;
private ToolStripSplitButton numbersSplitButton;
private ToolStripComboBoxEx fontStyleComboBox;
private ToolStripComboBoxEx fontSizeComboBox;

this.miniToolBar1 = new Syncfusion.Windows.Forms.Tools.MiniToolBar();
this.miniToolBarPanelItem = new Syncfusion.Windows.Forms.Tools.ToolStripPanelItem();
this.miniToolBarPanelItem1 = new Syncfusion.Windows.Forms.Tools.ToolStripPanelItem();
this.fontStyleComboBox = new Syncfusion.Windows.Forms.Tools.ToolStripComboBoxEx();
this.fontSizeComboBox = new Syncfusion.Windows.Forms.Tools.ToolStripComboBoxEx();
this.increaseFontButton = new System.Windows.Forms.ToolStripButton();
this.decreaseFontButton = new System.Windows.Forms.ToolStripButton();
this.miniToolBarPanelItem2 = new Syncfusion.Windows.Forms.Tools.ToolStripPanelItem();
this.boldButton = new System.Windows.Forms.ToolStripButton();
this.italicButton = new System.Windows.Forms.ToolStripButton();
this.underlineButton = new System.Windows.Forms.ToolStripButton();
this.highlightSplitButton = new System.Windows.Forms.ToolStripSplitButton();
this.fontColorSplitButton = new System.Windows.Forms.ToolStripSplitButton();
this.bulletsSplitButton = new System.Windows.Forms.ToolStripSplitButton();
this.numbersSplitButton = new System.Windows.Forms.ToolStripSplitButton();

{% endhighlight %}

{% highlight vb %}

    Private miniToolBar1 As MiniToolBar
    Private miniToolBarPanelItem As ToolStripPanelItem
    Private miniToolBarPanelItem1 As ToolStripPanelItem
    Private increaseFontButton As ToolStripButton
    Private decreaseFontButton As ToolStripButton
    Private miniToolBarPanelItem2 As ToolStripPanelItem
    Private boldButton As ToolStripButton
    Private italicButton As ToolStripButton
    Private underlineButton As ToolStripButton
    Private highlightSplitButton As ToolStripSplitButton
    Private fontColorSplitButton As ToolStripSplitButton
    Private bulletsSplitButton As ToolStripSplitButton
    Private numbersSplitButton As ToolStripSplitButton
    Private fontStyleComboBox As ToolStripComboBoxEx
    Private fontSizeComboBox As ToolStripComboBoxEx

    Me.miniToolBar1 = New Syncfusion.Windows.Forms.Tools.MiniToolBar()
    Me.miniToolBarPanelItem = New Syncfusion.Windows.Forms.Tools.ToolStripPanelItem()
    Me.miniToolBarPanelItem1 = New Syncfusion.Windows.Forms.Tools.ToolStripPanelItem()
    Me.fontStyleComboBox = New Syncfusion.Windows.Forms.Tools.ToolStripComboBoxEx()
    Me.fontSizeComboBox = New Syncfusion.Windows.Forms.Tools.ToolStripComboBoxEx()
    Me.increaseFontButton = New System.Windows.Forms.ToolStripButton()
    Me.decreaseFontButton = New System.Windows.Forms.ToolStripButton()
    Me.miniToolBarPanelItem2 = New Syncfusion.Windows.Forms.Tools.ToolStripPanelItem()
    Me.boldButton = New System.Windows.Forms.ToolStripButton()
    Me.italicButton = New System.Windows.Forms.ToolStripButton()
    Me.underlineButton = New System.Windows.Forms.ToolStripButton()
    Me.highlightSplitButton = New System.Windows.Forms.ToolStripSplitButton()
    Me.fontColorSplitButton = New System.Windows.Forms.ToolStripSplitButton()
    Me.bulletsSplitButton = New System.Windows.Forms.ToolStripSplitButton()
    Me.numbersSplitButton = New System.Windows.Forms.ToolStripSplitButton()

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

* Add the required items into the MiniToolBar

{% capture codesnippet3 %}
{% tabs %}

{% highlight c# %}

this.miniToolBarPanelItem2.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.boldButton,
this.italicButton,
this.underlineButton,
this.highlightSplitButton,
this.fontColorSplitButton,
this.bulletsSplitButton,
this.numbersSplitButton});

this.miniToolBarPanelItem1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.fontStyleComboBox,
this.fontSizeComboBox,
this.increaseFontButton,
this.decreaseFontButton});

this.miniToolBarPanelItem.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.miniToolBarPanelItem1,
this.miniToolBarPanelItem2});

this.miniToolBar1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.miniToolBarPanelItem});

{% endhighlight %}

{% highlight vb %}

Me.miniToolBarPanelItem2.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.boldButton, Me.italicButton, Me.underlineButton, Me.highlightSplitButton, Me.fontColorSplitButton, Me.bulletsSplitButton, Me.numbersSplitButton})
Me.miniToolBarPanelItem1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.fontStyleComboBox, Me.fontSizeComboBox, Me.increaseFontButton, Me.decreaseFontButton})
Me.miniToolBarPanelItem.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.miniToolBarPanelItem1, Me.miniToolBarPanelItem2})
Me.miniToolBar1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.miniToolBarPanelItem})

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet3 | OrderList_Indent_Level_1 }}

* Set the MiniToolBar’s AssociatedControl property to the RichTextBox to which this is to be associated.

{% capture codesnippet4 %}
{% tabs %}

{% highlight c# %}

//Associates the MiniToolBar with the RichTextBox
this.miniToolBar1.AssociatedControl = this.richTextBox1;

{% endhighlight %}

{% highlight vb %}

Me.miniToolBar1.AssociatedControl = Me.richTextBox1

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet4 | OrderList_Indent_Level_1 }}

## Visual Style

MiniToolbar supports visual style such as Office2016White, Office2016Black, Office2016DarkGray, Office2016Colorful, Default and Metro.

This style can be set using `Style` property

{% tabs %}

{% highlight c# %}

this.miniToolBar1.Style = ToolStripExStyle.Office2016Colorful;

{% endhighlight %}

{% highlight vb %}

Me.miniToolBar1.Style = ToolStripExStyle.Office2016Colorful

{% endhighlight %}

{% endtabs %}

![Mini-ToolBar_img5](Mini_Toolbar_Images/Mini-ToolBar_img5.jpg)

## Color Scheme

MiniToolbar supports all the three ColorSchemes of Office2007, which can be set using the `ColorScheme` property.

{% tabs %}

{% highlight c# %}

this.miniToolBar1.ColorScheme = ToolStripEx.ColorScheme.Blue;

{% endhighlight %}

{% highlight vb %}

Me.miniToolBar1.ColorScheme = ToolStripEx.ColorScheme.Blue

{% endhighlight %}

{% endtabs %}


## MiniToolBar Events

This section discusses about various events that can be handled for the MiniToolBar control. Following are the events covered.

### ItemAdded Event

This event is handled when a ToolStripItem has been added to the ToolStrip's Item collection.

**Event** **Data**

The ToolStripItemEventHandler receives an argument of type ToolStripItemEventArgs containing data related to this event. The following type ToolStripItemEventArgs member provide information specific to this event.

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
Item<br/><br/></td><td>
Gets a System.Windows.Forms.ToolStripItem for which to handle events.<br/><br/></td></tr>
</table>
{% tabs %}

{% highlight c# %}

this.miniToolBar1.ItemAdded += MiniToolBar1_ItemAdded;

private void MiniToolBar1_ItemAdded(object sender, ToolStripItemEventArgs e)

{
// You can see the below line in output window during runtime.

Console.WriteLine("ItemAdded event is raised");

//Display the ToolStripItem

Console.WriteLine("ToolStrip Item Name : " + e.Item.ToString());
}

{% endhighlight %}

{% highlight vb %}

Default Private Property Item(ByVal  As miniToolBar1.ItemAdded, ByVal  As MiniToolBar1_ItemAdded) As

 Private Sub MiniToolBar1_ItemAdded(ByVal sender As Object, ByVal e As ToolStripItemEventArgs)

    Console.WriteLine("ItemAdded event is raised")
    Console.WriteLine("ToolStrip Item Name : " & e.Item.ToString())

End Sub


{% endhighlight %}

{% endtabs %}

### ItemClicked Event

This event is handled when a ToolStripItem has been added to the ToolStrip's Item collection.

**Event** **Data**

The ToolStripItemClickedEventHandler receives an argument of type ToolStripItemEventArgs containing data related to this event. The following type ToolStripItemEventArgs member provide information specific to this event.

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>

<tr>
<td>
ClickedItem<br/><br/></td><td>
Gets the item that is clicked on System.Windows.Forms.ToolStrip.<br/><br/></td></tr>
</table>
{% tabs %}

{% highlight c# %}

this.miniToolBar1.ItemClicked += MiniToolBar1_ItemClicked;

private void MiniToolBar1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
{

Console.WriteLine("ItemClicked event is raised");

//Display the ToolStripItem that is clicked

Console.WriteLine("ToolStrip Item Name : " + e.ClickedItem.ToString());

}

{% endhighlight %}

{% highlight vb %}

Default Private Property Item(ByVal  As miniToolBar1.ItemClicked, ByVal  As MiniToolBar1_ItemClicked) As

 Private Sub MiniToolBar1_ItemClicked(ByVal sender As Object, ByVal e As ToolStripItemClickedEventArgs)

    Console.WriteLine("ItemClicked event is raised")
    Console.WriteLine("ToolStrip Item Name : " & e.ClickedItem.ToString())

End Sub


{% endhighlight %}

{% endtabs %}

### ItemRemoved Event

This event is handled when a ToolStripItem has been removed from the ToolStrip's Item collection.

**Event** **Data**

The ToolStripItemEventHandler receives an argument of type ToolStripItemEventArgs containing data related to this event. The following ToolStripItemEventArgs member provide information specific to this event.

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
Item<br/><br/></td><td>
Gets a System.Windows.Forms.ToolStripItem for which to handle events.<br/><br/></td></tr>
</table>
{% tabs %}

{% highlight c# %}

this.miniToolBar1.ItemRemoved += MiniToolBar1_ItemRemoved;

private void MiniToolBar1_ItemRemoved(object sender, ToolStripItemEventArgs e)

{
//Display the ToolStripItem

Console.WriteLine("ToolStrip Item Name : " + e.Item.ToString());
}


{% endhighlight %}

{% highlight vb %}

Default Private Property Item(ByVal  As miniToolBar1.ItemRemoved, ByVal  As MiniToolBar1_ItemRemoved) As

 Private Sub MiniToolBar1_ItemRemoved(ByVal sender As Object, ByVal e As ToolStripItemEventArgs)

    Console.WriteLine("ToolStrip Item Name : " & e.Item.ToString())

End Sub


{% endhighlight %}

{% endtabs %}

### BeginDrag Event

This event is handled when the tool strip has started to move with a ToolStripPanel.

{% tabs %}

{% highlight c# %}

this.miniToolBar1.BeginDrag += MiniToolBar1_BeginDrag;

private void MiniToolBar1_BeginDrag(object sender, EventArgs e)
{
//You can see the below line in output window during runtime.

Console.Write("BeginDrag Event is raised");
}

{% endhighlight %}

{% highlight vb %}

Default Private Property Item(ByVal  As miniToolBar1.BeginDrag, ByVal  As MiniToolBar1_BeginDrag) As

Private Sub MiniToolBar1_BeginDrag(ByVal sender As Object, ByVal e As EventArgs)

Console.Write("BeginDrag Event is raised")

End Sub


{% endhighlight %}

{% endtabs %}

### Opening Event

This event occurs when the drop down is opening.

**Event** **Data**

The CancelEventHandler receives an argument of type CancelEventArgs containing data related to this event. The following CancelEventArgs members provide information specific to this event.

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
Cancel<br/><br/></td><td>
Gets or Sets a value indicating whether the event should be canceled.<br/><br/></td></tr>
</table>
{% tabs %}

{% highlight c# %}

this.miniToolBar1.Opening += MiniToolBar1_Opening;

private void MiniToolBar1_Opening(object sender, CancelEventArgs e)

{
//EventArgs can give the options to Allow or Cancel the event by this method.

//Cancel is the boolean property which can prevent docking event when it is true.
e.Cancel = true;
}

{% endhighlight %}

{% highlight vb %}

Default Private Property Item(ByVal  As miniToolBar1.Opening, ByVal  As MiniToolBar1_Opening) As

 Private Sub MiniToolBar1_Opening(ByVal sender As Object, ByVal e As CancelEventArgs)

    e.Cancel = True

End Sub

{% endhighlight %}

{% endtabs %}

### Opened Event

This event occurs when the drop down has opened.

{% tabs %}

{% highlight c# %}

this.miniToolBar1.Opened += MiniToolBar1_Opened;

private void MiniToolBar1_Opened(object sender, EventArgs e)

{
// You can see the below line in output window during runtime.

Console.Write(" Opened Event is raised");
}


{% endhighlight %}

{% highlight vb %}

Default Private Property Item(ByVal  As miniToolBar1.Opened, ByVal  As MiniToolBar1_Opened) As

 Private Sub MiniToolBar1_Opened(ByVal sender As Object, ByVal e As EventArgs)

    Console.Write(" Opened Event is raised")
    
End Sub


{% endhighlight %}

{% endtabs %}

