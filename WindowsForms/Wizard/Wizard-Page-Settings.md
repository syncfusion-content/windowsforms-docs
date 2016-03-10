---
layout: post
title: Wizard-Page-Settings | WindowsForms | Syncfusion
description: wizard page settings 
platform: WindowsForms
control: Wizard Package 
documentation: ug
---

# Wizard Page Settings 

A Wizard Page can include a collection of controls implementing an interactive Wizard interface. The Wizard pages are added to the Wizard Container. You can drag and drop any control into a wizard page. Wizard Control lets you to customize the individual Wizard pages to give a unique functionality for each page. 

Creating a Basic Wizard topic discussed how to add Wizard Pages. Let us see how to customize the Wizard pages. 

## Setting Title and Description

You can specify the title and description in the Banner Panel, for a particular Wizard Page using the WizardPage.Title and WizardPage.Description properties. The appearance of the title and description can be controlled through Label properties. See Title and Description Settings for details.

Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
Title</td><td>
Specifies the title of the page.</td></tr>
<tr>
<td>
Description</td><td>
Specifies the description for the page.</td></tr>
</table>


{% highlight c# %}



this.wizardControlPage1.Title = "Registration Details";

this.wizardControlPage1.Description = "Please enter your Details:";

{% endhighlight %}

{% highlight vbnet %}



Me.wizardControlPage1.Title = "Registration Details"

Me.wizardControlPage1.Description = "Please enter your Details:"

{% endhighlight %}

![](Wizard-Package_images/Wizard-Package_img16.jpeg)



### Accessing Wizard Pages

We can also access the properties of a Wizard Page using SelectedWizardPage property of the WizardControl in the Designer.

Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
SelectedWizardPage</td><td>
Specifies the selected wizard page.</td></tr>
<tr>
<td>
WizardPage.LayoutName</td><td>
The individual Wizard page is identified using its LayoutName in the SelectedWizardPage property. By default the LayoutName is set as Card1 for the first page added, Card2 for the next page and so on. </td></tr>
</table>


![](Wizard-Package_images/Wizard-Package_img17.jpeg)



The header section (GradientPanel and its child controls) can be hidden by setting FullPage property to true. This makes the page occupy the entire space without the header.

Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
FullPage</td><td>
Gets/sets the boolean value whether the Banner Panel should  be shown for that page. Default value is false.</td></tr>
</table>


{% highlight c# %}

this.wizardControlPage1.FullPage = true;

{% endhighlight %}

{% highlight vbnet %}

Me.wizardControlPage1.FullPage = True

{% endhighlight %}

![](Wizard-Package_images/Wizard-Package_img18.jpeg)



A sample which demonstrates a Wizard Control with interactive Wizard pages is available in the below location.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo


{% seealso %}

Foreground Settings

Background Settings

ValidatePage Event

How to Programmatically control the Page Sequence?

{% endseealso %}

### Reordering Wizard Pages

By default, the WizardControl will use the order in which the pages are added to determine the next/previous pages. To reorder the pages, use any one of the following methods. 

* Select the WizardControl and choose WizardPages property in the Property Editor. This will bring out the collection editor, where you can reorder the pages using Up and Down arrow keys. 

![](Wizard-Package_images/Wizard-Package_img19.jpeg)



* In the designer, right click on a page and choose 'Bring To Front' or 'Send To Back' options which will move the page to the beginning or to the end of the collection, respectively.

![](Wizard-Package_images/Wizard-Package_img20.jpeg)



* The WizardControlPage has the NextPage and PreviousPage properties with which you can specify the order of page selection. Users may set these properties in the designer for all the pages. If set, the WizardControl will use that as a cue to determine the new page to be selected at run time.

Property Table

<table>
<tr>
<th>
WizardControlPage Property</th><th>
Description</th></tr>
<tr>
<td>
NextPage</td><td>
It sets the next page of the wizard.</td></tr>
<tr>
<td>
PreviousPage</td><td>
It sets the previous page of the wizard.</td></tr>
</table>


{% highlight c# %}



this.wizardControlPage2.NextPage = this.wizardControlPage3;

this.wizardControlPage2.PreviousPage = this.wizardControlPage1;

{% endhighlight %}


{% highlight vbnet %}



Me.wizardControlPage2.NextPage = Me.wizardControlPage3

Me.wizardControlPage2.PreviousPage = Me.wizardControlPage1

{% endhighlight %}

{% seealso %}
Page Selection at Design time

ValidatePage Event

How to Programmatically control the Page Sequence?
{% endseealso %}


