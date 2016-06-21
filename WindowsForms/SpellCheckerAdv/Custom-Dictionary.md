---
layout: post
title: Custom-Dictionary | WindowsForms | Syncfusion
description: customdictionary
platform: WindowsForms
control: SpellCheckerAdv
documentation: ug
---

# Custom Dictionary

SpellCheckerAdv comes with one predefined dictionary for English language and also supports to have Custom dictionary based on Application requirement. Users can use their own dictionaries for the different languages. 

Words can be added to the custom dictionary with the *Add to dictionary* button in the SpellChecker dialog. Users can add their own custom dictionary by referring to the dictionary file path in the Custom Dictionary Editor dialog.

Word list can be customized with the Custom Dictionary Editor dialog, and this can be invoked by the Custom Dictionary button in the SpellChecker dialog. Users can add or delete words from the dictionary.


{% tabs %}

{% highlight C# %}

this.spellCheckerAdv1.CustomDictionaryPath = "C:\\ProgramData\\ClipboardFunctionsDemo\\SpellCheckerDemo_2008\\1.0.0.0\\Custom_Dictionay.dic";

{% endhighlight %}

{% highlight VB %}

Me.spellCheckerAdv1.CustomDictionaryPath = "C:\\ProgramData\\ClipboardFunctionsDemo\\SpellCheckerDemo_2008\\1.0.0.0\\Custom_Dictionay.dic"

{% endhighlight %}

{% endtabs %}

![](Custom-Dictionary_images/CustomDictionary.png)





