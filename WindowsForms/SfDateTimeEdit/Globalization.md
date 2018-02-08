---
layout: post
title: Globalization support of SfDateTimeEdit
description: Globalization support of SfDateTimeEdit
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Globalization

`SfDateTimeEdit` control provides globalization support that helps to designing and developing a world-ready application that supports localized interfaces and regional data for users in multiple cultures. Before beginning the design phase, you should determine which cultures your appliction will support. 

{% tabs %}

{% highlight C# %}

System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("pt-BR");

System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("pt-BR");

{% endhighlight  %}

{% highlight VB %}

System.Threading.Thread.CurrentThread.CurrentCulture = New System.Globalization.CultureInfo("pt-BR")

System.Threading.Thread.CurrentThread.CurrentUICulture = New System.Globalization.CultureInfo("pt-BR")

{% endhighlight  %}

{% endtabs %} 

## Change Culture

By default, `SfDateTimeEdit` supports system's current culture. Based on the usage, culture of `SfDateTimeEdit` can be changed through `Culture` property. Date and time information displayed in `SfDateTimeEdit` changed based on Culture changes.

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new Syncfusion.WinForms.Input.SfDateTimeEdit();

dateTimeEdit.Value = new DateTime(2010, 07, 05);

dateTimeEdit.DateTimePattern = DateTimePattern.LongDate;

dateTimeEdit.Culture = new CultureInfo("en-US");

{% endhighlight  %}

{% highlight VB %}

Dim dateTimeEdit As Syncfusion.WinForms.Input.SfDateTimeEdit = New Syncfusion.WinForms.Input.SfDateTimeEdit

dateTimeEdit.Value = New DateTime(2010, 7, 5)

dateTimeEdit.DateTimePattern = DateTimePattern.LongDate

dateTimeEdit.Culture = New CultureInfo("en-US")

{% endhighlight  %}

{% endtabs %} 


![](globalization-images/culture-us.png)

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new Syncfusion.WinForms.Input.SfDateTimeEdit();

dateTimeEdit.Value = new DateTime(2010, 07, 05);

dateTimeEdit.DateTimePattern = DateTimePattern.LongDate;

dateTimeEdit.Culture = new CultureInfo("fr-FR");

{% endhighlight  %}

{% highlight VB %}

Dim dateTimeEdit As New Syncfusion.WinForms.Input.SfDateTimeEdit()

dateTimeEdit.Value = New DateTime(2010, 7, 5)

dateTimeEdit.DateTimePattern = DateTimePattern.LongDate

dateTimeEdit.Culture = New CultureInfo("fr-FR")

{% endhighlight  %}

{% endtabs %} 

![](globalization-images/culture-fr.png)
