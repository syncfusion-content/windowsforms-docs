---
layout: post
title: How-to-add-a-wizard-page-to-the-Wizard-Control-programmatically? | WindowsForms | Syncfusion
description: how to add a wizard page to the wizard control programmatically?
platform: WindowsForms
control: Wizard
documentation: ug
---

# How to add a wizard page to the Wizard Control programmatically?

You can add a Wizard page to the Wizard Control using AddPage Method.

{% tabs %}

{% highlight C# %}



private Syncfusion.Windows.Forms.Tools.WizardControlPage NewPage;

this.NewPage = new Syncfusion.Windows.Forms.Tools.WizardControlPage(this.components);

this.wizardControl1.AddPage(NewPage);

NewPage.Title = "Finishing Page";

NewPage.Description = "Give a Finish Text";

{% endhighlight %}

{% highlight VB %}



Private NewPage As Syncfusion.Windows.Forms.Tools.WizardControlPage

Me.NewPage = New Syncfusion.Windows.Forms.Tools.WizardControlPage(Me.components) 

Me.wizardControl1.AddPage(NewPage) 

NewPage.Title = "Finishing Page" 

NewPage.Description = "Give a Finish Text" 

{% endhighlight %}

{% endtabs %}

![](How-to-add-a-wizard-page-to-the-Wizard-Control-programmatically_images/How-to-add-a-wizard-page-to-the-Wizard-Control-programmatically_img1.jpeg)


