---
layout: post
title: Mouse-Events-for-Caption-Image
description: Mouse Events for Caption Image
platform: Windows Forms
control: Tools 
documentation: ug
---

# Mouse Events for Caption Image

## MouseDown and MouseUp Event

The MouseDown event is raised when the mouse pointer is over the caption image and a mouse button is pressed. The MouseUp event is raised when the mouse pointer is over the caption image and a mouse button is released. An example that uses the MouseDown and MouseUp events can be found later in this section.

## MouseEnter, MouseLeave, and MouseMove Event

The MouseEnter event is raised when the mouse pointer enters the caption image. The MouseLeave event is raised when the mouse pointer leaves the caption image. The MouseMove event is raised when the mouse pointer moves within the caption image. An example that uses the MouseEnter, MouseLeave, and MouseMove events can be found later in this section.

## Event Data

The MouseEventHandler receives an argument of type MouseEventArgs that contains data related to this event. The following MouseEventArgs members provide information specific to this event.

_Table 682: Members Table_

<table>
<tr>
<th>
Members
</th>
<th>
Description
</th>
</tr>
<tr>
<td>Button</td>
<td>Gets which mouse button was pressed.</td>
</tr>
<tr>
<td>Clicks</td>
<td>Gets the number of times the mouse button was pressed and released.</td>
</tr>
<tr>
<td>Delta</td>
<td>Gets a signed count of the number of detents the mouse wheel has rotated. A detent is one notch of the mouse wheel.
</td>
</tr>
<tr>
<td>Location</td>
<td>Gets the location of the mouse when generating mouse events.</td>
</tr>
<tr>
<td>X</td>
<td>Gets the x-coordinate of the mouse when generating mouse events.</td>
</tr>
<tr>
<td>Y</td>
<td>Gets the y-coordinate of the mouse when generating mouse events.</td>
</tr>
<tr>
<td>Size</td>
<td>Gets or sets the size for caption image.</td>
</tr>
<tr>
<td>Back Color</td>
<td>Gets or sets the background color for the caption image.</td>
</tr>
<tr>
<td>Image</td>
<td>Getsor sets the image for the caption image.</td>
</tr>
</table>

{% highlight C# %}
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

      Console.WriteLine(“Mouse up event has been raised”);

   }

   void image_ImageMouseDown(object sender, ImageMouseDownEventArgs e)

   {

      Console.WriteLine(“Mouse down event has been raised”);

   }

  void image_ImageMouseMove(object sender, ImageMouseMoveEventArgs e)

   {

      Console.WriteLine(“Mouse move event has been raised”);

   }

  void image_ImageMouseEnter(object sender, ImageMouseEnterEventArgs e)

   {

      Console.WriteLine(“Mouse enter event has been raised”);

   }

  void image_ImageMouseLeave(object sender, ImageMouseLeaveEventArgs e)

   {

      Console.WriteLine(“Mouse leave event has been raised”);

   }

 {% endhighlight %}
 
 {% highlight vbnet %}
 For Each image As CaptionImage In Me.CaptionImages
    image.ImageMouseUp = (image.ImageMouseUp + New CaptionImage.MouseUp(image_ImageMouseUp))
    image.ImageMouseDown = (image.ImageMouseDown + New CaptionImage.MouseDown(image_ImageMouseDown))
    image.ImageMouseMove = (image.ImageMouseMove + New CaptionImage.MouseMove(image_ImageMouseMove))
    image.ImageMouseEnter = (image.ImageMouseEnter + New CaptionImage.MouseEnter(image_ImageMouseEnter))
    image.ImageMouseLeave = (image.ImageMouseLeave + New CaptionImage.MouseLeave(image_ImageMouseLeave))
Next

    
    Private Sub image_ImageMouseUp(ByVal sender As Object, ByVal e As ImageMouseUpEventArgs)
        Console.WriteLine(Mouse, up, event, has, been, raised)
    End Sub
    
    Private Sub image_ImageMouseDown(ByVal sender As Object, ByVal e As ImageMouseDownEventArgs)
        Console.WriteLine(Mouse, down, event, has, been, raised)
    End Sub
    
    Private Sub image_ImageMouseMove(ByVal sender As Object, ByVal e As ImageMouseMoveEventArgs)
        Console.WriteLine(Mouse, move, event, has, been, raised)
    End Sub
    
    Private Sub image_ImageMouseEnter(ByVal sender As Object, ByVal e As ImageMouseEnterEventArgs)
        Console.WriteLine(Mouse, enter, event, has, been, raised)
    End Sub
    
    Private Sub image_ImageMouseLeave(ByVal sender As Object, ByVal e As ImageMouseLeaveEventArgs)
        Console.WriteLine(Mouse, leave, event, has, been, raised)
    End Sub
{% endhighlight %}