---
layout: post
title: How to match items in all the columns using AutoCompleteControl
description: How to match items in all the columns using AutoCompleteControl
platform: windowsforms
control: Editors Package
documentation: ug
---





# How to match items in all the columns using AutoCompleteControl


Matching items in multiple columns is possible using the AutoComplete control. We need to set the AutoCompleteModes to MultiSuggest or MultiExtended mode for this.

MultiSuggest - Possible matches from Multiple columns for the current content of the Active edit control, will be presented in a form of a popup window with a selectable list of matches. MultiSuggest mode is an extended mode of AutoSuggest. On selecting this mode, user  will be able to get the matching items in the active edit control from all the columns. 

{% highlight C# %}




this.autoComplete1.SetAutoComplete(this.textBoxExt1 , Syncfusion.Windows.Forms.Tools.AutoCompleteModes.MultiSuggest);
{% endhighlight %}




{% highlight vbnet %}


Me.autoComplete1.SetAutoComplete(Me.textBoxExt1 , Syncfusion.Windows.Forms.Tools.AutoCompleteModes.MultiSuggest)

{% endhighlight %}

 ![](FAQ_images/Overview_img36.jpeg)



MultiSuggestExtended - This mode highlights all possible matches from Multiple columns, for the current content of the Active edit control, presented in the form of a popup window, with a selectable list of matches.

{% highlight C# %}



this.autoComplete1.SetAutoComplete(this.textBoxExt1 , Syncfusion.Windows.Forms.Tools.AutoCompleteModes.MultiSuggestExtended);


{% endhighlight %}



{% highlight vbnet %}



Me.autoComplete1.SetAutoComplete(Me.textBoxExt1 , Syncfusion.Windows.Forms.Tools.AutoCompleteModes.MultiSuggestExtended)
{% endhighlight %}


![](FAQ_images/Overview_img37.jpeg) 
