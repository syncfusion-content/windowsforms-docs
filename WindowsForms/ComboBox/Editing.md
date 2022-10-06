---
layout: post
title: Editing in Windows Forms ComboBox control | Syncfusion
description: Learn about Editing support in Syncfusion Windows Forms ComboBox (SfComboBox) control and more details.
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Editing in Windows Forms ComboBox (SfComboBox)

The [SfComboBox.DropDownStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_DropDownStyle) property determines whether the editor portion of the control can be edited or not. The two different modes of editing are: 

* DropDown: Editor portion is editable.
* DropDownList: Editor portion is non-editable.

{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}
sfComboBox1.DropDownStyle = DropDownStyle.DropDownList;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.DropDownStyle = DropDownStyle.DropDownList
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

![Editing_img1](Editing_images/Editing_img1.png)
