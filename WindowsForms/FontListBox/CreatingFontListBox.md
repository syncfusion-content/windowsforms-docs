---
layout: post
title: Creating FontListBox | WindowsForms | Syncfusion
description: Creating FontListBox
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Creating FontListBox

To use a FontListBox control in your application, all you need to do is drag and drop the FontListBox control from the toolbox onto your form.

 ![](Overview_images/Overview_img577.jpeg) 

It can be created programmatically as follows.

1. Include the required namespace.

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools
 
{% endhighlight %}
{% endtabs %}

2. Create an instances of FontListBox control. Specify its size and finally add that instance to that Form.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.FontListBox fontListBox1;
this.fontListBox1=new Syncfusion.Windows.Forms.Tools.FontListBox();
this.fontListBox1.Size = new System.Drawing.Size(152, 94);
this.Controls.Add(this.fontListBox1);

{% endhighlight %}

{% highlight vb %}

Private fontListBox1 As Syncfusion.Windows.Forms.Tools.FontListBox
Me.fontListBox1 = New Syncfusion.Windows.Forms.Tools.FontListBox()
Me.fontListBox1.Size = New System.Drawing.Size(152, 21)
Me.Controls.Add(Me.fontListBox1)

{% endhighlight %}
{% endtabs %}

![](Overview_images/Overview_img578.jpeg) 