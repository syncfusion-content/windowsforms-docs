---
layout: post
title: Cursor Settings  | WindowsForms | Syncfusion
description: Cursor Settings
platform: WindowsForms
control: GroupBar
documentation: ug
---
# Cursor settings

## Cursor settings for GroupBar

The cursor settings of the GroupBar control can be changed using the below given properties.



<table>
<tr>
<td>
GroupBar property</td><td>
Description</td></tr>
<tr>
<td>
Cursor</td><td>
Gets/sets the cursor that is displayed when the mouse pointer is over the control.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.groupBar1.Cursor = System.Windows.Forms.Cursors.Cross;

{% endhighlight %}



{% highlight VB %} 

Me.groupBar1.Cursor = System.Windows.Forms.Cursors.Cross

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img34.jpeg)



#### Cursor settings for GroupBar items

Different types of cursors can be set when the mouse pointer is over the GroupBar Items. The cursors available are Mouse, Cross, Help, Hand, and so on. The default cursor is 'Arrow'.



<table>
<tr>
<td>
GroupBar property</td><td>
Description</td></tr>
<tr>
<td>
GroupBarItemCursor</td><td>
Specifies the type of cursor that is displayed when the mouse pointer is over the GroupBar Items. The rest of the control will display the standard control cursor.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.groupBar1.GroupBarItemCursor = System.Windows.Forms.Cursors.Hand;

 {% endhighlight %}


{% highlight VB %}

Me.groupBar1.GroupBarItemCursor = System.Windows.Forms.Cursors.Hand

{% endhighlight %}

{% endtabs %}

 ![](Overview_images/Overview_img35.jpeg)


N> The ResetGroupBarItemCursor() method can be used to reset the cursor when it is displayed over a GroupBar Item.
