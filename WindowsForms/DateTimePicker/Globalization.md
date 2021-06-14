---
layout: post
title: Globalization in Windows Forms DateTimePicker Control | Syncfusion
description: Learn here all about globalization feature of Syncfusion Windows Forms DateTimePicker (SfDateTimeEdit) control and more.
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Globalization in Windows Forms DateTimePicker (SfDateTimeEdit)

The `SfDateTimeEdit` control provides globalization support that allows you to design and develop a world-ready application that supports localized interfaces and regional data for users in multiple cultures. Before beginning the design phase, determine the cultures that your application supports.

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

## Change culture

By default, the `SfDateTimeEdit` supports system's current culture. Based on the usage, the culture of `SfDateTimeEdit` can be changed by using the [Culture](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_Culture) property. The date and time information displayed in the `SfDateTimeEdit` can be changed based on culture changes.

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

![SfDateTimeEdit control](globalization-images/culture-us.png)

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

![SfDateTimeEdit globalization](globalization-images/culture-fr.png)
