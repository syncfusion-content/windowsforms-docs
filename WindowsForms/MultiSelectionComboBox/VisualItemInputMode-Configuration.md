---
layout: post
title: VisualItemInputMode-Configuration
description: visualiteminputmode configuration
platform: windowsforms
control: Editors Package
documentation: ug
---

# VisualItemInputMode Configuration

The property named VisualItemInputMode helps to define the Visual Items in Text Input.

Table 230 : Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
VisualItemInputMode</td><td>
Gets/Sets the VisualItem Text input mode.</td></tr>
<tr>
<td>
DisplayMemberMode</td><td>
To set SelectedItem as the text input of VisualItem.</td></tr>
<tr>
<td>
ValueMemberMode</td><td>
To set SelectedValue as the text input of VisualItem.</td></tr>
<tr>
<td>
VisualItemMode</td><td>
To set custom text input for VisualItem, based on the end-user’s requirement.</td></tr>
</table>


{% highlight c# %}

//Derfine the Visual items as DisplayMember

this.multiSelectionComboBox1.VisualItemInputMode = Syncfusion.Windows.Forms.Tools.VisualItemInputMode.DisplayMemberMode;

//Derfine the Visual items as ValueMember

this.multiSelectionComboBox1.VisualItemInputMode = Syncfusion.Windows.Forms.Tools.VisualItemInputMode.ValueMemberMode;

//To set custom text input for VisualItem, based on end user requirement.

this.multiSelectionComboBox1.VisualItemInputMode = Syncfusion.Windows.Forms.Tools.VisualItemInputMode.VisualItemMode;

{% endhighlight %}

{% highlight vbnet %}

'Derfine the Visual items as DisplayMember

Me.multiSelectionComboBox1.VisualItemInputMode = Syncfusion.Windows.Forms.Tools.VisualItemInputMode.DisplayMemberMode

'Derfine the Visual items as ValueMember

Me.multiSelectionComboBox1.VisualItemInputMode = Syncfusion.Windows.Forms.Tools.VisualItemInputMode.ValueMemberMode

'To set custom text input for VisualItem, based on end user requirement.

Me.multiSelectionComboBox1.VisualItemInputMode = Syncfusion.Windows.Forms.Tools.VisualItemInputMode.VisualItemMode

{% endhighlight %}
