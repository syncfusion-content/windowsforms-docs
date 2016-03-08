---
layout: post
title: Behavior Settings | Windows Forms | Syncfusion
description: behavior settings
platform: windowsforms
control: Tools
documentation: ug
---


# Behavior Settings

The behavior settings of the IntegerTextBox control are discussed below.

###Negative Key Settings

The integer value of the IntegerTextBox can be reset or changed to a negative value using the properties given below.



<table>
<tr>
<th>
IntegerTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
DeleteSelectionOnNegative</td><td>
This property defines the behavior when the contents of the IntegerTextBox is fully selected and the negative key is pressed by the user.When set to 'True', the current value is replaced by the default value.When set to 'False', the current value is changed to the negative value immediately.</td></tr>
<tr>
<td>
NegativeInputPendingOnSelectAll</td><td>
This property defines the behavior when the contents of the IntegerTextBox is fully selected and the negative key is pressed by the user.When set to 'True', the current value is not changed at all. The next key stroke is taken to be a new value and the entire contents of the IntegerTextBox is replaced by the negative value of the key stroke character entered.When set to 'False', the current value is changed to the negative value immediately.</td></tr>
</table>


{%highlight c#%}



this.integerTextBox1.DeleteSelectionOnNegative = true;

this.integerTextBox1.NegativeInputPendingOnSelectAll = true;



{%endhighlight%}

{%highlight vbnet%}

Me.integerTextBox1.DeleteSelectionOnNegative = True

Me.integerTextBox1.NegativeInputPendingOnSelectAll = True

{%endhighlight%}

## AllowLeadingZeros

This property can be used to include zeros before the beginning value of the integer value of the control.


<table>
<tr>
<th>
IntegerTextBox Property</th><th>
Description</th></tr>
<tr>
<td>
AllowLeadingZeros</td><td>
Indicates whether to allow insets zero in the beginning value. The default value is set to 'False'.</td></tr>
</table>


{%highlight c#%}



this.integerTextBox1.AllowLeadingZeros = true;

{%endhighlight%}




{%highlight vbnet%}


Me.integerTextBox1.AllowLeadingZeros = True

{%endhighlight%}



![](Overview_images/Overview_img457.png) 