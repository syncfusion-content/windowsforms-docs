---
layout: post
title: Auto Complete in Windows Forms ComboBox control | Syncfusion
description: Learn about Auto Complete support in Syncfusion Windows Forms ComboBox (SfComboBox) control and more details.
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Auto Complete in Windows Forms ComboBox (SfComboBox)

Auto complete can be enabled by using the [SfComboBox.AutoCompleteMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_AutoCompleteMode) property. Three different ways to display the suggestions are:

* Suggest: Displays suggestion in drop-down list.
* Append: Appends the first suggestion to text.
* SuggestAppend: Performs both the above ways.

## Auto complete modes

### Suggest

A list of probable matches will be suggested and displayed in the drop-down list by setting the [AutoCompleteMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_AutoCompleteMode) property as `Suggest`.

{% tabs %}
{% highlight c# %}
sfComboBox1.AutoCompleteMode = AutoCompleteMode.Suggest;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.AutoCompleteMode = AutoCompleteMode.Suggest
{% endhighlight %}
{% endtabs %}

![Suggest in WindowsForms AutComplete](autocomplete_images/windowsforms-autocomplete-suggest.png)

### Append

The closest match will be added to the editor portion of the [WinForms ComboBox](https://www.syncfusion.com/winforms-ui-controls/combobox) (SfComboBox) control with partial string selection in the drop-down list. This mode can be enabled by setting the [AutoCompleteMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_AutoCompleteMode) property as `Append`.

{% tabs %}
{% highlight c# %}
sfComboBox1.AutoCompleteMode = AutoCompleteMode.Append;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.AutoCompleteMode = AutoCompleteMode.Append
{% endhighlight %}
{% endtabs %}

![Append in WindowsForms AutoComplete](autocomplete_images/windowsforms-autocomplete-append.png)

### Suggest append

The closest match will be added in the editor portion of the SfComboBox control with partial string selection. The list of matched items will be displayed in the drop-down list by setting the [AutoCompleteMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_AutoCompleteMode) property as `SuggestAppend`.

{% tabs %}
{% highlight c# %}
sfComboBox1.AutoCompleteMode = AutoCompleteMode. SuggestAppend;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.AutoCompleteMode = AutoCompleteMode.SuggestAppend
{% endhighlight %}
{% endtabs %}

![Suggest append in WindowsForms AutoComplete](autocomplete_images/windowsforms-autocomplete-suggest-append.png)

## Auto complete by case sensitive

By default, auto completion is case in-sensitive. Case sensitivity can be enabled by setting the [AllowCaseSensitiveOnAutoComplete](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_AllowCaseSensitiveOnAutoComplete) property to `true`.

{% tabs %}
{% highlight c# %}
sfComboBox1.AllowCaseSensitiveOnAutoComplete = true;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.AllowCaseSensitiveOnAutoComplete = True
{% endhighlight %}
{% endtabs %}

![Filter drop-down items with case sensitive in WindowsForms AutoComplete](autocomplete_images/windowsforms-autocomplete-case-sensitive.png)

## Different modes for suggesting items

StartsWith and Contains modes are used to auto complete the items by using the [AutoCompleteSuggestMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_AutoCompleteSuggestMode) property. The default value is `StartsWith`.

{% tabs %}
{% highlight c# %}
sfComboBox1.AutoCompleteSuggestMode = AutoCompleteSuggestMode.Contains;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.AutoCompleteSuggestMode = AutoCompleteSuggestMode.Contains
{% endhighlight %}
{% endtabs %}

![Suggestion option as contains in WindowsForms AutoComplete](autocomplete_images/windowsforms-autocomplete-suggestion-items.png)

## Setting delay for auto complete

The SfComboBox provides support to set delay in milliseconds when suggesting matches on auto completion process by using the [AutoCompleteSuggestDelay](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_AutoCompleteSuggestDelay) property. The default suggest delay is 0.

{% tabs %}
{% highlight c# %}
sfComboBox1.AutoCompleteSuggestDelay = 1000;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.AutoCompleteSuggestDelay = 1000
{% endhighlight %}
{% endtabs %}

N> The `AutoCompleteSuggestDelay` property is valid only for `Suggest` and `SuggestAppend` modes.
