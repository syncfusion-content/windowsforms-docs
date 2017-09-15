---
layout: post
title: FlowLayout | WindowsForms | Syncfusion
description: flowlayout
platform: WindowsForms
control: Layout Managers Package
documentation: ug
---
# FlowLayout

FlowLayout is a Layout Manager which allows us to arrange the Child components horizontally or vertically in a specific order, based on the settings. FlowLayout is one of the most commonly used Layout Managers. Deriving from the LayoutManager class, the FlowLayout component was created to support simple horizontal and vertical flow and complex constraint-based FlowLayouts.

In its simplest form, this Layout Manager can be used to automatically arrange the Child components in one or more rows, as shown below.

![](Overview_images/Overview_img33.jpeg) 



In it's most flexible and powerful mode, a FlowLayout automatically realigns the controls by adjusting their sizes and location based on the current font size, form size and localization settings, helping you to create efficient form layouts.

FlowLayout uses the preferred size of a Child component in it's layout logic. The minimum size is ignored for the most part, except in the constraint-based scenario discussed below.

The FlowLayout features can be split based on simple and constraint-based scenarios.

In a simple scenario, the Layout Manager does not expect any constraints to be associated with the Child components. In a constraint-based scenario, you specify constraints for each Child component over the layout logic.

The various features are discussed in the topics given below.

A Sample which demonstrates the FlowLayout is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

{% seealso %}

[Creating a Simple Layout](/windowsforms/layoutmanagers/creating-a-simple-layout)

{% endseealso %}

## Configuring FlowLayout

### Layout Mode

The layout mode dictates the core function of a FlowLayout, whether to layout the Child controls horizontally or vertically. This property will be in effect for both the scenarios.



<table>
<tr>
<th>
FlowLayout Property</th><th>
Description</th></tr>
<tr>
<td>
LayoutMode</td><td>
Specifies the layout mode of the Child controls. The default value is set to 'Horizontal'.The options included are as follows.{{ '_Horizontal and_' | markdownify }}{{ '_Vertical_' | markdownify }}</td></tr>
</table>




{% highlight c# %}

this.flowLayout1.LayoutMode = Syncfusion.Windows.Forms.Tools.FlowLayoutMode.Vertical;



{% endhighlight %}
{% highlight vbnet %}



Me.flowLayout1.LayoutMode = Syncfusion.Windows.Forms.Tools.FlowLayoutMode.Vertical

{% endhighlight  %}

![](Overview_images/Overview_img34.jpeg) 



## ParticipateInLayout

Child controls can be prevented from being laid out using the FlowLayout Manager. This can be done using the methods given below.



<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
GetParticipateInLayout</td><td>
Indicates whether the component is in the layout list.</td></tr>
<tr>
<td>
SetParticipateInLayout</td><td>
Adds or removes the specified control from the layout list.</td></tr>
</table>


The following code can be used to add or remove the Child control from the FlowLayout list programmatically.




{% highlight c# %}
this.flowLayout1.SetParticipateInLayout(this.button1,false);


{% endhighlight %}
{% highlight vbnet %}




Me.flowLayout1.SetParticipateInLayout(Me.button1,False)
{% endhighlight  %}

## HGap and VGap

The horizontal and the vertical gap between the Child controls can be set using the properties given below.



<table>
<tr>
<th>
FlowLayout Property</th><th>
Description</th></tr>
<tr>
<td>
HGap</td><td>
Gets / sets the horizontal spacing between the components.</td></tr>
<tr>
<td>
VGap</td><td>
Gets / sets the vertical spacing between the components.</td></tr>
</table>




{% highlight c# %}

this.flowLayout1.HGap = 20;

this.flowLayout1.VGap = 20;



{% endhighlight %}
{% highlight vbnet %}



Me.flowLayout1.HGap = 20

Me.flowLayout1.VGap = 20
{% endhighlight  %}


![](Overview_images/Overview_img35.jpeg) 



## AutoHeight

The height of the Container control can be automatically increased when there is a lack of sufficient space to show the Child components in the horizontal alignment mode. This is useful to enforce minimum heights on Container controls and forms.



<table>
<tr>
<th>
FlowLayout Property</th><th>
Description</th></tr>
<tr>
<td>
AutoHeight</td><td>
Specifies if the Container's height should be enforced to the minimum when in horizontal alignment mode.</td></tr>
</table>




{% highlight c# %}

this.flowLayout1.AutoHeight = true;


{% endhighlight %}
{% highlight vbnet %}




Me.flowLayout1.AutoHeight = True
{% endhighlight  %}

## Layout Direction

FlowLayout allows you to layout the Child controls in the opposite direction (right to left or bottom to top).



<table>
<tr>
<th>
FlowLayout Property</th><th>
Description</th></tr>
<tr>
<td>
ReverseRows</td><td>
Specifies to layout the Child controls in the reverse direction.</td></tr>
</table>





{% highlight c# %}
this.flowLayout1.ReverseRows = true;



{% endhighlight %}
{% highlight vbnet %}



Me.flowLayout1.ReverseRows = True

{% endhighlight  %}

![](Overview_images/Overview_img36.jpeg) 



## Alignment

The Alignment property is where you specify whether the current layout logic should be simple or constraint-based. 

N> Alignment is applied only along the direction of flow. For example, if the LayoutMode property is set to 'Horizontal' and the Alignment property is set to 'Center', then the rows will be centered horizontally.

<table>
<tr>
<th>
FlowLayout Property</th><th>
Description</th></tr>
<tr>
<td>
Alignment</td><td>
Specifies the alignment of layout components in the direction of flow. The options included are as follows.Center,Near,Far andChildConstraints.</td></tr>
</table>




{% highlight c# %}

this.flowLayout1.Alignment = Syncfusion.Windows.Forms.Tools.FlowAlignment.Near;


{% endhighlight %}
{% highlight vbnet %}




Me.flowLayout1.Alignment = Syncfusion.Windows.Forms.Tools.FlowAlignment.Near


{% endhighlight  %}

![](Overview_images/Overview_img38.jpeg) 



Once you specify the alignment of a FlowLayout as 'ChildConstraints', the Layout Manager will use a constraint-based layout logic based on the constraints specified on each Child component. During design time, the constraints can be specified for each Child control through the following extended property.



<table>
<tr>
<th>
FlowLayout Property</th><th>
Description</th></tr>
<tr>
<td>
Constraints on flowLayout</td><td>
Specifies the alignment of layout components in the direction of flow when the Alignment property is set to 'ChildConstraints'.</td></tr>
</table>




{% highlight c# %}

this.flowLayout1.Alignment = Syncfusion.Windows.Forms.Tools.FlowAlignment.ChildConstraints;




{% endhighlight %}
{% highlight vbnet %}


Me.flowLayout1.Alignment = Syncfusion.Windows.Forms.Tools.FlowAlignment.ChildConstraints
{% endhighlight  %}


![](Overview_images/Overview_img39.jpeg) 



N> Refer[FlowLayout - Configuring Child Controls](#configuring-child-controls) topic to know about HAlign, VAlign and other options provided by the Constraints on flowLayout property.

{% seealso %}

[FlowLayout - Configuring Child Controls](#configuring-child-controls), [Centering the Child Controls Horizontally and Vertically](/windowsforms/layoutmanagers/centering-the-child-controls-horizontally-and-vertically), [Enabling Constrained FlowLayout on a Container](#enabling-constrained-flowlayout-on-a-container), [Rearranging the Controls laid out by FlowLayout](#rearranging-the-controls-laid-out-by-flowlayout)

{% endseealso %}

## Configuring Child Controls

### Constraints on FlowLayout

Constrained FlowLayout is typically useful when creating resizable data entry forms filled with textboxes, checkboxes, and so on. During design time, the constraints can be specified for each Child control through its extended Constraints on flowLayout property. The constraints in the FlowLayout are described below in detail.

Setting the Constraints Through Designer

### HAlign and VAlign

The alignment of the Child controls that have been placed within a row can be set using the properties given below. The alignment is done based upon the layout modes of the Child controls.



<table>
<tr>
<th>Child Control Constraints</th>
<th>Description</th>
</tr>
<tr>
<td>HAlign</td>
<td>Specifies the mode in which the Child control should be laid out within a row. </br></br>The options includes are as follows.</br></br>Left,</br/>Right,<br/>Center and<br/>Justify.</td>
</tr>
<tr>
<td>VAlign</td>
<td>Specifies the mode in which the Child control should be laid out within a column. </br></br>The options includes are as follows.</br></br>Top,</br/>Bottom,<br/>Center and<br/>Justify.</td>
</tr>
</table>


When the alignment is set to 'Justify', any extra space will be equally distributed across the other Child controls that have been justified differently within that same row. However, when there is a lack of sufficient space, the justified Child controls are shrunk proportionally based on their minimum size and preferred size settings (specifically, the difference between the two sizes).

N> The Alignment property should be set to 'True' for the above properties to take effect.

![](FlowLayout_images/FlowLayout_img1.png) 

Children with different HAlign Settings
{:.caption}

N> In the figure above, the textboxes have auto labels associated with them.

### Layout Participation

You can prevent a Child control from participating in the layout using the below given property.

<table>
<tr>
<th>
Child Control Constraint</th><th>
Description</th></tr>
<tr>
<td>
Active</td><td>
Specifies whether the Child control should participate in the layout. The default value is set to 'True'.</td></tr>
</table>

	
	
#### Line Beginner

You can force a Child control to always start at a new row by setting the below given property.




<table>
<tr>
<th>
Child Control Constraint</th><th>
Description</th></tr>
<tr>
<td>
NewLine</td><td>
Specifies whether the Child control should participate in the layout. The default value is set to 'False'.</td></tr>
</table>

	
#### Row Height and Column Width

By default, rows are not adjusted to take into account the remaining vertical space in the horizontal layout mode or horizontal space in the vertical layout mode. This can be done using the properties given below.



<table>
<tr>
<th>
Child Control Constraint</th><th>
Description</th></tr>
<tr>
<td>
ProportionalColWidth</td><td>
Specifies if proportional column widths should be used in the vertical layout. The default value is set to 'False'.</td></tr>
<tr>
<td>
ProportionalRowHeight</td><td>
Specifies if proportional row heights should be used in the horizontal layout. The default value is set to 'False'.</td></tr>
</table>


	
	
![](FlowLayout_images/FlowLayout_img2.png)
 
Two Proportionally Aligned Rows Split the Extra Horizontal Space Between Them
{:.caption}

The methods associated with the above properties are given below.


<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
GetConstraints</td><td>
Returns the constraints associated with the specified control.</td></tr>
<tr>
<td>
GetConstraintsRef</td><td>
Returns a reference to the constraints associated with the specified control.</td></tr>
<tr>
<td>
SetConstraints</td><td>
Specifies the constraints associated with the specified control.</td></tr>
</table>

	
In code, you can specify constraints through the SetConstraints() method. The FlowLayoutConstraints type defines the constraint that can be specified on a Child component.

Setting the Constraints Programmatically

In the coding given below, the constraints are set to the particular control along with the constraint values like Active, HAlign, VAlign, NewLine, ProportionalColWidth and ProportionalRowHeight.

{% highlight c# %}

this.flowLayout1.SetConstraints(this.textBox1, new Syncfusion.Windows.Forms.Tools.FlowLayoutConstraints(true, Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Justify, Syncfusion.Windows.Forms.Tools.VertFlowAlign.Center, false, false, false));

{% endhighlight %}
{% highlight vbnet %}

Me.flowLayout1.SetConstraints(Me.textBox1, New Syncfusion.Windows.Forms.Tools.FlowLayoutConstraints(True, Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Justify, Syncfusion.Windows.Forms.Tools.VertFlowAlign.Center, False, False, False))

{% endhighlight %}

{% seealso %}

[Configuring FlowLayout](/windowsforms/layoutmanagers/creating-a-simple-layout#configuring-layout-manager), [Centering the Child Controls Horizontally and Vertically](/windowsforms/layoutmanagers/centering-the-child-controls-horizontally-and-vertically), [Enabling Constrained FlowLayout on a Container](#enabling-constrained-flowlayout-on-a-container), [Rearranging the Controls laid out by FlowLayout](#rearranging-the-controls-laid-out-by-flowlayout), [Child Control Settings](/windowsforms/layoutmanagers/layout-manager-settings#child-control-settings)

{% endseealso %}

## Centering the Child Controls Horizontally and Vertically

This topic illustrates how to center the Child controls both vertically and horizontally using the Child constraints. 



N> Constraints need to be used because the Child controls will otherwise be centered either vertically or horizontally based on whether the layout mode is 'Vertical' or 'Horizontal'.

When the layout mode is 'Horizontal', set the HAlign property to 'Center' and ProportionalRowHeight property to 'True' in the constraints for all the Child controls. This will center the Child controls vertically and horizontally as shown.


{% highlight C# %}




this.flowLayout1.SetConstraints(this.textBox1, new Syncfusion.Windows.Forms.Tools.FlowLayoutConstraints(true, Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Center, Syncfusion.Windows.Forms.Tools.VertFlowAlign.Center, false, false, true));


{% endhighlight %}


{% highlight vbnet %}


Me.flowLayout1.SetConstraints(Me.textBox1, New Syncfusion.Windows.Forms.Tools.FlowLayoutConstraints(True, Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Center, Syncfusion.Windows.Forms.Tools.VertFlowAlign.Center, False, False, True))

{% endhighlight %}

![](FlowLayout_images/FlowLayout_img14.jpeg)



When the ProportionalRowHeight property is set to 'True', any extra space at the bottom will be equally distributed among all the available rows, thereby increasing the logical height of the rows. The Child controls within these rows will then vertically align to the center of the row (since VAlign property is set to'Center', by default), thereby resulting in the layout seen above. 

When resized to a smaller width, two rows are created resulting in the layout shown below.

![](FlowLayout_images/FlowLayout_img15.jpeg)




{% seealso %}
Configuring FlowLayout, FlowLayout - Configuring Child Controls, Enabling Constrained FlowLayout on a Container
{% endseealso %}



## Enabling Constrained FlowLayout on a Container

This section will illustrate how Constrained FlowLayout can be used to implement complex form layout logic.

For example, create a 'User Info entry' panel with auto labels, textboxes and combobox to allow the user to enter personal information. This Container panel should also be capable of handling different widths by repositioning and resizing the Child controls appropriately.

Steps to achieve the above layout and behavior are described below.

1. Place five textboxes and one combobox to represent the different data input controls in the panel. 

   ~~~ cs



		// Declare the textboxes, combobox and panel controls.

		private System.Windows.Forms.TextBox textBox5;

		private System.Windows.Forms.TextBox textBox4;

		private System.Windows.Forms.TextBox textBox3;

		private System.Windows.Forms.TextBox textBox2;

		private System.Windows.Forms.TextBox textBox1;

		private System.Windows.Forms.ComboBox comboBox1;

		private System.Windows.Forms.Panel panel1;



		// Initialize the controls.

		this.textBox1 = new System.Windows.Forms.TextBox();

		this.textBox2 = new System.Windows.Forms.TextBox();

		this.textBox3 = new System.Windows.Forms.TextBox();

		this.textBox4 = new System.Windows.Forms.TextBox();

		this.textBox5 = new System.Windows.Forms.TextBox();

		this.comboBox1 = new System.Windows.Forms.ComboBox();

		this.panel1 = new System.Windows.Forms.Panel();



		// Add the controls to the panel control.

		this.panel1.Controls.Add(this.textBox1);

		this.panel1.Controls.Add(this.textBox2);

		this.panel1.Controls.Add(this.textBox3);

		this.panel1.Controls.Add(this.textBox4);

		this.panel1.Controls.Add(this.textBox5);

		this.panel1.Controls.Add(this.comboBox1);

   ~~~
   {:.prettyprint}

   ~~~ vbnet



		' Declare the textboxes, combobox and panel controls.

		Private textBox5 As System.Windows.Forms.TextBox

		Private textBox4 As System.Windows.Forms.TextBox

		Private textBox3 As System.Windows.Forms.TextBox

		Private textBox2 As System.Windows.Forms.TextBox

		Private textBox1 As System.Windows.Forms.TextBox

		Private comboBox1 As System.Windows.Forms.ComboBox

		Private panel1 As System.Windows.Forms.Panel



		' Initialize the controls.

		Me.textBox1 = New System.Windows.Forms.TextBox()

		Me.textBox2 = New System.Windows.Forms.TextBox()

		Me.textBox3 = New System.Windows.Forms.TextBox()

		Me.textBox4 = New System.Windows.Forms.TextBox()

		Me.textBox5 = New System.Windows.Forms.TextBox()

		Me.comboBox1 = New System.Windows.Forms.ComboBox()

		Me.panel1 = New System.Windows.Forms.Panel()



		' Add the controls to the panel control.

		Me.panel1.Controls.Add(Me.textBox1)

		Me.panel1.Controls.Add(Me.textBox2)

		Me.panel1.Controls.Add(Me.textBox3)

		Me.panel1.Controls.Add(Me.textBox4)

		Me.panel1.Controls.Add(Me.textBox5)

		Me.panel1.Controls.Add(Me.comboBox1)

   ~~~
   {:.prettyprint}

2. Add one auto label for each control and set the auto label's LabeledControl property to the corresponding control. Also, change the Text property of the auto label control appropriately and set the AutoSize property to 'True'. 

   ~~~ vbnet



		// Declare the autolabel controls.

		private Syncfusion.Windows.Forms.Tools.AutoLabel autoLabel1;

		private Syncfusion.Windows.Forms.Tools.AutoLabel autoLabel2;

		private Syncfusion.Windows.Forms.Tools.AutoLabel autoLabel3;

		private Syncfusion.Windows.Forms.Tools.AutoLabel autoLabel4;

		private Syncfusion.Windows.Forms.Tools.AutoLabel autoLabel5;

		private Syncfusion.Windows.Forms.Tools.AutoLabel autoLabel6;



		// Initialize the controls.

		this.autoLabel1 = new Syncfusion.Windows.Forms.Tools.AutoLabel();

		this.autoLabel2 = new Syncfusion.Windows.Forms.Tools.AutoLabel();

		this.autoLabel3 = new Syncfusion.Windows.Forms.Tools.AutoLabel();

		this.autoLabel4 = new Syncfusion.Windows.Forms.Tools.AutoLabel();

		this.autoLabel5 = new Syncfusion.Windows.Forms.Tools.AutoLabel();

		this.autoLabel6 = new Syncfusion.Windows.Forms.Tools.AutoLabel();



		// Set their properties.

		this.autoLabel1.AutoSize = true;

		this.autoLabel1.LabeledControl = this.textBox1;

		this.autoLabel1.Text = "First Name:";



		this.autoLabel2.AutoSize = true;

		this.autoLabel2.LabeledControl = this.textBox2;

		this.autoLabel2.Text = "MI:";



		this.autoLabel3.AutoSize = true;

		this.autoLabel3.LabeledControl = this.textBox3;

		this.autoLabel3.Text = "Last Name:";



		this.autoLabel4.AutoSize = true;

		this.autoLabel4.LabeledControl = this.textBox4;

		this.autoLabel4.Text = "Address:";



		this.autoLabel5.AutoSize = true;

		this.autoLabel5.LabeledControl = this.textBox5;

		this.autoLabel5.Text = "State";



		this.autoLabel6.AutoSize = true;

		this.autoLabel6.LabeledControl = this.comboBox1;

		this.autoLabel6.Text = "Zip";

   ~~~
   {:.prettyprint}

   ~~~ vbnet



		' Declare the autolabel controls.

		Private autoLabel1 As Syncfusion.Windows.Forms.Tools.AutoLabel

		Private autoLabel2 As Syncfusion.Windows.Forms.Tools.AutoLabel

		Private autoLabel3 As Syncfusion.Windows.Forms.Tools.AutoLabel

		Private autoLabel4 As Syncfusion.Windows.Forms.Tools.AutoLabel

		Private autoLabel5 As Syncfusion.Windows.Forms.Tools.AutoLabel

		Private autoLabel6 As Syncfusion.Windows.Forms.Tools.AutoLabel



		' Initialize the controls.

		Me.autoLabel1 = New Syncfusion.Windows.Forms.Tools.AutoLabel()

		Me.autoLabel2 = New Syncfusion.Windows.Forms.Tools.AutoLabel()

		Me.autoLabel3 = New Syncfusion.Windows.Forms.Tools.AutoLabel()

		Me.autoLabel4 = New Syncfusion.Windows.Forms.Tools.AutoLabel()

		Me.autoLabel5 = New Syncfusion.Windows.Forms.Tools.AutoLabel()

		Me.autoLabel6 = New Syncfusion.Windows.Forms.Tools.AutoLabel()



		' Set their properties.

		Me.autoLabel1.LabeledControl = Me.textBox1

		Me.autoLabel1.Text = "First Name:"



		Me.autoLabel2.LabeledControl = Me.textBox2

		Me.autoLabel2.Text = "MI:"



		Me.autoLabel3.LabeledControl = Me.textBox3

		Me.autoLabel3.Text = "Last Name:"



		Me.autoLabel4.LabeledControl = Me.textBox4

		Me.autoLabel4.Text = "Address:"



		Me.autoLabel5.LabeledControl = Me.textBox5

		Me.autoLabel5.Text = "State"



		Me.autoLabel6.LabeledControl = Me.comboBox1

		Me.autoLabel6.Text = "Zip"

   ~~~
   {:.prettyprint}

3. Now add theFlowLayout component and set the panel to be its Container control. The FlowLayout will layout the controls in the order in which they were added to the panel. Use the Bring To Front and Send To Back design time verbs to move the controls to the front or back of the layout order. 

   N> The FlowLayout will treat each control and it's auto label pair as a single unit during layout.


 
   ~~~ cs

		// Declare the FlowLayout.

		private Syncfusion.Windows.Forms.Tools.FlowLayout flowLayout1;



		// Initialize the Flowlayout and set the panel control as it's Container control.

		this.flowLayout1 = new Syncfusion.Windows.Forms.Tools.FlowLayout(this.components);

		this.flowLayout1.ContainerControl = this.panel1;
   ~~~
   {:.prettyprint}


   ~~~ vbnet



		' Declare the FlowLayout.

		Private flowLayout1 As Syncfusion.Windows.Forms.Tools.FlowLayout



		' Initialize the Flowlayout and set the panel control as it's Container control.

		Me.flowLayout1 = New Syncfusion.Windows.Forms.Tools.FlowLayout(Me.components)

		Me.flowLayout1.ContainerControl = Me.panel1
   ~~~
   {:.prettyprint}
4. Now set some appropriate constraints on the input controls as follows.
   * Select the First Name textbox and browse to the extended Constraints on flowLayout property. Set the HAlign property to 'Justify', so that this control's width will be resized to fit any available empty horizontal space in the row. This also requires that you specify an appropriate preferred size for the control, such as (100, 20).
   * The Middle Initial textbox needs to be left aligned and not justified. This is the default constraint setting, so we don't need to make any changes to it's constraints.
   * Select the Last Name textbox and specify the same constraints as the 'First Name'textbox.
   * The Address textbox should always begin in a new row, so set the NewLine property to 'True' in it's constraints. Also, set the HAlign property to 'Justify' and also provide a preferred size.
   * The State combobox and Zip textbox controls can also be left with the default constraints.


   ~~~ cs



		// Set the constraints for the textboxes.

		this.flowLayout1.SetConstraints(this.textBox1, new Syncfusion.Windows.Forms.Tools.FlowLayoutConstraints(true, Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Justify, Syncfusion.Windows.Forms.Tools.VertFlowAlign.Center, false, false, false));

		this.flowLayout1.SetPreferredSize(this.textBox1, new System.Drawing.Size(100, 20));



		this.flowLayout1.SetConstraints(this.textBox3, new Syncfusion.Windows.Forms.Tools.FlowLayoutConstraints(true, Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Justify, Syncfusion.Windows.Forms.Tools.VertFlowAlign.Center, false, false, false));

		this.flowLayout1.SetPreferredSize(this.textBox3, new System.Drawing.Size(100, 20));



		this.flowLayout1.SetConstraints(this.textBox4, new Syncfusion.Windows.Forms.Tools.FlowLayoutConstraints(true, Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Justify, Syncfusion.Windows.Forms.Tools.VertFlowAlign.Center, true, false, false));

		this.flowLayout1.SetPreferredSize(this.textBox4, new System.Drawing.Size(100, 20));.Center, false, false, true));

   ~~~
   {:.prettyprint}

   ~~~ vbnet



		' Set the constraints for the textboxes.

		Me.flowLayout1.SetConstraints(Me.textBox1, New Syncfusion.Windows.Forms.Tools.FlowLayoutConstraints(True, Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Justify, Syncfusion.Windows.Forms.Tools.VertFlowAlign.Center, False, False, False))

		Me.flowLayout1.SetPreferredSize(Me.textBox1, New System.Drawing.Size(100, 20))



		Me.flowLayout1.SetConstraints(Me.textBox3, New Syncfusion.Windows.Forms.Tools.FlowLayoutConstraints(True, Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Justify, Syncfusion.Windows.Forms.Tools.VertFlowAlign.Center, False, False, False))

		Me.flowLayout1.SetPreferredSize(Me.textBox3, New System.Drawing.Size(100, 20))



		Me.flowLayout1.SetConstraints(Me.textBox4, New Syncfusion.Windows.Forms.Tools.FlowLayoutConstraints(True, Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Justify, Syncfusion.Windows.Forms.Tools.VertFlowAlign.Center, True, False, False))

		Me.flowLayout1.SetPreferredSize(Me.textBox4, New System.Drawing.Size(100, 20))

   ~~~
   {:.prettyprint}

5. The panel itself should increase or decrease in width when the number of rows in the layout increases or decreases. To get this behavior, set the FlowLayout's AutoHeight property to 'True'.
   
   ~~~ cs



		// Set the AutoHeight property of FlowLayout.

		this.flowLayout1.AutoHeight = true;

   ~~~
   {:.prettyprint}

   ~~~ vbnet


		' Set the AutoHeight property of FlowLayout.

		Me.flowLayout1.AutoHeight = True
   ~~~
   {:>prettyprint}


N> During run time, the input controls get resized and repositioned appropriately based on the constraints provided.

![](FlowLayout_images/FlowLayout_img18.jpeg)



![](FlowLayout_images/FlowLayout_img19.jpeg)


### AutoLabel Control

The AutoLabel control is a label-derived control that lets you pair a label with any other control. Once paired, the AutoLabel will be automatically repositioned as the labeled control's position changes.

![](FlowLayout_images/FlowLayout_img20.jpeg)



The AutoLabel control can be positioned relative to the top, left, bottom or right of the labeled control. It can also be positioned at a custom distance from the labeled control specified via its DX and DY properties. When using relative positioning, you can also specify the gap between the label and the control.

The FlowLayout will always treat the 'AutoLabel-LabeledControl' pair as a unit. You can use AutoLabels and FlowLayout together to implement complex and powerful form layouts.


N> Refer to AutoLabel under Editors Package for more details.

{% seealso %}
[Configuring FlowLayout](#configuring-flowlayout), [FlowLayout - Configuring Child Controls](#configuring-child-controls), [Centering the Child Controls Horizontally and Vertically](/windowsforms/layoutmanagers/centering-the-child-controls-horizontally-and-vertically)
{% endseealso %}


## Rearranging the Controls laid out by FlowLayout

The FlowLayout manager arranges the controls in the way it gets added into the Container collection.

### Through Designer

* You can rearrange the controls laid out by FlowLayout by right clicking the control and selecting the Bring To Front or Send To Back verbs in the designer.

![](FlowLayout_images/FlowLayout_img22.jpeg)



* Rearranging of Child controls of the FlowLayout can also be done by dragging and dropping them at design time.

![](FlowLayout_images/FlowLayout_img23.jpeg)



### Through Code

We can also programmatically change the order of the controls laid out by the Flow layout. This can be done using the method given below.

* Set up a form with Panel1 and drag the FlowLayout onto the Panel1 which would act as the Container control.



![](FlowLayout_images/FlowLayout_img24.jpeg)



* Drag another three Panels onto the Panel1. The Flow Layout automatically arranges the Child controls as given below.

![](FlowLayout_images/FlowLayout_img25.jpeg)



* Add a Button control for reordering the Child controls of Panel1 and in the Button_Click event give the following code snippet.


{% highlight C# %}




private void button1_Click(object sender, System.EventArgs e)

{

// Create a temporary collection of Panel's controls.

ArrayList panel = new ArrayList();

foreach (Control ctrl in this.panel1.Controls)

{

panel.Add(ctrl);

}

this.panel1.Controls.Clear();

// Reorder the panels.

for (int i=panel.Count-1; i>=0; i--)

{

Panel pan = panel[i] as Panel;

this.panel1.Controls.Add(pan);

}

// Apply layout logic to all it's Child controls.

this.panel1.PerformLayout();

}

{% endhighlight %}


{% highlight vbnet %}



Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

' Create a temporary collection of Panel's controls.

Dim panel As ArrayList = New ArrayList()

For Each ctrl As Control In Me.panel1.Controls

panel.Add(ctrl)

Next ctrl

Me.panel1.Controls.Clear()

'Reorder the panels.

For i As Integer = panel.Count - 1 To 0 Step -1 

Dim pan As Panel = CType(IIf(TypeOf panel(i) Is Panel, panel(i), Nothing), Panel)

Me.panel1.Controls.Add(pan)

Next i

'Apply layout logic to all it's Child controls.

Me.panel1.PerformLayout()

End Sub

{% endhighlight %}

![](FlowLayout_images/FlowLayout_img26.jpeg)


* At run time when you click the Reorder button, the Panels 2, 3 and 4 will be rearranged in a different order.

![](FlowLayout_images/FlowLayout_img27.jpeg)




{% seealso %}
[Rearranging the Controls laid out by GridLayout](/windowsforms/layoutmanagers/gridlayout#rearranging-the-controls-laid-out-by-gridlayout), [Rearranging the Controls laid out by GridBagLayout](/windowsforms/layoutmanagers/gridbaglayout#rearranging-the-controls-laid-out-by-gridbaglayout)
{% endseealso %}



