---
layout: post
title: Event Handling in Windows Forms Wizard | Syncfusion
description: Learn about Event Handling support in Syncfusion Windows Forms Wizard Control, its elements and more details.
platform: WindowsForms
control: Wizard
documentation: ug
---

# Event Handling in Windows Forms Wizard

This section comprises the below events:

#### Wizard control events

The events available for Wizard control and the methods which raises these events are listed in the below tables.

* [Back](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Wizard.html)
* [Next](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Wizard.html)
* [Cancel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html)
* [Finish](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html)
* [Help](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html)
* [BannerControlLocationChanging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html)
* [BeforePageSelect](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Wizard.html)
* [BeforeBack](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html)
* [BeforeFinish](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html)
* [BeforeNext](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html)

* [PreviousPage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Wizard.html#Syncfusion_Windows_Forms_Tools_Wizard_PreviousPage)
* [NextPage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Wizard.html#Syncfusion_Windows_Forms_Tools_Wizard_NextPage)

**BannerControlLocationChanging event**

This [BannerControlLocationChanging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html) event is discussed in How to Cancel the AutoLayout of the Banner panel controls.

#### Wizard page events

The events available for the Wizard Page and the methods which raises these events are listed in the below tables.

* [BackClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html)
* [NextClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html)
* [CancelClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html)
* [FinishClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html)
* [HelpClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html)
* [PageLoad](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardPage.html)
* [ValidatePage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html)
* [SettingChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardPage.html)

* [RaiseBackClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html#Syncfusion_Windows_Forms_Tools_WizardControlPage_RaiseBackClick)
* [RaiseNextClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html#Syncfusion_Windows_Forms_Tools_WizardControlPage_RaiseNextClick)
* [RaiseCancelClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html#Syncfusion_Windows_Forms_Tools_WizardControlPage_RaiseCancelClick)
* [RaiseFinishClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html#Syncfusion_Windows_Forms_Tools_WizardControlPage_RaiseFinishClick)
* [RaiseHelpClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html#Syncfusion_Windows_Forms_Tools_WizardControlPage_RaiseHelpClick)
* [RaisePageLoad](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardPage.html#Syncfusion_Windows_Forms_Tools_WizardPage_RaisePageLoad)
* [RaiseValidatePage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html#Syncfusion_Windows_Forms_Tools_WizardControlPage_RaiseValidatePage_System_ComponentModel_CancelEventArgs_)

**ValidatePage event**

WizardControl Pages can be validated using [ValidatePage event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html#Syncfusion_Windows_Forms_Tools_WizardControlPage_ValidatePage). In this event, data validation can be performed and traversing to the next page can be canceled, if the validation fails.

If the user does not want to validate a page while moving back (pressing BackButton), then it can be done by setting [BackButtonCausesValidation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html#Syncfusion_Windows_Forms_Tools_WizardControl_BackButtonCausesValidation) property to `false`.

{% tabs %}

{% highlight C# %}



// Handling ValidatePage Event

private void wizardControlPage2_ValidatePage(object sender, System.ComponentModel.CancelEventArgs e)

{

if(this.textBox1.Text == String.Empty)

{

MessageBox.Show("Text cannot be empty.","Data Needed",MessageBoxButtons.OK,MessageBoxIcon.Warning);

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

{% highlight VB %}



' Handling ValidatePage Event

Private Sub wizardControlPage2_ValidatePage(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles wizardControlPage2.ValidatePage

If Me.textBox1.Text = String.Empty Then

MessageBox.Show("Text cannot be empty.","Data Needed",MessageBoxButtons.OK,MessageBoxIcon.Warning)

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

{% endtabs %}
