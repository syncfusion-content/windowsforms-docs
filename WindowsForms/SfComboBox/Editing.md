---
layout: post
title: Editing
description: This section explains about the editing support in SfComboBox.
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Editing

The [SfComboBox.DropDownStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfListView.WinForms~Syncfusion.WinForms.ListView.SfComboBox~DropDownStyle.html) property determines whether the editor portion of the control can be edited or not. The two different modes of editing are: 

* DropDown: Editor portion is editable.
* DropDownList: Editor portion is non-editable.

{% tabs %}
{% highlight c# %}
sfComboBox1.DropDownStyle = DropDownStyle.DropDownList;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.DropDownStyle = DropDownStyle.DropDownList
{% endhighlight %}
{% endtabs %}

![](Editing_images/Editing_img1.png)