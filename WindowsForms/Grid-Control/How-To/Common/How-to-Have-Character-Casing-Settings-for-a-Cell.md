---
layout: post
title: Set Character Casing in Windows Forms GridControl | Syncfusion®
description: Set character casing for cells in Syncfusion® Windows Forms GridControl using OriginalTextBox cell types, character casing settings, and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Set Character Casing in Windows Forms GridControl

### Introduction

CharacterCasing works only with CellType = "OriginalTextBox" that uses a control derived from System.Windows.Forms.TextBox. The CellType text box is derived from RichTextBox, which does not have CharacterCasing property. To enable UpperCasing for the whole grid, set properties in TableStyle. To enable CharacterCasing on a column, row or cell basis, set style properties using techniques that are appropriate for grid that you are using as discussed in the topics on changing BackColor.

{% tabs %}
{% highlight c# %}

//Enables UpperCasing for the whole grid.
this.grid.TableStyle.CellType = "OriginalTextBox";
this.grid.TableStyle.CharacterCasing = CharacterCasing.Upper;

{% endhighlight %}

{% highlight vb %}

'Enables UpperCasing for the whole grid.
Me.grid.TableStyle.CellType = "OriginalTextBox"
Me.grid.TableStyle.CharacterCasing = CharacterCasing.Upper

{% endhighlight %}
{% endtabs %}
