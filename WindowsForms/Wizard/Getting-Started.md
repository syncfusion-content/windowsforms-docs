---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: Wizard Package 
documentation: ug
---

# Getting started

This section will guide you to create a basic wizard using the Wizard control.

To create a basic wizard, follow the given steps.

* Add the WizardControl from the Toolbox to the form, in the designer.

![](Wizard-Package_images/Wizard-Package_img3.jpeg)



* Set the WizardControl.Dock property to Fill.

![](Wizard-Package_images/Wizard-Package_img4.jpeg)



* Wizard Control lets you add multiple pages in a single wizard. You can add pages to the wizard container by four different ways. They are, 
* "Add Page" option in the smart tag.
* Accessing Add Page command in properties grid.
* Context menu of the Wizard control.

See Options to Add Page, Remove Page, Previous page and Next Page topic for more details.

* Accessing WizardControl.WizardPages property will invoke WizardControlPage Collection Editor which also lets you add or remove pages.

![](Wizard-Package_images/Wizard-Package_img5.jpeg)



Programmatically, the pages can be added to the wizard container as follows.

{% tabs %}

{% highlight C# %}



this.wizardControl1.WizardPages = new Syncfusion.Windows.Forms.Tools.WizardControlPage[] {this.wizardControlPage1,

this.wizardControlPage2,this.wizardControlPage3};

this.wizardControl1.SelectedWizardPage = this.wizardControlPage2;

{% endhighlight %}

{% highlight VB %}



Me.wizardControl1.WizardPages = New Syncfusion.Windows.Forms.Tools.WizardControlPage() {Me.wizardControlPage1, Me.wizardControlPage2,Me.wizardControlPage3}

Me.wizardControl1.SelectedWizardPage = Me.wizardControlPage2

{% endhighlight %}

{% endtabs %}

* Wizard Control comes with properties which controls its appearance and behavior. Set FullPage property of WizardControlPage1 to True if you wish to hide the header portion in the first page. Put a label control on this wizard page with introductory text. Also set BackVisible property of wizard page to False to hide the back button since this is the first page.

![](Wizard-Package_images/Wizard-Package_img6.jpeg)



* The output will be as follows.

![](Wizard-Package_images/Wizard-Package_img7.jpeg)



