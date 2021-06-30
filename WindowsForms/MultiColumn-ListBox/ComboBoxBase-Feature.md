---
layout: post
title: ComboBoxBase in Windows Forms MultiColumn ListBox control | Syncfusion
description: Learn here all about the comboboxbase feature of Syncfusion Windows Forms MultiColumn ListBox (GridListControl) control and more.
platform: windowsforms
control: GridList
documentation: ug
---

# ComboBoxBase in Windows Forms MultiColumn ListBox (GridListControl)

The GridList control can be coupled to the ComboBoxBase control by using the ListControl property of ComboBoxBase class. ComboBoxBase is an advanced control provided by Syncfusion that essentially separates edit portion from drop-down portion making. It displays the GridList control as a dropdown i.e. user can drop the GridList control in the drop-down area to get a multi-column drop-down effect.

{% tabs %}
{% highlight c# %}
this.comboBoxBase1.ListControl = this.gridListControl1;
{% endhighlight  %}
{% highlight vb %}
Me.comboBoxBase1.ListControl = Me.gridListControl1
{% endhighlight  %}
{% endtabs %}

![ComboBoxBase in Windows Forms MultiColumn ListBox](ComboBoxBase-Feature_images/ComboBoxBase-Feature_img1.jpeg) 
