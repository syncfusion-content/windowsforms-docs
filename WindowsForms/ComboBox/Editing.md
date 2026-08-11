---
layout: post
title: Editing in Windows Forms SfComboBox | Syncfusion®
description: Editing in Windows Forms SfComboBox enables users to edit or restrict input in the editor area using editable and non-editable dropdown modes.
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Editing in Windows Forms SfComboBox

The [SfComboBox.DropDownStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_DropDownStyle) property determines whether the editor portion of the control can be edited or not. The two different modes of editing are: 

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


![Editing_img1](Editing_images/Editing_img1.png)
