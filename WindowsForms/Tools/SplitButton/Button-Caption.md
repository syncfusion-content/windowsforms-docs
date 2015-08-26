---
layout: post
title: Button-Caption
description: button caption
platform: windowsforms
control: SplitButton 
documentation: ug
---

# Button Caption

This feature enables you to name your SplitButton as needed.

Adding Caption to the SplitButton  

You can add a button caption to the SplitButton or set the selected item as the caption.  

The following code illustrates how to add a caption for the button:

{% highlight c# %}

splitButton1.Text = "Click";   

{% endhighlight %}

{% highlight vbnet %}

splitButton1.Text = "Click"

{% endhighlight %}


![](Button-Caption_images/Button-Caption_img1.png)


The following code illustrates how to set the selected item from the dropdown as the caption:

{% highlight c# %}

 private void splitButton1_DropDowItemClicked(object sender, ToolStripItemClickedEventArgs e)

{             

             splitButton1.Text = e.ClickedItem.Text;

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub splitButton1_DropDowItemClicked(ByVal sender As Object, ByVal e As ToolStripItemClickedEventArgs)

splitButton1.Text = e.ClickedItem.Text

End Sub


{% endhighlight %}



![](Button-Caption_images/Button-Caption_img2.png)



