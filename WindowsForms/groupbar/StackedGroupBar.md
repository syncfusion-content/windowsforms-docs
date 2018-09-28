---
layout: post
title: StackedGroupBar  | WindowsForms | Syncfusion
description: StackedGroupBar 
platform: WindowsForms
control: GroupBar
documentation: ug
---
# StackedGroupBar

When the GroupBar is in StackedMode, its header height can be controlled by HeaderHeight property.



<table>
<tr>
<th>
GroupBar property</th><th>
Description</th></tr>
<tr>
<td>
HeaderHeight</td><td>
Specifies the height of the GroupBar Header.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Setting HeaderHeight to zero hides the groupbar header
this.groupBar1.StackedMode = true;
this.groupBar1.HeaderHeight = 0;

{% endhighlight %}

{% highlight VB %}

'Setting HeaderHeight to zero hides the groupbar header
Me.groupBar1.StackedMode = True
Me.groupBar1.HeaderHeight = 0

{% endhighlight %}

{% endtabs %}

