---
layout: post
title: Size Settings | WindowsForms | Syncfusion
description: Size Settings
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Size Settings

The size of the PercentTextBox control can be set according to the needs of the user using the properties discussed below.

* [MaximumSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.TextBoxExt~MaximumSize.html)
* [MinimumSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.TextBoxExt~MinimumSize.html)

{% tabs %}
{% highlight C# %}
this.percentTextBox1.MaximumSize = new System.Drawing.Size(100, 25);
this.percentTextBox1.MinimumSize = new System.Drawing.Size(100, 25);
{% endhighlight %}
{% highlight VB %}
Me.percentTextBox1.MaximumSize = New System.Drawing.Size(100, 25)
Me.percentTextBox1.MinimumSize = New System.Drawing.Size(100, 25)
{% endhighlight %}
{% endtabs %}

![Percent text box size setting](PercentTextBox-Images/Overview_img485.png) 
