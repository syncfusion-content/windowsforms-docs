---
layout: post
title: Abbreviating the Days names of SfCalendar control for Windows Forms
description: Abbreviating the Days names of SfCalendar control for Windows Forms
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# Culture

The culture information can be applied using the `Culture` property. 

To change the culture for this control, use the following code example.

{% tabs %}

{% highlight C# %}

//Setting the culture

this.SfCalendar1.Culture = new System.Globalization.CultureInfo(2);

{% endhighlight  %}

{% highlight VB %}

' Setting the culture

this.SfCalendar1.Culture = new System.Globalization.CultureInfo(2)

{% endhighlight  %}

{% endtabs %} 

![](Culture_images/Culture.png)

