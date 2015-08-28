---
layout: post
title: Through Code
description: through code
control: Layout Managers Package
documentation: ug
---
## Through Code

The following steps will help you to create a simple layout for button controls, via code. Here the programmatic creation of the BorderLayout is discussed. Similarly other layouts can also be created.

* Create a new Visual C# or VB.NET application in Visual Studio .NET.
* Add the Syncfusion.Shared.Base and Syncfusion.Tools.Windows assemblies to your application.
* Include the required namespace.




{% highlight c# %}
using Syncfusion.Windows.Forms.Tools;







Imports Syncfusion.Windows.Forms.Tools



* Create variables for the Child controls (Buttons) and Layout Manager (Border Layout).





private System.Windows.Forms.Button btn1;

private System.Windows.Forms.Button btn2;

private System.Windows.Forms.Button btn3;

private System.Windows.Forms.Button btn4;

private System.Windows.Forms.Button btn5;

private Syncfusion.Windows.Forms.Tools.BorderLayout brd;







Private btn1 As System.Windows.Forms.Button

Private btn2 As System.Windows.Forms.Button

Private btn3 As System.Windows.Forms.Button

Private btn4 As System.Windows.Forms.Button

Private btn5 As System.Windows.Forms.Button

Private brd As Syncfusion.Windows.Forms.Tools.BorderLayout



* Declare instances for the Child controls (Buttons).





btn1 = new Button();

btn2 = new Button();

btn3 = new Button();

btn4 = new Button();

btn5 = new Button();







btn1 = New Button()

btn2 = New Button()

btn3 = New Button()

btn4 = New Button()

btn5 = New Button()



* Add the Child controls (Buttons) to the form.





this.Controls.AddRange(new Button[] {btn1,btn2,btn3,btn4,btn5});







Me.Controls.AddRange(New Button() {btn1,btn2,btn3,btn4,btn5})



* Declare an instance for the Layout Manager (Border Layout).





brd = new Syncfusion.Windows.Forms.Tools.BorderLayout();







brd = New Syncfusion.Windows.Forms.Tools.BorderLayout()



* Set the Container control for the Layout Manager (Border Layout).





this.brd.ContainerControl = this;

// To set the container control for a panel.

// this.brd.ContainerControl = this.panel1;







Me.brd.ContainerControl = Me

// To set the container control for a panel.

// Me.brd.ContainerControl = Me.panel1;



* Set the margin between the client rectangle and the layout rectangle.





this.brd.BottomMargin = 20;

this.brd.HorzFarMargin = 20;

this.brd.HorzNearMargin = 20;

this.brd.TopMargin = 20;







Me.brd.BottomMargin = 20

Me.brd.HorzFarMargin = 20

Me.brd.HorzNearMargin = 20

Me.brd.TopMargin = 20



* Set the spacing between the layout border and the components.





this.brd.HGap = 20;

this.brd.VGap = 20;







Me.brd.HGap = 20

Me.brd.VGap = 20



* Set the text and border position for the Child controls (Buttons).





this.btn1.Text = "One";

this.btn2.Text = "Two";

this.btn3.Text = "Three";

this.btn4.Text = "Four";

this.btn5.Text = "Five";

this.brd.SetPosition(this.btn1,Syncfusion.Windows.Forms.Tools.BorderPosition.North);

this.brd.SetPosition(this.btn2,Syncfusion.Windows.Forms.Tools.BorderPosition.South);

this.brd.SetPosition(this.btn3,Syncfusion.Windows.Forms.Tools.BorderPosition.East);

this.brd.SetPosition(this.btn4,Syncfusion.Windows.Forms.Tools.BorderPosition.West);

this.brd.SetPosition(this.btn5,Syncfusion.Windows.Forms.Tools.BorderPosition.Center);







Me.btn1.Text = "One"

Me.btn2.Text = "Two"

Me.btn3.Text = "Three"

Me.btn4.Text = "Four"

Me.btn5.Text = "Five"

Me.brd.SetPosition(Me.btn1,Syncfusion.Windows.Forms.Tools.BorderPosition.North)

Me.brd.SetPosition(Me.btn2,Syncfusion.Windows.Forms.Tools.BorderPosition.South)

Me.brd.SetPosition(Me.btn3,Syncfusion.Windows.Forms.Tools.BorderPosition.East)

Me.brd.SetPosition(Me.btn4,Syncfusion.Windows.Forms.Tools.BorderPosition.West)

Me.brd.SetPosition(Me.btn5,Syncfusion.Windows.Forms.Tools.BorderPosition.Center)

{% endhighlight  %}

![](Overview_images/Overview_img7.jpeg) 



See Also

Through Designer, Concepts and Features