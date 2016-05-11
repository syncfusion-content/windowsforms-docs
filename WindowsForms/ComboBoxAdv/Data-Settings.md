---
layout: post
title: Data-Settings | WindowsForms | Syncfusion
description: data settings
platform: WindowsForms
control: ComboBoxAdv
documentation: ug
---

# Data Settings

Data for the ComboBoxAdv is added through String Collection Editor, invoked through the ComboBoxAdv.Items property.

![](Overview_images/Overview_img302.png) 

{% highlight c# %}

//Adding data to ComboBoxAdv

this.comboBoxAdv1.Items.AddRange(new object[] { "Currency", "DateTimePicker", "ComboBoxAdv", "AutoComplete", "ListBox", "ContextMenu", "CurrencyEdit" });

{% endhighlight %}

{% highlight vbnet %}

'Adding data to ComboBoxAdv

Me.comboBoxAdv1.Items.AddRange(New Object() {"Currency", "DateTimePicker", "ComboBoxAdv", "AutoComplete", "ListBox", "ContextMenu", _

"CurrencyEdit"})

{% endhighlight %}

![](Overview_images/Overview_img303.png)


N> ComboBoxAdv can also be bound to an external Data source like Data Table. 
Refer [Data binding](/windowsforms/ComboBoxAdv/Advanced-Features.html#data-binding) _topic. To set image for dropdown items refer_ [Image settings](/windowsforms/ComboBoxAdv/ComboBoxAdv-appearance.html#image-settings)_._
