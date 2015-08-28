---
layout: post
title: Overview
description: overview
platform: windowsforms
control: Editors Package
documentation: ug
---

# ButtonAdv Appearance

This section will walk you through the below topics which discusses the properties that controls the appearance of the ButtonAdv.


# Button Types

ButtonAdv control supports different button types in terms of its appearance. It is specified using the ButtonType property.

_Table_ _133__: Property Table_

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
ButtonType</td><td>
Specifies the button type to be used in the ButtonAdv control. The options are as follows.
Normal - Normal button. (user can specify the image with this ButtonType).
Calculator - Calculator image is used.
Currency - Currency image is used.
Down - Down image is used.
ComboXPDown - Down image like in a Windows XP combo box.
Up - Up image is used.
Left - Left image is used.
Right - Right image is used.
Redo - Redo image is used.
Undo - Undo image is used.
Check - Check image is used.
Browse - Browse image is used.
LeftEnd - Left end image is used.
RightEnd - Right end image is used.</td></tr>
</table>





 _Note: You can also specify your own image for the ButtonAdv using Image property and this will effect only when ButtonType is set to Normal. See_ Image Settings _to know more._

{%highlight c#%}



//Setting Calculator button type

this.ButtonAdvControl.ButtonType=Syncfusion.Windows.Forms.Tools.ButtonTypes.Calculator;

{%endhighlight%}

{%highlight vbnet%}



'Setting Calculator button type

Me.ButtonAdvControl.ButtonType = Syncfusion.Windows.Forms.Tools.ButtonTypes.Calculator

{%endhighlight%}


![](Overview_images/Overview_img59.jpeg) 





 
 _Note: The ButtonTypes are only provided for ease of use and do not in any way change the functionality of the buttons._

Example - A sample image which uses most of the button types in a single application is as follows. User will have to add respective functionalities for each button type.

![](Overview_images/Overview_img61.jpeg) 


# Border Styles

Border style for the ButtonAdv control is specified in the below property.

_Table_ _134__: Property Table_

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
BorderStyleAdv</td><td>
Specifies the border style for ButtonAdv control. The styles are,
None,
Default,
Dashed,
Dotted,
Inset,
Outset,
Solid,
Bump,
Etched,
Flat,
Raised,
RaisedInner,
RaisedOuter,
Sunken,
SunkenInner and
SunkenOuter</td></tr>
</table>




 _Note: This setting will be effective only for Office2003, OfficeXP and WindowsXP styles set through ButtonAdv.Appearance property. See_ Visual Styles_._ 


 
 {%highlight c#%}



//Sample code for setting "SunkenOuter" Border Style using BorderStyleAdv

this.buttonAdv13.BorderStyleAdv = Syncfusion.Windows.Forms.ButtonAdvBorderStyle.SunkenOuter;


{%endhighlight%}

{%highlight vbnet%}

//Sample code for setting "SunkenOuter" Border Style using BorderStyleAdv

Me.buttonAdv13.BorderStyleAdv = Syncfusion.Windows.Forms.ButtonAdvBorderStyle.SunkenOuter

{%endhighlight%}

![](Overview_images/Overview_img63.jpeg) 



See Also

Visual Styles, Button Types

# Visual Styles

Visual Styles for the ButtonAdv control can be enabled by using the UseVisualStyle property. The different visual style are specified through Appearance.

_Table_ _135__: Property Table_

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
Appearance</td><td>
Sets the visual styles for the control when UseVisualStyle property is true. The styles are,* Classic* Office2000* WindowsXP* OfficeXP* Office2003* Office2007</td></tr>
<tr>
<td>
<br>UseVisualStyle</td><td>
Indicates whether Visual Styles must be enabled for the button. Set value to True when you want to apply settings of the properties: Appearance, BorderStyleAdv, ButtonType and etc. on current button.</td></tr>
<tr>
<td>
MetroColor</td><td>
Gets or sets the Metro color of the control.</td></tr>
</table>


{%highlight c#%}



this.buttonAdv1.UseVisualStyle = true;

//Sample code for setting "OfficeXP" style for ButtonAdv

this.buttonAdv1.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.OfficeXP;

{%endhighlight%}

{%highlight vbnet%}

Me.buttonAdv1.UseVisualStyle = True

'Sample code for setting "OfficeXP" style for ButtonAdv

Me.buttonAdv1.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.OfficeXP


{%endhighlight%}


![](Overview_images/Overview_img64.jpeg) 




 _Note: While mouse hovering over the OfficeXP, Office2003 and WindowsXP at run time, the button will be painted with some standard colors. This is an inbuilt feature in the ButtonControlAdv._


 
## Metro Style Appearance.


{%highlight c#%}


//To enable the Visual Style of the ButtonAdv

this.buttonAdv1.UseVisualStyle = true;

//To set the Metro style appearance for ButtonAdv

this.buttonAdv1.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Metro;

//To set the MetroColor

this.buttonAdv1.MetroColor = Color.FromArgb(22, 165, 220);

{%endhighlight%}

{%highlight vbnet%}



'To enable the Visual Style of the ButtonAdv

Me.buttonAdv1.UseVisualStyle = True
'To set the Metro style appearance for ButtonAdv
Me.buttonAdv1.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Metro

'To set the MetroColor
Me.buttonAdv1.MetroColor = Color.FromArgb(22, 165, 220)

{%endhighlight%}

![](Overview_images/Overview_img66.png) 




### Office Color Themes

ButtonControlAdv supports all the three OfficeColor Schemes when ButtonAdv.Appearance is set to Office2007. Similarly you can set Blue and Black color schemes also. Default value is Blue.

{%highlight c#%}



//Sample code for setting "Silver" color scheme for ButtonAdv

this.buttonAdv1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver;


{%endhighlight%}

{%highlight vbnet%}

'Sample code for setting "Silver" color scheme for ButtonAdv

Me.buttonAdv1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver

{%endhighlight%}

![](Overview_images/Overview_img67.jpeg)


### Custom Colors

We can also apply custom colors to the ButtonAdv control by setting Office2007ColorScheme to "_Managed"_ and specifying the custom color through the ApplyManagedColors method as follows.

{%highlight c#%}



this.buttonAdv1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.LightGreen);

{%endhighlight%}

{%highlight vbnet%}
Me.buttonAdv1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed

Office2007Colors.ApplyManagedColors(this, Color.LightGreen)

{%endhighlight%}


![](Overview_images/Overview_img68.jpeg) 

See Also

Button Types, Image Settings

# Foreground Settings

Text for the ButtonAdv can be customized using the below properties.

_Table_ _136__: Property Table_

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
Text</td><td>
Sets the text for the ButtonAdv control.</td></tr>
<tr>
<td>
TextAlign</td><td>
Sets the alignment of the text in the control.  The options are,
TopLeft,
TopCenter,
TopRight,
MiddleLeft,
MiddleCenter,
MiddleRight,
BottomLeft,
BottomCenter and
BottomRight.</td></tr>
<tr>
<td>
TextImageRelation</td><td>
Sets the relative location of the image to the text. The options are,
Overlay,
ImageBeforeText,
TextBeforeImage,
ImageAboveText and
TextAboveImage.</td></tr>
<tr>
<td>
Font</td><td>
Sets the font style for the control's text.</td></tr>
<tr>
<td>
ForeColor</td><td>
Sets the fore color for the control's text.</td></tr>
</table>


{%highlight c#%}



this.buttonAdv1.Text = "Image above Text";

this.buttonAdv4.TextAlign = System.Drawing.ContentAlignment.BottomCenter;

this.buttonAdv4.TextImageRelation = TextImageRelation.ImageAboveText;



this.buttonAdv1.Font = new System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Regular);

this.buttonAdv1.ForeColor = System.Drawing.Color.White;


{%endhighlight%}

{%highlight vbnet%}

Me.buttonAdv4.Text =  "Image above Text"

Me.buttonAdv4.TextAlign = System.Drawing.ContentAlignment.BottomCenter

Me.buttonAdv4.TextImageRelation = TextImageRelation.ImageAboveText



Me.buttonAdv1.Font = New System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Regular)

Me.buttonAdv1.ForeColor = System.Drawing.Color.White

{%endhighlight%}

![](Overview_images/Overview_img69.jpeg) 


