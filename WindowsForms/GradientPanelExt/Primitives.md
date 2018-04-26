---
layout: post
title: Primitives | WindowsForms | Syncfusion
description: primitives
platform: WindowsForms
control: EditorPackage 
documentation: ug
---
# Primitives

One of the most sophisticated features provided by the GradientPanelExt is its ability to include primitives in the borders. 

The primitives that can be included in the GradientPanelExt are,

* Collapse Primitive - Facilitates expand and collapse option for the GradientPanelExt, with image provisions.
* Image Primitive - Images can be placed along any of the panel borders with gradient background.
* Text Primitive - Text can be included in the GradientPanelExt's borders.
* Host Primitive - Any Windows Forms or custom .NET Control can be placed along the panel borders.

The primitives for the GradientPanelExt can be included using the GradientPanelExt PrimitiveCollection Editor, which can be opened using the primitives property.

![](GradientPanelExt_images/Overview_img377.jpeg)

The primitive type to be included should be chosen from the Types of Primitives available in the GradientPanelExt Collection Editor, and added to the control. The properties for the primitive can be set in the property grid available at the right side.

## Expand and Collapse Options

Including the Collapse primitive, provides option to expand and collapse the GradientPanelExt. Performing the following steps will add the Collapse Primitive at design time.

* Open the GradientPanelExt Collection Editor, and choose the Collapse primitive from the ComboBox available and add it. 
* Set the collapse and expand images in the CollapseImage and ExpandImage property respectively. 
* Specify the alignment and position of the primitive using its respective properties. 
* Close the GradientPanelExt Collection Editor. Build and run the application. 
* Now clicking on the Collapse primitive, collapses the control. The control collapses and expands on alternate clicks.

{% tabs %}
{% highlight c# %}

Syncfusion.Windows.Forms.Tools.CollapsePrimitive collapsePrimitive1;
gradientPanelExt1.Primitives.Add(collapsePrimitive1);
collapsePrimitive1.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Bottom;
collapsePrimitive1.BackColor = System.Drawing.Color.Transparent;
collapsePrimitive1.CollapseImage = ((System.Drawing.Image)(resources.GetObject("collapsePrimitive1.CollapseImage")));
collapsePrimitive1.ExpandImage = ((System.Drawing.Image)(resources.GetObject("collapsePrimitive1.ExpandImage")));
collapsePrimitive1.Position = 130;
collapsePrimitive1.Size = new System.Drawing.Size(40, 40);

Private collapsePrimitive1 As Syncfusion.Windows.Forms.Tools.CollapsePrimitive
gradientPanelExt1.Primitives.Add(collapsePrimitive1)
Private collapsePrimitive1.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Bottom
Private collapsePrimitive1.BackColor = System.Drawing.Color.Transparent
Private collapsePrimitive1.CollapseImage = (CType(resources.GetObject("collapsePrimitive1.CollapseImage"),                 System.Drawing.Image))
Private collapsePrimitive1.ExpandImage = (CType(resources.GetObject("collapsePrimitive1.ExpandImage"),                     System.Drawing.Image))
Private collapsePrimitive1.Position = 130
Private collapsePrimitive1.Size = New System.Drawing.Size(40, 40)

{% endhighlight  %}
{% endtabs %}

![](GradientPanelExt_images/Overview_img378.jpeg)

![](GradientPanelExt_images/Overview_img379.jpeg)

{% seealso %}

[Host Primitives](#host-primitives)

{% endseealso %}

## Image and Text Primitives

Images and text can be included as individual primitives for the GradientPanelExt. 

The image to be included, should be referenced in the Image property available for the primitive in the GradientPanelExt Collection Editor. 

The text for text primitive, can be specified using the Text property available for the primitive in the GradientPanelExt Collection Editor. The text font and color can also be defined for the text primitive, using the TextFont and TextColor properties, respectively.

{% tabs %}
{% highlight c# %}

// Defining Primitives and Adding them
private Syncfusion.Windows.Forms.Tools.ImagePrimitive imagePrimitive1;
private Syncfusion.Windows.Forms.Tools.ImagePrimitive imagePrimitive2;
private Syncfusion.Windows.Forms.Tools.ImagePrimitive imagePrimitive3;
private Syncfusion.Windows.Forms.Tools.ImagePrimitive imagePrimitive4;
private Syncfusion.Windows.Forms.Tools.TextPrimitive textPrimitive1;
private Syncfusion.Windows.Forms.Tools.TextPrimitive textPrimitive2;
this.gradientPanelExt1.Primitives.AddRange(new Syncfusion.Windows.Forms.Tools.Primitive[] {
    this.imagePrimitive1,
    this.imagePrimitive2,
    this.textPrimitive1,
    this.textPrimitive2,
    this.imagePrimitive3,
    this.imagePrimitive4});

// imagePrimitive1       
this.imagePrimitive1.Image = ((System.Drawing.Image)(resources.GetObject("imagePrimitive1.Image")));
this.imagePrimitive1.PrimitiveBorderStyle = Syncfusion.Windows.Forms.Tools.PrimitiveBorderStyle.None;
this.imagePrimitive1.Size = new System.Drawing.Size(20, 20);

// imagePrimitive2
this.imagePrimitive2.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Bottom;
this.imagePrimitive2.Image = ((System.Drawing.Image)(resources.GetObject("imagePrimitive2.Image")));
this.imagePrimitive2.Position = 2;
this.imagePrimitive2.PrimitiveBorderStyle = Syncfusion.Windows.Forms.Tools.PrimitiveBorderStyle.None;
this.imagePrimitive2.Size = new System.Drawing.Size(20, 20);

// textPrimitive1   
this.textPrimitive1.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Left;
this.textPrimitive1.Position = 21;
this.textPrimitive1.Size = new System.Drawing.Size(150, 20);
this.textPrimitive1.Text = "Text in Left Border";
this.textPrimitive1.TextColor = System.Drawing.Color.DarkOliveGreen;
this.textPrimitive1.TextFont = new System.Drawing.Font("Arial", 9.75F, ((System.Drawing.FontStyle)((System.Drawing.        FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));

// textPrimitive2
this.textPrimitive2.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Right;
this.textPrimitive2.Position = 24;
this.textPrimitive2.Size = new System.Drawing.Size(150, 20);
this.textPrimitive2.Text = "Text in Right Border";
this.textPrimitive2.TextColor = System.Drawing.Color.DarkGreen;
this.textPrimitive2.TextFont = new System.Drawing.Font("Arial", 9.75F, ((System.Drawing.FontStyle)((System.Drawing.        FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));

// imagePrimitive3
this.imagePrimitive3.Image = ((System.Drawing.Image)(resources.GetObject("imagePrimitive3.Image")));
this.imagePrimitive3.Position = 256;
this.imagePrimitive3.PrimitiveBorderStyle = Syncfusion.Windows.Forms.Tools.PrimitiveBorderStyle.None;
this.imagePrimitive3.Size = new System.Drawing.Size(20, 20);

// imagePrimitive4
this.imagePrimitive4.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Bottom;
this.imagePrimitive4.Image = ((System.Drawing.Image)(resources.GetObject("imagePrimitive4.Image")));
this.imagePrimitive4.Position = 256;
this.imagePrimitive4.PrimitiveBorderStyle = Syncfusion.Windows.Forms.Tools.PrimitiveBorderStyle.None;
this.imagePrimitive4.Size = new System.Drawing.Size(20, 20);

{% endhighlight  %}
{% highlight vb %}

' Defining Primitives and Adding them
Private imagePrimitive1 As Syncfusion.Windows.Forms.Tools.ImagePrimitive
Private imagePrimitive2 As Syncfusion.Windows.Forms.Tools.ImagePrimitive
Private imagePrimitive3 As Syncfusion.Windows.Forms.Tools.ImagePrimitive
Private imagePrimitive4 As Syncfusion.Windows.Forms.Tools.ImagePrimitive
Private textPrimitive1 As Syncfusion.Windows.Forms.Tools.TextPrimitive
Private textPrimitive2 As Syncfusion.Windows.Forms.Tools.TextPrimitive
Me.gradientPanelExt1.Primitives.AddRange(New Syncfusion.Windows.Forms.Tools.Primitive() {Me.imagePrimitive1, Me            .imagePrimitive2, Me.textPrimitive1, Me.textPrimitive2, Me.imagePrimitive3, Me.imagePrimitive4})

' imagePrimitive1       
Private Me.imagePrimitive1.Image = (CType(resources.GetObject("imagePrimitive1.Image"), System.Drawing.Image))
Private Me.imagePrimitive1.PrimitiveBorderStyle = Syncfusion.Windows.Forms.Tools.PrimitiveBorderStyle.None
Private Me.imagePrimitive1.Size = New System.Drawing.Size(20, 20)

' imagePrimitive2
Private Me.imagePrimitive2.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Bottom
Private Me.imagePrimitive2.Image = (CType(resources.GetObject("imagePrimitive2.Image"), System.Drawing.Image))
Private Me.imagePrimitive2.Position = 2
Private Me.imagePrimitive2.PrimitiveBorderStyle = Syncfusion.Windows.Forms.Tools.PrimitiveBorderStyle.None
Private Me.imagePrimitive2.Size = New System.Drawing.Size(20, 20)

' textPrimitive1   
Private Me.textPrimitive1.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Left
Private Me.textPrimitive1.Position = 21
Private Me.textPrimitive1.Size = New System.Drawing.Size(150, 20)
Private Me.textPrimitive1.Text = "Text in Left Border"
Private Me.textPrimitive1.TextColor = System.Drawing.Color.DarkOliveGreen
Private Me.textPrimitive1.TextFont = New System.Drawing.Font("Arial", 9.75F, (CType((System.Drawing. FontStyle.Bold      Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle)), System.Drawing.GraphicsUnit.Point, (CByte(0)))

' textPrimitive2
Private Me.textPrimitive2.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Right
Private Me.textPrimitive2.Position = 24
Private Me.textPrimitive2.Size = New System.Drawing.Size(150, 20)
Private Me.textPrimitive2.Text = "Text in Right Border"
Private Me.textPrimitive2.TextColor = System.Drawing.Color.DarkGreen
Private Me.textPrimitive2.TextFont = New System.Drawing.Font("Arial", 9.75F, (CType((System.Drawing. FontStyle.Bold        Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle)), System.Drawing.GraphicsUnit.Point, (CByte(0)))

' imagePrimitive3
Private Me.imagePrimitive3.Image = (CType(resources.GetObject("imagePrimitive3.Image"), System.Drawing.Image))
Private Me.imagePrimitive3.Position = 256
Private Me.imagePrimitive3.PrimitiveBorderStyle = Syncfusion.Windows.Forms.Tools.PrimitiveBorderStyle.None
Private Me.imagePrimitive3.Size = New System.Drawing.Size(20, 20)

' imagePrimitive4
Private Me.imagePrimitive4.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Bottom
Private Me.imagePrimitive4.Image = (CType(resources.GetObject("imagePrimitive4.Image"), System.Drawing.Image))
Private Me.imagePrimitive4.Position = 256
Private Me.imagePrimitive4.PrimitiveBorderStyle = Syncfusion.Windows.Forms.Tools.PrimitiveBorderStyle.None

{% endhighlight  %}
{% endtabs %}

![](GradientPanelExt_images/Overview_img380.jpeg)

{% seealso %} 

[Expand and Collapse Options](#expand-and-collapse-options)

{% endseealso %}

## Host Primitives

Any .NET Windows Forms control or custom control can be included as a primitive in the GradientPanelExt. The host control should be referred in the HostControl property of the GradientPanelExt Collection Editor. 

{% tabs %}
{% highlight c# %}

//button1
Button button1 = new Button();
button1.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
button1.Text = "Button";

//hostPrimitive1
HostPrimitive hostPrimitive1 = new HostPrimitive();
hostPrimitive1.BackColor = System.Drawing.Color.Transparent;
hostPrimitive1.HostControl = button1;
hostPrimitive1.Size = new System.Drawing.Size(60, 20);

//progressBarAdv1
ProgressBarAdv progressBarAdv1= new ProgressBarAdv();
progressBarAdv1.BackColor = System.Drawing.Color.Transparent;
progressBarAdv1.ProgressStyle = Syncfusion.Windows.Forms.Tools.ProgressBarStyles.Tube;
progressBarAdv1.TubeStartColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)   (((byte             )(192)))));

//hostPrimitive2
HostPrimitive hostPrimitive2 = new HostPrimitive();
hostPrimitive2.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Bottom;
hostPrimitive2.BackColor = System.Drawing.Color.Transparent;
hostPrimitive2.HostControl = progressBarAdv1;
hostPrimitive2.Position = 200;
hostPrimitive2.Size = new System.Drawing.Size(100, 20);

//Adding Primitives
gradientPanelExt.Primitives.AddRange(new Syncfusion.Windows.Forms.Tools.Primitive[] {
  hostPrimitive1,
  hostPrimitive2});

{% endhighlight  %}
{% highlight vb %}

'button1
Private button1 As Button = New Button()
Private button1.FlatStyle = System.Windows.Forms.FlatStyle.Popup
Private button1.Text = "Button"

'hostPrimitive1
Private hostPrimitive1 As HostPrimitive = New HostPrimitive()
Private hostPrimitive1.BackColor = System.Drawing.Color.Transparent
Private hostPrimitive1.HostControl = button1
Private hostPrimitive1.Size = New System.Drawing.Size(60, 20)

'progressBarAdv1
Private progressBarAdv1 As ProgressBarAdv = New ProgressBarAdv()
Private progressBarAdv1.BackColor = System.Drawing.Color.Transparent
Private progressBarAdv1.ProgressStyle = Syncfusion.Windows.Forms.Tools.ProgressBarStyles.Tube
Private progressBarAdv1.TubeStartColor = System.Drawing.Color.FromArgb((CInt((CByte(255)))), (CInt((CByte(192)))), (      CInt((CByte       (192)))))

'hostPrimitive2
Private hostPrimitive2 As HostPrimitive = New HostPrimitive()
Private hostPrimitive2.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Bottom
Private hostPrimitive2.BackColor = System.Drawing.Color.Transparent
Private hostPrimitive2.HostControl = progressBarAdv1
Private hostPrimitive2.Position = 200
Private hostPrimitive2.Size = New System.Drawing.Size(100, 20)

'Adding Primitives
gradientPanelExt.Primitives.AddRange(New Syncfusion.Windows.Forms.Tools.Primitive() {hostPrimitive1, hostPrimitive2})

{% endhighlight  %}
{% endtabs %}

![](GradientPanelExt_images/Overview_img381.jpeg)

{% seealso %}

[Expand and Collapse Options](#expand-and-collapse-options), [Image and Text Primitives](#image-and-text-primitives)

{% endseealso %}