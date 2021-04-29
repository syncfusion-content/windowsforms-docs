---
layout: post
title: GroupView Settings in Windows Forms GroupView control | Syncfusion
description: Learn about GroupView Settings support in Syncfusion Windows Forms GroupView control and more details.
platform: WindowsForms
control: GroupView
documentation: ug
---
# GroupView Settings in Windows Forms GroupView

This section discusses the various settings that can be applied to define the look and behavior of the GroupView control.

## Appearance settings

The following table describes the properties that enhance the appearance of the GroupView control.

* [FlatLook](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_FlatLook)
* [BorderStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_BorderStyle)

{% tabs %}

{% highlight C# %}

this.groupView1.FlatLook = true;

this.groupView1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

{% endhighlight %}



{% highlight VB %} 

Me.groupView1.FlatLook = True

Me.groupView1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

{% endhighlight %}

{% endtabs %}

The border of the GroupView Items can be changed by drawing the border without the 3-dimensional edge which can be attained by setting the [FlatLook](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_FlatLook) property to `true`.

![Flat look](Overview_images/Overview_img56.jpeg)


We can specify the border style for the GroupView control using the [BorderStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_BorderStyle) property.

 ![GroupView border style](Overview_images/Overview_img57.jpeg) 


## Behavior settings

This section discusses the properties that determine the behavior of the GroupView control.

### Drag-and-drop effect

This explains the drag-and-drop settings supported by the GroupView control.

* [AllowDragDrop](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_AllowDragDrop)
* [AllowDragAnyObject](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_AllowDragAnyObject)

{% tabs %}

{% highlight C# %}  

this.groupView1.AllowDragDrop = true;

this.groupView1.AllowDragAnyObject = true;

{% endhighlight %}


{% highlight VB %} 

Me.groupView1.AllowDragDrop = True

Me.groupView1.AllowDragAnyObject = True

{% endhighlight %}

{% endtabs %}

### Spacing

Spacing can be provided between the GroupView Items, and between the GroupView control's left border and the GroupView Items using the properties given below.

* [ItemXSpacing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_ItemXSpacing)
* [ItemYSpacing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_ItemYSpacing)

{% tabs %}

{% highlight C# %}  

this.groupView1.ItemXSpacing = 5;

this.groupView1.ItemYSpacing = 10;

{% endhighlight %}



{% highlight VB %}

Me.groupView1.ItemXSpacing = 5

Me.groupView1.ItemYSpacing = 10

{% endhighlight %}

{% endtabs %}

 ![Spacing](Overview_images/Overview_img58.jpeg) 
 
 GroupBar with ItemXSpacing = "5" and ItemYSpacing = '"10"
 {:.caption}
 
## Scroll settings

We can specify scrolling for the GroupBar control to view the set of GroupView Items back and forth. This can be achieved by setting the [IntegratedScrolling](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_IntegratedScrolling) property to `true`.

{% tabs %}

{% highlight C# %}  

this.groupView2.IntegratedScrolling = False;

{% endhighlight %}



{% highlight VB %}

Me.groupView1.IntegratedScrolling = False

{% endhighlight %}

{% endtabs %}

![Scroll support](Overview_images/Overview_img59.jpeg) 





