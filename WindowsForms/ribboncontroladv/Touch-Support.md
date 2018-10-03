---
layout: post
title: Touch-Support | WindowsForms | Syncfusion
description: touch support
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---

# Touch Support

Ribbon control have touch support and it provides Touch UI which is easy to access the elements in Ribbon.

## Enable Touch Style

You can control touch mode settings of RibbonControlAdv control using the following property.

<table>
<tr>
<th>
Property<br/><br/></th><th>
Type<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
RibbonTouchModeEnabled<br/><br/></td><td>
Boolean<br/><br/></td><td>
Enabling the RibbonTouchModeEnabled property in RibbonControlAdv, increases the size according to Microsoft touch mode size. Disabling the property retains its original size.<br/><br/></td></tr>
</table>

{% tabs %}

{% highlight c# %}

//Enables touch mode
this.ribbonControlAdv1.RibbonTouchModeEnabled = true;
this.ribbonControlAdv1.TouchMode = true;

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.RibbonTouchModeEnabled = True
Me.ribbonControlAdv1.TouchMode = True

{% endhighlight %}

{% endtabs %}

![](Touch_Support_Images/Touch-Support_img1.jpg)

## Switching between Touch and Mouse Mode

During this mode, an extra dropdown button will be added in QAT. This dropdown contains two modes `Touch` and `Mouse`.

![](Touch_Support_Images/Touch-Support_img2.jpg)

Selecting the touch will provide extra spaces between the elements for better touch support and Mouse mode will take back to standard ribbon size.
