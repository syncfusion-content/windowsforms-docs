---
layout: post
title: Editors-Package
description: editors package
platform: WindowsForms
control: Tools
documentation: ug
---


# Child Button Customization

The child buttons in a ButtonEdit control are normal windows button, but supports additional features within our ButtonEdit control. Those features are discussed in the below topics.


## Button Types and Border Styles

### Button Types

The button types for ButtonEdit control are similar to that of ButtonAdv control. Refer Button Types topic for details.

Use ButtonEditChildButton1.ButtonType property for setting the button types of the child buttons.

### Border Styles

The border styles for the child buttons can be set through BorderStyleAdv property.

Table 143: Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
BorderStyleAdv</td><td>
Specifies the border style for child buttons of the ButtonEdit control. The styles are,<br/>
None,<br/>
Default,<br/>
Dashed,<br/>
Dotted,<br/>
Inset,<br/>
Outset,<br/>
Solid,<br/>
Bump,<br/>
Etched,<br/>
Flat,<br/>
Raised,<br/>
RaisedInner,<br/>
RaisedOuter,<br/>
Sunken,<br/>
SunkenInner and<br/>
SunkenOuter.<br/></td></tr>
</table>


> Note: This setting will be effective only for Office2003, OfficeXP and WindowsXP styles set through ButtonEdit.ButtonStyle property. See Style Settings. We can also set border style for ButtonEdit controls without enabling visual styles._

{%highlight c#%}



//Sample code for setting "Bump" Border Style for BorderEdit Child Button

this.buttonEditChildButton4.BorderStyleAdv = Syncfusion.Windows.Forms.ButtonAdvBorderStyle.Bump;

{%endhighlight%}

{%highlight vbnet%}



'Sample code for setting "Bump" Border Style for BorderEdit Child Button

Me.buttonEditChildButton4.BorderStyleAdv = Syncfusion.Windows.Forms.ButtonAdvBorderStyle.Bump

{%endhighlight%}

![](Overview_images/Overview_img95.jpeg)

See Also

Style Settings, How to set tooltip for ButtonEdit Child buttons?


## Properties

The properties which controls the appearance and behavior of the ButtonEdit Child Buttons are listed below with their description.

### Button Alignment

Placement of the child buttons inside the ButtonEdit control is set through below property.

Table 144: Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
ButtonAlign</td><td>
Specifies whether the child button should be aligned to left or right of the ButtonEdit control.</td></tr>
</table>


{%highlight c#%}



this.buttonEditChildButton6.ButtonAlign = Syncfusion.Windows.Forms.Tools.ButtonAlignment.Left;

{%endhighlight%}


{%highlight vbnet%}



Me.buttonEditChildButton6.ButtonAlign = Syncfusion.Windows.Forms.Tools.ButtonAlignment.Left

{%endhighlight%}

 ![](Overview_images/Overview_img96.jpeg)


> Note: There is no support for placing more than one buttons on the same side. We need to add the buttons in the order we require.

### Image Settings

The below properties can be used to set text and image for the child buttons.

Table 145: Property Table

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
Image</td><td>
Sets image for the child button.</td></tr>
<tr>
<td>
ImageAlign</td><td>
Sets alignment of the image.</td></tr>
<tr>
<td>
ImageIndex</td><td>
Sets the index of the image to be set for the child button.</td></tr>
<tr>
<td>
ImageList</td><td>
Indicates the imagelist to be used for child button.</td></tr>
<tr>
<td>
PreferredWidth</td><td>
Specifies the width of the button. Default value is 18.</td></tr>
<tr>
<td>
Text</td><td>
Sets text for the button if ButtonType is set to Normal.</td></tr>
<tr>
<td>
TextAlign</td><td>
Sets the alignment of the text in the child button control.</td></tr>
<tr>
<td>
TextImageRelation</td><td>
Sets the relative location of the image to the text in the button.</td></tr>
</table>


{%highlight c#%}



this.buttonEditChildButton2.Image = ((System.Drawing.Image)(resources.GetObject("buttonEditChildButton2.Image")));

this.buttonEditChildButton2.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;

this.buttonEditChildButton2.Text = "Browse";

this.buttonEditChildButton2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;

this.buttonEditChildButton2.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;

this.buttonEditChildButton2.PreferredWidth = 64;


{%endhighlight%}

{%highlight  vbnet%}

Me.buttonEditChildButton2.Image = DirectCast((resources.GetObject("buttonEditChildButton2.Image")), System.Drawing.Image)

Me.buttonEditChildButton2.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft

Me.buttonEditChildButton2.Text = "Browse"

Me.buttonEditChildButton2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft

Me.buttonEditChildButton2.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText

Me.buttonEditChildButton2.PreferredWidth = 64

{%endhighlight%}

 ![](Overview_images/Overview_img98.jpeg) 

### Flat Style for the Buttons

Table 146: Property Table

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
FlatAppearance</td><td>
Represents the appearance of the border and the color for the check state and mouse over state. Set FlatStyle to Flat and UseVisualStyleBackColor should be set to false to make this setting effective.</td></tr>
<tr>
<td>
FlatStyle</td><td>
Specifies the flat style for the button. The options are Flat, Popup, Standard and System.</td></tr>
</table>


{%highlight c#%}



this.buttonEditChildButton5.FlatStyle = System.Windows.Forms.FlatStyle.Flat;

this.buttonEditChildButton5.FlatAppearance.BorderColor = System.Drawing.Color.Crimson;

this.buttonEditChildButton5.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Pink;

{%endhighlight%}

{%highlight vbnet%}



Me.buttonEditChildButton5.FlatStyle = System.Windows.Forms.FlatStyle.Flat

Me.buttonEditChildButton5.FlatAppearance.BorderColor = System.Drawing.Color.Crimson

Me.buttonEditChildButton5.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Pink

{%endhighlight%}

 ![](Overview_images/Overview_img99.jpeg) 
 
### Style Settings

Table 147: Property Table

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
UseVisualStyleBackColor</td><td>
Determines whether the background of child button is drawn using visual style if the button supports visual styles.</td></tr>
<tr>
<td>
Office2007ColorScheme</td><td>
Specifies the office color scheme.</td></tr>
</table>

> Note: Visual style of a child buttons is inherited from the visual style of it's parent (ButtonEdit) control. See Style Settings topic. You can override those settings using the above properties.

### Focusing the Child Button at Runtime

The Child buttons can be focussed based on the order of the ChildButton.TabIndex set for individual buttons. ChildButton.TabStop property should be set to true to make this effective. While focusing the button, we can either display or don't display a focus rectangle, by using the  ButtonEdit.KeepFocusRectangle property. 

{%highlight c#%}



this.buttonEditChildButton3.KeepFocusRectangle = true;

{%endhighlight%}

{%highlight vbnet%}



Me.buttonEditChildButton3.KeepFocusRectangle = True

{%endhighlight%}


![](Overview_images/Overview_img101.jpeg) 


See Also

How to hide a child button of a ButtonEdit control?