---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: Creating MaskedEditBox
platform: WindowsForms
control: MaskedEditBox
documentation: ug
---
# Getting Started

## Through designer

The MaskedEditBox control provides full support for the Windows Forms designer. You can use the MaskedEditBox through the 
designer by following the below given steps.

1. Drag and drop the MaskedEditBox control onto your form from the controls toolbox.

   ![](MaskedEditBox-images/MarkedEditBox-img2.png)

2. Set the MaskedEditBox.Mask property for the control. This property controls the behavior of the control at run time. If no 
   mask is specified, the control will behave the same as a standard Windows Forms TextBox control.

   ![](MaskedEditBox-images/MarkedEditBox-img3.png)


Examples of some common masks are,

<table>
<tr>
<th>
Mask</th><th>
Usage</th></tr>
<tr>
<td>
###-##-####</td><td>
US Social security number mask (the # symbol allows numeric entry only in that position and the - symbol is literal); Example 222-22-2222.</td></tr>
<tr>
<td>
(###) ### ####</td><td>
US Telephone number mask; Example (919) 481 1974.</td></tr>
<tr>
<td>
##/##/####</td><td>
Short date mask; Example 04/14/2005.</td></tr>
<tr>
<td>
##:##</td><td>
Short time mask; Example 12:24.</td></tr>
<tr>
<td>
>?<????????????</td><td>
First name or last name; The first letter is uppercase and the other letters are all lowercase; Example: Syncfusion.</td></tr>
</table>

## Through code

The MaskedEditBox control can be used programmatically through code as detailed below.

1. Include the required namespace.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}


2. Create an instance of the MaskedEditBox control.

{% tabs %}
{% highlight C# %}
  
private Syncfusion.Windows.Forms.Tools.MaskedEditBox maskedEditBox1;
this.maskedEditBox1=new MaskedEditBox();

{% endhighlight %}

{% highlight VB %}

Private maskedEditBox1 As Syncfusion.Windows.Forms.Tools.MaskedEditBox
Me.maskedEditBox1 = New MaskedEditBox()

{% endhighlight %}

{% endtabs %}
   
3. Set MaskedEditBox.Mask property.

  
{% tabs %}

{% highlight C# %}

// The mask string.
this.maskedEditBox1.Mask = ">?<????????????";
this.maskedEditBox1.Location = new System.Drawing.Point(70, 29);

{% endhighlight %}

{% highlight Vb %}

' The mask string.
Me.maskedEditBox1.Mask = ">?<????????????"
Me.maskedEditBox1.Location = New System.Drawing.Point(70, 29);

{% endhighlight %}

{% endtabs %}

4. Add the MaskedEditBox control to the form.

{% tabs %}

{% highlight C# %}

this.Controls.Add(this.maskedEditBox1);

{% endhighlight %}

{% highlight VB %}

Me.Controls.Add(Me.maskedEditBox1)

{% endhighlight %}
  
{% endtabs %}


![](MaskedEditBox-images/MarkedEditBox-img4.png)

