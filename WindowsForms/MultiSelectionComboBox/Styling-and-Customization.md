---
layout: post
title: Styling-and-Customization | WindowsForms | Syncfusion
description: styling and customization
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Styling and Customization

## Drop-down styling

### Check box selection

Checkboxes in drop down list can be enabled for multiple items selection through the ShowCheckBox property. 

![7](Overview_images/Overview_img344.png) 

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.ShowCheckBox = true;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.ShowCheckBox = True

{% endhighlight %}
{% endtabs %}

### Grouping header background

Grouping Header background color can be customized using GroupHeaderBackColor property.

![8](Overview_images/Overview_img345.png) 

The following code sample illustrates you on how to customize Group Header background color.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.GroupHeaderBackColor = Color.White;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.GroupHeaderBackColor = Color.White

{% endhighlight %}
{% endtabs %}

### Grouping header ForeColor

Grouping Header text color can be customized using GroupHeaderForeColor property.

![9](Overview_images/Overview_img346.png) 

The following code sample illustrates you on how to customize Group Header ForeColor.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.GroupHeaderForeColor = Color.White;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.GroupHeaderForeColor = Color.White

{% endhighlight %}
{% endtabs %}

### Grouping header separator color

Grouping Header Separator Color can be customized using GroupHeaderSeparatorColor property.

![10](Overview_images/Overview_img347.png) 

The following code sample illustrates you on how to customize Group Header Separator Color.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.GroupHeaderSeperatorColor = Color.White;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.GroupHeaderSeperatorColor = Color.White

{% endhighlight %}
{% endtabs %}

### Item height

Drop down item height can be customized by using ItemsHeight property.

The following code sample illustrates you on how to customize drop down items height.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.ItemsHeight = 25;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.ItemsHeight = 25

{% endhighlight %}
{% endtabs %}

### Drop-down height

Drop down window height can be customized by using DropDownHeight property.

The following code sample illustrates you on how to customize drop down window height.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.DropDownHeight = 125;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.DropDownHeight = 125

{% endhighlight %}
{% endtabs %}

### Drop-down width

Drop down window width can be customized by using DropDownWidth property.

The following code sample illustrates you on how to customize drop down window width.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.DropDownWidth = 125;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.DropDownWidth = 125

{% endhighlight %}
{% endtabs %}

### Maximum number of drop-down items

Maximum number of drop down items to display can be customized by using MaxDropDownItems property.

The following code sample illustrates you on how to customize number of drop down items.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.MaxDropDownItems = 5;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.MaxDropDownItems = 5

{% endhighlight %}
{% endtabs %}

## Text block styling

### Visual item back color

Visual Item background color can be customized using VisualItemBackColor property.

![11](Overview_images/Overview_img348.png) 

The following code sample illustrates you on how to customize Visual Item Back Color.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.VisualItemBackColor = Color.White;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.VisualItemBackColor = Color.White

{% endhighlight %}
{% endtabs %}

### Visual item fore color

Visual Item Fore Color can be customized using VisualItemForeColor property.

![12](Overview_images/Overview_img349.png) 

The following code sample illustrates you on how to customize Visual Item Fore Color.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.VisualItemForeColor = Color.Black;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.VisualItemForeColor = Color.Black

{% endhighlight %}
{% endtabs %}

### Visual item selection color

Visual Item Back Color upon selection can be customized using VisualItemSelectionColor property.

![13](Overview_images/Overview_img350.png) 

The following code sample illustrates you on how to customize Visual Item Back Color upon selection.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.VisualItemForeColor = Color.Black;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.VisualItemForeColor = Color.Black

{% endhighlight %}
{% endtabs %}

### Visual item border color

Visual Item Border Color can be customized using VisualItemBorderColor property.

![14](Overview_images/Overview_img351.png)

The following code sample illustrates you on how to customize Visual Item Border Color.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.VisualItemBorderColor = Color.Black;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.VisualItemBorderColor = Color.Black

{% endhighlight %}
{% endtabs %}

### Delimiter character

Upon selecting multiple items from its drop down list, each selected item is separated by user defined delimiter character.

![15](Overview_images/Overview_img352.png) 

The following code sample illustrates you on how to set delimiter character.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.DelimiterChar = ",";

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.DelimiterChar = ","

{% endhighlight %}
{% endtabs %}

N> Delimiter character needs to be single special characters like “,” “.”
