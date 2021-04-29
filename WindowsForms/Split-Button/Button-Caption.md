---
layout: post
title: Button Caption in Windows Forms Split Button control | Syncfusion
description: Learn about Button Caption support in Syncfusion Windows Forms Split Button control and more details.
platform: WindowsForms
control: SplitButton 
documentation: ug
---

# Button Caption in Windows Forms Split Button

This feature enables you to name your SplitButton as needed.

## Adding caption to the SplitButton  

You can add a button caption to the SplitButton or set the selected item as the caption.  

The following code illustrates how to add a caption for the button:

{% tabs %}
{% highlight c# %}

splitButton1.Text = "Click";   

{% endhighlight %}

{% highlight vb %}

splitButton1.Text = "Click"

{% endhighlight %}
{% endtabs %}

![Button-Caption_img1](Button-Caption_images/Button-Caption_img1.png)


The following code illustrates how to set the selected item from the dropdown as the caption:

{% tabs %}
{% highlight c# %}

private void splitButton1_DropDowItemClicked(object sender, ToolStripItemClickedEventArgs e)
{             
     splitButton1.Text = e.ClickedItem.Text;
}

{% endhighlight %}

{% highlight vb %}

Private Sub splitButton1_DropDowItemClicked(ByVal sender As Object, ByVal e As ToolStripItemClickedEventArgs)
splitButton1.Text = e.ClickedItem.Text
End Sub

{% endhighlight %}
{% endtabs %}

![Button-Caption_img2](Button-Caption_images/Button-Caption_img2.png)
