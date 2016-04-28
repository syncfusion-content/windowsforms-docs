---
layout: post
title: Caption-Settings | WindowsForms | Syncfusion
description: caption settings
platform: WindowsForms
control: Office2007 Form
documentation: ug
---

## Caption Alignment 

The Office2010Form's caption can be aligned to the left, right, or center by using the `CaptionAlign` property. 

{% tabs %}

{% highlight c# %}

this.CaptionAlign = System.Windows.Forms.HorizontalAlignment.Center;

{% endhighlight %}

{% highlight VB %}

Me.CaptionAlign = System.Windows.Forms.HorizontalAlignment.Center 

{% endhighlight %}

{% endtabs %}

![](Caption-Settings_images/CaptionAlignment.png)

## Caption Font 

Office2010Form's caption Font can be customized through `CaptionFont` property.

{% tabs %}

{% highlight c# %}

this.CaptionFont = new System.Drawing.Font("Comic Sans MS", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

{% endhighlight %}

{% highlight vbnet %}

Me.CaptionFont = New System.Drawing.Font("Comic Sans MS", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CByte((0))) 

{% endhighlight %}

{% endtabs %}

![](Caption-Settings_images/CaptionFont.png)


## Caption Fore Color

The color of the caption text can be customized using the `CaptionForeColor` property.

{% tabs %}

{% highlight c# %}

// Applies the color to caption text.

this.CaptionForeColor = Color.Pink;

{% endhighlight %}

{% highlight vbnet %}

‘Applies the color to caption text.

Me.CaptionForeColor = Color.Pink

{% endhighlight %}

{% endtabs %}

![](Caption-Settings_images/CaptionForeColor.png)

## Help Button Support

Help Button property is used to show the `HelpButton` in the caption box of the form. 

{% tabs %}

{% highlight c# %}

// Displays the HelpButton in the caption box of the Form.

 this.HelpButton = true;

{% endhighlight %}

{% highlight vbnet %}

‘Displays the HelpButton in the caption box of the Form.

 Me.HelpButton = true

{% endhighlight %}

{% endtabs %}

![](Caption-Settings_images/HelpButton.png)


## Disabling Office2007Style

Office2007 look and feel can be disabled using `DisableOffice2007Style` property in Office2007Form.

{% tabs %}

{% highlight C# %}

this.DisableOffice2007Style = true;

{% endhighlight %}

{% highlight VB %}

Me.DisableOffice2007Style = true
 
{% endhighlight %}

{% endtabs %}


![](Caption-Settings_images/image1.png)