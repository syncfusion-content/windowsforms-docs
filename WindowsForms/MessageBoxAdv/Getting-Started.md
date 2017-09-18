---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: Getting Started
platform: WindowsForms
control: MessageBoxAdv
documentation: ug
---

# Getting Started

This session explains about how to implement a window popup using the MessageBoxAdv. The Syncfusion control can be added using the following Syncfusion Assemblies as follows:
1)	Create a WindowsForms project in visual studio and add the following Syncfusion assembly as follows:

    * Syncfusion.Shared.Base.dll

Now invoke the MessageBoxAdv using its Show method as shown in the code snippet as follows:

{% tabs %}

{% highlight C# %}

//Invoke the MessageBox using ShowMethod
MessageBoxAdv.Show("Metro Theme","This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.OK);

{% endhighlight %}

{% highlight VB %}

'Invoke the MessageBox using ShowMethod

MessageBoxAdv.Show("Metro Theme", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.OK)

{% endhighlight %}

{% endtabs %}


