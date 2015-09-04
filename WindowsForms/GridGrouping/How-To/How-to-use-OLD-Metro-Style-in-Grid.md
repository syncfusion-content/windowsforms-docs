---
layout: post
title: How-to-use-OLD-Metro-Style-in-Grid
description: how to use old metro style in grid?
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to use OLD Metro Style in Grid?

Starting from Essential Studio, Volume 4, 2013(V11.40.26), Metro Theme is available with newer styles.  For any version earlier than Volume 4, 2013, you can use oldmetrostyle in your Grid using new class OldMetroStyle. Using the new class, you can apply all the controls in form with static method “ApplyStyle”. You can also pass gridcontrol,gridgrouping, or griddatabound control in this method.

The following code example illustrates how to add the Old Metro Style in Grid control.

{% highlight c# %}

 OldMetroStyle.ApplyStyle(this. gridControl1);

{% endhighlight %}

{% highlight vbnet %}

 OldMetroStyle.ApplyStyle(Me.gridControl1)
 
 {% endhighlight %}

 You can download the sample that uses a Old metro style in the Grid from the following location.

[http://www.syncfusion.com/downloads/support/directtrac/119651/OldMetroStyle1845477900.zip](http://www.syncfusion.com/downloads/support/directtrac/119651/OldMetroStyle1845477900.zip)

The following screen shot shows a new metro theme in Grid.

![](How-to-use-OLD-Metro-Style-in-Grid_images/How-to-use-OLD-Metro-Style-in-Grid_img1.png)


The following screen shot shows an Old metro theme in Grid.

![](How-to-use-OLD-Metro-Style-in-Grid_images/How-to-use-OLD-Metro-Style-in-Grid_img2.png)





