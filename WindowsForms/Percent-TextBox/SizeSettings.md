---
layout: post
title: Size Settings in Windows Forms PercentTextBox | Syncfusion®
description: Learn about Size Settings support in Syncfusion Windows Forms PercentTextBox control and more details.
platform: windowsforms
control: PercentTextBox
documentation: ug
---

# Size Settings in WinForms Percent TextBox

The size of the WinForms Percent TextBox control can be set according to the needs of the user using the following properties:

* [MaximumSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_MaximumSize) - Gets or sets the maximum size of the control.
* [MinimumSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_MinimumSize) - Gets or sets the minimum size of the control.

{% tabs %}
{% highlight c# %}
this.percentTextBox1.MaximumSize = new System.Drawing.Size(100, 25);
this.percentTextBox1.MinimumSize = new System.Drawing.Size(100, 25);
{% endhighlight %}
{% highlight vb %}
Me.percentTextBox1.MaximumSize = New System.Drawing.Size(100, 25)
Me.percentTextBox1.MinimumSize = New System.Drawing.Size(100, 25)
{% endhighlight %}
{% endtabs %}

![WinForms PercentTextBox with the maximum and minimum size applied](PercentTextBox-Images/Overview_img485.png) 
