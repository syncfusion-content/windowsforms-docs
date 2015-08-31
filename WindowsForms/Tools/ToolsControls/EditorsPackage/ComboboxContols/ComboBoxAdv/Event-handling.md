---
layout: post
title: Event-handling
description: event handling
platform: windowsforms
control: Editors Package
documentation: ug
---

#  Event handling

## Selection Events

The events present in the ComboxBox can be applied for ComboxBoxAdv control. 

_Table_ _222_: _Properties_

<table>
<tr>
<td>
ComboBoxAdv Events</td><td>
Description</td></tr>
<tr>
<td>
SelectedIndexChanged</td><td>
Handled when SelectedIndex property is changed.</td></tr>
<tr>
<td>
SelectedIndexChanging</td><td>
Handled when SelectedIndex property is changing.</td></tr>
<tr>
<td>
SelectedValueChanged</td><td>
Handled when SelectedValue property is changed.</td></tr>
<tr>
<td>
SelectionChangeCommitted</td><td>
Handled when the user selects a new text for the combo.</td></tr>
<tr>
<td>
DropDown Event</td><td>
Handled before the dropdown is shown.</td></tr>
</table>


The ComboBoxAdv handles different events for the different user interaction scenarios. The occurrence and order of the events are tabulated as follows. 

_Table_ _223_: _Events Table_

<table>
<tr>
<td>
Scenarios</td><td>
SelectionChangedCommitted Event</td><td>
SelectedValueChanged</td><td>
SelectedIndexChanged</td><td>
Validating/Validated</td></tr>
<tr>
<td>
TextArea-Change Selection by Keys</td><td>
Yes:1</td><td>
Yes:2</td><td>
Yes:3</td><td>
No</td></tr>
<tr>
<td>
TextArea-On AutoComplete</td><td>
No</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td>
Drop-Down List-Change Selection by Keys</td><td>
No</td><td>
Yes:1</td><td>
Yes:2</td><td>
No</td></tr>
<tr>
<td>
Drop-Down List-Change Selection by Mouse Move</td><td>
No</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td>
Drop-Down Close by Enter Key</td><td>
Yes:1</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td>
Drop-Down Close by Escape Key</td><td>
No</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td>
Drop-Down Close by Click</td><td>
Yes:1</td><td>
Yes:2</td><td>
Yes:3</td><td>
No</td></tr>
<tr>
<td>
Losing Focus</td><td>
Yes:2 (in DropDownStyle.DropDown (editable) mode only)</td><td>
No</td><td>
No</td><td>
Yes:1</td></tr>
<tr>
<td>
Changing Text Property in Code</td><td>
Yes:1</td><td>
No</td><td>
No</td><td>
No</td></tr>
</table>
 
## Populating the ComboBoxAdv

To populate the ComboBoxAdv containing the predefined percent values with other percent values and allowing the text field of the ComboBoxAdv to behave like PercentTextBox, follow thye given steps:

* Derive a new class from the existing Syncfusion ComboBoxAdv. Override as shown here and give a new definition for TextBox.

  ~~~ c#

        // Derive a new class from the existing Syncfusion ComboBoxAdv.

		public class PercentComboBoxAdv : Syncfusion.Windows.Forms.Tools.ComboBoxAdv

		{

		// Overrides the internal TextBox.

		protected override TextBox CreateTextBox()

		{

		Syncfusion.Windows.Forms.Tools.PercentTextBox  ptb = new Syncfusion.Windows.Forms.Tools.PercentTextBox ();

		return ptb as TextBox;

		}

		public new Syncfusion.Windows.Forms.Tools.PercentTextBox TextBox

		{

		get

		{

		return (Syncfusion.Windows.Forms.Tools.PercentTextBox ) base.TextBox;

		}

		}    

		}

  ~~~
  {:.pretty-print }

  ~~~ vbnet

        ' Derive a new class from the existing Syncfusion ComboBoxAdv.

		Public Class PercentComboBoxAdv : Inherits Syncfusion.Windows.Forms.Tools.ComboBoxAdv

		' Overrides the internal TextBox.

		Protected Overrides Function CreateTextBox() As TextBox

		Dim ptb As Syncfusion.Windows.Forms.Tools.PercentTextBox = New Syncfusion.Windows.Forms.Tools.PercentTextBox ()

		Return CType(IIf(TypeOf ptb Is TextBox, ptb, Nothing), TextBox)

		End Function

		Public Shadows ReadOnly Property TextBox() As Syncfusion.Windows.Forms.Tools.PercentTextBox

		Get

		Return CType(MyBase.TextBox, Syncfusion.Windows.Forms.Tools.PercentTextBox)

		End Get

		End Property

		End Class

  ~~~
  {:.pretty-print }

* Create an instance for the derived class and initialize.

  ~~~ c#

        // Do the initialization.

		private PercentComboBoxAdv PercentComboBoxAdv1;

		this.PercentComboBoxAdv1 = new PercentComboBoxAdv();

		this.PercentComboBoxAdv1.Location = new System.Drawing.Point(this.Width/4, this.Height/3);

		this.Controls.Add(this.PercentComboBoxAdv1);

		this.PercentComboBoxAdv1 .SelectedValueChanged+= newSystem.EventHandler(this.PercentComboBoxAdv1_SelectedValueChanged);

  ~~~
  {:.pretty-print }

  ~~~ vbnet

        'Do the initialization.

		Private PercentComboBoxAdv1 As PercentComboBoxAdv

		Me.PercentComboBoxAdv1 = New PercentComboBoxAdv()

		Me.PercentComboBoxAdv1.Location = New System.Drawing.Point(Me.Width/4, Me.Height/3)

		Me.Controls.Add(Me.PercentComboBoxAdv1)

		Me.PercentComboBoxAdv1.SelectedValueChanged+= NewSystem.EventHandler(Me.PercentComboBoxAdv1_SelectedValueChanged)

  ~~~
  {:.pretty-print }

* You can populate the derived control with values using Items property.

  ~~~ c#

        private void Form1_Load(object sender, System.EventArgs e)

		{

		// Populating the control with items.

		this.PercentComboBoxAdv1.Items.Add (78.9);

		this.PercentComboBoxAdv1.Items.Add (67.9);

		this.PercentComboBoxAdv1.Items.Add (75.9);

		this.PercentComboBoxAdv1.Items.Add (23.6);

		this.PercentComboBoxAdv1.Items.Add (34.7);

		this.PercentComboBoxAdv1.Items.Add (56.8);

		}

  ~~~
  {:.pretty-print }

  ~~~ vbnet

        Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)

		'Populating the control with items.

		Me.PercentComboBoxAdv1.Items.Add (78.9)

		Me.PercentComboBoxAdv1.Items.Add (67.9)

		Me.PercentComboBoxAdv1.Items.Add (75.9)

		Me.PercentComboBoxAdv1.Items.Add (23.6)

		Me.PercentComboBoxAdv1.Items.Add (34.7)

		Me.PercentComboBoxAdv1.Items.Add (56.8)

		End Sub

  ~~~
  {:.pretty-print }

* In the SelectedValueChanged event, you can display the corresponding selected value in Percent Format.

  ~~~ c#

        private void PercentComboBoxAdv1_SelectedValueChanged(object sender, System.EventArgs e)

		{ 

		// Displays the corresponding selected value.                   

		this.PercentComboBoxAdv1.TextBox.PercentValue = Double.Parse (this.PercentComboBoxAdv1.SelectedItem.ToString());

		}

  ~~~
  {:.pretty-print }

  ~~~ vbnet

        Private Sub PercentComboBoxAdv1_SelectedValueChanged(ByVal sender As Object, ByVal e As System.EventArgs)

		' Displays the  corresponding selected value.

		Me.PercentComboBoxAdv1.TextBox.PercentValue = Double.Parse (Me.PercentComboBoxAdv1.SelectedItem.ToString())

		End Sub

  ~~~
  {:.pretty-print }

![](Overview_images/Overview_img313.jpeg) 



