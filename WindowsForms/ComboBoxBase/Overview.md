---
layout: post
title: Overview | Windows Forms | Syncfusion
description: Overview
platform: windowsforms
control: ComboBoxBase
documentation: ug
---

#  Overview

The flexible ComboBoxBase control is an alternative to the standard combo box control. It separates the edit portion from the drop-down list portion thereby making this architecture powerful and flexible. However, due to this separation, the object model of this control is different from that of the combo box. 

There is however, a ComboBoxAdv, which is based on the ComboBoxBase and provides an identical object model to that of the framework combo box. You can also get a framework combo box like look-and-feel (without a similar object model) by attaching a list box control to the ComboBoxBase.

Note that Essential Grid comes with a ListControl-derived GridListControl, which you can place in the drop-down area to get a multi-column drop-down combo.

![](Overview_images/Overview_img314.jpeg) 

With the ComboBoxBase, you can plug in any ListControl-derived class as the list for the list portion of the combo box using the ListControl property.

This version of ComboBoxBase does not support any kind of owner drawing to customize painting. Note however that you could still use a ListControl that supports owner drawing. 

{% seealso %}
[ComboBoxAdv](/windowsforms/comboboxadv)
{% endseealso %}


