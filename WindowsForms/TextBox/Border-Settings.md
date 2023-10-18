---
layout: post
title: Border Settings in Windows Forms TextBox control | Syncfusion
description: Learn about Border Settings support in Syncfusion Windows Forms TextBox (TextBoxExt) control and more details.
platform: WindowsForms
control: TextBoxExt
documentation: ug
---

# Border Settings in Windows Forms TextBox (TextBoxExt)

The border settings of the TextBoxExt control are discussed in this section.

You can change the color and styles of the border of the [TextBoxExt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html) control by using [Border3DStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_Border3DStyle), [BorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderColor), [BorderSides](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderSides) and [BorderStyle](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.borderstyle?view=windowsdesktop-7.0&viewFallbackFrom=netcore-3.1&redirectedfrom=MSDN#System_Windows_Forms_TextBoxBase_BorderStyle) properties.

{% tabs %}

{% highlight c# %}

this.textBoxExt1.Border3DStyle = System.Windows.Forms.Border3DStyle.Raised;
this.textBoxExt1.BorderColor = System.Drawing.Color.Orchid
this.textBoxExt1.BorderSides = System.Windows.Forms.Border3DSide.All;
this.textBoxExt1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

{% endhighlight %}

{% highlight vb %}

Me.textBoxExt1.Border3DStyle = System.Windows.Forms.Border3DStyle.Raised
Me.textBoxExt1.BorderColor = System.Drawing.Color.Orchid
Me.textBoxExt1.BorderSides = System.Windows.Forms.Border3DSide.All
Me.textBoxExt1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle

{% endhighlight %}
{% endtabs %}

![Change the border style and color in WF TextBoxExt](Border-Settings_images/Border-Settings_img1.png)
