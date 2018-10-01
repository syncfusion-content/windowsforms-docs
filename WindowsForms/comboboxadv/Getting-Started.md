---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: ComboBoxAdv
documentation: ug
---

# Getting Started


This section briefly describes how to design a ComboBoxAdv Control in a Windows Forms Application.

* Adding a ComboBoxAdv Control 
* Configuring the ComboBoxAdv Control


## Adding ComboBoxAdv Control

* Create a new Windows Forms Application Project in VS IDE through New Project Wizard.
* Drag and drop the ComboBoxAdv control in the Form from Toolbox.



![C:/Users/ashwini/Desktop/ComboBoxAdv image/ComboBoxAdv in toolbox.png](Overview_images/Overview_img296.png) 



## Configuring ComboBoxAdv Control

The most commonly used settings of the ComboBoxAdv control can be configured either through Designer using the Smart tag or through the Properties window or through code.



![C:/Users/ashwini/Desktop/ComboBoxAdv image/ComboBoxAdv smart tag.png](Overview_images/Overview_img297.png) 



To add ComboBoxAdv Control to a Windows Forms Application through code behind, follow the given steps.

1. Include the namespaces “Syncfusion.Windows.Forms” and “Syncfusion.Windows.Forms.Tools”.

{% tabs %}

{% highlight c# %}

//Namespaces.
using Syncfusion.Windows.Forms.Tools;
using Syncfusion.Windows.Forms;

{% endhighlight %}

{% highlight vb %}

'Namespaces.
Imports Syncfusion.Windows.Forms
Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}

2. Create an instance of the ComboBoxAdv control and add it to the Form.

{% tabs %}

{% highlight c# %}
  
//Creates ComboBoxAdv instance.
private Syncfusion.Windows.Forms.Tools.ComboBoxAdv comboBoxAdv1;
this.comboBoxAdv1 = new ComboBoxAdv();

{% endhighlight %}

{% highlight vb %}

'Creates ComboBoxAdv instance.
Private comboBoxAdv1 As Syncfusion.Windows.Forms.Tools.ComboBoxAdv
Me.comboBoxAdv1 = New ComboBoxAdv()

{% endhighlight %}

{% endtabs %}

3. Items can be added to ComboBoxAdv through String Collection Editor as it was done in Windows ComboBox control.

{% tabs %}

{% highlight c# %}

//Adding items to ComboBoxAdv
this.comboBoxAdv1.Items.Add(100);
this.comboBoxAdv1.Items.Add(200);
this.comboBoxAdv1.Items.Add(300);

{% endhighlight %}

{% highlight vb %}

'Adding items to ComboBoxAdv
Me.comboBoxAdv1.Items.Add(100)
Me.comboBoxAdv1.Items.Add(200)
Me.comboBoxAdv1.Items.Add(300)

{% endhighlight %}

{% endtabs %}

4. Finally add ComboBoxAdv to the form.

{% tabs %}

{% highlight c# %}

//Adding ComboBoxAdv to form

this.Controls.Add(this.comboBoxAdv1);

{% endhighlight %}

{% highlight vb %}

'Adding ComboBoxAdv to form

Me.Controls.Add(Me.comboBoxAdv1)

{% endhighlight %}

{% endtabs %}


![C:/Users/ashwini/Desktop/ComboBoxAdv image/ComboBoxAdv items.png](Overview_images/Overview_img298.png)

