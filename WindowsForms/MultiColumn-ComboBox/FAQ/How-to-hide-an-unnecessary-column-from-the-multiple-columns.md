---
layout: post
title: How-to-hide-an-unnecessary-column-from-the-multiple-columns | WindowsForms | Syncfusion
description: Checkout and learn here how to hide an unnecessary column from the multiple columns in Syncfusion WindowsForms Editors Package and more.
platform: WindowsForms
control: Editors Package
documentation: ug
---

# How to Hide an Unnecessary Column from the Multiple Columns


MultiColumnComboBox allows us to hide unnecessary columns. If you want to hide a particular column, follow this method anywhere in code but before displaying the dropdown.

{% tabs %}
{% highlight c# %}

Syncfusion.Windows.Forms.Grid.GridColHidden gch=new Syncfusion.Windows.Forms.Grid.GridColHidden(3);// Hides column number '3'
multiColumnComboBox1.ListBox.Grid.ColHiddenEntries.Add(gch);

{% endhighlight %}

{% highlight vb %}

Dim gch As Syncfusion.Windows.Forms.Grid.GridColHidden = New Syncfusion.Windows.Forms.Grid.GridColHidden(3) 'Hides column number '3'
multiColumnComboBox1.ListBox.Grid.ColHiddenEntries.Add(gch)

{% endhighlight %}
{% endtabs %}

This will hide the 3rd column. If you want to disable more columns repeat this step by the respective column number.

