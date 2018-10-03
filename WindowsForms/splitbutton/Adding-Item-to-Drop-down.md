---
layout: post
title: Adding-Item-to-Drop-down | WindowsForms | Syncfusion
description: adding item to drop-down
platform: WindowsForms
control: SplitButton 
documentation: ug
---

# Adding Item to Drop-down

This feature enables you to add items to the SplitButton drop-down list. 

In SplitButton, you can add ToolStripItem as drop-down using the _DropDownItems_ property. The following code illustrates how to add items to the drop-down list:

{% tabs %}
{% highlight c# %}

ToolStripItem toolStripItem1 = new ToolStripItem();
toolStripItem1.Text = "Paste";
this.toolstripitem1.Image = ((System.Drawing.Image)(resources.GetObject("toolstripitem1.Image")));
this.splitButton.DropDownItems.Add(toolStripItem1);

ToolStripItem toolStripItem2 = new ToolStripItem();
toolStripItem2.Text = "Copy";
this.toolstripitem2.Image = ((System.Drawing.Image)(resources.GetObject("toolstripitem2.Image")));
this.splitButton.DropDownItems.Add(toolStripItem2);

{% endhighlight %}

{% highlight vb %}

Dim toolStripItem1 As New ToolStripItem()
toolStripItem1.Text = "Paste"
Me.toolstripitem1.Image = (CType(resources.GetObject("toolstripitem1.Image"), System.Drawing.Image))
Me.splitButton.DropDownItems.Add(toolStripItem1)

Dim toolStripItem2 As New ToolStripItem()
toolStripItem2.Text = "Copy"
Me.toolstripitem2.Image = (CType(resources.GetObject("toolstripitem2.Image"), System.Drawing.Image))
Me.splitButton.DropDownItems.Add(toolStripItem2)  

{% endhighlight %}
{% endtabs %}

![](Adding-Item-to-Drop-down_images/Adding-Item-to-Drop-down_img1.png)


### Removing item from Drop-Down list

You can also remove the added items if required. The following code illustrates how to remove items form drop-down list: 

{% tabs %}
{% highlight c# %}

this.splitButton1.DropDownItems.RemoveAt(1);

{% endhighlight %}

{% highlight vb %}

Me.splitButton1.DropDownItems.RemoveAt(1);

{% endhighlight %}
{% endtabs %}

![](Adding-Item-to-Drop-down_images/Adding-Item-to-Drop-down_img2.png)
