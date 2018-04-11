---
layout: post
title: Wizard-Control-Appearance | WindowsForms | Syncfusion
description: wizard control appearance
platform: windowsforms
control: Wizard Package 
documentation: ug
---

# Wizard control appearance

This section discusses the various appearance settings of the Wizard controls.

## Foreground settings

### Wizard control foreground

The appearance of the text in the Wizard control can be controlled using the Font and ForeColor properties.

Property table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
Font</td><td>
Sets the font style for the display text in the wizard control.</td></tr>
<tr>
<td>
ForeColor</td><td>
Sets the fore color for the display text in the control.</td></tr>
</table>
N> These WizardControl.Font property will be applied only to the Description text and the Button texts of the Wizard Page. WizardControl.ForeColor property will be applied to the Page Title and description text alone. To set Font style for Title and description, see Title and Description Settings topic.

{% tabs %}

{% highlight C# %}



//Foreground Settings for the display text 

this.wizardControl1.Font = new System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Regular);

this.wizardControl1.ForeColor = System.Drawing.Color.DarkBlue;

{% endhighlight %}

{% highlight VB %}



'Foreground Settings for the display text 

Me.wizardControl1.Font = New System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Regular)

Me.wizardControl1.ForeColor = System.Drawing.Color.DarkBlue

{% endhighlight %}

{% endtabs %}

![](Wizard-Control-Appearance_images/Wizard-Control-Appearance_img2.jpeg) 


N> These settings can be overridden by the individual WizardPage.Font and WizardPage.ForeColor settings.

The foreground settings for the Button text can be overridden by the WizardPage.Button.Font and WizardPage.Button.ForeColor settings also. See Button Appearance topic.

### Wizard page foreground

The font and fore color for the display text in a Wizard page can be controlled through below properties.

Property table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
Font</td><td>
Sets the font style for the display text in the wizard page.</td></tr>
<tr>
<td>
ForeColor</td><td>
Sets the fore color for the display text in the wizard page.</td></tr>
</table>

{% tabs %}

{% highlight C# %}



this.wizardControl1.Font = new System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Regular);

this.wizardControl1.ForeColor = System.Drawing.Color.Black;

{% endhighlight %}

{% highlight VB %}



Me.wizardControl1.Font = New System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Regular) 

Me.wizardControl1.ForeColor = System.Drawing.Color.Black

{% endhighlight %}

{% endtabs %}

![](Wizard-Control-Appearance_images/Wizard-Control-Appearance_img4.jpeg) 


## Background settings

### Wizard control background

The background of the Wizard control can be customized through the below properties.

Property table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
Sets the back color for the Wizard control.</td></tr>
<tr>
<td>
BackgroundImage</td><td>
Sets the background image for the Wizard control.</td></tr>
<tr>
<td>
BackgroundImageLayout</td><td>
Sets the layout for the background image in the Wizard Control.</td></tr>
</table>

{% tabs %}

{% highlight C# %}



this.wizardControl1.BackColor = System.Drawing.Color.LightSteelBlue;

{% endhighlight %}

{% highlight VB %}



Me.wizardControl1.BackColor = System.Drawing.Color.LightSteelBlue

{% endhighlight %}

{% endtabs %}

![](Wizard-Control-Appearance_images/Wizard-Control-Appearance_img5.jpeg)


N> By default the background settings of the Wizard control will be overridden by the Wizard Container background settings.

### Banner panel background

The below properties lets you customize the banner panel in a Wizard Control.

Property table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
Sets the back color for the banner panel.</td></tr>
<tr>
<td>
BackgroundColor</td><td>
Sets a gradient background for the banner panel in the Wizard control. This overrides the BackColor property of the Banner panel.</td></tr>
<tr>
<td>
BackgroundImage</td><td>
Sets the background image for the banner panel.</td></tr>
<tr>
<td>
BackgroundImageLayout</td><td>
Sets the layout for the background image in the banner panel.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


this.gradientPanel1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.AliceBlue, System.Drawing.Color.LightSteelBlue);

{% endhighlight %}

{% highlight VB %}



Me.gradientPanel1.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.AliceBlue, System.Drawing.Color.LightSteelBlue) 

{% endhighlight %}

{% endtabs %}

![](Wizard-Control-Appearance_images/Wizard-Control-Appearance_img7.jpeg) 


### Wizard page background

The below properties lets you customize the Wizard page in a Wizard Control.

Property table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
Sets the back color for the banner panel.</td></tr>
<tr>
<td>
BackgroundColor</td><td>
Sets a gradient background for the banner panel in the Wizard control. This overrides the BackColor property of the Banner panel.</td></tr>
<tr>
<td>
BackgroundImage</td><td>
Sets the background image for the banner panel.</td></tr>
<tr>
<td>
BackgroundImageLayout</td><td>
Sets the layout for the background image in the banner panel.</td></tr>
</table>

{% tabs %}

{% highlight C# %}



this.wizardControlPage2.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.PathRectangle, System.Drawing.Color.AliceBlue, System.Drawing.Color.LightSteelBlue);

{% endhighlight %}

{% highlight VB %}



Me.wizardControlPage2.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.PathRectangle, System.Drawing.Color.AliceBlue, System.Drawing.Color.LightSteelBlue) 

{% endhighlight %}

{% endtabs %}

![](Wizard-Control-Appearance_images/Wizard-Control-Appearance_img8.jpeg) 


## Border styles

### Wizard control

The various border styles for a Wizard control are as follows.

* None
* FixedSingle and
* Fixed3D

{% tabs %}

{% highlight C# %}



this.wizardControl1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

{% endhighlight %}

{% highlight VB %}



Me.wizardControl1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle

{% endhighlight %}

{% endtabs %}

![](Wizard-Control-Appearance_images/Wizard-Control-Appearance_img9.jpeg) 


### Banner panel

Banner Panel is a simple gradient panel whose 3D border styles are as follows.

* RaisedOuter
* SunkenOuter
* RaisedInner
* Raised
* Etched
* SunkenInner
* Bump
* Sunken
* Adjust
* Flat

N> The GradientPanel.BorderStyle property should be set to "Fixed3D" to make this setting effective.

{% tabs %}

{% highlight C# %}



this.gradientPanel1.Border3DStyle = System.Windows.Forms.Border3DStyle.Sunken;

this.gradientPanel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;

{% endhighlight %}

{% highlight VB %}



Me.gradientPanel1.Border3DStyle = System.Windows.Forms.Border3DStyle.Sunken

Me.gradientPanel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D

{% endhighlight %}

{% endtabs %}

![](Wizard-Control-Appearance_images/Wizard-Control-Appearance_img11.jpeg) 


You can use the below properties to set 2D border style for the Banner Control when GradientPanel.BorderStyle property is set to "FixedSingle".

Property table

<table>
<tr>
<th>
Banner panel property</th><th>
Description</th></tr>
<tr>
<td>
BorderColor</td><td>
Sets the border color for the Banner panel.</td></tr>
<tr>
<td>
BorderSides</td><td>
Specifies the sides of the control which should have border.</td></tr>
<tr>
<td>
BorderSingle</td><td>
Specifies the 2D Border style for the panel when BorderStyle property is set to FixedSingle.</td></tr>
</table>

### Wizard page border

The below properties controls the border settings for a Wizard control page.

Property table

<table>
<tr>
<th>
Wizard page property</th><th>
Description</th></tr>
<tr>
<td>
BorderStyle</td><td>
Specifies the border style for Wizard page. The available styles are Fixed3D and FixedSingle.</td></tr>
<tr>
<td>
Border3DStyle</td><td>
Specifies the 3D border style for Wizard page. The available styles are,RaisedOuter,SunkenOuter,RaisedInner,Raised,Etched,SunkenInner,Bump,Sunken,Adjust andFlat.</td></tr>
<tr>
<td>
BorderColor</td><td>
Sets the border color for the Wizard page.</td></tr>
<tr>
<td>
BorderSides</td><td>
Specifies the sides of the control which should have border.</td></tr>
<tr>
<td>
BorderSingle</td><td>
Specifies the 2D Border style for the Wizard page when BorderStyle property is set to FixedSingle. The available styles are,Dotted,Dashed,Solid,Inset and Outset.</td></tr>
</table>


