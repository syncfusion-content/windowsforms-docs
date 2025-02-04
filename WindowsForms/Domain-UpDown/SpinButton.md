---
layout: post
title: Spinbutton in Windows Forms Domain UpDown control | Syncfusion®
description: Learn about Spinbutton support in Syncfusion® Windows Forms Domain UpDown (DomainUpdownExt) control and more details.
platform: windowsforms
control: DomainUpdownExt 
documentation: ug
---
# Spin button in Windows Forms Domain UpDown (DomainUpdown next)

This section will discuss the properties which controls the alignment and orientation of the spin button in a DomainUpDownExt control.

![Spin button](DomainUpdownExt_images/Overview_img424.png) 

## Orientation

The spin button orientation can be changed to vertical or horizontal using the [SpinOrientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DomainUpDownExt.html#Syncfusion_Windows_Forms_Tools_DomainUpDownExt_SpinOrientation) property.

{% tabs %}
{% highlight c# %}

//Spin button will be oriented horizontally.
this.domainUpDownExt1.SpinOrientation =Orientation.Horizontal;

//Spin button will be oriented vertically.
this.domainUpDownExt1.SpinOrientation =Orientation.Vertical;

{% endhighlight  %}

{% highlight vb %}

'SpinButton will be oriented horizontally.
Me.domainUpDownExt1.SpinOrientation = Orientation.Horizontal

'SpinButton will be oriented vertically.
Me.domainUpDownExt1.SpinOrientation = Orientation.Vertical

{% endhighlight  %}
{% endtabs %}

![Orientation](DomainUpdownExt_images/Overview_img425.png) 

## Alignment

The spin button alignment can be set through [UpDownAlign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DomainUpDownExt.html#Syncfusion_Windows_Forms_Tools_DomainUpDownExt_UpDownAlign) property. By default it is set to right.

{% tabs %}
{% highlight c# %}

this.domainUpDownExt1.UpDownAlign =LeftRightAlignment.Left;

{% endhighlight  %}

{% highlight vb %}

Me.domainUpDownExt1.UpDownAlign =LeftRightAlignment.Left

{% endhighlight %}
{% endtabs %}

![Alignment](DomainUpdownExt_images/Overview_img426.png)
