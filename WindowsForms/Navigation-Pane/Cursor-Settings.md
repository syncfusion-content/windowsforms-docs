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

The cursor settings of the GroupBar control can be changed using [Cursor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.GroupBar~Cursor.html) property.

{% tabs %}

{% highlight C# %}

this.groupBar1.Cursor = System.Windows.Forms.Cursors.Cross;

{% endhighlight %}



{% highlight VB %} 

Me.groupBar1.Cursor = System.Windows.Forms.Cursors.Cross

{% endhighlight %}

{% endtabs %}

![GroupBar cursor](Overview_images/Overview_img34.jpeg)



#### Cursor settings for GroupBar items

You can set different types of cursors when the mouse pointer is over the GroupBar Items using [GroupBarItemCursor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.GroupBar~GroupBarItemCursor.html) property. The cursors available are Mouse, Cross, Help, Hand, and so on. The default cursor is 'Arrow'.

{% tabs %}

{% highlight C# %}

this.groupBar1.GroupBarItemCursor = System.Windows.Forms.Cursors.Hand;

 {% endhighlight %}


{% highlight VB %}

Me.groupBar1.GroupBarItemCursor = System.Windows.Forms.Cursors.Hand

{% endhighlight %}

{% endtabs %}

 ![GroupBarItem cusrsor](Overview_images/Overview_img35.jpeg)


N> The [ResetGroupBarItemCursor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.GroupBar~ResetGroupBarItemCursor.html) method can be used to reset the cursor when it is displayed over a GroupBar Item.
