---
layout: post
title: customization | SpellCheckerAdv | WindowsForms | Syncfusion
description: Customization
platform: WindowsForms
control: SpellCheckerAdv
documentation: ug
---

# Customization

SpellCheckerAdv allows customizing options to add misspelled words from the input text to the error list.

{% tabs %}

{% highlight C# %}

SpellCheckerAdv checker = new SpellCheckerAdv();

checker.IgnoreEmailAddress = true;
checker.IgnoreFileNames = true;

checker.IgnoreHtmlTags = true;

checker.IgnoreUrl = true;

checker.IgnoreSpecialSymbols = true;

checker.IgnoreMixedCaseWords = true;

checker.IgnoreUpperCaseWords = true;

checker.IgnoreAlphaNumericWords = true;


{% endhighlight %}


{% highlight VB %}


Private checker As New SpellCheckerAdv()

checker.IgnoreEmailAddress = True

checker.IgnoreFileNames = True

checker.IgnoreHtmlTags = True

checker.IgnoreUrl = True

checker.IgnoreSpecialSymbols = True

checker.IgnoreMixedCaseWords = True

checker.IgnoreUpperCaseWords = True

checker.IgnoreAlphaNumericWords = True

{% endhighlight %}

{% endtabs %}

These options are accessible at runtime through the Spell Checker Options dialog. This can be invoked by Options button available in the SpellChecker dialog.

![SpellCheckerAdv dialog window](Customization_images/Options1.png)
 
![SpellCheckerAdv spell checker option window](Customization_images/Options2.png)


## Getting suggestions for wrong word

SpellCheckerAdv provides support to get suggestion list by passing the wrong word in the below methods.

* [GetSuggestions](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SpellCheckerAdv~GetSuggestions.html)
* [GetPhoneticWords](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SpellCheckerAdv~GetPhoneticWords.html)
* [GetAnagrams](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SpellCheckerAdv~GetAnagrams.html)

{% tabs %}

{% highlight C# %}

this.spellCheckerAdv1.GetSuggestions("Textboxx");

this.spellCheckerAdv1.GetPhoneticWords("Textboxx");

this.spellCheckerAdv1.GetAnagrams("Textbox");

{% endhighlight %}

{% highlight VB %}

Me.spellCheckerAdv1.GetSuggestions("Textboxx")

Me.spellCheckerAdv1.GetPhoneticWords("Textboxx")

Me.spellCheckerAdv1.GetAnagrams("Textbox")

{% endhighlight %}

{% endtabs %}