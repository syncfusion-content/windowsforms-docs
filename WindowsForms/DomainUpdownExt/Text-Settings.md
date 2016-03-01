---
layout: post
title: Text Settings | Windows Forms | Syncfusion
description: text settings
platform: windowsforms
control: DomainUpdownExt 
documentation: ug
---
# Text Settings

The text for the DomainUpDownExt control can be specified in String Collection Editor. This section discusses the properties which deals with this text.


<table>
<tr>
<th>
DomainUpDownExt Property</th><th>
Description</th></tr>
<tr>
<td>
Items</td><td>
Invokes String Collection Editor. Text for the control can be specified in this editor.</td></tr>
<tr>
<td>
TextAlign</td><td>
Specifies the alignment of the text in the text field.</td></tr>
<tr>
<td>
MaxLength</td><td>
Indicates the maximum length of the text that can be entered into the editable portion of the control. Default value is 32767.</td></tr>
</table>




{% highlight c# %}

this.domainUpDownExt2.Items.Add("Six");

this.domainUpDownExt1.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;

this.domainUpDownExt2.MaxLength = 32768;


{% endhighlight  %}

{% highlight vbnet %}





Me.domainUpDownExt2.Items.Add("Six")

Me.domainUpDownExt1.TextAlign = System.Windows.Forms.HorizontalAlignment.Right

Me.domainUpDownExt2.MaxLength = 32768


{% endhighlight %}

![](DomainUpdownExt_images/Overview_img423.png) 

