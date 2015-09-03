---
layout: post
title: ButtonEdit Appearance
description: ButtonEdit Appearance
platform: WindowsForms
control: Tools
documentation: ug
---

# ButtonEdit Appearance

A ButtonEdit control is a combination of controls with textbox and buttons. The buttons are normal windows buttons which supports all their properties and events. The ButtonEdit control itself supports properties which controls the appearance and behavior of the control. This section will discuss those properties in the below topics.



See Also

TextBox Settings for ButtonEdit, Child Button Customization



## Style Settings

This section discusses the different styles available for the ButtonEdit control.

### Button Styles

Styles for the ButtonEdit control is specified using ButtonStyle property.

Table 140: Property Table

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
ButtonStyle</td><td>
Specifies the button style for the control. The styles are,
Classic,
Office2000,
WindowsXP,
OfficeXP,
Office2003 and
Office2007.</td></tr>
<tr>
<td>
UseVisualStyle</td><td>
Specifies whether the visual styles can be applied using ButtonStyle property or not. This property should be set to true to make the ButtonStyle setting effective.</td></tr>
</table>


{%highlight c#%}



this.buttonEdit3.UseVisualStyle = true;

this.buttonEdit3.ButtonStyle = Syncfusion.Windows.Forms.ButtonAppearance.Classic;

{%endhighlight%}


{%highlight vbnet%}



Me.buttonEdit3.UseVisualStyle = True

Me.buttonEdit3.ButtonStyle = Syncfusion.Windows.Forms.ButtonAppearance.Classic

{%endhighlight%}

![](Overview_images/Overview_img86.jpeg)



> Note: ButtonEdit control also supports all the three windows color themes, i.e., Blue, Silver and Oliver themes. We need to change the Windows theme color in desktop properties for this.

### Custom Colors

We can also apply custom colors to the ButtonEditControl by setting Office2007ColorScheme of individual child buttons to "_Managed_" and specifying the custom color through the ApplyManagedColors method as follows.



{%highlight c#%}



this.buttonEditChildButton1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

this.buttonEditChildButton2.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

this.buttonEditChildButton3.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.LightGreen);

{%endhighlight%}

{%highlight vbnet%}



Me.buttonEditChildButton1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed

Me.buttonEditChildButton2.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed

Me.buttonEditChildButton3.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed

Office2007Colors.ApplyManagedColors(Me, Color.LightGreen)

{%endhighlight%}

![](Overview_images/Overview_img88.jpeg)


### Border Styles

The border styles for the ButtonEdit can be controlled using the below properties.

Table 141: Property Table

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
Border3DStyle</td><td>
Sets the 3D border style for the control. The options are,
RaisedOuter,
RaisedInner,
SunkenOuter,
SunkenInner,
Raised,
Sunken,
Etched,
Flat,
Adjust and
Bump.</td></tr>
<tr>
<td>
BorderSides</td><td>
Specifies the sides of the control which should have border.</td></tr>
<tr>
<td>
FlatStyle</td><td>
Specifies the flat style to be applied to the ButtonEdit control. Set UseVisualStyle property to false to make this setting effective.</td></tr>
<tr>
<td>
FlatBorderColor</td><td>
Specifies the border color for the control, when FlatStyle is set to "Flat". This color setting can be reset by calling ButtonEdit.ResetFlatBorderColor method.</td></tr>
</table>


{%highlight c#%}


this.buttonEdit3.UseVisualStyle = false;

this.buttonEdit3.FlatBorderColor = System.Drawing.Color.Red;

this.buttonEdit3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;

{%endhighlight%}

{%highlight vbnet%}



Me.buttonEdit3.UseVisualStyle = False

this.buttonEdit3.FlatBorderColor = System.Drawing.Color.Red;

this.buttonEdit3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;

{%endhighlight%}

![](Overview_images/Overview_img89.jpeg) 




> Note: The Border styles of the child buttons can be controlled using ButtonEditChildButton.BorderStyleAdv property. SeeSee Button Types and Border Styles topic for details.

### Size Settings

We can specify the maximum and minimum size for the ButtonEdit control using MaximumSize and MinimumSize properties.

Table 142: Property Table

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
MaximumSize</td><td>
Sets the maximum size of the ButtonEdit control.</td></tr>
<tr>
<td>
MinimumSize</td><td>
Sets the minimum size of the ButtonEdit control.</td></tr>
</table>

See Also

Foreground Settings


## Foreground Settings

Foreground Settings

This section discusses the foreground settings available for the ButtonEdit control.

Font and ForeColor

The font style and the forecolor for the ButtonEdit text can be set using Font and ForeColor properties. These property settings can be overridden by TextBox.Font and TextBox.ForeColor respectively.


{%highlight c#%}


this.buttonEdit3.Font = new System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Regular);

this.buttonEdit3.ForeColor = Color.SteelBlue;

{%endhighlight%}

{%highlight vbnet%}



Me.buttonEdit3.Font = New System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Regular)

Me.buttonEdit3.ForeColor = Color.SteelBlue

{%endhighlight%}


> Note: Foreground settings for the child buttons can be specified using ButtonEditChildButton.Font and ButtonEditChildButton.ForeColor properties.

![](Overview_images/Overview_img92.jpeg)



### Case Settings

Using ButtonEdit.CharacterCasing property, we can specify whether the case of the character can be modified as they are typed. The values are Upper, Lower and Normal.

{%highlight c#%}



this.buttonEdit3.Font = new System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Regular);

this.buttonEdit3.ForeColor = Color.SteelBlue;

{%endhighlight%}

{%highlight vbnet%}



Me.buttonEdit3.Font = New System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Regular)

Me.buttonEdit3.ForeColor = Color.SteelBlue

{%endhighlight%}


> Note: This case setting can be overridden by TextBox.CharacterCasing property.

See Also

TextBox Settings for ButtonEdit