---
layout: post
title: How to find whether a particular docked control is hidden or not
description: How to find whether a particular docked control is hidden or not
platform: WindowsForms
control: Control Name undefined
documentation: ug
---


# How to find whether a particular docked control is hidden or not?

This can be achieved using the below method.

GetHiddenOnLoad - This method returns a value which indicates whether the specified control is hidden or not. The docked control should be passed as a parameter.

Table 107: Parameter Table

<table>
<tr>
<td>
Parameter</td><td>
Description</td></tr>
<tr>
<td>
Ctrl</td><td>
Indicates the docked control.</td></tr>
</table>


{% highlight C# %}




this.dockingManager1.GetHiddenOnLoad(this.listBox1);

Console.Write("Hidden on Load" + this.dockingManager1.GetHiddenOnLoad(this.listBox1));
{% endhighlight %}


{% highlight vbnet %}




Me.dockingManager1.GetHiddenOnLoad(Me.listBox1)

Console.Write("Hidden on load" + Me.dockingManager1.GetHiddenOnLoad(Me.listBox1))
{% endhighlight %}


SetHiddenOnLoad - This method when called will decide whether or not to set the docked control as hidden at runtime.


{% highlight C# %}



this.dockingManager1.SetHiddenOnLoad(this.listBox1, true);

{% endhighlight %}




{% highlight vbnet %}



Me.dockingManager1.SetHiddenOnLoad(Me.listBox1, True)

{% endhighlight %}


