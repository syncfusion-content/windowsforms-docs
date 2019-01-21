---
layout: post
title: Localization | Windows Forms | Syncfusion
description: Set the localize text
platform: WindowsForms
control: ContextMenuStripEx
documentation: ug
---

# Localization

Localization is the process of making application multilingual by formatting the content according to the cultures. This involves configuring the application for a specific language. Culture is the combination of language and location. For example, en-US is the culture for English spoken in United States; en-GB is the culture for English spoken in Great Britain.

## Through Designer

Once item is added, we can set the localize text by right-clicking on the particular item in the designer and select **Properties**. Now, in the **Properties** panel, under **Appearance > Text** we need to set localize text.

![Localization](Localization_Images/Properties.png)

![Localization](Localization_Images/Properties1.png)

## Through Code

The below code snippet will explain how to set the localize text in **French** culture.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx.Text = "Menu contextual";
this.toolStripMenuItem1.Text = "Nouveau";
this.toolStripMenuItem2.Text = "Copier";
this.toolStripTextBox1.Text = "Zone de texte";
this.toolStripComboBox1.Text = "Boîte combo";

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx.Text = "Menu contextual"
Me.toolStripMenuItem1.Text = "Nouveau"
Me.toolStripMenuItem2.Text = "Copier"
Me.toolStripTextBox1.Text = "Zone de texte"
Me.toolStripComboBox1.Text = "Boîte combo"

{% endhighlight %}
{% endtabs %}

**French Culture**

![French Culture](Localization_Images/FR.png)

**German Culture**

![German Culture](Localization_Images/GE.png)
