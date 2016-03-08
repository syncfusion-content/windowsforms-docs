---
layout: post
title: Styling-and-Customization | Windows Forms | Syncfusion
description: styling and customization
platform: windowsforms
control: Editors Package
documentation: ug
---

# Styling and Customization

## Drop Down Styling

### Check Box Selection

Checkboxes in drop down list can be enabled for multiple items selection through the ShowCheckBox property. 

![7](Overview_images/Overview_img344.png) 

{% highlight c# %}

this.MultiSelectionComboBox1.ShowCheckBox = true;

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.ShowCheckBox = True

{% endhighlight %}

### Grouping Header Background

Grouping Header background color can be customized using GroupHeaderBackColor property.

![8](Overview_images/Overview_img345.png) 

The following code sample illustrates you on how to customize Group Header background color.

{% highlight c# %}

this.MultiSelectionComboBox1.GroupHeaderBackColor = Color.White;

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.GroupHeaderBackColor = Color.White

{% endhighlight %}

### Grouping Header ForeColor

Grouping Header text color can be customized using GroupHeaderForeColor property.

![9](Overview_images/Overview_img346.png) 

The following code sample illustrates you on how to customize Group Header ForeColor.

{% highlight c# %}

this.MultiSelectionComboBox1.GroupHeaderForeColor = Color.White;

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.GroupHeaderForeColor = Color.White

{% endhighlight %}

### Grouping Header Separator Color

Grouping Header Separator Color can be customized using GroupHeaderSeperatorColor property.

![10](Overview_images/Overview_img347.png) 

The following code sample illustrates you on how to customize Group Header Separator Color.

{% highlight c# %}

this.MultiSelectionComboBox1.GroupHeaderSeperatorColor = Color.White;

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.GroupHeaderSeperatorColor = Color.White

{% endhighlight %}

### Item Height

Drop down item height can be customized by using ItemsHeight property.

The following code sample illustrates you on how to customize drop down items height.

{% highlight c# %}

this.MultiSelectionComboBox1.ItemsHeight = 25;

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.ItemsHeight = 25

{% endhighlight %}

### Drop Down Height

Drop down window height can be customized by using DropDownHeight property.

The following code sample illustrates you on how to customize drop down window height.

{% highlight c# %}

this.MultiSelectionComboBox1.DropDownHeight = 125;

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.DropDownHeight = 125

{% endhighlight %}

### Drop Down Width

Drop down window width can be customized by using DropDownWidth property.

The following code sample illustrates you on how to customize drop down window width.

{% highlight c# %}

this.MultiSelectionComboBox1.DropDownWidth = 125;

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.DropDownWidth = 125

{% endhighlight %}

### Maximum Number of Drop Down Items

Maximum number of drop down items to display can be customized by using MaxDropDownItems property.

The following code sample illustrates you on how to customize number of drop down items.

{% highlight c# %}

this.MultiSelectionComboBox1.MaxDropDownItems = 5;

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.MaxDropDownItems = 5

{% endhighlight %}

## Text Block Styling

### Visual Item Back Color

Visual Item background color can be customized using VisualItemBackColor property.

![11](Overview_images/Overview_img348.png) 

The following code sample illustrates you on how to customize Visual Item Back Color.

{% highlight c# %}

this.MultiSelectionComboBox1.VisualItemBackColor = Color.White;

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.VisualItemBackColor = Color.White

{% endhighlight %}

### Visual Item Fore Color

Visual Item Fore Color can be customized using VisualItemForeColor property.

![12](Overview_images/Overview_img349.png) 

The following code sample illustrates you on how to customize Visual Item Fore Color.

{% highlight c# %}

this.MultiSelectionComboBox1.VisualItemForeColor = Color.Black;

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.VisualItemForeColor = Color.Black

{% endhighlight %}

### Visual Item Selection Color

Visual Item Back Color upon selection can be customized using VisualItemSelectionColor property.

![13](Overview_images/Overview_img350.png) 

The following code sample illustrates you on how to customize Visual Item Back Color upon selection.

{% highlight c# %}

this.MultiSelectionComboBox1.VisualItemForeColor = Color.Black;

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.VisualItemForeColor = Color.Black

{% endhighlight %}

### Visual Item Border Color

Visual Item Border Color can be customized using VisualItemBorderColor property.

![14](Overview_images/Overview_img351.png)

The following code sample illustrates you on how to customize Visual Item Border Color.

{% highlight c# %}

this.MultiSelectionComboBox1.VisualItemBorderColor = Color.Black;

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.VisualItemBorderColor = Color.Black

{% endhighlight %}

### Delimiter Character

Upon selecting multiple items from its drop down list, each selected item is separated by user defined delimiter character.

![15](Overview_images/Overview_img352.png) 

The following code sample illustrates you on how to set delimiter character.

{% highlight c# %}

this.MultiSelectionComboBox1.DelimiterChar = ",";

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.DelimiterChar = ","

{% endhighlight %}

N> Delimiter character needs to be single special characters like “,” “.”
