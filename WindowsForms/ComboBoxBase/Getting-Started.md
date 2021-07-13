---
layout: post
title: Getting Started with Windows Forms ComboBoxBase | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms ComboBoxBase control, its elements, and more.
platform: WindowsForms
control: ComboBoxBase
documentation: ug
---

# Getting Started with Windows Forms ComboBoxBase


ComboBoxBase can be created easily through designer, by just dragging and dropping the ComboBoxBase control from the Toolbox.

![Drag and Drop ComboBoxBase control from the Toolbox ](Overview_images/Overview_img315.png) 



![ComboBoxBase in Form](Overview_images/Overview_img316.png) 



To add data for the popup, add a listbox control to the form and select it in ListControl property.

![Add Data for the Popup](Overview_images/Overview_img317.png) 



![Add a Listbox control](Overview_images/Overview_img318.png) 


It can be created through code by following the below steps.

1. Added Shared.Base to the reference folder through solution explorer and include the below namespace in the code.

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}

2. Create an instance of the ComboBoxBase control and ListBox.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.ComboBoxBase comboBoxBase1;
private System.Windows.Forms.ListBox listBox1;
this.comboBoxBase1=new Syncfusion.Windows.Forms.Tools.ComboBoxBase();
this.listBox1=new ListBox();

{% endhighlight %}

{% highlight vb %}

Private comboBoxBase1 As Syncfusion.Windows.Forms.Tools.ComboBoxBase
Private listBox1 As System.Windows.Forms.ListBox
Me.comboBoxBase1 = New Syncfusion.Windows.Forms.Tools.ComboBoxBase()
Me.listBox1 = New ListBox()

{% endhighlight %}
{% endtabs %}
 
3. Set the ListControl that will be used in the dropdown portion of ComboBoxBase and specify the size of ComboBoxBase. 

{% tabs %}
{% highlight c# %}

this.comboBoxBase1.ListControl=this.listBox1;
this.comboBoxBase1.Size=new Size(120,20);

{% endhighlight %}

{% highlight vb %}

Me.comboBoxBase1.ListControl=Me.listBox1
Me.comboBoxBase1.Size = New Size(120,20)

{% endhighlight %}
{% endtabs %}

4. Specify the datasource. 

{% tabs %}
{% highlight c# %}

// Sets the datasource.
ArrayList USStates = new ArrayList(); 
USStates.Add(new USState("Washington", "WA")); 
USStates.Add(new USState("West Virginia", "WV")); 
USStates.Add(new USState("Wisconsin", "WI")); 
USStates.Add(new USState("Wyoming", "WY")); 
ListBox1.DataSource = USStates; 

{% endhighlight %}

{% highlight vb %}

' Sets the datasource.
Dim USStates As ArrayList = New ArrayList()
USStates.Add(New USState("Washington", "WA"))
USStates.Add(New USState("West Virginia", "WV"))
USStates.Add(New USState("Wisconsin", "WI"))
USStates.Add(New USState("Wyoming", "WY"))
ListBox1.DataSource = USStates

{% endhighlight %}
{% endtabs %}

5. Finally add ComboBoxBase and Listbox to the Form.

{% tabs %}
{% highlight c# %}

this.Controls.Add(this.listBox1);
this.Controls.Add(this.comboBoxBase1);

{% endhighlight %}

{% highlight vb %}

Me.Controls.Add(Me.listBox1)
Me.Controls.Add(Me.comboBoxBase1)

{% endhighlight %}
{% endtabs %}

![Add ComboBoxBase and Listbox to Form](Overview_images/Overview_img319.png) 



Refer [Creating ListControl-Derived Controls](/windowsforms/ComboBoxBase/Creating-ListControl-Derived-Controls) about ListControl-Derived controls in detail.