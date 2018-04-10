---
layout: post
title: Border Settings  | WindowsForms | Syncfusion
description: Border Settings
platform: WindowsForms
control: GroupBar
documentation: ug
---
# Border settings

## GroupBar settings

The border style of the GroupBar can be set using the below given property.



<table>
<tr>
<th>
GroupBar property</th><th>
Description</th></tr>
<tr>
<td>
BorderStyle</td><td>
Gets/sets the border style of the GroupBar control.</td></tr>
</table>

{% tabs %}

{% highlight C# %} 

this.groupBar1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;

 {% endhighlight %}

 
 
{% highlight VB %}

Me.groupBar1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D 

{% endhighlight %}

{% endtabs %}

 ![](Overview_images/Overview_img32.jpeg) 


## GroupBar item client area border settings

The border of the GroupBar Item client area can be set and customized using the following properties.



<table>
<tr>
<th>
GroupBar property</th><th>
Description</th></tr>
<tr>
<td>
DrawClientBorder</td><td>
Specifies whether a border is drawn around the GroupBar's client window.</td></tr>
<tr>
<td>
ClientBorderColors</td><td>
Specifies the value which determines whether the border for the client area of the GroupBar control should be drawn or not.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.groupBar1.DrawClientBorder = true;

this.groupBarItem2.ClientBorderColors = new Syncfusion.Windows.Forms.Tools.BorderColors(System.Drawing.Color.Red, System.Drawing.Color.Aqua, System.Drawing.Color.Lime, System.Drawing.Color.Magenta);

{% endhighlight %}



{% highlight VB %}

Me.groupBar1.DrawClientBorder = True

Me.groupBarItem2.ClientBorderColors = New Syncfusion.Windows.Forms.Tools.BorderColors(System.Drawing.Color.Red, System.Drawing.Color.Aqua, System.Drawing.Color.Lime, System.Drawing.Color.Magenta)

{% endhighlight %}

{% endtabs %}

 ![](Overview_images/Overview_img33.jpeg)

