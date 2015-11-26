---
layout: post
title: How-to-get-or-set-a-SuperToolTip-programmatically | WindowsForms | Syncfusion
description: how to get or set a supertooltip programmatically?
platform: WindowsForms
control: Frequently Asked Questions
documentation: ug
---

# How to get or set a SuperToolTip programmatically?

We can get or set the SuperToolTip programmatically using the below two methods.

_Table 807: Method Table_

<table>
<tr>
<th>
SuperToolTip Method</th><th>
Description</th></tr>
<tr>
<td>
GetToolTip</td><td>
Gets the ToolTipInfo for any control. If the ToolTip properties change dynamically in an application, you can use this method to find out what information is exhibited at any point, depending upon the state of the application. </td></tr>
<tr>
<td>
SetToolTip</td><td>
Sets the ToolTipInfo for any control.</td></tr>
</table>

{% highlight c# %}

private void buttonAdv1_Click(object sender, EventArgs e) 

{ 

    // Gets the text set for the Body of TextBox tooltip. 

    MessageBox.Show (this.superToolTip1.GetToolTip(this.textBox1).Body.Text.ToString ()); 

}  

// To add a ToolTip through code. 

this.superToolTip1.SetToolTip(this.textBox1, "ToolTipText"); 

{% endhighlight  %}

{% highlight vbnet %}

Private Sub buttonAdv1_Click(ByVal sender As Object, ByVal e As EventArgs) 

  ' Gets the text set for the Body of TextBox tooltip. 

MessageBox.Show(Me.superToolTip1.GetToolTip(Me.textBox1).Body.Text.ToString) 

End Sub  

' To add a ToolTip through code. 

Me.superToolTip1.SetToolTip(Me.textBox1, "ToolTipText")

{% endhighlight  %}

![](How-to-get-or-set-a-SuperToolTip-programmatically_images/How-to-get-or-set-a-SuperToolTip-programmatically_img1.jpeg)

![](How-to-get-or-set-a-SuperToolTip-programmatically_images/How-to-get-or-set-a-SuperToolTip-programmatically_img2.jpeg)


N> You can also set tooltip using_ UpdateToolTip Event

