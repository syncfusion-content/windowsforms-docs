---
layout: post
title: Getting Started with Windows Forms MultiColumnComboBox | Syncfusion®
description: Learn how to get started with the Syncfusion® Windows Forms MultiColumnComboBox control. Explore setup, features, examples, and customization options.
platform: WindowsForms
control: MultiColumnComboBox
documentation: ug
---

# Getting Started with Windows Forms MultiColumnComboBox

The MultiColumnComboBox control provides full support for the Windows Forms designer. To use a MultiColumnComboBox control in your application, all you need to do is drag-and-drop the MultiColumnComboBox control from the toolbox onto your form. You can then set any of its properties through the property grid. 

![Windows Forms MultiColumn ComboBox](Overview_images/Overview_img324.jpeg) 


The MultiColumnComboBox can be created programmatically through code as detailed below.

1. Include the required namespace.

{% capture codesnippet1 %}​
{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

2. Create an instance of MultiColumnComboBox. Add that instance to the Form.

{% capture codesnippet2 %}​
{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.MultiColumnComboBox multiColumnComboBox1;
this.multiColumnComboBox1=new Syncfusion.Windows.Forms.Tools.MultiColumnComboBox();
this.Controls.Add(this.multiColumnComboBox1);

{% endhighlight %}

{% highlight vb %}

Private multiColumnComboBox1 As Syncfusion.Windows.Forms.Tools.MultiColumnComboBox
Me.multiColumnComboBox1 = New Syncfusion.Windows.Forms.Tools.MultiColumnComboBox()
Me.Controls.Add(Me.multiColumnComboBox1)

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

After creating MultiColumnComboBox, you can bound them using data source. Refer [DataBinding](https://help.syncfusion.com/windowsforms/multicolumn-combobox/data-binding).


