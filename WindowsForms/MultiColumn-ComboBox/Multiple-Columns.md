---
layout: post
title: Multiple-Columns | WindowsForms | Syncfusion
description: This section explains about the multi columns support and its selection color, dropdownwidth and filtering options.
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Multiple Columns Support

MultiColumnComboBox control is a [ComboBoxAdv](/windowsforms/comboboxadv/overview) control with multiple columns. Multiple columns will be enabled by default. To disable this, set MultiColumn property to false. We can display the headers for the columns using ShowColumnHeader property. 

![Multiple Columns](Overview_images/Overview_img325.jpeg) 

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

## DropDownWidth

The DropDownWidth property is used to set the width for the DropDown Popup of MultiColumnComboBox. Please find the code for the same:

{% tabs %}

{% highlight C# %}

this.multiColumnComboBox1.DropDownWidth = 240;

{% endhighlight %}


{% highlight VB %}

Me.multiColumnComboBox1.DropDownWidth = 240

{% endhighlight %}

{% endtabs %}

![DropDownWidth](Overview_images/Dropdownimage.png) 

 Fig 1: This screenshot shows the width sets for the DropDown popup of MultiColumnComboBox

 ## Custom Filtering

[MultiColumnCombobox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnComboBox.html) supports custom filtering through which filter can be applied to all columns. To enable filtering support, `AllowFiltering` property should be set to true.
 
 {% tabs %}

{% highlight C# %}

 this.multiColumnComboBox1.AllowFiltering = true;

{% endhighlight %}

{% highlight VB %}
 
 Me.multiColumnComboBox1.AllowFiltering = true;

{% endhighlight %}

{% endtabs %}

The custom filtering can be applied by assigning a predicate to the `Filter` property. Based on the filtering condition given, items are filtered and displayed in the dropdown.

{% tabs %}

{% highlight C# %}

    private void OnFilterChanged()
    {
        // The filter criteria can be given in the FilterRecords method which can be assigned to Filter property.
        this.multiColumnComboBox1.Filter = FilterRecords;
    }   

{% endhighlight %}

{% highlight VB %}

    Private Sub OnFilterChanged()
        // The filter criteria can be given in the FilterRecords method which can be assigned to Filter property.
        Me.multiColumnComboBox1.Filter = FilterRecords
    End Sub

{% endhighlight %}

{% endtabs %}

N> If AllowFiltering is enabled and the filtering is not set or it is set to null, the default filtering will be applied.
Default filtering uses DisplayMember as Column with `StartWith` condition.


![Custom Filtering](Overview_images/Overview_img353.jpg) 