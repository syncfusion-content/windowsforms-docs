---
layout: post
title: Ribbon-ToolStripDropDownButton | WindowsForms | Syncfusion
description:  ribbon toolstripdropdownbutton
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---

# Ribbon ToolStripDropDownButton

DropDownButton appears like normal button that contains a drop arrow. It displays some items, while click on it. It accepts DropDownMenuItem as its children.

## Add ToolStripMenuItems

DropDownMenuItems can be directly added to the DropDownButton button by clicking on the button.

![](Ribbon-ToolStripDropDownButton_images/Ribbon-ToolStripDropDownButton_img1.jpeg)


It can also be added programmatically by using the following code snippets.

{% tabs %}

{% highlight c# %}

private System.Windows.Forms.ToolStripMenuItem emailMessageToolStripMenuItem;

this.emailMessageToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();

private System.Windows.Forms.ToolStripMenuItem appointmentToolStripMenuItem;

this.appointmentToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();

private System.Windows.Forms.ToolStripMenuItem meetingToolStripMenuItem;

this.meetingToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();

private System.Windows.Forms.ToolStripMenuItem contactToolStripMenuItem;

this.contactToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();

this.emailMessageToolStripMenuItem.Text = "E-mail Message";

this.appointmentToolStripMenuItem.Text = "Appointment";

this.meetingToolStripMenuItem.Text = "Meeting";

this.contactToolStripMenuItem.Text = "Contact";

this.toolStripDropDownButton1.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {

this.emailMessageToolStripMenuItem,

this.appointmentToolStripMenuItem,

this.meetingToolStripMenuItem,

this.contactToolStripMenuItem});

{% endhighlight %}

{% highlight vb %}

Private emailMessageToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem

Me.emailMessageToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()

private System.Windows.Forms.ToolStripMenuItem appointmentToolStripMenuItem

Me.appointmentToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()

private System.Windows.Forms.ToolStripMenuItem meetingToolStripMenuItem

Me.meetingToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()

private System.Windows.Forms.ToolStripMenuItem contactToolStripMenuItem

Me.contactToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()

Me.emailMessageToolStripMenuItem.Text = "E-mail Message"

Me.appointmentToolStripMenuItem.Text = "Appointment"

Me.meetingToolStripMenuItem.Text = "Meeting"

Me.contactToolStripMenuItem.Text = "Contact"

Me.toolStripDropDownButton1.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() { 
	
Me.emailMessageToolStripMenuItem, 

Me.appointmentToolStripMenuItem,

Me.meetingToolStripMenuItem, 

Me.contactToolStripMenuItem})

{% endhighlight %}

{% endtabs %}

![](Ribbon-ToolStripDropDownButton_images/Ribbon-ToolStripDropDownButton_img2.jpeg)


## Properties of ToolStripDropDownButton

The below properties controls the appearance and behavior of the ToolStripDropDownButton.

### Foreground Settings


<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
Text<br/><br/></td><td>
Sets the Text for the ToolStripDropDownButton. This text will be displayed, only if the DisplayStyle is Text or ImageAndText.<br/><br/></td></tr>
<tr>
<td>
Font<br/><br/></td><td>
Sets the font style for the display text.<br/><br/></td></tr>
<tr>
<td>
ForeColor<br/><br/></td><td>
Sets the fore color for the display text.<br/><br/></td></tr>
<tr>
<td>
TextAlign<br/><br/></td><td>
Specifies the alignment of the text in the item. The options are,<br/><br/>TopLeft, <br/><br/>TopCenter, <br/><br/>TopRight,<br/><br/>MiddleLeft, <br/><br/>MiddleCenter, <br/><br/>MiddleRight,<br/><br/>BottomLeft, <br/><br/>BottomCenter and<br/><br/>BottomRight.<br/><br/></td></tr>
<tr>
<td>
TextDirection<br/><br/></td><td>
Specifies the direction of drawing the text. The direction are,<br/><br/>{{ '__Horizontal__ ' | markdownify }} - Text is placed horizontally,<br/><br/>{{ '__Vertical90__ ' | markdownify }} - Text is placed vertically and <br/><br/>{{ '__Vertical270__ ' | markdownify }} - Text is placed vertically at 270 degrees.<br/><br/></td></tr>
<tr>
<td>
TextImageRelation<br/><br/></td><td>
Specifies the relative location of the image to the text on the item. The options are,<br/><br/>{{ '__Overlay__ ' | markdownify }} - Image and text shares the same space in the control,<br/><br/>{{ '__ImageAboveText__ ' | markdownify }} - Image will be placed above the text,<br/><br/>{{ '__TextAboveImage__ ' | markdownify }} - Text will be placed above the image,<br/><br/>{{ '__ImageBeforeText__ ' | markdownify }} - Image will be placed before the text and <br/><br/>{{ '__TextBeforeImage__ ' | markdownify }} - Text will be placed before the image.<br/><br/></td></tr>
</table>

### Image Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
Image<br/><br/></td><td>
Sets the image for the item.<br/><br/></td></tr>
<tr>
<td>
ImageAlign<br/><br/></td><td>
Specifies the alignment of the image. The options are,<br/><br/>TopLeft, <br/><br/>TopCenter, <br/><br/>TopRight,<br/><br/>MiddleLeft, <br/><br/>MiddleCenter, <br/><br/>MiddleRight,<br/><br/>BottomLeft, <br/><br/>BottomCenter and<br/><br/>BottomRight.<br/><br/></td></tr>
<tr>
<td>
ImageScaling<br/><br/></td><td>
Specifies whether the image on the item will size to fit on the ToolStrip.<br/><br/></td></tr>
<tr>
<td>
ImageTransparentColor<br/><br/></td><td>
Sets the transparent color on the image, that supports transparency.<br/><br/></td></tr>
</table>

### Style Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
DisplayStyle<br/><br/></td><td>
Specifies how the image and text are rendered. The styles are,<br/><br/>{{ '__Text__ ' | markdownify }} - Displays only text,<br/><br/>{{ '__Image__ ' | markdownify }} - Displays only image,<br/><br/>{{ '__ImageAndText__ ' | markdownify }} - Displays image and text.<br/><br/></td></tr>
<tr>
<td>
Enabled<br/><br/></td><td>
Specifies whether the item is enabled.<br/><br/></td></tr>
<tr>
<td>
Visible<br/><br/></td><td>
Specifies whether the item is visible.<br/><br/></td></tr>
<tr>
<td>
Alignment<br/><br/></td><td>
Sets the alignment of the item within the ToolStrip. They can be set to beginning (Left) or end (Right) of the ToolStripEx control.<br/><br/></td></tr>
<tr>
<td>
AutoSize<br/><br/></td><td>
Specifies whether the item should size itself based on its image and text.<br/><br/></td></tr>
</table>

### ToolTip Settings

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
Sets the text for the tooltip when AutoToolTip is set to false.<br/><br/></td></tr>
</table>

### RTL Support

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
Specifies whether image should mirror when RightToLeft is enabled for the item.<br/><br/></td></tr>
</table>

### DropDown settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
DropDown<br/><br/></td><td>
Specifies the ToolStripDropDown to be shown when the item is clicked.<br/><br/></td></tr>
<tr>
<td>
DropDownItems<br/><br/></td><td>
Invokes the Items Collection Editor and lets you add ToolStripItems to be displayed when the item is clicked.<br/><br/></td></tr>
<tr>
<td>
ShowDropDownArrow<br/><br/></td><td>
Specifies whether or not to show the drop down arrow on the ToolStripDropDown button.<br/><br/></td></tr>
</table>
