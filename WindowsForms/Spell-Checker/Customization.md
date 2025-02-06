---
layout: post
title: Customization in Windows Forms Spell Checker control | Syncfusion®
description: Learn about Customization support in Syncfusion® Windows Forms Spell Checker (SpellCheckerAdv) control and more details.
platform: windowsforms
control: SpellCheckerAdv
documentation: ug
---

# Customization in Windows Forms Spell Checker (SpellCheckerAdv)

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

* [GetSuggestions](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SpellCheckerAdv.html#Syncfusion_Windows_Forms_Tools_SpellCheckerAdv_GetSuggestions_System_String_)
* [GetPhoneticWords](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SpellCheckerAdv.html#Syncfusion_Windows_Forms_Tools_SpellCheckerAdv_GetPhoneticWords_System_String_)
* [GetAnagrams](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SpellCheckerAdv.html#Syncfusion_Windows_Forms_Tools_SpellCheckerAdv_GetAnagrams_System_String_)


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

