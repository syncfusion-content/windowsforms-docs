---
layout: post
title: Customization in Windows Forms FontListBox control | Syncfusion
description: Learn about Customization support in Syncfusion Windows Forms FontListBox control, its elements and more details.
platform: WindowsForms
control: FontListBox
documentation: ug
---

## Selection Mode

At run time, the items in the FontListBox can be selected based on the selection mode specified in the [SelectionMode](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.listbox.selectionmode?redirectedfrom=MSDN&view=netframework-4.8#System_Windows_Forms_ListBox_SelectionMode) property. Selection can be made using mouse and keyboard.

The FontListBox contains the following options:

* one
* MultiSimple 
* MultiExtended

{% tabs %}
{% highlight c# %}

this.fontListBox1.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended;

{% endhighlight %}

{% highlight vb %}

Me.fontListBox1.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended

{% endhighlight %}
{% endtabs %}

![Windows Forms FontListBox showing different selection modes](Overview_images/FontListBox_selectionmode.jpeg) 

## ScrollBar settings

By default, the [FontListBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.FontListBox.html) control has a vertical scrollbar. It can also contain a horizontal scrollbar. This section explains the properties that sets the scrollbar to the control.

### Horizontal scrollbar

The [HorizontalScrollbar](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.listbox.horizontalscrollbar?view=netframework-4.8) can be displayed if the items are beyond the right edge of the FontListBox.

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
HorizontalScrollbar</td><td>
Sets the horizontal scrollbar for the control if the item exceeds beyond the right edge of the FontListBox control.</td></tr>
<tr>
<td>
HorizontalExtent</td><td>
Specifies the width of the control when the HorizontalScrollBar property is set to true.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.fontListBox1.HorizontalExtent = 150;
this.fontListBox1.HorizontalScrollbar = true;

{% endhighlight %}

{% highlight vb %}

Me.fontListBox1.HorizontalExtent = 150
Me.fontListBox1.HorizontalScrollbar = True

{% endhighlight %}
{% endtabs %}

![Windows Forms FontListBox shows horizontal scrollbar](Customization_images/FontListBox_scrollbar.png)

{% seealso %}

[How to display the scrollbars always irrespective of the number of items?](/windowsforms/fontlistbox/faq/how-to-display-the-scrollbars-always-irrespective-of-the-number-of-items)

{% endseealso %}

## FontListBox items

### Height

We can set the height of the item inside the listbox through [ItemHeight](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.listbox.itemheight?view=netframework-4.8) property. Default value is 15. 

{% tabs %}
{% highlight c# %}

this.fontListBox1.ItemHeight = 20;

{% endhighlight %}

{% highlight vb %}

Me.fontListBox1.ItemHeight = 20

{% endhighlight %}
{% endtabs %} 

![Windows Forms FontListBox showing reduced height of listbox](Customization_images/FontListBox_height.png) 

### Sorting

Sorting of the items can be enabled using the [Sorted](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.listbox.sorted?view=netframework-4.8) property. By default, the value of this property is false.

{% tabs %}
{% highlight c# %}

this.fontListBox1.Sorted = true;

{% endhighlight %}

{% highlight vb %}

Me.fontListBox1.Sorted = True

{% endhighlight %}
{% endtabs %}

### AutoCompleting the items

The **FontListBox** control has the ability to auto complete the items as you type in the list box. This feature is enabled by setting the [UseAutoComplete](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.FontListBox.html#Syncfusion_Windows_Forms_Tools_FontListBox_UseAutoComplete) property to true.

{% tabs %}
{% highlight c# %}

this.fontListBox1.UseAutoComplete = true;

{% endhighlight %}

{% highlight vb %}

Me.fontListBox1.UseAutoComplete = True

{% endhighlight %}
{% endtabs %}

## Events

The SelectedIndexChanged event occurs when the ListBox.SelectedIndex property is changed.

The following code snippet allows you to set a selected font style for a label on selecting through a FontListBox using the [SelectedIndexChanged](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.listbox.selectedindexchanged?redirectedfrom=MSDN&view=netframework-4.8) event.

{% tabs %}
{% highlight c# %}

private void fontListBox1_SelectedIndexChanged(object sender, EventArgs e)
{
    this.label1.Font = new Font(this.fontListBox1.SelectedItem.ToString(), 11, FontStyle.Regular);
}

{% endhighlight %}

{% highlight vb %}

Private Sub fontListBox1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
    Me.label1.Font = New Font(Me.fontListBox1.SelectedItem.ToString(), 11, FontStyle.Regular)
End Sub

{% endhighlight %}
{% endtabs %}
