---
layout: post
title: ChildButtonCustomization in Windows Forms Tools control | Syncfusion®
description: Learn about ChildButtonCustomization support in Syncfusion® Windows Forms ButtonEdit control and more details.
platform: WindowsForms
control: Tools
documentation: ug
---

# ChildButtonCustomization in Windows Forms ButtonEdit

The child buttons in a [ButtonEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEdit.html) control are normal windows button, but supports additional features within ButtonEdit control.

## Button Types and Border Styles

### Button Types

The button types for child Buttons in [ButtonEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEdit.html) control are similar to that of [ButtonAdv](https://help.syncfusion.com/windowsforms/classic/button/overview) control. To learn more about [ButtonType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html#Syncfusion_Windows_Forms_Tools_ButtonEditChildButton_ButtonType) of [ButtonEditChildButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html) [click here](https://help.syncfusion.com/windowsforms/classic/button/buttonadvappearnce#button-types).

### Border Styles

The border styles for the [ButtonEditChildButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html) in [ButtonEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEdit.html) can be set through [BorderStyleAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.ButtonAdv.html#Syncfusion_Windows_Forms_ButtonAdv_BorderStyleAdv) property.

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

N> This setting will be effective only for Office2003, OfficeXP and WindowsXP styles set through  [ButtonStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEdit.html#Syncfusion_Windows_Forms_Tools_ButtonEdit_ButtonStyle) property of [ButtonEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEdit.html) control. We can also set border style for ButtonEdit controls without enabling visual styles.

{% tabs %}
{% highlight c# %}

//Sample code for setting "Bump" Border Style for BorderEdit Child Button
this.buttonEditChildButton1.BorderStyleAdv = Syncfusion.Windows.Forms.ButtonAdvBorderStyle.Bump;

{% endhighlight %}

{% highlight vb %}

'Sample code for setting "Bump" Border Style for BorderEdit Child Button
Me.buttonEditChildButton1.BorderStyleAdv = Syncfusion.Windows.Forms.ButtonAdvBorderStyle.Bump

{% endhighlight %}
{% endtabs %}

![Button Style for ButtonEdit](Overview_images/Overview_img95.jpeg)

{% seealso %}

[Style Settings](/windowsforms/buttonedit/buttoneditappearance#style-settings), [How to set tooltip for ButtonEdit Child buttons?](http://help.syncfusion.com/windowsforms/buttonedit/faq/how-to-set-tooltip-for-buttonedit-child-buttons)

{% endseealso %}

## Button Alignment

You can align the child buttons inside the [ButtonEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEdit.html) control is set through [ButtonAlign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html#Syncfusion_Windows_Forms_Tools_ButtonEditChildButton_ButtonAlign) property.

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

{% tabs %}
{% highlight c# %}

this.buttonEditChildButton1.ButtonAlign = Syncfusion.Windows.Forms.Tools.ButtonAlignment.Left;

{% endhighlight %}

{% highlight vb %}

Me.buttonEditChildButton1.ButtonAlign = Syncfusion.Windows.Forms.Tools.ButtonAlignment.Left

{% endhighlight %}
{% endtabs %}

 ![ButtonAlign of ButtonEdit](Overview_images/Overview_img96.jpeg)

## Image and Text Settings

The image and text of child buttons in [ButtonEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEdit.html) can be customized by using [Image](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html#Syncfusion_Windows_Forms_Tools_ButtonEditChildButton_Image), [ImageAlign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html#), [ImageIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html#), [ImageList](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html#), [PreferredWidth](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html#Syncfusion_Windows_Forms_Tools_ButtonEditChildButton_PreferredWidth), [Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.ButtonAdv.html#Syncfusion_Windows_Forms_ButtonAdv_Text), [TextAlign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html#) and [TextImageRelation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html#) properties.

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
Indicates the image list to be used for child button.</td></tr>
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

{% tabs %}
{% highlight c# %}

this.buttonEditChildButton1.Image = ((System.Drawing.Image)(resources.GetObject("buttonEditChildButton2.Image")));
this.buttonEditChildButton1.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
this.buttonEditChildButton1.Text = "Browse";
this.buttonEditChildButton1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
this.buttonEditChildButton1.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
this.buttonEditChildButton1.PreferredWidth = 64;

{% endhighlight %}

{% highlight vb %}

Me.buttonEditChildButton1.Image = DirectCast((resources.GetObject("buttonEditChildButton2.Image")), System.Drawing.Image)
Me.buttonEditChildButton1.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
Me.buttonEditChildButton1.Text = "Browse"
Me.buttonEditChildButton1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
Me.buttonEditChildButton1.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
Me.buttonEditChildButton1.PreferredWidth = 64

{% endhighlight %}
{% endtabs %}

![Image and Text Customization](Overview_images/Overview_img98.jpeg) 

## Flat Style for the Buttons

You can customize the child button for flat style or appearance in [ButtonEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEdit.html) using [FlatStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html#Syncfusion_Windows_Forms_Tools_ButtonEditChildButton_FlatStyle) and [FlatAppearance](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html#) property.

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

{% tabs %}
{% highlight c# %}

this.buttonEditChildButton1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
this.buttonEditChildButton1.FlatAppearance.BorderColor = System.Drawing.Color.Crimson;
this.buttonEditChildButton1.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Pink;

{% endhighlight %}

{% highlight vb %}

Me.buttonEditChildButton1.FlatStyle = System.Windows.Forms.FlatStyle.Flat
Me.buttonEditChildButton1.FlatAppearance.BorderColor = System.Drawing.Color.Crimson
Me.buttonEditChildButton1.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Pink

{% endhighlight %}
{% endtabs %}

 ![Flat style of child button](Overview_images/Overview_img99.jpeg) 
 
## Style Settings

The visual style of child buttons can be set in ButtonEdit using [UseVisualStyleBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html#), [Office2007ColorScheme](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.ButtonAdv.html#Syncfusion_Windows_Forms_ButtonAdv_Office2007ColorScheme) and [Office2010ColorScheme](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.ButtonAdv.html#Syncfusion_Windows_Forms_ButtonAdv_Office2010ColorScheme) properties.

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
Specifies the office2007 color scheme.</td></tr>
<tr>
<td>
Office2010ColorScheme</td><td>
Specifies the office2010 color scheme.</td></tr>

</table>

N> Visual style of a child buttons is inherited from the visual style of it's parent [ButtonEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEdit.html) control. You can override those settings using the above properties.

## Focusing the Child Button at Runtime

The child buttons can be focused based on the order set by [TabIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html#) property set for individual child buttons and [TabStop](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html#Syncfusion_Windows_Forms_Tools_ButtonEditChildButton_TabStop) property should be enabled to make this effective. While focusing the button, we can display a focus rectangle, by enabling [KeepFocusRectangle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.ButtonAdv.html#Syncfusion_Windows_Forms_ButtonAdv_KeepFocusRectangle) property of [ButtonEditChildButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEditChildButton.html) control. 

{% tabs %}
{% highlight c# %}

this.buttonEditChildButton1.KeepFocusRectangle = true;

{% endhighlight %}

{% highlight vb %}

Me.buttonEditChildButton1.KeepFocusRectangle = True

{% endhighlight %}
{% endtabs %}

![Focusing child button in ButtonEdit](Overview_images/Overview_img101.jpeg) 

## Hide Child Button in ButtonEdit

You can hide the child buttons of [ButtonEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEdit.html) control by using [HideButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEdit.html#Syncfusion_Windows_Forms_Tools_ButtonEdit_HideButton_System_Int32_System_Boolean_) method.

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
HideButton</td><td>
Indicates whether a child button is hidden or visible. The parameters are,
buttonIndex - Specifies the index of the button.
visible - Specifies the visibility of the button. 
It can be true or false. 
If true, the button will be visible and if false, 
the button will not be visible.</td></tr>
</table>

{% tabs %}
{%highlight c#%}

this.buttonEdit1.HideButton(0, false);

{%endhighlight%}

{%highlight vb%}

Me.buttonEdit1.HideButton(0, False)

{%endhighlight%}
{% endtabs %}
