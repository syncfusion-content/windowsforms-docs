---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: SfDateTimeEdit 
documentation: ug
---

# Getting Started

This section briefly describes how to design a `SfDateTimeEdit` Control in a Windows Forms Application.

* Adding SfDateTimEdit Control 
* Configuring SfDateTimeEdit Values

## Adding SfDateTimeEdit Control

* Create a new Windows Forms Application Project in VS IDE through New Project Wizard.
* Drag and Drop `SfDateTimeEdit` control in the Form from Toolbox.


![](Getting-Started_images/GettingStarted.png) 


## Configuring SfDateTimeEdit Values

The most commonly used settings of the `SfDateTimeEdit` control are configured either through Designer using the Smart tag or through the Properties window or through code.

![](Getting-Started_images/GettingStarted-SmartTag.png)


To add `SfDateTimeEdit` Control to a Windows Forms Application through code behind.

1. Include the namespaces Syncfusion.WinForms.Input

{% tabs %}

{% highlight C# %}

using Syncfusion.WinForms.Input;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.WinForms.Input

{% endhighlight  %}

{% endtabs %} 


2. Create an instance of the `SfDateTimeEdit` control and add it to the Form.


{% tabs %}

{% highlight C# %}

SfDateTimeEdit sfDateTimeEdit = new SfDateTimeEdit();

this.Controls.Add(sfDateTimeEdit);


{% endhighlight %}

{% highlight VB %}

Dim SfDateTimeEdit As New SfDateTimeEdit()

Me.Controls.Add(sfDateTimeEdit)

{% endhighlight %}

{% endtabs %}
