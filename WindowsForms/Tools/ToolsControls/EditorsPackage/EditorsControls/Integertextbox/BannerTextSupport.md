---
layout: post
title: Editors-Package
description: editors package
platform: WindowsForms
control: Tools
documentation: ug
---

# Banner Text Support

The IntegerTextBox control can display banner text in the text field, at run time. A BannerTextProvider Component should be available for this purpose. Also, we need to set AllowNull, NullString and Text properties as below, to make this feature effective.

{%highlight c#%}



this.integerTextBox1.AllowNull = true;

this.integerTextBox1.NullString = "";

this.integerTextBox1.Text = "";

{%endhighlight%}

{%highlight vbnet%}



Me.integerTextBox1.AllowNull = True

Me.integerTextBox1.NullString = ""

Me.integerTextBox1.Text = ""

{%endhighlight%}