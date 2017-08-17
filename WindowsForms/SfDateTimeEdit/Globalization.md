---
layout: post
title: Globalization support of SfDateTimeEdit
description: Globalization support of SfDateTimeEdit
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Globalization

`SfDateTimeEdit` control provides globalization support through the Culture property. If the Culture property is changed, then the DateTime displayed as per the Culture.

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new Syncfusion.WinForms.Input.SfDateTimeEdit();

dateTimeEdit.Value = new DateTime(2010, 07, 05);

dateTimeEdit.DateTimePattern = DateTimePattern.LongDate;

dateTimeEdit.Culture = new CultureInfo("en-US");

{% endhighlight  %}

{% highlight VB %}

Dim dateTimeEdit As New Syncfusion.WinForms.Input.SfDateTimeEdit()

dateTimeEdit.Value = New DateTime(2010, 7, 5)

dateTimeEdit.DateTimePattern = DateTimePattern.LongDate

dateTimeEdit.Culture = New CultureInfo("en-US")

{% endhighlight  %}

{% endtabs %} 


![](Culture-Support_images/Culture_US.png)

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

![](Culture-Support_images/Culture_FR.png)
