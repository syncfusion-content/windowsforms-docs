---
layout: post
title: Displaying Characters as Substitutes for User Input
description: Concepts and Features
platform: windowsforms
control: MaskedEditBox
documentation: ug
--- 
# Displaying Characters as Substitutes for User Input

We can display different characters as substitutes for the user input. This can be done using the below given properties.

_Table_ _333__: Property Table_

<table>
<tr>
<td>
MaskedEditBox Properties</td><td>
Description</td></tr>
<tr>
<td>
Sequentially</td><td>
Indicates whether the control can sequentially display mask characters.</td></tr>
<tr>
<td>
PasswordChar</td><td>
Indicates the character to display for password input for single-line edit controls.</td></tr>
</table>


The MaskedEditBox.Sequentially property indicates whether the control can sequentially display mask characters. After setting the Sequentially property to 'True', you can use the PasswordChar property in order to set the character, that is to be displayed as a substitute for the user input.

{% highlight C# %}  



private void Form1_Load(object sender, System.EventArgs e)

{

this.maskedEditBox1.Sequentially = true;

this.maskedEditBox1.PasswordChar = '$';

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)

Me.maskedEditBox1.Sequentially = True

Me.maskedEditBox1.PasswordChar = "$"c

End Sub

{% endhighlight %}

![](MaskedEditBox-images/MarkedEditBox-img10.png)


A Sample which demonstrates the PasswordChar property of MaskedEditBox control is available in the below sample installation 
path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_
