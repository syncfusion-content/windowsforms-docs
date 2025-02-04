---
layout: post
title: Border Settings in Windows Forms Percent TextBox control | Syncfusion®
description: Learn about Border Settings support in Syncfusion® Windows Forms Percent TextBox control and more details.
platform: windowsforms
control: Editors Package
documentation: ug
---

# Border Settings in Windows Forms Percent TextBox

Color and Styles can be applied to the Border of the PercentTextBox control as discussed below.

* [Border3DStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_Border3DStyle)
* [BorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderColor)
* [BorderSides](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderSides)
* [BorderStyle](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.borderstyle?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBoxBase_BorderStyle)

{% tabs %}
{% highlight C# %}
this.percentTextBox1.Border3DStyle = System.Windows.Forms.Border3DStyle.Etched;
this.percentTextBox1.BorderColor = System.Drawing.Color.Orange;
this.percentTextBox1.BorderSides = System.Windows.Forms.Border3DSide.All;
this.percentTextBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
{% endhighlight %}
{% highlight vb %}
Me.percentTextBox1.Border3DStyle = System.Windows.Forms.Border3DStyle.Etched
Me.percentTextBox1.BorderColor = System.Drawing.Color.Orange
Me.percentTextBox1.BorderSides = System.Windows.Forms.Border3DSide.All
Me.percentTextBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
{% endhighlight %}
{% endtabs %}

![Border style](PercentTextBox-Images/Overview_img484.png) 

A Sample which demonstrates the Border Settings of PercentTextBox control is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo
