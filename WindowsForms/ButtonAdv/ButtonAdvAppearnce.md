---
layout: post
title: ButtonAdv Appearance
description: ButtonAdv Appearance
platform: WindowsForms
control: Editors Package
documentation: ug
---

# ButtonAdv Appearance

This section will walk you through the below topics which discusses the properties that controls the appearance of the ButtonAdv.


## Button Types

ButtonAdv control supports different button types in terms of its appearance. It is specified using the ButtonType property.


<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
ButtonType</td><td>
Specifies the button type to be used in the ButtonAdv control. The options are as follows.<br/>
Normal - Normal button. (user can specify the image with this ButtonType).<br/>
Calculator - Calculator image is used.<br/>
Currency - Currency image is used.<br/>
Down - Down image is used.<br/>
ComboXPDown - Down image like in a Windows XP combo box.<br/>
Up - Up image is used.<br/>
Left - Left image is used.<br/>
Right - Right image is used.<br/>
Redo - Redo image is used.<br/>
Undo - Undo image is used.<br/>
Check - Check image is used.<br/>
Browse - Browse image is used.<br/>
LeftEnd - Left end image is used.<br/>
RightEnd - Right end image is used.</td></tr>
</table>





N> You can also specify your own image for the ButtonAdv using Image property and this will effect only when ButtonType is set to Normal. See [Image Settings](http://docs.syncfusion.com/windowsforms/buttonadv/imagesettings) to know more.

{%highlight c#%}



//Setting Calculator button type

this.ButtonAdvControl.ButtonType=Syncfusion.Windows.Forms.Tools.ButtonTypes.Calculator;

{%endhighlight%}

{%highlight vbnet%}



'Setting Calculator button type

Me.ButtonAdvControl.ButtonType = Syncfusion.Windows.Forms.Tools.ButtonTypes.Calculator

{%endhighlight%}


![](Overview_images/Overview_img59.jpeg) 





 
N> The ButtonTypes are only provided for ease of use and do not in any way change the functionality of the buttons.

Example - A sample image which uses most of the button types in a single application is as follows. User will have to add respective functionalities for each button type.

![](Overview_images/Overview_img61.jpeg) 


## Border Styles

Border style for the ButtonAdv control is specified in the below property.


<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
BorderStyleAdv</td><td>
Specifies the border style for ButtonAdv control. The styles are,<br/>
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
SunkenOuter</td></tr>
</table>




N> This setting will be effective only for Office2003, OfficeXP and WindowsXP styles set through ButtonAdv.Appearance property. See [Visual Styles](http://docs.syncfusion.com/windowsforms/buttonadvappearnce#visual-styles).


 
 {%highlight c#%}



//Sample code for setting "SunkenOuter" Border Style using BorderStyleAdv

this.buttonAdv13.BorderStyleAdv = Syncfusion.Windows.Forms.ButtonAdvBorderStyle.SunkenOuter;


{%endhighlight%}

{%highlight vbnet%}

//Sample code for setting "SunkenOuter" Border Style using BorderStyleAdv

Me.buttonAdv13.BorderStyleAdv = Syncfusion.Windows.Forms.ButtonAdvBorderStyle.SunkenOuter

{%endhighlight%}

![](Overview_images/Overview_img63.jpeg) 



{% seealso %}

[Button Types](http://docs.syncfusion.com/windowsforms/buttonadv/buttonadvappearnce#button-types)

 {% endseealso %}

## Visual Styles

Visual Styles for the ButtonAdv control can be enabled by using the UseVisualStyle property. The different visual style are specified through Appearance.


<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
Appearance</td><td>
Sets the visual styles for the control when UseVisualStyle property is true. The styles are,<ul><li>Classic</li><li>Office2000</li><li> WindowsXP</li><li>OfficeXP</li><li> Office2003</li><li>Office2007</li></ul></td></tr>
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




N> While mouse hovering over the OfficeXP, Office2003 and WindowsXP at run time, the button will be painted with some standard colors. This is an inbuilt feature in the ButtonControlAdv.


 
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


 {% seealso %}

[Button Types](#button-types), [Image Settings](http://docs.syncfusion.com/windowsforms/buttonadv/imagesettings)

{% endseealso %}

## Foreground Settings

Text for the ButtonAdv can be customized using the below properties.


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
Sets the alignment of the text in the control.  The options are,<br/>
TopLeft,<br/>
TopCenter,<br/>
TopRight,<br/>
MiddleLeft,<br/>
MiddleCenter,<br/>
MiddleRight,<br/>
BottomLeft,<br/>
BottomCenter and<br/>
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


