---
layout: post
title: How to find whether a particular docked control is hidden or not | WindowsForms | Syncfusion®
description: How to find whether a particular docked control is hidden or not
platform: windowsforms
control: DockingManager
documentation: ug
---


# How to find whether a particular docked control is hidden or not?

This can be achieved using the `GetHiddenOnLoad` method.

This method returns a value which indicates whether the specified control is hidden or not. The docked control should be passed as a parameter.

<table>
<tr>
<th>
Parameter</th><th>
Description</th></tr>
<tr>
<td>
Ctrl</td><td>
Indicates the docked control.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.dockingManager1.GetHiddenOnLoad(this.listBox1);

Console.Write("Hidden on Load" + this.dockingManager1.GetHiddenOnLoad(this.listBox1));

{% endhighlight %}

{% highlight VB %}

Me.dockingManager1.GetHiddenOnLoad(Me.listBox1)

Console.Write("Hidden on load" + Me.dockingManager1.GetHiddenOnLoad(Me.listBox1))

{% endhighlight %}

{% endtabs %}


SetHiddenOnLoad method will set the docked control as hidden at runtime.

{% tabs %}

{% highlight C# %}


this.dockingManager1.SetHiddenOnLoad(this.listBox1, true);

{% endhighlight %}

{% highlight VB %}


Me.dockingManager1.SetHiddenOnLoad(Me.listBox1, True)

{% endhighlight %}

{% endtabs %}


