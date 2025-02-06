---
layout: post
title: Border Settings in Windows Forms Integer TextBox control | Syncfusion®
description: Learn about Border Settings support in Syncfusion® Windows Forms Integer TextBox (Integertextbox) control and more details.
platform: windowsforms
control: Tools
documentation: ug
---

# Border Settings in Windows Forms Integer TextBox (Integertextbox)

Color and styles can be applied to the border of the IntegerTextBox control using the below properties.

* [Border3DStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_Border3DStyle)
* [BorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderColor)
* [BorderSides](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderSides)
* [BorderStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.IntegerTextBox.html#)

{% tabs %}
{% highlight C# %}
this.integerTextBox1.Border3DStyle = System.Windows.Forms.Border3DStyle.Bump;
this.integerTextBox1.BorderColor = System.Drawing.Color.Red;
this.integerTextBox1.BorderSides = System.Windows.Forms.Border3DSide.All;
this.integerTextBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.Border3DStyle = System.Windows.Forms.Border3DStyle.Bump
Me.integerTextBox1.BorderColor = System.Drawing.Color.Red
Me.integerTextBox1.BorderSides = System.Windows.Forms.Border3DSide.All
Me.integerTextBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
{% endhighlight %}
{% endtabs %}

![Border style](Overview_images/Overview_img458.png) 

A sample which demonstrates the Border Settings of IntegerTextBox control is available in the below sample installation path.

…\System Drive:\Users\Username\AppData\Local\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Editor Controls\Editor Controls\CS
