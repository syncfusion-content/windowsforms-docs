---
layout: post
title: Through Code
description: Creating MaskedEditBox
platform: windowsforms
control: MaskedEditBox
documentation: ug
---
# Through Code

The MaskedEditBox control can be used programmatically through code as detailed below.

1. Include the required namespace.

{% highlight C# %}  

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}



{% highlight vbnet %} 

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

2. Create an instance of the MaskedEditBox control.

{% highlight C# %} 

private Syncfusion.Windows.Forms.Tools.MaskedEditBox maskedEditBox1;

this.maskedEditBox1=new MaskedEditBox();

 {% endhighlight %}



{% highlight vbnet %} 

Private maskedEditBox1 As Syncfusion.Windows.Forms.Tools.MaskedEditBox

Me.maskedEditBox1 = New MaskedEditBox()

{% endhighlight %}

3. Set MaskedEditBox.Mask property.

{% highlight C# %} 

// The mask string.

this.maskedEditBox1.Mask = ">?<????????????";

this.maskedEditBox1.Location = new System.Drawing.Point(70, 29);

 {% endhighlight %}



{% highlight vbnet %} 

' The mask string.

Me.maskedEditBox1.Mask = ">?<????????????"

Me.maskedEditBox1.Location = New System.Drawing.Point(70, 29);

{% endhighlight %}

4. Add the MaskedEditBox control to the form.

{% highlight C# %}  

this.Controls.Add(this.maskedEditBox1);

{% endhighlight %}



{% highlight vbnet %} 

Me.Controls.Add(Me.maskedEditBox1)

{% endhighlight %}


![](MaskedEditBox-images/MarkedEditBox-img4.png)
Figure 562: MaskedEditBox created Through Code

