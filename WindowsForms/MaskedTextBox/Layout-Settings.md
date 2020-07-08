---
layout: post
title: Layout Settings | WindowsForms | Syncfusion
description: Learn here about how to set the minimum and maximum size of the Syncfusion Windows Forms  Layout Settings
platform: WindowsForms
control: MaskedEditBox
documentation: ug
--- 
# Layout Settings in MaskedEditBox

The layout settings of the MaskedEditBox control are discussed in this section.

You can set the minimum and maximum size of the [MaskedEditBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.MaskedEditBox.html) control by using the [MinimumSize](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.TextBoxExt~MinimumSize.html) and [MaximumSize](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.TextBoxExt~MaximumSize.html) properties.


<table>
<tr>
<th>
MaskedEditBox Properties</th><th>
Description</th></tr>
<tr>
<td>
MaximumSize</td><td>
Gets / sets the maximum size for the control.</td></tr>
<tr>
<td>
MinimumSize</td><td>
Gets / sets the minimum size for the control.</td></tr>
</table>


{% tabs %}

{% highlight C# %}  

this.maskedEditBox1.MaximumSize = new System.Drawing.Size(150, 20);
this.maskedEditBox1.MinimumSize = new System.Drawing.Size(150, 20);

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.MaximumSize = New System.Drawing.Size(150, 20)
Me.maskedEditBox1.MinimumSize = New System.Drawing.Size(150, 20)

{% endhighlight %}

{% endtabs %}

![Set the minimum and maximum size of WF MaskedEditBox](MaskedEditBox-images/MarkedEditBox-img18.png)

