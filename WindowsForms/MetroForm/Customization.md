---
layout: post
title: Customization | WindowsForms | Syncfusion
description: customization
platform: WindowsForms
control: MetroForm
documentation: ug
---


# Customization

## Caption Label

Caption label can be added to the MetroForm through designer or code.

### Thorugh Designer

1) Labels can be added to the CaptionBar using `CaptionLabels` collection property.

![](Customization_images/customization_img2.png)

2) Add Labels through collection editor window

![](Customization_images/customization_img3.png)

![](Customization_images/CaptionLabel.png)

### Through Code

The following code sample shows how to add an Label to the MetroForm.

{% tabs %}

{% highlight c# %}

Syncfusion.Windows.Forms.CaptionLabel captionLabel1 = new Syncfusion.Windows.Forms.CaptionLabel();

captionLabel1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

captionLabel1.ForeColor = System.Drawing.Color.White;

captionLabel1.Name = "CaptionLabel1";

captionLabel1.Size = new System.Drawing.Size(400, 24);

captionLabel1.Text = "This is MetroForm";

this.CaptionLabels.Add(captionLabel1);

{% endhighlight %}

{% highlight VB %}

Dim captionLabel1 As Syncfusion.Windows.Forms.CaptionLabel = New Syncfusion.Windows.Forms.CaptionLabel

captionLabel1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)))

captionLabel1.ForeColor = System.Drawing.Color.White

captionLabel1.Name = "CaptionLabel1"

captionLabel1.Size = new System.Drawing.Size(400, 24)

captionLabel1.Text = "This is MetroForm"

Me.CaptionLabels.Add(captionLabel1)

{% endhighlight %}

{% endtabs %}

## Caption Images

Caption images can be added to the MetroForm through designer or code. 

### Through Designer 

1) Images can be added to the CaptionBar using CaptionImages collection property.

![](Customization_images/Caption-Image-Customization_img1.jpeg)


2) Add images through collection editor window

![](Customization_images/Caption-Image-Customization_img2.jpeg)


3) Image can be added to the CaptionImage using Image property in Collection Editor

![](Customization_images/Caption-Image-Customization_img3.jpeg)


### Through Code

The following code sample shows how to add an image to the caption bar of the Metro form.

{% tabs %}

{% highlight c# %}

Syncfusion.Windows.Forms.CaptionImage captionImage1 = new Syncfusion.Windows.Forms.CaptionImage();

captionImage1.BackColor = System.Drawing.Color.Transparent;

captionImage1.Image = global::MetroStyleControls_2008.Properties.Resources.RBNormal;

captionImage1.Location = new System.Drawing.Point(30, 5);

captionImage1.Name = "CaptionImage1";

captionImage1.Size = new System.Drawing.Size(50, 50);

this.CaptionImages.Add(captionImage1);

{% endhighlight %}

{% highlight VB %}

Dim captionImage1 As Syncfusion.Windows.Forms.CaptionImage = New Syncfusion.Windows.Forms.CaptionImage

captionImage1.BackColor = System.Drawing.Color.Transparent

captionImage1.Image = MetroStyleControls_2008.Properties.Resources.RBNormal

captionImage1.Location = New System.Drawing.Point(30, 5)

captionImage1.Name = "CaptionImage1"

captionImage1.Size = New System.Drawing.Size(50, 50)

Me.CaptionImages.Add(captionImage1)

{% endhighlight %}

{% endtabs %}

![](Customization_images/Place-an-Image-in-the-Caption-Bar_img1.png)


## Caption Fore Color

Caption fore color can be customized using `CaptionForeColor` property.

{% tabs %}

{% highlight C# %}

 this.CaptionForeColor = System.Drawing.Color.Black;

{% endhighlight %}


{% highlight VB %}

 Me.CaptionForeColor = System.Drawing.Color.Black
 
{% endhighlight %}

{% endtabs %}

![](Customization_images/Caption-Bar-Customization_img3.jpeg)


## Caption Font

Font of the caption can be customized using `CaptionFont` property.

{% tabs %}

{% highlight C# %}

this.CaptionFont = new System.Drawing.Font("Calisto MT", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

{% endhighlight %}


{% highlight VB %}

Me.CaptionFont = new System.Drawing.Font("Calisto MT", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)))
 
{% endhighlight %}

{% endtabs %}

![](Customization_images/Caption-Bar-Customization_img4.jpeg)


## Caption Button Color

Caption button color can be customized using `CaptionButtonColor` property.

{% tabs %}

{% highlight C# %}

this.CaptionButtonColor = System.Drawing.Color.Red;

{% endhighlight %}


{% highlight VB %}

Me.CaptionButtonColor = System.Drawing.Color.Red
 
{% endhighlight %}

{% endtabs %}

![](Customization_images/Caption-Bar-Customization_img5.jpeg)


## Caption Button Hover Color

Caption button hover color can be customized using `CaptionButtonHoverColor` property.

{% tabs %}

{% highlight C# %}

this.CaptionButtonHoverColor = System.Drawing.Color.Lime;

{% endhighlight %}


{% highlight VB %}

Me.CaptionButtonHoverColor = System.Drawing.Color.Lime
 
{% endhighlight %}

{% endtabs %}

![](Customization_images/Caption-Bar-Customization_img6.png)


## Mouse Events for Caption Image

### ImageMouseDown Event

The ImageMouseDown event is raised when the mouse pointer is over the caption image and a mouse button is pressed. 

### ImageMouseUp Event

The ImageMouseUp event is raised when the mouse pointer is over the caption image and a mouse button is released. 

### ImageMouseEnter Event

The ImageMouseEnter event is raised when the mouse pointer enters the caption image.  

### ImageMouseLeave Event

The ImageMouseLeave event is raised when the mouse pointer leaves the caption image. 

### ImageMouseMove Event

The ImageMouseMove event is raised when the mouse pointer moves within the caption image.

#### Event Data

The MouseEventHandler receives an argument of type MouseEventArgs that contains data related to this event. The following MouseEventArgs members provide information specific to this event.


<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Button</td><td>
Gets which mouse button was pressed.</td></tr>
<tr>
<td>
Clicks</td><td>
Gets the number of times the mouse button was pressed and released.</td></tr>
<tr>
<td>
Delta</td><td>
Gets a signed count of the number of detentes the mouse wheel has rotated. A detentes is one notch of the mouse wheel.</td></tr>
<tr>
<td>
Location</td><td>
Gets the location of the mouse when generating mouse events.</td></tr>
<tr>
<td>
X</td><td>
Gets the x-coordinate of the mouse when generating mouse events.</td></tr>
<tr>
<td>
Y</td><td>
Gets the y-coordinate of the mouse when generating mouse events.</td></tr>
<tr>
<td>
Size</td><td>
Gets or sets the size for caption image.</td></tr>
<tr>
<td>
Back Color</td><td>
Gets or sets the background color for the caption image.</td></tr>
<tr>
<td>
Image</td><td>
Gets or sets the image for the caption image.</td></tr>
</table>

{% highlight c# %}

foreach (CaptionImage image in this.CaptionImages)
{

     image.ImageMouseUp += new CaptionImage.MouseUp(image_ImageMouseUp);

	 image.ImageMouseDown += new CaptionImage.MouseDown(image_ImageMouseDown);

	 image.ImageMouseMove+= new CaptionImage.MouseMove(image_ImageMouseMove);

	 image.ImageMouseEnter += new CaptionImage.MouseEnter(image_ImageMouseEnter);

	 image.ImageMouseLeave += new CaptionImage.MouseLeave(image_ImageMouseLeave);

}



void image_ImageMouseUp(object sender, ImageMouseUpEventArgs e)
{
   Console.WriteLine("Mouse up event has been raised");
}

void image_ImageMouseDown(object sender, ImageMouseDownEventArgs e)
{
   Console.WriteLine("Mouse down event has been raised");
}

void image_ImageMouseMove(object sender, ImageMouseMoveEventArgs e)
{
   Console.WriteLine("Mouse move event has been raised");
}

void image_ImageMouseEnter(object sender, ImageMouseEnterEventArgs e)
{
   Console.WriteLine("Mouse enter event has been raised");
}

void image_ImageMouseLeave(object sender, ImageMouseLeaveEventArgs e)
{
   Console.WriteLine("Mouse leave event has been raised");
}

{% endhighlight %}

{% highlight VB %}

For Each image As CaptionImage In Me.CaptionImages

    image.ImageMouseUp = (image.ImageMouseUp + New CaptionImage.MouseUp(image_ImageMouseUp))

    image.ImageMouseDown = (image.ImageMouseDown + New CaptionImage.MouseDown(image_ImageMouseDown))

    image.ImageMouseMove = (image.ImageMouseMove + New CaptionImage.MouseMove(image_ImageMouseMove))

    image.ImageMouseEnter = (image.ImageMouseEnter + New CaptionImage.MouseEnter(image_ImageMouseEnter))

    image.ImageMouseLeave = (image.ImageMouseLeave + New CaptionImage.MouseLeave(image_ImageMouseLeave))

Next

Private Sub image_ImageMouseUp(ByVal sender As Object, ByVal e As ImageMouseUpEventArgs)
    Console.WriteLine("Mouse up event has been raised")
End Sub

Private Sub image_ImageMouseDown(ByVal sender As Object, ByVal e As ImageMouseDownEventArgs)
    Console.WriteLine("Mouse down event has been raised")
End Sub

Private Sub image_ImageMouseMove(ByVal sender As Object, ByVal e As ImageMouseMoveEventArgs)
    Console.WriteLine("Mouse move event has been raised")
End Sub

Private Sub image_ImageMouseEnter(ByVal sender As Object, ByVal e As ImageMouseEnterEventArgs)
    Console.WriteLine("Mouse enter event has been raised")
End Sub

Private Sub image_ImageMouseLeave(ByVal sender As Object, ByVal e As ImageMouseLeaveEventArgs)
    Console.WriteLine("Mouse leave event has been raised")
End Sub

{% endhighlight %}

