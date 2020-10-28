---
layout: post
title: Printing | WindowsForms | Syncfusion
description: Printing
platform: WindowsForms
control: TreeView 
documentation: ug
---
# Printing

The TreeView Control has in-built support for printing. To print the content of treeview, convert the treeview into the printable document using TreeViewPrintDocument.

{% tabs %}
{% highlight c# %}

TreeViewPrintDocument printDocument = new TreeViewPrintDocument(this.treeViewAdv1);
printDocument.Print();

{% endhighlight %}
{% highlight vb %}

'Convert the Treeview as printing document
Dim printDocument As New TreeViewPrintDocument(Me.treeViewAdv1)
'Print the contents of the Grid
printDocument.Print()

{% endhighlight %}
{% endtabs %}

![](Printing_Images/Printing_img1.jpg)

## Print Preview

PrepareTreeImage is used to gets an image that shows the entire tree, not just what is visible on the form.

![](Printing_Images/Printing_img2.jpg)	
