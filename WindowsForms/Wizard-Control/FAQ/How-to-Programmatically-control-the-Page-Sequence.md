---
layout: post
title: Programmatically control the page sequence | WindowsForms | Syncfusion
description: How to programmatically control the page sequence in Syncfusion Essential Studio WindowsForms Wizard Control, its elements, and more.
platform: WindowsForms
control: Wizard
documentation: ug
---

# How to programmatically control the page sequence?

In many cases, the user will need to customize the order in which pages display. The Wizard control provides events for doing this.

There are two ways to programmatically control the page sequence.

## Example scenario

Say you have a three page wizard and there is a checkbox on the first page. If the checkbox is checked, you are on the first page, and you press the Next button, you require the wizard to skip the middle page and go directly to the last page. Likewise, if the checkbox is checked, you are on the last page, and you press the Back button, you need to skip the middle page and go back to the first page. If the checkbox is left unchecked, navigation using the buttons will move through all three pages.

### Controlling page sequence with the Wizard control

* In the [BeforeNext](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html) event handler, implement the below code, which will control the page sequence with the wizard control.

{% tabs %}

{% highlight C# %}



private void wizardControl1_BeforeNext(object sender, CancelEventArgs e)

{

    if (this.wizardControl1.SelectedPage == this.wizardControlPage1 && this.checkBox.Checked)

    {

        this.wizardControl1.SelectedPage.NextPage = this.wizardControlPage3;

    }

    else if (this.wizardControl1.SelectedPage == this.wizardControlPage1 && !this.checkBox.Checked)

    {

        this.wizardControl1.SelectedPage.NextPage = this.wizardControlPage2;

    }

}

{% endhighlight %}

{% highlight VB %}



Private Sub wizardControl1_BeforeNext(ByVal sender As Object, ByVal e As CancelEventArgs)

    If Me.wizardControl1.SelectedPage = Me.wizardControlPage1 AndAlso Me.checkBox.Checked Then

        Me.wizardControl1.SelectedPage.NextPage = Me.wizardControlPage3

    ElseIf Me.wizardControl1.SelectedPage = Me.wizardControlPage1 AndAlso Not Me.checkBox.Checked Then

        Me.wizardControl1.SelectedPage.NextPage = Me.wizardControlPage2

    End If

End Sub

{% endhighlight %}

{% endtabs %}

* In the Back button click event handler, implement this code. 

{% tabs %}

{% highlight C# %}



private void wizardControl1_Back_Click(object sender, System.EventArgs e)

{

if(this.wizardControl1.SelectedPage == this.wizardControlPage3 && checkBox.Checked)

this.wizardControl1.SelectedPage.NextPage=this.wizardControlPage1;

}

{% endhighlight %}

{% highlight VB %}



Private Sub wizardControl1_Back_Click(ByVal sender As Object, ByVal e As System.EventArgs)

If Me.wizardControl1.SelectedPage = Me.wizardControlPage3 AndAlso checkBox.Checked Then

Me.wizardControl1.SelectedPage.NextPage = Me.wizardControlPage1

End If

End Sub

{% endhighlight %}

{% endtabs %}

With those two events in place on the wizard, the wizard can now skip the middle page based on whether the checkbox is checked.

### Controlling page sequence with a Wizard page

Page sequencing may also be controlled in the [NextClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html) and [BackClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html) events of Wizard Control Page.

* When one of the above events is implemented for a Wizard Control Page, the associated event in the Wizard control will not fire if the WizardPage is currently selected.
* In the [NextClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html) event handler, you implement this code:

{% tabs %}

{% highlight C# %}



private void wizardControlPage1_NextClick(object sender, System.EventArgs e)

{

if (checkBox.Checked)

{

this.wizardControlPage1.NextPage=this.wizardControlPage3;

}

}

{% endhighlight %}

{% highlight VB %}



Private Sub wizardControlPage1_NextClick(ByVal sender As Object, ByVal e As System.EventArgs)

If checkBox.Checked Then

Me.wizardControlPage1.NextPage = Me.wizardControlPage3

End If

End Sub

{% endhighlight %}

{% endtabs %}

* In the [BackClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControlPage.html) event handler, implement this code.

{% tabs %}

{% highlight C# %}



private void wizardControlPage3_BackClick(object sender, System.EventArgs e)

{

    if (checkBox.Checked)

    {

        this.wizardControlPage3.NextPage=this.wizardControlPage1;

    }

} 

{% endhighlight %}

{% highlight VB %}



Private Sub wizardControlPage3_BackClick(ByVal sender As Object, ByVal e As System.EventArgs)

    If checkBox.Checked Then

        Me.wizardControlPage3.NextPage = Me.wizardControlPage1

    End If

End Sub

{% endhighlight %}

{% endtabs %}

With those two events in place on the wizard page, the wizard can now skip the middle page based on whether the checkbox is checked.

