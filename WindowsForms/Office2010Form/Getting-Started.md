---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: Office2010 Form
documentation: ug
---

# Getting Started

The default forms can be changed into the Office2010 Form by following the below given steps.

1)	Create a WindowsForms project in Visual Studio and refer to the following assemblies.

   * Syncfusion.Shared.Base.dll
   
2)  Include the following namespace to the directives list.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms;

{% endhighlight %}


{% highlight VB %}

Imports Syncfusion.Windows.Forms
 
{% endhighlight %}

{% endtabs %}
   
3)	Change the class to inherit the Office2010Form instead of the default Form as follows.



{% tabs %}

{% highlight C# %}

public partial class Form1 : Office2010Form 

{% endhighlight %}


{% highlight VB %}

Partial Public Class Form1 Inherits Office2010Form
 
{% endhighlight %}

{% endtabs %}
  

   ![](Creating-Office2010-Form_images/Office2010Form.png)