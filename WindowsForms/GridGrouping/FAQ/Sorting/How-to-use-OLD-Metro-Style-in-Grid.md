---
layout: post
title: OLD Metro Style in WinForms GridGroupingControl | Syncfusion®
description: Use the OLD Metro Style in Syncfusion® WinForms GridGroupingControl, its theme customization, styling options, appearance settings, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Use OLD Metro Style in WinForms GridGroupingControl

Starting from Essential Studio, Volume 4, 2013(V11.40.26), Metro Theme is available with newer styles.  For any version earlier than Volume 4, 2013, you can use old metro style in your grid using new class OldMetroStyle. Using the new class, you can apply all the controls in form with static method “ApplyStyle”. You can also pass GridControl, GridGroupingControl, or GridDataBoundGrid control in this method.

The following code example illustrates how to add the Old Metro Style in Grid control.

{% tabs %}
{% highlight c# %}

 OldMetroStyle.ApplyStyle(this. gridControl1);

{% endhighlight %}

{% highlight vb %}

 OldMetroStyle.ApplyStyle(Me.gridControl1)
 
 {% endhighlight %}
{% endtabs %}

 You can download the sample that uses a Old metro style in the Grid from the following location.

[http://www.syncfusion.com/downloads/support/directtrac/119651/OldMetroStyle1845477900.zip](http://www.syncfusion.com/downloads/support/directtrac/119651/OldMetroStyle1845477900.zip)

The following screen shot shows a new metro theme in Grid.

![How-to-use-OLD-Metro-Style-in-Grid_img1](How-to-use-OLD-Metro-Style-in-Grid_images/How-to-use-OLD-Metro-Style-in-Grid_img1.png)


The following screen shot shows an Old metro theme in Grid.

![How-to-use-OLD-Metro-Style-in-Grid_img2](How-to-use-OLD-Metro-Style-in-Grid_images/How-to-use-OLD-Metro-Style-in-Grid_img2.png)





