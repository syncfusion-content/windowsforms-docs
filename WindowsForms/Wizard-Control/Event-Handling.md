---
layout: post
title: Event-Handling | WindowsForms | Syncfusion
description: event handling 
platform: WindowsForms
control: Wizard
documentation: ug
---

# Event handling

This section comprises the below events:

#### Wizard control events

The events available for Wizard control and the methods which raises these events are listed in the below tables.

* [Back](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.Wizard~Back_EV.html)
* [Next](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.Wizard~Next_EV.html)
* [Cancel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControl~Cancel_EV.html)
* [Finish](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControl~Finish_EV.html)
* [Help](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControl~Help_EV.html)
* [BannerControlLocationChanging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControl~BannerControlLocationChanging_EV.html)
* [BeforePageSelect](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.Wizard~BeforePageSelect_EV.html)
* [BeforeBack](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControl~BeforeBack_EV.html)
* [BeforeFinish](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControl~BeforeFinish_EV.html)
* [BeforeNext](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControl~BeforeNext_EV.html)

* [PreviousPage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.Wizard~PreviousPage.html)
* [NextPage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.Wizard~NextPage.html)

**BannerControlLocationChanging event**

This [BannerControlLocationChanging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControl~BannerControlLocationChanging_EV.html) event is discussed in How to Cancel the AutoLayout of the Banner panel controls.

#### Wizard page events

The events available for the Wizard Page and the methods which raises these events are listed in the below tables.

* [BackClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControlPage~BackClick_EV.html)
* [NextClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControlPage~NextClick_EV.html)
* [CancelClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControlPage~CancelClick_EV.html)
* [FinishClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControlPage~FinishClick_EV.html)
* [HelpClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControlPage~HelpClick_EV.html)
* [PageLoad](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardPage~PageLoad_EV.html)
* [ValidatePage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControlPage~ValidatePage_EV.html)
* [SettingChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardPage~SettingsChanged_EV.html)

* [RaiseBackClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControlPage~RaiseBackClick.html)
* [RaiseNextClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControlPage~RaiseNextClick.html)
* [RaiseCancelClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControlPage~RaiseCancelClick.html)
* [RaiseFinishClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControlPage~RaiseFinishClick.html)
* [RaiseHelpClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControlPage~RaiseHelpClick.html)
* [RaisePageLoad](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardPage~RaisePageLoad.html)
* [RaiseValidatePage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControlPage~RaiseValidatePage.html)

**ValidatePage event**

WizardControl Pages can be validated using [ValidatePage event]([ValidatePage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControlPage~ValidatePage_EV.html)). In this event, data validation can be performed and traversing to the next page can be canceled, if the validation fails.

If the user does not want to validate a page while moving back (pressing BackButton), then it can be done by setting [BackButtonCausesValidation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.WizardControl~BackButtonCausesValidation.html) property to `false`.

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
