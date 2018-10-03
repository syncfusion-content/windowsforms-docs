---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: Creating ButtonEdit
platform: WindowsForms
control: Tools
documentation: ug
---

# Getting Started

This section will help you to get started with the ButtonEdit control.
The below topics will guide you to create ButtonEdit control through designer and programmatically.

## Through Designer

The ButtonEdit control can be used in situations where a set of buttons are needed alongside an edit control, such as in a browser for files dialog. This tutorial shows how to use the ButtonEdit control, set the Button properties and handle the events.

1. Create a new Windows Forms application and open the main form in the designer. Drag and drop ButtonEdit control from the toolbox to the form.  

   ![](Overview_images/Overview_img79.jpeg) 

2. When the control is initially added to the form, it appears like an edit control with no buttons.

![](Overview_images/Overview_img80.jpeg) 

3. We can add buttons to the control using ButtonEditChildButton Collection Editor which is invoked by ButtonEdit.Buttons property. Editor can also be accessed using Smart Tag option.

   ![](Overview_images/Overview_img81.jpeg)

4. Set properties for buttons using the Editor. You can specify the attributes for any of the child buttons through the collection editor or by clicking any button and then selecting the properties in the property grid, that display the properties for the selected button.

   ![](Overview_images/Overview_img82.jpeg)

N> You can also add or remove buttons to the ButtonEdit.Buttons collection through the Add Button and Remove Button verbs provided.

5. Run the application. You can specify handlers for these child buttons also.

   ![](Overview_images/Overview_img84.jpeg) 

## Through Code

To create a ButtonEdit control programmatically, follow the below steps.

1. Include the required namespace.

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}   
{% endtabs %}
   
2. Create an instances of ButtonEdit, TextBox and three ButtonEditChildButtons.

{% tabs %}
{% highlight c# %}
   
private Syncfusion.Windows.Forms.Tools.ButtonEdit buttonEdit1;
private System.Windows.Forms.TextBox textBox1;
private Syncfusion.Windows.Forms.Tools.ButtonEditChildButton buttonEditChildButton1;
private Syncfusion.Windows.Forms.Tools.ButtonEditChildButton buttonEditChildButton2;
private Syncfusion.Windows.Forms.Tools.ButtonEditChildButton buttonEditChildButton3;
this.buttonEdit1=new Syncfusion.Windows.Forms.Tools.ButtonEdit();
this.textBox1=new TextBox();
this.buttonEditChildButton1=new Syncfusion.Windows.Forms.Tools.ButtonEditChildButton();
this.buttonEditChildButton2=new Syncfusion.Windows.Forms.Tools.ButtonEditChildButton();
this.buttonEditChildButton3=new Syncfusion.Windows.Forms.Tools.ButtonEditChildButton();

{% endhighlight %}

{% highlight vb %}

Private buttonEdit1 As Syncfusion.Windows.Forms.Tools.ButtonEdit
Private textBox1 As System.Windows.Forms.TextBox
Private buttonEditChildButton1 As Syncfusion.Windows.Forms.Tools.ButtonEditChildButton
Private buttonEditChildButton2 As Syncfusion.Windows.Forms.Tools.ButtonEditChildButton
Private buttonEditChildButton3 As Syncfusion.Windows.Forms.Tools.ButtonEditChildButton
Me.buttonEdit1 = New Syncfusion.Windows.Forms.Tools.ButtonEdit()
Me.textBox1 = New TextBox()
Me.buttonEditChildButton1 = New Syncfusion.Windows.Forms.Tools.ButtonEditChildButton()
Me.buttonEditChildButton2 = New Syncfusion.Windows.Forms.Tools.ButtonEditChildButton()
Me.buttonEditChildButton3 = New Syncfusion.Windows.Forms.Tools.ButtonEditChildButton()

{% endhighlight %}
{% endtabs %}
 
3. Embed the TextBox1 to the textBox of ButtonEdit.

{% tabs %}
{% highlight c# %}
   
//Associating the TextBoxExt control.
this.buttonEdit1.TextBox=this.textBox1;

{% endhighlight %} 

{% highlight vb %}

'Associating the TextBoxExt control.
Me.buttonEdit1.TextBox=Me.textBox1

{% endhighlight %}
{% endtabs %}

4. Set the alignment and text for the buttons.

{% tabs %}
{% highlight c# %}

//Setting Button alignment for Child Button 1

//By default the alignment for other buttons will be right
this.buttonEditChildButton1.ButtonAlign = ButtonAlignment.Left;

//Setting text for child Buttons.
this.buttonEditChildButton1.Text = "L";
this.buttonEditChildButton2.Text = "R";
this.buttonEditChildButton3.Text = "E";

{% endhighlight %}

{% highlight vb %}

'Setting Button alignment for Child Button 1. 

'By default the alignment for other buttons will be right
Me.buttonEditChildButton1.ButtonAlign = ButtonAlignment.Left

'Setting text for child Buttons
Me.buttonEditChildButton1.Text = "L"
Me.buttonEditChildButton2.Text = "R"
Me.buttonEditChildButton3.Text = "E"

{% endhighlight %}
{% endtabs %}

5. Add ButtonEditChildButtons to the ButtonEdit which then add it to the form.

{% tabs %}
{% highlight c# %}

this.buttonEdit1.Buttons.Add(this.buttonEditChildButton1);
this.buttonEdit1.Buttons.Add(this.buttonEditChildButton2);
this.buttonEdit1.Buttons.Add(this.buttonEditChildButton3);
this.Controls.Add(this.buttonEdit1);

{% endhighlight %}

{% highlight vb %}

Me.buttonEdit1.Buttons.Add(Me.buttonEditChildButton1)
Me.buttonEdit1.Buttons.Add(Me.buttonEditChildButton2)
Me.buttonEdit1.Buttons.Add(Me.buttonEditChildButton3)
Me.Controls.Add(Me.buttonEdit1)

{% endhighlight %}
{% endtabs %}

6. Run the application. The output will be like below.

   ![](Overview_images/Overview_img85.jpeg)
