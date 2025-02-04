---
layout: post
title: How-to-dynamically-create-a-Form-and-add-it-to-a-T | WindowsForms | Syncfusion®
description: how to dynamically create a form and add it to a tab
platform: windowsforms
control: TabsPackage
documentation: ug
---

# How to dynamically create a Form and add it to a Tab?

Here is a code sample which demonstrates how you could dynamically create a Form and add that form to a new Tab.

{% tabs %}

{% highlight C# %}


//Form2 is the dynamically created form in your project that needs to be added to a Tab.

//Create the form and set it’s TopLevel property to false to enable setting it’s parent.

Form2 frm2 = new Form2();

frm2.TopLevel = false;

//Create the new tab which will display Form2TabPageAdv newTab = new TabPageExt("FORM_2");

this.tabControlAdv1.Controls.Add(newTab);

//Set the parent of Form2 to be the new tab and display the form in the newly created tab.

frm2.Parent = newTab;

frm2.Visible = true;

frm2.Dock = DockStyle.Fill;

{% endhighlight %}

{% highlight VB %}



'Form2 is the dynamically created form in your project that needs to be added to a Tab.

'Create the form and set it’s TopLevel property to false to enable setting it’s parent.

Dim frm2 As Form2 = New Form2()

frm2.TopLevel = False 

'Create the new tab which will display Form2.

Dim newTab As TabPageAdv = New TabPageExt("FORM_2")

Me.tabControlAdv1.Controls.Add(newTab) 

'Set the parent of Form2 parent to be the new tab and display the form in the newly created tab.

frm2.Parent = newTab

frm2.Visible = True

frm2.Dock = DockStyle.Fill

{% endhighlight %}

{% endtabs %}