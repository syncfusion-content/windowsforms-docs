---
layout: post
title: Border Settings in Windows Forms TextBox control | Syncfusion
description: Learn about Border Settings support in Syncfusion Windows Forms TextBox (TextBoxExt) control and more details.
platform: windowsforms
control: TextBoxExt
documentation: ug
---

# Border Settings in Windows Forms TextBox (TextBoxExt)

The border settings of the TextBoxExt control are discussed in this section.

You can change the color and styles of the border of the [TextBoxExt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html) control by using [Border3DStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_Border3DStyle), [BorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderColor), [BorderSides](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderSides) and [BorderStyle](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.borderstyle?view=windowsdesktop-7.0&viewFallbackFrom=netcore-3.1&redirectedfrom=MSDN#System_Windows_Forms_TextBoxBase_BorderStyle) properties.

{% tabs %}

{% highlight c# %}

TextBoxExt textBoxExt1 = new TextBoxExt();
textBoxExt1.Location = new System.Drawing.Point(100, 100);
textBoxExt1.Size = new System.Drawing.Size(100, 20);
textBoxExt1.Text = "textboxext1";
textBoxExt1.Border3DStyle = System.Windows.Forms.Border3DStyle.Raised;
textBoxExt1.BorderColor = System.Drawing.Color.Orchid;
textBoxExt1.BorderSides = System.Windows.Forms.Border3DSide.All;
textBoxExt1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
this.Controls.Add(textBoxExt1);

{% endhighlight %}

{% highlight vb %}

Dim textBoxExt1 As New TextBoxExt()
textBoxExt1.Location = New System.Drawing.Point(100, 100)
textBoxExt1.Size = New System.Drawing.Size(100, 20)
textBoxExt1.Text = "textboxext1"
textBoxExt1.Border3DStyle = System.Windows.Forms.Border3DStyle.Raised
textBoxExt1.BorderColor = System.Drawing.Color.Orchid
textBoxExt1.BorderSides = System.Windows.Forms.Border3DSide.All
textBoxExt1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
Me.Controls.Add(textBoxExt1)

{% endhighlight %}
{% endtabs %}

![Change the border style and color in WF TextBoxExt](Border-Settings_images/Border-Settings_img1.png)
