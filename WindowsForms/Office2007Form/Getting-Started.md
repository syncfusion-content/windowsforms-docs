---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: Office2007 Form
documentation: ug
---

# Getting started

The default Form can be changed into the Office2007Form by following the below given steps.

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
   
3)	Change the class to inherit the Office2007Form instead of the default Form as follows.


{% tabs %}

{% highlight C# %}

public partial class Form1 : Office2007Form 

{% endhighlight %}


{% highlight VB %}

Partial Public Class Form1 Inherits Office2007Form
 
{% endhighlight %}

{% endtabs %}
  
   
![](Creating-Office2007Form_images/Creating-Office2007Form_img1.png)