---
layout: post
title: Event-Handling | Windows Forms | Syncfusion
description: event handling 
platform: windowsforms
control: Wizard
documentation: ug
---

# Event Handling 

This section comprises the below events:

#### Wizard Control Events

The events available for Wizard control and the methods which raises these events are listed in the below tables.

Table 957: Events Table

<table>
<tr>
<th>
Wizard Control Events</th><th>
Description</th></tr>
<tr>
<td>
Back</td><td>
This event is handled when the Back button is clicked or when PreviousPage method is called.</td></tr>
<tr>
<td>
Next</td><td>
This event is handled when the Next button is clicked or when NextPage method is called.</td></tr>
<tr>
<td>
Cancel</td><td>
This event is handled before the Cancel button is clicked.</td></tr>
<tr>
<td>
Finish</td><td>
This event is handled before the Finish button is clicked.</td></tr>
<tr>
<td>
Help</td><td>
This event is handled before the Help button is clicked.</td></tr>
<tr>
<td>
BannerControlLocationChanging</td><td>
Handled when banner panel controls are laid out.</td></tr>
<tr>
<td>
BeforePageSelect</td><td>
Handled when the selected page is about to change.</td></tr>
<tr>
<td>
BeforeBack</td><td>
Handled before the back button is clicked.</td></tr>
<tr>
<td>
BeforeFinish</td><td>
Handled before the finish button is clicked.</td></tr>
<tr>
<td>
BeforeNext</td><td>
Handled before the Next button is clicked.</td></tr>
</table>

Table 958: Methods Table

<table>
<tr>
<th>
Wizard Control Methods</th><th>
Description</th></tr>
<tr>
<td>
PreviousPage</td><td>
Selects the previous page.</td></tr>
<tr>
<td>
NextPage</td><td>
Selects the next page.</td></tr>
</table>
BannerControlLocationChanging Event

This event is discussed in How to Cancel the AutoLayout of the Banner panel controls.

#### Wizard Page Events

The events available for the Wizard Page and the methods which raises these events are listed in the below tables.

Table 959: Events Table

<table>
<tr>
<th>
Wizard Page Events</th><th>
Description</th></tr>
<tr>
<td>
BackClick</td><td>
This event is handled to notify that Back button was clicked. It can be raised by calling RaiseBackClick method.</td></tr>
<tr>
<td>
NextClick</td><td>
This event is handled to notify that Next button was clicked. It can be raised by calling RaiseNextClick method.</td></tr>
<tr>
<td>
CancelClick</td><td>
This event is handled to notify that Cancel button was clicked. It can be raised by calling RaiseCancelClick method.</td></tr>
<tr>
<td>
FinishClick</td><td>
This event is handled to notify that Finish button was clicked. It can be raised by calling RaiseFinishClick method.</td></tr>
<tr>
<td>
HelpClick</td><td>
This event is handled to notify that Help button was clicked. It can be raised by calling RaiseHelpClick method.</td></tr>
<tr>
<td>
PageLoad</td><td>
This event is handled when the page is selected. It can be raised by calling RaisePageLoad method.</td></tr>
<tr>
<td>
ValidatePage</td><td>
Handled to validate a page before a new page is selected. It can be raised by calling RaiseValidatePage method.</td></tr>
<tr>
<td>
SettingChanged</td><td>
Handled when the title and description of a page is changed.</td></tr>
</table>

Table 960: Methods Table

<table>
<tr>
<th>
Wizard Page Methods</th><th>
Description</th></tr>
<tr>
<td>
RaiseBackClick</td><td>
Raises the WizardPage.BackClick event.</td></tr>
<tr>
<td>
RaiseNextClick</td><td>
Raises the WizardPage.NextClick event.</td></tr>
<tr>
<td>
RaiseCancelClick</td><td>
Raises the WizardPage.CancelClick event.</td></tr>
<tr>
<td>
RaiseFinishClick</td><td>
Raises the WizardPage.FinishClick event.</td></tr>
<tr>
<td>
RaiseHelpClick</td><td>
Raises the WizardPage.HelpClick event.</td></tr>
<tr>
<td>
RaisePageLoad</td><td>
Raises the WizardPage.PageLoad event.</td></tr>
<tr>
<td>
RaiseValidatePage</td><td>
Raises the WizardPage.ValidatePage event.</td></tr>
</table>
ValidatePage Event

WizardControl Pages can be validated using ValidatePage event. In this event, data validation can be performed and traversing to the next page can be canceled, if the validation fails. 

If the user does not want to validate a page while moving back (pressing BackButton), then it can be done by setting BackButtonCausesValidation property to false.

{% highlight c# %}



// Handling ValidatePage Event

private void wizardControlPage2_ValidatePage(object sender, System.ComponentModel.CancelEventArgs e)

{

if(this.textBox1.Text == String.Empty)

{

MessageBox.Show("Text cannot be empty.","Datas Needed",MessageBoxButtons.OK,MessageBoxIcon.Warning);

e.Cancel = true;

this.textBox1.Focus();

}



else if(this.textBox1.Text != "Next")

{

MessageBox.Show("Correct Value needed.","Incorrect value",MessageBoxButtons.OK,MessageBoxIcon.Warning);

e.Cancel = true;

this.textBox1.Text = "";

this.textBox1.Focus();

}

}

{% endhighlight %}

{% highlight vbnet %}



' Handling ValidatePage Event

Private Sub wizardControlPage2_ValidatePage(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles wizardControlPage2.ValidatePage

If Me.textBox1.Text = String.Empty Then

MessageBox.Show("Text cannot be empty.","Datas Needed",MessageBoxButtons.OK,MessageBoxIcon.Warning)

e.Cancel = True

Me.textBox1.Focus()



Else If Me.textBox1.Text &lt;&gt; "Next" Then

MessageBox.Show("Correct Value needed.","Incorrect value",MessageBoxButtons.OK,MessageBoxIcon.Warning)

e.Cancel = True

Me.textBox1.Text = ""

Me.textBox1.Focus()

End If

End Sub

{% endhighlight %}


