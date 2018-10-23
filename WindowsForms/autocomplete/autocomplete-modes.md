---
layout: post
title: AutoComplete Modes | WindowsForms | Syncfusion
description: AutoComplete Modes
platform: WindowsForms
control: Editors Package
documentation: ug
---

# AutoComplete Modes

The AutoComplete modes provide auto-completion options to auto suggest and append text from user choice.

The following AutoComplete modes are available:

* AutoSuggest
* AutoAppend
* Both
* MultiSuggest
* MultiSuggestExtended

## AutoSuggest

Displays possible matches for the current content of the active edit control in the form of pop-up window with selectable list of matches.

![Windows Forms AutoComplete AutoSuggest mode](AutoComplete-Controls-Images/autosuggest.png)

{% tabs %}

{% highlight C# %}

this.autoComplete1.SetAutoComplet(this.textBox1, Syncfusion.Windows.Forms.Tools.AutoCompleteModes.AutoSuggest); 

{% endhighlight %}


{% highlight VB %}

Me.autoComplete1.SetAutoComplete(Me.textBox1, Syncfusion.Windows.Forms.Tools.AutoCompleteModes.AutoSuggest)

{% endhighlight %}

{% endtabs %} 

## AutoAppend

Automatically appends most appropriate match for the current content of the edit control. The user can choose whether to type further or accept the appended word.

![Windows Forms AutoComplete AutoAppend mode](AutoComplete-Controls-Images/autoappend.png)

{% tabs %}

{% highlight C# %}

this.autoComplete1.SetAutoComplete(this.textBox1, Syncfusion.Windows.Forms.Tools.AutoCompleteModes.AutoAppend);

{% endhighlight %}


{% highlight VB %}

Me.autoComplete1.SetAutoComplete(Me.textBox1, Syncfusion.Windows.Forms.Tools.AutoCompleteModes.AutoAppend)

{% endhighlight %}

{% endtabs %} 

## Both

Activates both AutoAppend and AutoSuggest modes of auto completion for the target control.

![Windows Forms AutoComplete both AutoAppend and AutoSuggest modes](AutoComplete-Controls-Images/both.png)

{% tabs %}

{% highlight C# %}

this.autoComplete1.SetAutoComplete(this.textBox1, Syncfusion.Windows.Forms.Tools.AutoCompleteModes.Both);

{% endhighlight %}

{% highlight VB %}

Me.autoComplete1.SetAutoComplete(Me.textBox1, Syncfusion.Windows.Forms.Tools.AutoCompleteModes.Both)

{% endhighlight %}

{% endtabs %} 

## Disabled

Disables the auto complete support. 

![Windows Forms AutoComplete disabled AutoCompleteMode](AutoComplete-Controls-Images/disabled.png)

{% tabs %}

{% highlight C# %}

this.autoComplete1.SetAutoComplete(this.textBox1, Syncfusion.Windows.Forms.Tools.AutoCompleteModes.Disabled);

{% endhighlight %}

{% highlight VB %}

Me.autoComplete1.SetAutoComplete(Me.textBox1, Syncfusion.Windows.Forms.Tools.AutoCompleteModes.Disabled)

{% endhighlight %}

{% endtabs %} 

## MultiSuggest

Displays possible matches of multiple columns for the current content of the active edit control in the form of pop-up window with selectable list of matches. Multisuggest mode is an extended mode of AutoSuggest.

![Windows Forms AutoComplete MultiSuggest mode](AutoComplete-Controls-Images/MultiSuggest.png)

{% tabs %}

{% highlight C# %}

this.autoComplete1.SetAutoComplete(this.textBox1, Syncfusion.Windows.Forms.Tools.AutoCompleteModes.MultiSuggest);

{% endhighlight %}

{% highlight VB %}

Me.autoComplete1.SetAutoComplete(Me.textBox1, Syncfusion.Windows.Forms.Tools.AutoCompleteModes.MultiSuggest)

{% endhighlight %}

{% endtabs %} 

## MultiSuggestExtend

Displays possible entries of the current content of the active edit control in the form of pop-up window with selectable list of matches. All possible matches will be highlighted.

![Windows Forms AutoComplete MultiSuggest mode](AutoComplete-Controls-Images/MultiSuggestExtended.png)

{% tabs %}

{% highlight C# %}

this.autoComplete1.SetAutoComplete(this.textBox1, Syncfusion.Windows.Forms.Tools.AutoCompleteModes.MultiSuggestExtended);

{% endhighlight %}

{% highlight VB %}

Me.autoComplete1.SetAutoComplete(Me.textBox1, Syncfusion.Windows.Forms.Tools.AutoCompleteModes.MultiSuggestExtended)

{% endhighlight %}

{% endtabs %} 
