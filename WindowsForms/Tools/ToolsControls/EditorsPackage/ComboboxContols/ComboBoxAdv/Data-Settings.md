---
layout: post
title: Data-Settings
description: data settings
platform: windowsforms
control: Editors Package
documentation: ug
---

# Data Settings

Data for the ComboBoxAdv is added through String Collection Editor, invoked through the ComboBoxAdv.Items property.

![C:/Users/ashwini/Desktop/ComboBoxAdv image/Items collection.png](Overview_images/Overview_img302.png) 

{% highlight c# %}

//Adding data to ComboBoxAdv

this.comboBoxAdv1.Items.AddRange(new object[] { "Currency", "DateTimePicker", "ComboBoxAdv", "AutoComplete", "ListBox", "ContextMenu", "CurrencyEdit" });

{% endhighlight %}

{% highlight vbnet %}

'Adding data to ComboBoxAdv

Me.comboBoxAdv1.Items.AddRange(New Object() {"Currency", "DateTimePicker", "ComboBoxAdv", "AutoComplete", "ListBox", "ContextMenu", _

"CurrencyEdit"})

{% endhighlight %}

![C:/Users/ashwini/Desktop/ComboBoxAdv image/Items collectionimage.png](Overview_images/Overview_img303.png)


> Note: ComboBoxAdv can also be bound to an external Data source like Data Table. Refer_ [Databinding](http://help.syncfusion.com/ug/windows%20forms/documents/databinding8.htm) _topic. To set image for dropdown items refer_ [Image settings](http://help.syncfusion.com/ug/windows%20forms/documents/imagesettings2.htm)_._
