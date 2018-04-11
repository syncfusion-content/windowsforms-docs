---
layout: post
title: Creating-Editable-List | WindowsForms | Syncfusion
description: creating editable list
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Creating Editable List

To use an EditableList control in your application, all you need to do is drag-and-drop the EditableList control from the controls toolbox onto your form. To add items, expand ListBox node and open String Collection Editor.

![](Creating-Editable-List_images/Creating-Editable-List_img1.png)

It can be created programmatically as follows.

1. Include the required namespace.

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}

2. Declare and create an instance of EditableList control.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.EditableList editableList1;
this.editableList1=new Syncfusion.Windows.Forms.Tools.EditableList();

{% endhighlight %}

{% highlight vb %}

Private editableList1 As Syncfusion.Windows.Forms.Tools.EditableList
Me.editableList1 = New Syncfusion.Windows.Forms.Tools.EditableList()

{% endhighlight %}
{% endtabs %}
 
3. Associate Button, TextBox and ListBox with the EditableList control.

{% tabs %}
{% highlight c# %}

this.editableList1.Controls.Add(this.editableList1.Button);
this.editableList1.Controls.Add(this.editableList1.ListBox);
this.editableList1.Controls.Add(this.editableList1.TextBox);

{% endhighlight %}

{% highlight vb %}

Me.editableList1.Controls.Add(Me.editableList1.Button)
Me.editableList1.Controls.Add(Me.editableList1.ListBox)
Me.editableList1.Controls.Add(Me.editableList1.TextBox)

{% endhighlight %}
{% endtabs %}

4. Specify the size of EditableList control and add that instance to the Form.

{% tabs %}
{% highlight c# %}

this.editableList1.Size = new System.Drawing.Size(144, 40);
this.Controls.Add(this.editableList1);

{% endhighlight %}
{% highlight vb %}

Me.editableList1.Size = New System.Drawing.Size(144, 40)
Me.Controls.Add(Me.editableList1)

{% endhighlight %}
{% endtabs %}
