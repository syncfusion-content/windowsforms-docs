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

{% highlight c# %}

    toolstripitem toolStripItem1 = new toolstripitem();
    toolStripItem1.Text = "Paste";
    this.toolstripitem1.Image = ((System.Drawing.Image)(resources.GetObject("toolstripitem1.Image")));
    this.splitButton.DropDownItems.Add(toolStripItem1);


    toolstripitem toolStripItem2 = new toolstripitem();
    toolStripItem2.Text = "Copy";
    this.toolstripitem2.Image = ((System.Drawing.Image)(resources.GetObject("toolstripitem2.Image")));
    this.splitButton.DropDownItems.Add(toolStripItem2);



{% endhighlight %}


{% highlight vbnet %}

    Dim toolStripItem1 As New toolstripitem()
    toolStripItem1.Text = "Paste"
    Me.toolstripitem1.Image = (CType(resources.GetObject("toolstripitem1.Image"), System.Drawing.Image))
    Me.splitButton.DropDownItems.Add(toolStripItem1)


    Dim toolStripItem2 As New toolstripitem()
    toolStripItem2.Text = "Copy"
    Me.toolstripitem2.Image = (CType(resources.GetObject("toolstripitem2.Image"), System.Drawing.Image))
    Me.splitButton.DropDownItems.Add(toolStripItem2)  


{% endhighlight %}




![](Adding-Item-to-Drop-down_images/Adding-Item-to-Drop-down_img1.png)




You can also remove the added items if required. The following code illustrates how to remove items form drop-down list:

{% highlight c# %}

this.splitButton1.DropDownItems.RemoveAt(1);

{% endhighlight %}

{% highlight vbnet %}

Me.splitButton1.DropDownItems.RemoveAt(1);

{% endhighlight %}


![](Adding-Item-to-Drop-down_images/Adding-Item-to-Drop-down_img2.png)



