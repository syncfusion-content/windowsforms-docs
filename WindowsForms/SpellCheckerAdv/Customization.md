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

SpellCheckerAdv spellCheckeradv = new SpellCheckerAdv();

spellCheckeradv.IgnoreEmailAddress = true;

spellCheckeradv.IgnoreFileNames = true;

spellCheckeradv.IgnoreHtmlTags = true;

spellCheckeradv.IgnoreUrl = true;

spellCheckeradv.IgnoreSpecialSymbols = true;

spellCheckeradv.IgnoreMixedCaseWords = true;

spellCheckeradv.IgnoreUpperCaseWords = true;

spellCheckeradv.IgnoreAlphaNumericWords = true;


{% endhighlight %}


{% highlight VB %}


Private spellChecker As New SpellCheckerAdv()

spellCheckeradv.IgnoreEmailAddress = True

spellCheckeradv.IgnoreFileNames = True

spellCheckeradv.IgnoreHtmlTags = True

spellCheckeradv.IgnoreUrl = True

spellCheckeradv.IgnoreSpecialSymbols = True

spellCheckeradv.IgnoreMixedCaseWords = True

spellCheckeradv.IgnoreUpperCaseWords = True

spellCheckeradv.IgnoreAlphaNumericWords = True

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