---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: MetroForm
documentation: ug
---

# Getting started

The default Form can be changed into the MetroForm by following the below given steps.

1)	Create a Windows Forms project in Visual Studio and refer to the following assembly.

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
   
3)	Change the class to inherit the MetroForm instead of the default Form as follows.


{% tabs %}

{% highlight C# %}

public partial class Form1 : MetroForm 

{% endhighlight %}


{% highlight VB %}

Partial Public Class Form1 Inherits MetroForm
 
{% endhighlight %}

{% endtabs %}
  
   
![](Getting-Started_images/MetroForm.png)