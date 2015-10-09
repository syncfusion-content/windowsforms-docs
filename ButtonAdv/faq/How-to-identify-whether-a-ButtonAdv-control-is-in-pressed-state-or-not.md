---
layout: post
title: How to identify whether a ButtonAdv control is in pressed state or not | WindowsForms | Syncfusion
description: How to identify whether a ButtonAdv control is in pressed state or not
platform: WindowsForms
control: Tools
documentation: ug
---


# How to identify whether a ButtonAdv control is in pressed state or not

When ButtonAdv.PushButton property is enabled, the button will remain in its pressed state, when clicked. The state of the button will be present in the property State. So by examining the state property, we can conclude whether the button is in the Pressed state or not. Using the Office2007 visual styles will help better understanding of this feature.

_Property Table_

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
PushButton</td><td>
Specifies the state of the control. By default it is set to false. Set this to true. Now at run time, when the user click this button, the appearance of the button will change to pushed state and will regain its original state only by clicking it again.</td></tr>
</table>


{%highlight c#%}



private void buttonAdv1_Click(object sender, System.EventArgs e)

{

if(this.buttonAdv1.State==Syncfusion.Windows.Forms.ButtonAdvState.Pressed)

MessageBox.Show("Button is pushed");

else

MessageBox.Show("Button is in normal state");

}


{%endhighlight%}


{%highlight vbnet%}

Private Sub buttonAdv1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles buttonAdv1.Click

if(Me.buttonAdv1.State==Syncfusion.Windows.Forms.ButtonAdvState.Pressed)

MessageBox.Show("Button is pushed")

else

MessageBox.Show("Button is in normal state")

End Sub


{%endhighlight%}

![](FAQ_images/Overview_img77.jpeg)