---
layout: post
title: SpinButton
description: spinbutton
platform: windowsforms
control: DomainUpdownExt 
documentation: ug
---
# SpinButton

This section will discuss the properties which controls the alignment and orientation of the spin button in a DomainUpDownExt control.

![http://help.syncfusion.com/ug_82/WindowsFormsUI_Tools/Images/DomainUpDownExt_Spin.png](DomainUpdownExt_images/Overview_img424.png) 



## Orientation

The spin button orientation can be changed to vertical or horizontal using theSpinOrientationproperty.


{% highlight c# %}


//Spin button will be oriented horizontally.

this.domainUpDownExt1.SpinOrientation =Orientation.Horizontal;

//Spin button will be oriented vertically.

this.domainUpDownExt1.SpinOrientation =Orientation.Vertical;


{% endhighlight  %}
{% highlight vbnet %}




'SpinButton will be oriented horizontally.

Me.domainUpDownExt1.SpinOrientation = Orientation.Horizontal

'SpinButton will be oriented vertically.

Me.domainUpDownExt1.SpinOrientation = Orientation.Vertical

{% endhighlight  %}

![http://help.syncfusion.com/ug_82/WindowsFormsUI_Tools/Images/DomainUpDownSpin.png](DomainUpdownExt_images/Overview_img425.png) 



## Alignment

The spin button alignment can be set throughUpDownAlignproperty. By default it is set to right.




{% highlight c# %}
this.domainUpDownExt1.UpDownAlign =LeftRightAlignment.Left;

{% endhighlight  %}
{% highlight vbnet %}




Me.domainUpDownExt1.UpDownAlign =LeftRightAlignment.Left
{% endhighlight %}


![http://help.syncfusion.com/ug_82/WindowsFormsUI_Tools/Images/DomainUpDownExt_Align.png](DomainUpdownExt_images/Overview_img426.png)

