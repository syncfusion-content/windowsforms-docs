---
layout: post
title: customization | WindowsForms | Syncfusion
description: Customization
platform: WindowsForms
control: Editors Package
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

![](Customization_images/Options1.png)
 
![](Customization_images/Options2.png)


# Getting Suggestions for Wrong Word

SpellCheckerAdv provides support to get suggestion list by passing the wrong word in the below methods.

* GetSuggestions
* GetPhoneticWords
* GetAnagrams

{% tabs %}

{% highlight C# %}

this.spellCheckerAdv1.GetSuggestions("Textboxx");

this.spellCheckerAdv1.GetPhoneticWords("Textboxx");

this.spellCheckerAdv1.GetAnagrams("Textboxx");

{% endhighlight %}

{% highlight VB %}

Me.spellCheckerAdv1.GetSuggestions("Textboxx")

Me.spellCheckerAdv1.GetPhoneticWords("Textboxx")

Me.spellCheckerAdv1.GetAnagrams("Textboxx")

{% endhighlight %}

{% endtabs %}