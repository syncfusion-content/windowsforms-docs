---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---

# Getting Started

This section explains how to implement a similar UI as Microsoft Outlook using Ribbon.

## Add RibbonControlAdv in Designer

*	Drag and drop the ‘RibbonControlAdv’ from toolbox to designer. The required assembly references will be added automatically. It will generate the Ribbon as shown below:

![](Getting_Started_Images/Getting-Started_img1.jpg)

## Add RibbonControlAdv in Code

To add the RibbonControlAdv manually through code, follow the below steps.

1. Add the below required assembly reference to the project,

*	Syncfusion.Shared.Base
*	Syncfusion.Tools.Windows

2. New ‘RibbonControlAdv’ can be added to the forms using the `Controls.Add` method.   Create a new Ribbon control and initialize the ribbon and then add it to the Controls using below code.

{% tabs %}

{% highlight c# %}

//Adding a new ribbon control
private Syncfusion.Windows.Forms.Tools.RibbonControlAdv ribbonControlAdv1;

//Declare and initialize the new ribbon control
 this.ribbonControlAdv1 = new RibbonControlAdv();

//Adding ribbon control to form
this.Controls.Add(ribbonControlAdv1);

{% endhighlight %}

{% highlight vb %}

Private ribbonControlAdv1 As Syncfusion.Windows.Forms.Tools.RibbonControlAdv

Default Private Property Item(ByVal Optional  As ribbonControlAdv1 = New RibbonControlAdv()) As

Me.Controls.Add(ribbonControlAdv1)

{% endhighlight %}

{% endtabs %}

## Configure RibbonForm

RibbonForm enables a similar look and feel of Microsoft Office. This section will guide you in applying different visual styles to RibbonControlAdv using RibbonForm.
By default, the Form in application will extend to Form class. Add the respective namespace and programmatically change it as RibbonForm class. 

{% tabs %}

{% highlight c# %}

using Syncfusion.Windows.Forms.Tools; 

public partial class Form1 : RibbonForm

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

Public Partial Class Form1
    Inherits RibbonForm

End Class

{% endhighlight %}

{% endtabs %}

## Applying Visual Style

RibbonControlAdv appearance can be enhanced by using the `RibbonStyle` property of the Ribbon Control.

The following styles are supported by the Ribbon control.

*	Office2007
*	Office2010
*	Office2013
*	Office2016
*	TouchStyle

The following code example illustrates how to set style for the RibbonControlAdv through code.

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.RibbonStyle = RibbonStyle.Office2016;

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.RibbonStyle = RibbonStyle.Office2016

{% endhighlight %}

{% endtabs %}

![](Getting_Started_Images/Getting-Started_img2.jpg)

## Add Tabs to Ribbon

RibbonControlAdv lets you to create ToolStripTabItems easily using the smart tag. It also adds a RibbonPanel to which ToolStripItems can be added.

![](Getting_Started_Images/Getting-Started_img3.jpg)

Customize the Tab item using the property grid.

![](Getting_Started_Images/Getting-Started_img4.jpg)

A new TabItem can be added to the RibbonControlAdv programmatically using the `AddMainItem` method. Create a ToolStripTabItem and then add it to the RibbonControlAdv using the below method.

{% tabs %}

{% highlight c# %}

// Adding a new Tab Item
private Syncfusion.Windows.Forms.Tools.ToolStripTabItem homeTabItem;
private Syncfusion.Windows.Forms.Tools.ToolStripTabItem sendTabItem;
private Syncfusion.Windows.Forms.Tools.ToolStripTabItem folderTabItem;
private Syncfusion.Windows.Forms.Tools.ToolStripTabItem viewTabItem;


//Declare and initialize a ToolStripTabItem
this.homeTabItem = new ToolStripTabItem();
this.sendTabItem = new ToolStripTabItem();
this.folderTabItem = new ToolStripTabItem();
this.viewTabItem = new ToolStripTabItem();

this.homeTabItem.Text = "Home";
this.sendTabItem.Text = "Send";
this.folderTabItem.Text = "Folder";
this.viewTabItem.Text = "View";

//Add the tab item to the RibbonControlAdv
this.ribbonControlAdv1.Header.AddMainItem(this.homeTabItem);
this.ribbonControlAdv1.Header.AddMainItem(this.sendTabItem);
this.ribbonControlAdv1.Header.AddMainItem(this.folderTabItem);
this.ribbonControlAdv1.Header.AddMainItem(this.viewTabItem);


{% endhighlight %}

{% highlight vb %}

Private homeTabItem As Syncfusion.Windows.Forms.Tools.ToolStripTabItem
Private sendTabItem As Syncfusion.Windows.Forms.Tools.ToolStripTabItem
Private folderTabItem As Syncfusion.Windows.Forms.Tools.ToolStripTabItem
Private viewTabItem As Syncfusion.Windows.Forms.Tools.ToolStripTabItem

Me.homeTabItem = New ToolStripTabItem()
Me.sendTabItem = New ToolStripTabItem()
Me.folderTabItem = New ToolStripTabItem()
Me.viewTabItem = New ToolStripTabItem()

Me.homeTabItem.Text = "Home"
Me.sendTabItem.Text = "Send"
Me.folderTabItem.Text = "Folder"
Me.viewTabItem.Text = "View"

Me.ribbonControlAdv1.Header.AddMainItem(Me.homeTabItem)
Me.ribbonControlAdv1.Header.AddMainItem(Me.sendTabItem)
Me.ribbonControlAdv1.Header.AddMainItem(Me.folderTabItem)
Me.ribbonControlAdv1.Header.AddMainItem(Me.viewTabItem)

{% endhighlight %}

{% endtabs %}

![](Getting_Started_Images/Getting-Started_img5.jpg)

## Adding groups inside Tab

ToolStripEx is used to create groups inside a Tab, it can be added to the Ribbon panel using its smart tag or using `Add ToolStrip` verb in the property grid.

![](Getting_Started_Images/Getting-Started_img6.jpg)

{% tabs %}

{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.ToolStripEx newToolStripEx;
private Syncfusion.Windows.Forms.Tools.ToolStripEx deleteToolStripEx;
private Syncfusion.Windows.Forms.Tools.ToolStripEx respondToolStripEx;
private Syncfusion.Windows.Forms.Tools.ToolStripEx moveToolStripEx;
private Syncfusion.Windows.Forms.Tools.ToolStripEx tagsToolStripEx;
private Syncfusion.Windows.Forms.Tools.ToolStripEx colorschemeToolStripEx;
private Syncfusion.Windows.Forms.Tools.ToolStripEx quickstepsToolStripEx;
private Syncfusion.Windows.Forms.Tools.ToolStripEx currentviewToolStripEx;
private Syncfusion.Windows.Forms.Tools.ToolStripEx messagesToolStripEx;
private Syncfusion.Windows.Forms.Tools.ToolStripEx layoutToolStripEx;
private Syncfusion.Windows.Forms.Tools.ToolStripEx peopleToolStripEx;
private Syncfusion.Windows.Forms.Tools.ToolStripEx windowToolStripEx;

this.newToolStripEx = new ToolStripEx();
this.deleteToolStripEx = new ToolStripEx();
this.respondToolStripEx = new ToolStripEx();
this.moveToolStripEx = new ToolStripEx();
this.tagsToolStripEx = new ToolStripEx();
this.colorschemeToolStripEx = new ToolStripEx();
this.quickstepsToolStripEx = new ToolStripEx();
this.currentviewToolStripEx = new ToolStripEx();
this.messagesToolStripEx = new ToolStripEx();
this.layoutToolStripEx = new ToolStripEx();
this.peopleToolStripEx = new ToolStripEx();
this.windowToolStripEx = new ToolStripEx();

this.newToolStripEx.Text = "New";
this.deleteToolStripEx.Text = "Delete";
this.respondToolStripEx.Text = "Respond";
this.moveToolStripEx.Text = "Move";
this.tagsToolStripEx.Text = "Tags";
this.colorschemeToolStripEx.Text = "Color Scheme";
this.quickstepsToolStripEx.Text = "Quick Steps";
this.currentviewToolStripEx.Text = "Current View";
this.messagesToolStripEx.Text = "Messages";
this.layoutToolStripEx.Text = "Layout";
this.peopleToolStripEx.Text = "People";
this.windowToolStripEx.Text = "Window";

this.homeTabItem.Panel.Controls.AddRange(new Control[] { newToolStripEx, deleteToolStripEx, respondToolStripEx, moveToolStripEx, tagsToolStripEx, colorschemeToolStripEx, quickstepsToolStripEx});

this.viewTabItem.Panel.Controls.AddRange(new Control[] { currentviewToolStripEx, messagesToolStripEx, layoutToolStripEx, peopleToolStripEx, windowToolStripEx });

{% endhighlight %}

{% highlight vb %}

    Private newToolStripEx As Syncfusion.Windows.Forms.Tools.ToolStripEx
    Private deleteToolStripEx As Syncfusion.Windows.Forms.Tools.ToolStripEx
    Private respondToolStripEx As Syncfusion.Windows.Forms.Tools.ToolStripEx
    Private moveToolStripEx As Syncfusion.Windows.Forms.Tools.ToolStripEx
    Private tagsToolStripEx As Syncfusion.Windows.Forms.Tools.ToolStripEx
    Private colorschemeToolStripEx As Syncfusion.Windows.Forms.Tools.ToolStripEx
    Private quickstepsToolStripEx As Syncfusion.Windows.Forms.Tools.ToolStripEx
    Private currentviewToolStripEx As Syncfusion.Windows.Forms.Tools.ToolStripEx
    Private messagesToolStripEx As Syncfusion.Windows.Forms.Tools.ToolStripEx
    Private layoutToolStripEx As Syncfusion.Windows.Forms.Tools.ToolStripEx
    Private peopleToolStripEx As Syncfusion.Windows.Forms.Tools.ToolStripEx
    Private windowToolStripEx As Syncfusion.Windows.Forms.Tools.ToolStripEx

    Me.newToolStripEx = New ToolStripEx()
    Me.deleteToolStripEx = New ToolStripEx()
    Me.respondToolStripEx = New ToolStripEx()
    Me.moveToolStripEx = New ToolStripEx()
    Me.tagsToolStripEx = New ToolStripEx()
    Me.colorschemeToolStripEx = New ToolStripEx()
    Me.quickstepsToolStripEx = New ToolStripEx()
    Me.currentviewToolStripEx = New ToolStripEx()
    Me.messagesToolStripEx = New ToolStripEx()
    Me.layoutToolStripEx = New ToolStripEx()
    Me.peopleToolStripEx = New ToolStripEx()
    Me.windowToolStripEx = New ToolStripEx()

    Me.newToolStripEx.Text = "New"
    Me.deleteToolStripEx.Text = "Delete"
    Me.respondToolStripEx.Text = "Respond"
    Me.moveToolStripEx.Text = "Move"
    Me.tagsToolStripEx.Text = "Tags"
    Me.colorschemeToolStripEx.Text = "Color Scheme"
    Me.quickstepsToolStripEx.Text = "Quick Steps"
    Me.currentviewToolStripEx.Text = "Current View"
    Me.messagesToolStripEx.Text = "Messages"
    Me.layoutToolStripEx.Text = "Layout"
    Me.peopleToolStripEx.Text = "People"
    Me.windowToolStripEx.Text = "Window"

    Me.homeTabItem.Panel.Controls.AddRange(New Control() {newToolStripEx, deleteToolStripEx, respondToolStripEx, moveToolStripEx, tagsToolStripEx, colorschemeToolStripEx, quickstepsToolStripEx})

    Me.viewTabItem.Panel.Controls.AddRange(New Control() {currentviewToolStripEx, messagesToolStripEx, layoutToolStripEx, peopleToolStripEx, windowToolStripEx})


{% endhighlight %}

{% endtabs %}

To add controls to the ToolStripEx, click the button  in it, as in the image below.

![](Getting_Started_Images/Getting-Started_img7.jpg)

## Add Button Controls

### ToolStripDropDownButton

DropDownButton appears like normal button with an extra drop arrow. It accepts DropDownMenuItem as its children. When clicked, displays added menu items.

#### Adding ToolStripDropDownButton

Click the button inside the ToolStripEx panel and select DropDownButton from the controls grid.

![](Getting_Started_Images/Getting-Started_img8.jpg)

Through code

{% tabs %}

{% highlight c# %}

private System.Windows.Forms.ToolStripDropDownButton newitemsDropDownButton;
private System.Windows.Forms.ToolStripDropDownButton CleanUpDropDownButton;
private System.Windows.Forms.ToolStripDropDownButton JunkDropDownButton;
private System.Windows.Forms.ToolStripDropDownButton followupDropDownButton;
private System.Windows.Forms.ToolStripDropDownButton categorizeDropDownButton;

this.newitemsDropDownButton = new System.Windows.Forms.ToolStripDropDownButton();
this.CleanUpDropDownButton = new System.Windows.Forms.ToolStripDropDownButton();
this.JunkDropDownButton = new System.Windows.Forms.ToolStripDropDownButton();
this.followupDropDownButton = new System.Windows.Forms.ToolStripDropDownButton();
this.categorizeDropDownButton = new System.Windows.Forms.ToolStripDropDownButton();

this.newitemsDropDownButton.Text = "New Items";
this.CleanUpDropDownButton.Text = "Clean Up";
this.JunkDropDownButton.Text = "Junk";
this.followupDropDownButton.Text = "Follow Up";
this.categorizeDropDownButton.Text = "Categorize";

this.newitemsDropDownButton.Image = Image.FromFile(@"Pictures\newitems.png");
this.CleanUpDropDownButton.Image = Image.FromFile(@"Pictures\cleanup.png");
this.JunkDropDownButton.Image = Image.FromFile(@"Pictures\junk.png");
this.followupDropDownButton.Image = Image.FromFile(@"Pictures\followup.png");
this.categorizeDropDownButton.Image = Image.FromFile(@"Pictures\categorize.png");

this.newToolStripEx.Items.Add(newitemsDropDownButton);

this.deleteToolStripEx.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.CleanUpDropDownButton, this.JunkDropDownButton});
            
this.tagsToolStripEx.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.followupDropDownButton, this.categorizeDropDownButton


{% endhighlight %}

{% highlight vb %}

    Private newitemsDropDownButton As System.Windows.Forms.ToolStripDropDownButton
    Private CleanUpDropDownButton As System.Windows.Forms.ToolStripDropDownButton
    Private JunkDropDownButton As System.Windows.Forms.ToolStripDropDownButton
    Private followupDropDownButton As System.Windows.Forms.ToolStripDropDownButton
    Private categorizeDropDownButton As System.Windows.Forms.ToolStripDropDownButton

    Me.newitemsDropDownButton = New System.Windows.Forms.ToolStripDropDownButton()
    Me.CleanUpDropDownButton = New System.Windows.Forms.ToolStripDropDownButton()
    Me.JunkDropDownButton = New System.Windows.Forms.ToolStripDropDownButton()
    Me.followupDropDownButton = New System.Windows.Forms.ToolStripDropDownButton()
    Me.categorizeDropDownButton = New System.Windows.Forms.ToolStripDropDownButton()

    Me.newitemsDropDownButton.Text = "New Items"
    Me.CleanUpDropDownButton.Text = "Clean Up"
    Me.JunkDropDownButton.Text = "Junk"
    Me.followupDropDownButton.Text = "Follow Up"
    Me.categorizeDropDownButton.Text = "Categorize"

    Me.newitemsDropDownButton.Image = Image.FromFile("Pictures\newitems.png")
    Me.CleanUpDropDownButton.Image = Image.FromFile("Pictures\cleanup.png")
    Me.JunkDropDownButton.Image = Image.FromFile("Pictures\junk.png")
    Me.followupDropDownButton.Image = Image.FromFile("Pictures\followup.png")
    Me.categorizeDropDownButton.Image = Image.FromFile("Pictures\categorize.png")

    Me.newToolStripEx.Items.Add(newitemsDropDownButton)
    Me.deleteToolStripEx.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.CleanUpDropDownButton, Me.JunkDropDownButton})
    Me.tagsToolStripEx.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.followupDropDownButton, Me.categorizeDropDownButton})

{% endhighlight %}

{% endtabs %}

![](Getting_Started_Images/Getting-Started_img9.jpg)

#### Adding DropDownMenuItems

DropDownMenuItems can be added through the button property `DropDownItems`, this will invoke an Item Collection editor and items can be added through this editor.

![](Getting_Started_Images/Getting-Started_img10.jpg)

![](Getting_Started_Images/Getting-Started_img11.jpg)

Items can also be added to the dropdown by clicking on the dropdown button and click the small arrow as shown in the image

![](Getting_Started_Images/Getting-Started_img12.jpg)

Through code

{% tabs %}

{% highlight c# %}

private System.Windows.Forms.ToolStripMenuItem emailMessageToolStripMenuItem;
private System.Windows.Forms.ToolStripMenuItem appointmentToolStripMenuItem;
private System.Windows.Forms.ToolStripMenuItem meetingToolStripMenuItem;
private System.Windows.Forms.ToolStripMenuItem contactToolStripMenuItem;

this.emailMessageToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
this.appointmentToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
this.meetingToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
this.contactToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();

this.emailMessageToolStripMenuItem.Text = "E-mail Message";
this.appointmentToolStripMenuItem.Text = "Appointment";
this.meetingToolStripMenuItem.Text = "Meeting";
this.contactToolStripMenuItem.Text = "Contact";

this.newitemsDropDownButton.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.emailMessageToolStripMenuItem,
this.appointmentToolStripMenuItem,
this.meetingToolStripMenuItem,
this.contactToolStripMenuItem
});


{% endhighlight %}

{% highlight vb %}

Private emailMessageToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
Private appointmentToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
Private meetingToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
Private contactToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem

Me.emailMessageToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
Me.appointmentToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
Me.meetingToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
Me.contactToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()

Me.emailMessageToolStripMenuItem.Text = "E-mail Message"
Me.appointmentToolStripMenuItem.Text = "Appointment"
Me.meetingToolStripMenuItem.Text = "Meeting"
Me.contactToolStripMenuItem.Text = "Contact"

Me.toolStripDropDownButton.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.emailMessageToolStripMenuItem, Me.appointmentToolStripMenuItem,Me.meetingToolStripMenuItem, Me.contactToolStripMenuItem})

{% endhighlight %}

{% endtabs %}

![](Getting_Started_Images/Getting-Started_img13.jpg)

#### Properties of ToolStripDropDownButton

##### Foreground Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
Text<br/><br/></td><td>
Gets or Sets the Text for the ToolStripDropDownButton. This text will be displayed, only if the DisplayStyle is Text or ImageAndText.<br/><br/></td></tr>
<tr>
<td>
Font<br/><br/></td><td>
Gets or Sets the font style for the display text.<br/><br/></td></tr>
<tr>
<td>
ForeColor<br/><br/></td><td>
Gets or Sets the fore color for the display text.<br/><br/></td></tr>
<tr>
<td>
TextAlign<br/><br/></td><td>
Gets or sets  the alignment of the text in the item. The options are,<br/><br/>TopLeft, <br/><br/>TopCenter, <br/><br/>TopRight,<br/><br/>MiddleLeft, <br/><br/>MiddleCenter, <br/><br/>MiddleRight,<br/><br/>BottomLeft, <br/><br/>BottomCenter and<br/><br/>BottomRight.<br/><br/></td></tr>
<tr>
<td>
TextDirection<br/><br/></td><td>
Gets or sets the direction of drawing the text. The direction are,<br/><br/>{{ '__Horizontal__ ' | markdownify }} - Text is placed horizontally,<br/><br/>{{ '__Vertical90__ ' | markdownify }} - Text is placed vertically and <br/><br/>{{ '__Vertical270__ ' | markdownify }} - Text is placed vertically at 270 degrees.<br/><br/></td></tr>
<tr>
<td>
TextImageRelation<br/><br/></td><td>
Gets or sets the relative location of the image to the text on the item. The options are,<br/><br/>{{ '__Overlay__ ' | markdownify }} - Image and text shares the same space in the control,<br/><br/>{{ '__ImageAboveText__ ' | markdownify }} - Image will be placed above the text,<br/><br/>{{ '__TextAboveImage__ ' | markdownify }} - Text will be placed above the image,<br/><br/>{{ '__ImageBeforeText__ ' | markdownify }} - Image will be placed before the text and <br/><br/>{{ '__TextBeforeImage__ ' | markdownify }} - Text will be placed before the image.<br/><br/></td></tr>
</table>

##### Image Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
Image<br/><br/></td><td>
Gets or Sets the image for the item.<br/><br/></td></tr>
<tr>
<td>
ImageAlign<br/><br/></td><td>
Gets or sets the alignment of the image. The options are,<br/><br/>TopLeft, <br/><br/>TopCenter, <br/><br/>TopRight,<br/><br/>MiddleLeft, <br/><br/>MiddleCenter, <br/><br/>MiddleRight,<br/><br/>BottomLeft, <br/><br/>BottomCenter and<br/><br/>BottomRight.<br/><br/></td></tr>
<tr>
<td>
ImageScaling<br/><br/></td><td>
Gets or Sets whether the image on the item will size to fit on the ToolStrip.<br/><br/></td></tr>
<tr>
<td>
ImageTransparentColor<br/><br/></td><td>
Gets or Sets the transparent color on the image, that supports transparency.<br/><br/></td></tr>
</table>

##### Style Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
DisplayStyle<br/><br/></td><td>
Gets or sets how the image and text are rendered. The styles are,<br/><br/>{{ '__Text__ ' | markdownify }} - Displays only text,<br/><br/>{{ '__Image__ ' | markdownify }} - Displays only image,<br/><br/>{{ '__ImageAndText__ ' | markdownify }} - Displays image and text.<br/><br/></td></tr>
<tr>
<td>
Enabled<br/><br/></td><td>
Gets or sets whether the item is enabled.<br/><br/></td></tr>
<tr>
<td>
Visible<br/><br/></td><td>
Gets or sets whether the item is visible.<br/><br/></td></tr>
<tr>
<td>
Alignment<br/><br/></td><td>
Gets or sets the alignment of the item within the ToolStrip. They can be set to beginning (Left) or end (Right) of the ToolStripEx control.<br/><br/></td></tr>
<tr>
<td>
AutoSize<br/><br/></td><td>
Gets or sets whether the item should size itself based on its image and text.<br/><br/></td></tr>
</table>

##### ToolTip Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
AutoToolTip<br/><br/></td><td>
When set to true, will display the text set in the Text property as the item's tooltip.<br/><br/>When set to false, will display the text set in the ToolTipText property.<br/><br/></td></tr>
<tr>
<td>
ToolTipText<br/><br/></td><td>
Gets or sets the text for the tooltip when AutoToolTip is set to false.<br/><br/></td></tr>
</table>

##### RTL Support

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
RightToLeft<br/><br/></td><td>
Indicates whether the item should draw right to left for RTL languages.<br/><br/></td></tr>
<tr>
<td>
RightToLeftAutoMirrorImage<br/><br/></td><td>
Gets or sets whether image should mirror when RightToLeft is enabled for the item.<br/><br/></td></tr>
</table>

##### DropDown settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
DropDown<br/><br/></td><td>
Gets or sets the ToolStripDropDown to be shown when the item is clicked.<br/><br/></td></tr>
<tr>
<td>
DropDownItems<br/><br/></td><td>
Invokes the Items Collection Editor and lets you add ToolStripItems to be displayed when the item is clicked.<br/><br/></td></tr>
<tr>
<td>
ShowDropDownArrow<br/><br/></td><td>
Gets or sets whether or not to show the drop down arrow on the ToolStripDropDown button.<br/><br/></td></tr>
</table>

### ToolStripButton

The Button is a control where the user can click to provide input to an application.

#### Adding ToolStripButton

For Adding `ToolStripButton` please refer `Adding ToolStripDropDownButton` and select `Button` from the Controls grid.

**Through Coding**

{% tabs %}

{% highlight c# %}

private System.Windows.Forms.ToolStripButton newmailButton;
private System.Windows.Forms.ToolStripButton IgnoreButton;
private System.Windows.Forms.ToolStripButton replyButton;
private System.Windows.Forms.ToolStripButton replyallButton;
private System.Windows.Forms.ToolStripButton forwardButton;

this.newmailButton = new System.Windows.Forms.ToolStripButton();
this.IgnoreButton = new System.Windows.Forms.ToolStripButton();
this.replyButton = new System.Windows.Forms.ToolStripButton();
this.replyallButton = new System.Windows.Forms.ToolStripButton();
this.forwardButton = new System.Windows.Forms.ToolStripButton();

this.newmailButton.Text = "New \r\nMail";
this.newmailButton.Image = Image.FromFile(@"Pictures\newmail.png");

this.IgnoreButton.Text = "Ignore";
this.IgnoreButton.Image = Image.FromFile(@"Pictures\ignore.png");

this.replyButton.Text = "Reply";
this.replyButton.Image = Image.FromFile(@"Pictures\reply.png");


this.replyallButton.Text = "Reply All";
this.replyallButton.Image = Image.FromFile(@"Pictures\replyall.png");

this.forwardButton.Text = "Forward";
this.forwardButton.Image = Image.FromFile(@"Pictures\forward.png");

this.newToolStripEx.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.newmailButton });
this.deleteToolStripEx.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.IgnoreButton });
this.respondToolStripEx.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.replyButton,
this.replyallButton,
this.forwardButton});

{% endhighlight %}

{% highlight vb %}

    Private newmailButton As System.Windows.Forms.ToolStripButton
    Private IgnoreButton As System.Windows.Forms.ToolStripButton
    Private replyButton As System.Windows.Forms.ToolStripButton
    Private replyallButton As System.Windows.Forms.ToolStripButton
    Private forwardButton As System.Windows.Forms.ToolStripButton

    Me.newmailButton = New System.Windows.Forms.ToolStripButton()
    Me.IgnoreButton = New System.Windows.Forms.ToolStripButton()
    Me.replyButton = New System.Windows.Forms.ToolStripButton()
    Me.replyallButton = New System.Windows.Forms.ToolStripButton()
    Me.forwardButton = New System.Windows.Forms.ToolStripButton()

    Me.newmailButton.Text = "New " & vbCrLf & "Mail"
    Me.newmailButton.Image = Image.FromFile("Pictures\newmail.png")
    Me.IgnoreButton.Text = "Ignore"
    Me.IgnoreButton.Image = Image.FromFile("Pictures\ignore.png")
    Me.replyButton.Text = "Reply"
    Me.replyButton.Image = Image.FromFile("Pictures\reply.png")
    Me.replyallButton.Text = "Reply All"
    Me.replyallButton.Image = Image.FromFile("Pictures\replyall.png")
    Me.forwardButton.Text = "Forward"
    Me.forwardButton.Image = Image.FromFile("Pictures\forward.png")

    Me.newToolStripEx.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.newmailButton})
    Me.deleteToolStripEx.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.IgnoreButton})
    Me.respondToolStripEx.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.replyButton, Me.replyallButton, Me.forwardButton})
    
{% endhighlight %}

{% endtabs %}

![](Getting_Started_Images/Getting-Started_img14.jpg)

#### Holding the Selection of ToolStripButton

For holding the selection of ToolstripButton after lost focus, use the property `CheckOnClick`, if true, the ToolStripButton will stay selected even after click and will go unselected after next click on that buton, it simply acts as a toggling functionality to that button.
The default value is false.

{% tabs %}

{% highlight c# %}

this.newmailButton.CheckOnClick = true;

{% endhighlight %}

{% highlight vb %}

Me.newmailButton.CheckOnClick = True

{% endhighlight %}

{% endtabs %}

### ToolStripSplitButtonEx

SplitButtonEx can perform like both normal Button as well as DropDownButton. It allows to click the button directly by clicking the upper part of the button and also it display list of items while click on the arrow. 

#### Adding ToolStripSplitButtonEx

For Adding `ToolStripSplitButtonEx` please refer `Adding ToolStripDropDownButton` and select `SplitButtonEx` from the Controls grid.

{% tabs %}

{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.ToolStripSplitButtonEx moveSplitButtonEx;

this.moveSplitButtonEx = new Syncfusion.Windows.Forms.Tools.ToolStripSplitButtonEx();

this.moveSplitButtonEx.Image = Image.FromFile(@"Pictures\move.png");
this.moveSplitButtonEx.Text = "Move";

this.moveToolStripEx.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.moveSplitButtonEx });

{% endhighlight %}

{% highlight vb %}

Private moveSplitButtonEx As Syncfusion.Windows.Forms.Tools.ToolStripSplitButtonEx

Me.moveSplitButtonEx = New Syncfusion.Windows.Forms.Tools.ToolStripSplitButtonEx()
Me.moveSplitButtonEx.Image = Image.FromFile("Pictures\move.png")
Me.moveSplitButtonEx.Text = "Move"

Me.moveToolStripEx.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.moveSplitButtonEx})

{% endhighlight %}

{% endtabs %}

#### ToolStripSplitButton

The properties of SplitButton is like SplitButtonEx except DropDownButtonWidth property is available for SplitButton control.

{% tabs %}

{% highlight c# %}

private System.Windows.Forms.ToolStripSplitButton rulesSplitButton;

this.rulesSplitButton = new System.Windows.Forms.ToolStripSplitButton();

this.rulesSplitButton.Image = Image.FromFile(@"Pictures\rules.png");
this.rulesSplitButton.Text = "Rules";
this.rulesSplitButton.DropDownButtonWidth = 20;

this.moveToolStripEx.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.rulesSplitButton });

{% endhighlight %}

{% highlight vb %}

Private rulesSplitButton As System.Windows.Forms.ToolStripSplitButton

Me.rulesSplitButton = New System.Windows.Forms.ToolStripSplitButton()

Me.rulesSplitButton.Image = Image.FromFile("Pictures\rules.png")
Me.rulesSplitButton.Text = "Rules"
Me.rulesSplitButton.DropDownButtonWidth = 20

Me.moveToolStripEx.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.rulesSplitButton})

{% endhighlight %}

{% endtabs %}

![](Getting_Started_Images/Getting-Started_img15.jpg)

### ToolStripRadioButton

ToolStripRadioButton control is used to select an option like normal RadioButton.

#### Adding ToolStripRadioButton

For Adding `ToolStripRadioButton` please refer `Adding ToolStripDropDownButton` and select `RadioButton` from the Controls grid.

**Through Coding**

{% tabs %}

{% highlight c# %}

Syncfusion.Windows.Forms.Tools.ToolStripRadioButton readRadioButton;
Syncfusion.Windows.Forms.Tools.ToolStripRadioButton unreadRadioButton;
Syncfusion.Windows.Forms.Tools.ToolStripPanelItem readunreadPanel;

this.readRadioButton = new ToolStripRadioButton();
this.unreadRadioButton = new ToolStripRadioButton();
this.readunreadPanel = new ToolStripPanelItem();

this.readRadioButton.Text = "Read";
this.unreadRadioButton.Text = "Unread";

this.readunreadPanel.Items.AddRange(new ToolStripItem[] { readRadioButton, unreadRadioButton });
this.tagsToolStripEx.Items.AddRange(new ToolStripItem[] { readunreadPanel });

{% endhighlight %}

{% highlight vb %}

    Dim readRadioButton As Syncfusion.Windows.Forms.Tools.ToolStripRadioButton
    Dim unreadRadioButton As Syncfusion.Windows.Forms.Tools.ToolStripRadioButton
    Dim readunreadPanel As Syncfusion.Windows.Forms.Tools.ToolStripPanelItem

    Me.readRadioButton = New ToolStripRadioButton()
    Me.unreadRadioButton = New ToolStripRadioButton()
    Me.readunreadPanel = New ToolStripPanelItem()

    Me.readRadioButton.Text = "Read"
    Me.unreadRadioButton.Text = "Unread"

    Me.readunreadPanel.Items.AddRange(New ToolStripItem() {readRadioButton, unreadRadioButton})
    Me.tagsToolStripEx.Items.AddRange(New ToolStripItem() {readunreadPanel})

{% endhighlight %}

{% endtabs %}

![](Getting_Started_Images/Getting-Started_img16.jpg)

## Add ToolStripComboBoxEx

ToolStripComboBox control is used to display the list of items, as ComboBox. It can be added to a ToolStripEx directly or through the panel.

### Adding control manually 

{% tabs %}

{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.ToolStripComboBoxEx visualstyleComboBox;
private Syncfusion.Windows.Forms.Tools.ToolStripComboBoxEx schemeComboBox;

this.visualstyleComboBox = new ToolStripComboBoxEx();
this.schemeComboBox = new ToolStripComboBoxEx();

this.visualstyleComboBox.Items.AddRange(new object[] {
"Office 2016 Style",
"Office 2013 Style",
"Touch Style",
"Office 2010 Style",
"Office 2007 Style"});

this.colorschemeToolStripEx.Items.AddRange(new ToolStripItem[] { visualstyleComboBox, schemeComboBox });

{% endhighlight %}

{% highlight vb %}

    Private visualstyleComboBox As Syncfusion.Windows.Forms.Tools.ToolStripComboBoxEx
    Private schemeComboBox As Syncfusion.Windows.Forms.Tools.ToolStripComboBoxEx

    Me.visualstyleComboBox = New ToolStripComboBoxEx()
    Me.schemeComboBox = New ToolStripComboBoxEx()

    Me.visualstyleComboBox.Items.AddRange(New Object() {"Office 2016 Style", "Office 2013 Style", "Touch Style", "Office 2010 Style", "Office 2007 Style"})

    Me.colorschemeToolStripEx.Items.AddRange(New ToolStripItem() {visualstyleComboBox, schemeComboBox})

{% endhighlight %}

{% endtabs %}

![](Getting_Started_Images/Getting-Started_img17.jpg)

### DropDownStyle

*	Simple – There will be no dropdown button, all the items will be shown below the control.
*	DropDown – Contains a dropdown button and the text in ToolStripComboBoxEx can be edited.
*	DropDownList – Contains a dropdown button and restricts the editing of text in ToolStripComboBoxEx

### ToolStripComboBox

ToolStripComboBox is similar to ToolStripComboBoxEx with some changes in visual styles.

## Add ToolStripGallery

RibbonControlAdv provides options to add a collection of items and store them into a gallery. A gallery can be added to a ToolStripTabItem using Panel Button.

Gallery Items can be added through the Items Collection Editor from the Property grid of ToolStripGallery.

![](Getting_Started_Images/Getting-Started_img18.jpg)

### Scroller Settings

Sets the Scroller for the Gallery, there are two types of scrollers

*	Standard Scroller – A normal scroller which scrolls up and down.
*	Compact Scroller – A Special scroller which has Up and Down arrow and contains another down arrow which opens all the items in the gallery.

{% tabs %}

{% highlight c# %}

//Adding new ToolStripGallery control
private Syncfusion.Windows.Forms.Tools.ToolStripGallery quickGallery;

//Creating an instance of the control
this.quickGallery = new Syncfusion.Windows.Forms.Tools.ToolStripGallery();

//gallery items
Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem movetoGalleryItem = new Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem();
Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem tomanagerGalleryItem = new Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem();
Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem teamemailGalleryItem = new Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem();
Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem replyandeleteGalleryItem = new Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem();
Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem doneGalleryItem = new Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem();
Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem createnewGalleryItem = new Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem();

movetoGalleryItem.Image = Image.FromFile(@"Pictures\moveto.png");
movetoGalleryItem.Text = " Move to : ?";
tomanagerGalleryItem.Image = Image.FromFile(@"Pictures\tomanager.png");
tomanagerGalleryItem.Text = "To Manager";
teamemailGalleryItem.Image = Image.FromFile(@"Pictures\teamemail.png");
teamemailGalleryItem.Text = "Team Email";
replyandeleteGalleryItem.Image = Image.FromFile(@"Pictures\replyanddelete.png");
replyandeleteGalleryItem.Text = "Reply and Delete";
doneGalleryItem.Image = Image.FromFile(@"Pictures\done.png");
doneGalleryItem.Text = "Done";
createnewGalleryItem.Image = Image.FromFile(@"Pictures\createnew.png");
createnewGalleryItem.Text = " Create New";


//Adding items to the gallery
this.quickGallery.Items.Add(movetoGalleryItem);
this.quickGallery.Items.Add(tomanagerGalleryItem);
this.quickGallery.Items.Add(teamemailGalleryItem);
this.quickGallery.Items.Add(replyandeleteGalleryItem);
this.quickGallery.Items.Add(doneGalleryItem);
this.quickGallery.Items.Add(createnewGalleryItem);

//Adding Gallery to toolstripex
this.quickstepsToolStripEx.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.quickGallery});

{% endhighlight %}

{% highlight vb %}

    Private quickGallery As Syncfusion.Windows.Forms.Tools.ToolStripGallery

    Me.quickGallery = New Syncfusion.Windows.Forms.Tools.ToolStripGallery()

    Dim movetoGalleryItem As Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem = New Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem()
    Dim tomanagerGalleryItem As Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem = New Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem()
    Dim teamemailGalleryItem As Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem = New Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem()
    Dim replyandeleteGalleryItem As Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem = New Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem()
    Dim doneGalleryItem As Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem = New Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem()
    Dim createnewGalleryItem As Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem = New Syncfusion.Windows.Forms.Tools.ToolStripGalleryItem()

    movetoGalleryItem.Image = Image.FromFile("Pictures\moveto.png")
    movetoGalleryItem.Text = " Move to : ?"
    tomanagerGalleryItem.Image = Image.FromFile("Pictures\tomanager.png")
    tomanagerGalleryItem.Text = "To Manager"
    teamemailGalleryItem.Image = Image.FromFile("Pictures\teamemail.png")
    teamemailGalleryItem.Text = "Team Email"
    replyandeleteGalleryItem.Image = Image.FromFile("Pictures\replyanddelete.png")
    replyandeleteGalleryItem.Text = "Reply and Delete"
    doneGalleryItem.Image = Image.FromFile("Pictures\done.png")
    doneGalleryItem.Text = "Done"
    createnewGalleryItem.Image = Image.FromFile("Pictures\createnew.png")
    createnewGalleryItem.Text = " Create New"

    Me.quickGallery.Items.Add(movetoGalleryItem)
    Me.quickGallery.Items.Add(tomanagerGalleryItem)
    Me.quickGallery.Items.Add(teamemailGalleryItem)
    Me.quickGallery.Items.Add(replyandeleteGalleryItem)
    Me.quickGallery.Items.Add(doneGalleryItem)
    Me.quickGallery.Items.Add(createnewGalleryItem)

    Me.quickstepsToolStripEx.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.quickGallery})

{% endhighlight %}

{% endtabs %}

![](Getting_Started_Images/Getting-Started_img19.jpg)

 
 ## Add ToolStripCheckBox

 ToolStripCheckBox is used to select or unselect options. It provides similar set of functionalities like normal CheckBox control in Ribbon.It can be added to a ToolStripEx directly or through a panel.

 {% tabs %}

{% highlight c# %}

//Adding new ToolStripCheckBox
private Syncfusion.Windows.Forms.Tools.ToolStripCheckBox showasconversationCheckBox;

//Creating an instance of the control
this.showasconversationCheckBox = new Syncfusion.Windows.Forms.Tools.ToolStripCheckBox();

this.showasconversationCheckBox.Text = "Show As Conversation";

//Adding control to the ToolStripEx
this.messagesToolStripEx.Items.Add(showasconversationCheckBox);

{% endhighlight %}

{% highlight vb %}

Private showasconversationCheckBox As Syncfusion.Windows.Forms.Tools.ToolStripCheckBox

Me.showasconversationCheckBox = New Syncfusion.Windows.Forms.Tools.ToolStripCheckBox()
Me.showasconversationCheckBox.Text = "Show As Conversation"

Me.messagesToolStripEx.Items.Add(showasconversationCheckBox)

{% endhighlight %}

{% endtabs %}

![](Getting_Started_Images/Getting-Started_img20.jpg)

## Add ToolStripTextBox

Ribbon TextBox control provide similar set of functionalities like normal TextBox control in Ribbon Instance. It can be added to a ToolStripEx directly or through a panel.

{% tabs %}

{% highlight c# %}

//Adding new ToolStripTextBox
private System.Windows.Forms.ToolStripTextBox applicationnameTextBox;
private Syncfusion.Windows.Forms.Tools.ToolStripPanelItem applicationPanelItem;

this.applicationnameTextBox = new System.Windows.Forms.ToolStripTextBox();
this.applicationPanelItem = new Syncfusion.Windows.Forms.Tools.ToolStripPanelItem();

this.applicationnameTextBox.Text = "Outlook";
this.applicationnameTextBox.ForeColor = System.Drawing.SystemColors.HotTrack;

this.applicationPanelItem.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.applicationnameTextBox});

this.peopleToolStripEx.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.applicationPanelItem});

{% endhighlight %}

{% highlight vb %}

Private applicationnameTextBox As System.Windows.Forms.ToolStripTextBox
Private applicationPanelItem As Syncfusion.Windows.Forms.Tools.ToolStripPanelItem

Me.applicationnameTextBox = New System.Windows.Forms.ToolStripTextBox()
Me.applicationPanelItem = New Syncfusion.Windows.Forms.Tools.ToolStripPanelItem()
Me.applicationnameTextBox.Text = "Outlook"
Me.applicationnameTextBox.ForeColor = System.Drawing.SystemColors.HotTrack

Me.applicationPanelItem.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.applicationnameTextBox})
Me.peopleToolStripEx.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.applicationPanelItem})

{% endhighlight %}

{% endtabs %}

In the code, the text box will be added to a panel and the panel will be added to the ToolStripEx. (For more details about panel refer `Arrange items using ToolStripPanelItem`)

![](Getting_Started_Images/Getting-Started_img21.jpg)


## Add ToolStripProgressBar

ToolStripProgressBar can be used to provide a visual cue that the application is indeed working and the task is being completed item. It can be added to a ToolStripEx directly or through a panel.

{% tabs %}

{% highlight c# %}

//Adding new ToolStripProgressBar
private System.Windows.Forms.ToolStripProgressBar loadingProgressBar;
private Syncfusion.Windows.Forms.Tools.ToolStripPanelItem progressbarPanelItem;

//Creating new instance of the control
this.loadingProgressBar = new System.Windows.Forms.ToolStripProgressBar();
this.progressbarPanelItem = new Syncfusion.Windows.Forms.Tools.ToolStripPanelItem();

this.loadingProgressBar.Value = 50;

this.progressbarPanelItem.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.loadingProgressBar});

this.layoutToolStripEx.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.progressbarPanelItem});

{% endhighlight %}

{% highlight vb %}

Private loadingProgressBar As System.Windows.Forms.ToolStripProgressBar
Private progressbarPanelItem As Syncfusion.Windows.Forms.Tools.ToolStripPanelItem

Me.loadingProgressBar = New System.Windows.Forms.ToolStripProgressBar()
Me.progressbarPanelItem = New Syncfusion.Windows.Forms.Tools.ToolStripPanelItem()

Me.loadingProgressBar.Value = 50

Me.progressbarPanelItem.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.loadingProgressBar})

Me.layoutToolStripEx.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.progressbarPanelItem})

{% endhighlight %}

{% endtabs %}

![](Getting_Started_Images/Getting-Started_img22.jpg)

## Add ToolStripLabel

ToolStripLabel can be added to a ToolStripEx directly or through a panel. 

{% tabs %}

{% highlight c# %}

//Adding new ToolStripLabel
private System.Windows.Forms.ToolStripLabel applicationnameLabel;
private System.Windows.Forms.ToolStripLabel loadingtoolStripLabel;

this.applicationnameLabel = new System.Windows.Forms.ToolStripLabel();
this.applicationnameLabel.Text = "Application Name";

this.loadingtoolStripLabel = new System.Windows.Forms.ToolStripLabel();
this.loadingtoolStripLabel.Text = "Loading Attachments";

this.applicationPanelItem.Items.Add(applicationnameLabel);
this.progressbarPanelItem.Items.Add(this.loadingtoolStripLabel);

{% endhighlight %}

{% highlight vb %}

Private applicationnameLabel As System.Windows.Forms.ToolStripLabel
Private loadingtoolStripLabel As System.Windows.Forms.ToolStripLabel

Me.applicationnameLabel = New System.Windows.Forms.ToolStripLabel()
Me.applicationnameLabel.Text = "Application Name"
Me.loadingtoolStripLabel = New System.Windows.Forms.ToolStripLabel()
Me.loadingtoolStripLabel.Text = "Loading Attachments"

Me.applicationPanelItem.Items.Add(applicationnameLabel)
Me.progressbarPanelItem.Items.Add(Me.loadingtoolStripLabel)

{% endhighlight %}

{% endtabs %}

![](Getting_Started_Images/Getting-Started_img23.jpg)

## Add ToolStripSeparator

Ribbon Separator is used to separate the similar set of Ribbon elements in Ribbon. It can separate RibbonButtons according to their purpose and it can be added to a ToolStripEx directly or through a panel.

{% tabs %}

{% highlight c# %}

//Adding new ToolStripSeparator
private System.Windows.Forms.ToolStripSeparator toolstripseparator;

//Creating new instance of the control
this.toolstripseparator = new ToolStripSeparator();

//Adding the control to the ToolStripEx
this.tagsToolStripEx.Items.Add(toolstripseparator);

{% endhighlight %}

{% highlight vb %}

Private toolstripseparator As System.Windows.Forms.ToolStripSeparator

Me.toolstripseparator = New ToolStripSeparator()

Me.tagsToolStripEx.Items.Add(toolstripseparator)

{% endhighlight %}

{% endtabs %}

![](Getting_Started_Images/Getting-Started_img24.jpg)

## Arrange item using ToolStripPanelItem

ToolStripPanelItem provides support for aligning the controls in multiple lines. It supports nesting of panels without any limitation on the level of nesting. Not only controls but, any number of panels can be added to a panel.

Using the `RowCount` property of ToolStripPanelItem, controls can be arranged in any number of rows inside a ToolStripPanelItem.

![](Getting_Started_Images/Getting-Started_img25.jpg)

### Adding Controls to Panel Item

Accessing ToolStripPanelItem.Items property, Items Collection Editor dialog pops-up. The item can be added and customized using this dialog.

{% tabs %}

{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.ToolStripPanelItem currentviewPanelItem;
private System.Windows.Forms.ToolStripDropDownButton changeviewDropDownButton;
private System.Windows.Forms.ToolStripDropDownButton viewsettingsButton;
private System.Windows.Forms.ToolStripDropDownButton resetviewButton;

this.currentviewPanelItem = new Syncfusion.Windows.Forms.Tools.ToolStripPanelItem();
this.changeviewDropDownButton = new ToolStripDropDownButton();
this.viewsettingsButton = new ToolStripDropDownButton();
this.resetviewButton = new ToolStripDropDownButton();

//Specifies the number of rows in the panel
this.currentviewPanelItem.RowCount = 1;

this.changeviewDropDownButton.Text = "Change\r\nView";
this.viewsettingsButton.Text = "View\r\nSettings";
this.resetviewButton.Text = "Reset\r\nView";


this.currentviewPanelItem.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.changeviewDropDownButton,
this.viewsettingsButton,
this.resetviewButton});

this.currentviewToolStripEx.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
this.currentviewPanelItem});

{% endhighlight %}

{% highlight vb %}

Private currentviewPanelItem As Syncfusion.Windows.Forms.Tools.ToolStripPanelItem
Private changeviewDropDownButton As System.Windows.Forms.ToolStripDropDownButton
Private viewsettingsButton As System.Windows.Forms.ToolStripDropDownButton
Private resetviewButton As System.Windows.Forms.ToolStripDropDownButton

Me.currentviewPanelItem = New Syncfusion.Windows.Forms.Tools.ToolStripPanelItem()
Me.changeviewDropDownButton = New ToolStripDropDownButton()
Me.viewsettingsButton = New ToolStripDropDownButton()
Me.resetviewButton = New ToolStripDropDownButton()

Me.currentviewPanelItem.RowCount = 1
    
Me.changeviewDropDownButton.Text = "Change" & vbCrLf & "View"
Me.viewsettingsButton.Text = "View" & vbCrLf & "Settings"
Me.resetviewButton.Text = "Reset" & vbCrLf & "View"

Me.currentviewPanelItem.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.changeviewDropDownButton, Me.viewsettingsButton, Me.resetviewButton})
Me.currentviewToolStripEx.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.currentviewPanelItem})

{% endhighlight %}

{% endtabs %}

![](Getting_Started_Images/Getting-Started_img26.jpg)

## Add QAT

`QuickAccessToolBar` is a customizable bar that provides one click access to the frequently used items.
By default, the location of QAT will be above the Ribbon, its location can be changed using the property `ShowQuickPanelBelowRibbon`.

### QuickAccessToolBar Items

#### Adding Items to QAT

QAT item can be added by right clicking the ribbon item and choosing `Add to Quick Access Toolbar` from the context menu.

![](Getting_Started_Images/Getting-Started_img27.jpg)

## Add BackStage

Ribbon enables you to work in the document and Backstage enables you to work with the document. Using this you can alter contents and provide end-user options that are related to specific solution requirements.

The following are steps to create a BackStageView:

1. Drag and drop the BackStageView from the Toolbox.

![](Getting_Started_Images/Getting-Started_img28.jpg)

2. Select the backStageView control below the designer and click the smart tag from the focus rectangle and then click `ShowBackstage`.

![](Getting_Started_Images/Getting-Started_img29.jpg)

3. Set BackStageView to RibbonControlAdv

![](Getting_Started_Images/Getting-Started_img30.jpg)

Set a name to the menu button with the property `MenuButtonText` 

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.MenuButtonText = "File";

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.MenuButtonText = "File"

{% endhighlight %}

{% endtabs %}

4. An Empty BackStage will be created. By clicking the File menu button, BackStage will be shown.

![](Getting_Started_Images/Getting-Started_img31.jpg)

### Add BackStage Tab

BackStage Tab can be added through Smart tag of backstageview.

![](Getting_Started_Images/Getting-Started_img32.jpg)

**Through Coding**

{% tabs %}

{% highlight c# %}

//Creating new backstage tabs
private Syncfusion.Windows.Forms.BackStageTab openexportBackStageTab;
private Syncfusion.Windows.Forms.BackStageTab saveattachmentsBackStageTab;
private Syncfusion.Windows.Forms.BackStageTab openBackStageTab;
private Syncfusion.Windows.Forms.BackStageTab officeaccountsBackStageTab;
private Syncfusion.Windows.Forms.BackStageTab printBackStageTab;

//Creating new instance and customizing
this.openexportBackStageTab = new Syncfusion.Windows.Forms.BackStageTab();
this.saveattachmentsBackStageTab = new Syncfusion.Windows.Forms.BackStageTab();
this.openBackStageTab = new Syncfusion.Windows.Forms.BackStageTab();
this.officeaccountsBackStageTab = new Syncfusion.Windows.Forms.BackStageTab();
this.printBackStageTab = new Syncfusion.Windows.Forms.BackStageTab();

this.openexportBackStageTab.Text = "Open/Export";
this.saveattachmentsBackStageTab.Text = "Save Attachments";
this.openBackStageTab.Text = "Open";
this.officeaccountsBackStageTab.Text = "Office Accounts";
this.printBackStageTab.Text = "Print";

//Adding them to backstage controls
this.backStage1.Controls.Add(infoBackStageTab);
this.backStage1.Controls.Add(saveasBackStageTab);
this.backStage1.Controls.Add(openBackStageTab);
this.backStage1.Controls.Add(officeaccountsBackStageTab);
this.backStage1.Controls.Add(printBackStageTab);

{% endhighlight %}

{% highlight vb %}

    Private openexportBackStageTab As Syncfusion.Windows.Forms.BackStageTab
    Private saveattachmentsBackStageTab As Syncfusion.Windows.Forms.BackStageTab
    Private openBackStageTab As Syncfusion.Windows.Forms.BackStageTab
    Private officeaccountsBackStageTab As Syncfusion.Windows.Forms.BackStageTab
    Private printBackStageTab As Syncfusion.Windows.Forms.BackStageTab

    Me.openexportBackStageTab = New Syncfusion.Windows.Forms.BackStageTab()
    Me.saveattachmentsBackStageTab = New Syncfusion.Windows.Forms.BackStageTab()
    Me.openBackStageTab = New Syncfusion.Windows.Forms.BackStageTab()
    Me.officeaccountsBackStageTab = New Syncfusion.Windows.Forms.BackStageTab()
    Me.printBackStageTab = New Syncfusion.Windows.Forms.BackStageTab()

    Me.openexportBackStageTab.Text = "Open/Export"
    Me.saveattachmentsBackStageTab.Text = "Save Attachments"
    Me.openBackStageTab.Text = "Open"
    Me.officeaccountsBackStageTab.Text = "Office Accounts"
    Me.printBackStageTab.Text = "Print"

    Me.backStage1.Controls.Add(infoBackStageTab)
    Me.backStage1.Controls.Add(saveasBackStageTab)
    Me.backStage1.Controls.Add(openBackStageTab)
    Me.backStage1.Controls.Add(officeaccountsBackStageTab)
    Me.backStage1.Controls.Add(printBackStageTab)

{% endhighlight %}

{% endtabs %}

### Add BackStage Button

BackStage Button can be added through Smart tag of backstageview.

![](Getting_Started_Images/Getting-Started_img33.jpg)

**Through Coding**

{% tabs %}

{% highlight c# %}

//Creating new backstage buttons
private Syncfusion.Windows.Forms.BackStageButton saveasBackStageButton;
private Syncfusion.Windows.Forms.BackStageButton optionsBackStageButton;
private Syncfusion.Windows.Forms.BackStageButton exitBackStageButton;

//Creating new instance and customizing
this.optionsBackStageButton = new Syncfusion.Windows.Forms.BackStageButton();
this.saveasBackStageButton = new Syncfusion.Windows.Forms.BackStageButton();
this.exitBackStageButton = new Syncfusion.Windows.Forms.BackStageButton();
this.optionsBackStageButton.Text = "Options";
this.saveasBackStageButton.Text = "Save As";
this.exitBackStageButton.Text = "Exit";

//Adding them to backstage controls
this.backStage1.Controls.Add(optionsBackStageButton);
this.backStage1.Controls.Add(saveasBackStageButton);
this.backStage1.Controls.Add(exitBackStageButton);

{% endhighlight %}

{% highlight vb %}

    Private saveasBackStageButton As Syncfusion.Windows.Forms.BackStageButton
    Private optionsBackStageButton As Syncfusion.Windows.Forms.BackStageButton
    Private exitBackStageButton As Syncfusion.Windows.Forms.BackStageButton

    Me.optionsBackStageButton = New Syncfusion.Windows.Forms.BackStageButton()
    Me.saveasBackStageButton = New Syncfusion.Windows.Forms.BackStageButton()
    Me.exitBackStageButton = New Syncfusion.Windows.Forms.BackStageButton()
    Me.optionsBackStageButton.Text = "Options"
    Me.saveasBackStageButton.Text = "Save As"
    Me.exitBackStageButton.Text = "Exit"

    Me.backStage1.Controls.Add(optionsBackStageButton)
    Me.backStage1.Controls.Add(saveasBackStageButton)
    Me.backStage1.Controls.Add(exitBackStageButton)

{% endhighlight %}

{% endtabs %}

`BackStageSeparator` – a thin line that separates the neighboring items.
Separator can be added through Smart tag as explained in adding backstage button and tab.

![](Getting_Started_Images/Getting-Started_img34.jpg)


## Add ApplicationMenu

The RibbonControlAdv has the office menu button at the top left corner of the form. Controls can be added to the panels of the office menu button dropdown through designer.

![](Getting_Started_Images/Getting-Started_img35.jpg)

N> ApplicationMenu can be accessed only when ribbon style is Office2007


