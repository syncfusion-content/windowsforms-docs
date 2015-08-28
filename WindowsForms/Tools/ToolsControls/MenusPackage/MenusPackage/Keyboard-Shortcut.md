---
layout: post
title: keyboard shortcut
description: keyboard shortcut
platform: windowsforms
control: Menus Package 
documentation: ug
---
# Keyboard Shortcut

Keyboard support can be assigned for each BarItem using BarItem.Shortcut property of the particular bar item. A customized text can be specified in the place of shortcut key using ShortcutText property.

![](Overview_images/Overview_img70.jpeg)





{% highlight c# %}

this.barItem4.Shortcut=System.Windows.Forms.Shortcut.CtrlX;

this.dropDownBarItem2.ShortcutText = "Cut";


{% endhighlight  %}
{% highlight vbnet %}




Me.barItem4.Shortcut=System.Windows.Forms.Shortcut.CtrlX

this.dropDownBarItem2.ShortcutText = "Cut";

{% endhighlight  %}

![](Overview_images/Overview_img71.jpeg) 



See Also

Types of Bar Items