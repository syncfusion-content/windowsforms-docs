---
layout: post
title: Data Settings in Windows Forms xptoolbar control | Syncfusion
description: Learn about Data Settings support in Syncfusion Windows Forms ComboBoxAdv(Classic) control and more details.
platform: WindowsForms
control: ComboBoxAdv
documentation: ug
---

# Data Settings in Windows Forms ComboBoxAdv(Classic)

Data for the ComboBoxAdv is added through String Collection Editor, invoked through the ComboBoxAdv.Items property.

![Overview_img302](Overview_images/Overview_img302.png) 

{% tabs %}
{% highlight c# %}

//Adding data to ComboBoxAdv

this.comboBoxAdv1.Items.AddRange(new object[] { "Currency", "DateTimePicker", "ComboBoxAdv", "AutoComplete", "ListBox", "ContextMenu", "CurrencyEdit" });

{% endhighlight %}

{% highlight vb %}

'Adding data to ComboBoxAdv

Me.comboBoxAdv1.Items.AddRange(New Object() {"Currency", "DateTimePicker", "ComboBoxAdv", "AutoComplete", "ListBox", "ContextMenu", _

"CurrencyEdit"})

{% endhighlight %}
{% endtabs %}

![Overview_img303](Overview_images/Overview_img303.png)


N> ComboBoxAdv can also be bound to an external Data source like Data Table. 
Refer [Data binding](/windowsforms/ComboBoxAdv/Advanced-Features.html#data-binding) _topic. To set image for dropdown items refer_ [Image settings](/windowsforms/ComboBoxAdv/ComboBoxAdv-appearance.html#image-settings)
