---
layout: post
title: Multiple-Columns | Windows Forms | Syncfusion
description: multiple columns
platform: windowsforms
control: Editors Package
documentation: ug
---

# Multiple Columns

MultiColumnComboBox control is a [ComboBoxAdv](/windowsforms/comboboxadv/overview) control with multiple columns. Multiple columns will be enabled by default. To disable this, set MultiColumn property to false. We can display the headers for the columns using ShowColumnHeader property. 

![](Overview_images/Overview_img325.jpeg) 

We can bind external data to the MultiColumnComboBox control. Refer [DataBinding](/windowsforms/multicolumncombobox/data-binding) topic to know more.

## Selection Color

We can specify the color for the alpha blended selections using AlphaBlendSelectionColor property.

{% highlight c# %}

this.multiColumnBoundCombo.MultiColumn = true;

this.multiColumnBoundCombo.ShowColumnHeader = true;

this.multiColumnComboBox1.AlphaBlendSelectionColor = Color.LightBlue;

{% endhighlight %}

{% highlight vbnet %}

Me.multiColumnBoundCombo.MultiColumn = True

Me.multiColumnBoundCombo.ShowColumnHeader = True

Me.multiColumnComboBox1.AlphaBlendSelectionColor = Color.LightBlue

{% endhighlight %}




 