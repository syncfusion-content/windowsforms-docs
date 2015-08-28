---
layout: post
title: Editors-Package
description: editors package
platform: WindowsForms
control: Tools
documentation: ug
---

# Frequently Asked Questions


## How to display empty string in editor controls when databound value is null?

We can display empty string when data bound value is null. For this we need to bind the editor controls (like IntegerTextBox, DoubleTextBox, etc.,) to BindableValue property and also we need to set AllowNull to true and NullString property to empty string.

Find the code snippet below, which illustrates the same.

{%highlight c#%}

this.integerTextBox1.NullString = "";

this.integerTextBox1.AllowNull = true;

this.integerTextBox1.DataBindings.Add("BindableValue", boundView, "IntegerField");

{%endhighlight%}



{%highlight vbnet%}

Me.integerTextBox1.NullString = ""

Me.integerTextBox1. AllowNull = True

Me.integerTextBox1.DataBindings.Add("BindableValue", boundView, "IntegerField")

{%endhighlight%}
