---
layout: post
title: ComboBoxBase in Windows Forms MultiColumn ListBox | Syncfusion®
description: ComboBoxBase in Syncfusion® Windows Forms MultiColumn ListBox links GridListControl as a dropdown, providing advanced multi‑column list selection support.
platform: windowsforms
control: MultiColumn ListBox
documentation: ug
---

# ComboBoxBase in Windows Forms MultiColumn ListBox

The MultiColumn ListBox can be coupled to the ComboBoxBase control by using the ListControl property of ComboBoxBase class. ComboBoxBase is an advanced control provided by Syncfusion that essentially separates edit portion from drop-down portion making. It displays the MultiColumn ListBox as a dropdown i.e. user can drop the control in the drop-down area to get a multi-column drop-down effect.

{% tabs %}
{% highlight c# %}
this.comboBoxBase1.ListControl = this.gridListControl1;
{% endhighlight  %}
{% highlight vb %}
Me.comboBoxBase1.ListControl = Me.gridListControl1
{% endhighlight  %}
{% endtabs %}

![ComboBoxBase in Windows Forms MultiColumn ListBox](ComboBoxBase-Feature_images/ComboBoxBase-Feature_img1.jpeg) 
