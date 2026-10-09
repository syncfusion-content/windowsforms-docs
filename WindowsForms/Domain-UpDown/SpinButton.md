---
layout: post
title: SpinButton in Windows Forms DomainUpdownExt | Syncfusion®
description: Learn about the spin button in Syncfusion Windows Forms DomainUpdownExt control, including alignment and orientation properties.
platform: windowsforms
control: DomainUpdownExt
documentation: ug
---

# SpinButton in WinForms DomainUpDownExt

This section discusses the properties that control the alignment and orientation of the spin button in the WinForms DomainUpDownExt control.

![WinForms DomainUpDownExt showing the spin button](DomainUpdownExt_images/Overview_img424.png)

## Orientation

The spin button orientation can be changed to vertical or horizontal using the [SpinOrientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DomainUpDownExt.html#Syncfusion_Windows_Forms_Tools_DomainUpDownExt_SpinOrientation) property.

{% tabs %}
{% highlight c# %}

//Spin button will be oriented horizontally.
this.domainUpDownExt1.SpinOrientation =Orientation.Horizontal;

//Spin button will be oriented vertically.
this.domainUpDownExt1.SpinOrientation =Orientation.Vertical;

{% endhighlight %}

{% highlight vb %}

'SpinButton will be oriented horizontally.
Me.domainUpDownExt1.SpinOrientation = Orientation.Horizontal

'SpinButton will be oriented vertically.
Me.domainUpDownExt1.SpinOrientation = Orientation.Vertical

{% endhighlight %}
{% endtabs %}

![Spin button oriented horizontally on the WinForms DomainUpDownExt control](DomainUpdownExt_images/Overview_img425.png)

## Alignment

The spin button alignment can be set through the [UpDownAlign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DomainUpDownExt.html#Syncfusion_Windows_Forms_Tools_DomainUpDownExt_UpDownAlign) property. By default, it is set to the right.

{% tabs %}
{% highlight c# %}

this.domainUpDownExt1.UpDownAlign = LeftRightAlignment.Left;

{% endhighlight %}

{% highlight vb %}

Me.domainUpDownExt1.UpDownAlign = LeftRightAlignment.Left

{% endhighlight %}
{% endtabs %}

![Spin button alignment on the WinForms DomainUpDownExt control](DomainUpdownExt_images/Overview_img426.png)
