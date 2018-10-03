---
layout: post
title: Multiple-Columns | WindowsForms | Syncfusion
description: multiple columns
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Multiple Columns

MultiColumnComboBox control is a [ComboBoxAdv](/windowsforms/comboboxadv/overview) control with multiple columns. Multiple columns will be enabled by default. To disable this, set MultiColumn property to false. We can display the headers for the columns using ShowColumnHeader property. 

![](Overview_images/Overview_img325.jpeg) 

We can bind external data to the MultiColumnComboBox control. Refer [DataBinding](/windowsforms/multicolumncombobox/data-binding) topic to know more.

## Selection color

We can specify the color for the alpha blended selections using AlphaBlendSelectionColor property.

{% tabs %}
{% highlight c# %}

this.multiColumnBoundCombo.MultiColumn = true;
this.multiColumnBoundCombo.ShowColumnHeader = true;
this.multiColumnComboBox1.AlphaBlendSelectionColor = Color.LightBlue;

{% endhighlight %}

{% highlight vb %}

Me.multiColumnBoundCombo.MultiColumn = True
Me.multiColumnBoundCombo.ShowColumnHeader = True
Me.multiColumnComboBox1.AlphaBlendSelectionColor = Color.LightBlue

{% endhighlight %}
{% endtabs %}

## DropDowWidth

The DropDownWidth property is used to set the width for the DropDown Popup of MultiColumnComboBox. Please find the code for the same:

{% tabs %}

{% highlight C# %}

this.multiColumnComboBox1.DropDownWidth = 240;

{% endhighlight %}


{% highlight VB %}

Me.multiColumnComboBox1.DropDownWidth = 240

{% endhighlight %}

{% endtabs %}

![](Overview_images/Dropdownimage.png) 

 Fig 1: This screenshot shows the width sets for the DropDown popup of MultiColumnComboBox

 