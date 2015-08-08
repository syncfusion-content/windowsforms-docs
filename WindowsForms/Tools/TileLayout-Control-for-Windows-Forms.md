---
layout: post
title: TileLayout-Control-for-Windows-Forms
description: tilelayout control for windows forms
platform: WindowsForms
Tools
documentation: ug
---

# TileLayout Control for Windows Forms

Essential Tools for Windows Forms enables you to use the TileLayout control in an application. This feature has similar look as that of the Windows 8 Tiles.  

### Use Case Scenarios

This feature can be used in any kind of application that is used to showcase items.

### Properties

_Table_ _852_: Property Table

<table>
<tr>
<td>
Property</td><td>
Description</td><td>
Data Type</td></tr>
<tr>
<td>
SetParentFormFlat</td><td>
Sets parents form as flat.</td><td>
Bool</td></tr>
<tr>
<td>
ShowGroupTitle</td><td>
Specifies the group title show.</td><td>
Bool</td></tr>
<tr>
<td>
ShowItemPreview</td><td>
Shows item preview.</td><td>
Bool</td></tr>
</table>

## Adding TileLayout to an Application

### Through Designer 

To create TileLayout through designer:

1. Drag and drop a TileLayout object from the controls toolbox into your form.

   ![C:/Users/aruna/Desktop/Pic5.png](TileLayout-Control-for-Windows-Forms_images/TileLayout-Control-for-Windows-Forms_img1.png)



2. Add LayoutGroup to the control in the designer as shown below.

   ![C:/Users/aruna/Desktop/Pic3.png](TileLayout-Control-for-Windows-Forms_images/TileLayout-Control-for-Windows-Forms_img2.png)



   ![C:/Users/aruna/Desktop/PIC1.png](TileLayout-Control-for-Windows-Forms_images/TileLayout-Control-for-Windows-Forms_img3.png)



3. Add ImageStreamer to the control in the designer as shown below.

   ![C:/Users/aruna/Desktop/Pic6.png](TileLayout-Control-for-Windows-Forms_images/TileLayout-Control-for-Windows-Forms_img4.png)



4. Change ImageStreamer’s back color.

   ![C:/Users/aruna/Desktop/Pic7.png](TileLayout-Control-for-Windows-Forms_images/TileLayout-Control-for-Windows-Forms_img5.png)



   ![C:/Users/diana/Desktop/AddImagesInImageStreamer.jpg](TileLayout-Control-for-Windows-Forms_images/TileLayout-Control-for-Windows-Forms_img6.jpeg)



### Through Code

 To create TileLayout programmatically: 

1. Add the Syncfusion assembly Tools.Windows to your application. 
2. Add the namespace Syncfusion.Windows.Forms.Tools.

   ~~~ cs

		using Syncfusion.Windows.Forms.Tools;

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Imports Syncfusion.Windows.Forms.Tools

   ~~~
   {:.prettyprint }

3.  Declare the TileLayout,LayoutGroup and ImageStreamer.

    ~~~ cs

		private Syncfusion.Windows.Forms.Tools.TileLayout tileLayout1;

		private Syncfusion.Windows.Forms.Tools.LayoutGroup layoutGroup1;

		private Syncfusion.Windows.Forms.Tools.ImageStreamer imageStreamer1;

    ~~~
    {:.prettyprint }

    ~~~ vbnet

		private tileLayout1 As Syncfusion.Windows.Forms.Tools.TileLayout

		private layoutGroup1 As Syncfusion.Windows.Forms.Tools.LayoutGroup

		private imageStreamer1 As Syncfusion.Windows.Forms.Tools.ImageStreamer

    ~~~
    {:.prettyprint }

The following code creates a TileLayout and LayoutGroup.

{% highlight c# %}

 private void Form1_Load(object sender, System.EventArgs e)

{

    //Initialize the TileLayout and LayoutGroup. 

          this.tileLayout1 = new Syncfusion.Windows.Forms.Tools.TileLayout();

            this.layoutGroup1 = new Syncfusion.Windows.Forms.Tools.LayoutGroup();

            this.imageStreamer1 = new Syncfusion.Windows.Forms.Tools.ImageStreamer();



            // 

            // TileLayout1

            // 

            this.tileLayout1.Controls.Add(this.layoutGroup1);

            this.tileLayout1.Location = new System.Drawing.Point(0, 0);

            this.tileLayout1.Name = "tileLayout1";

            this.tileLayout1.SetParentFormFlat = false;

            this.tileLayout1.ShowGroupTitle = false;

            this.tileLayout1.ShowItemPreview = false;

            this.tileLayout1.Size = new System.Drawing.Size(545, 394);

            // 

            // LayoutGroup1

            // 

            this.layoutGroup1.BackColor = System.Drawing.Color.Black;

            this.layoutGroup1.Controls.Add(this.imageStreamer1);

            new Syncfusion.Windows.Forms.Tools.ImageStremerCollection().AddRange(new Syncfusion.Windows.Forms.Tools.ImageStreamer[] {

            this.imageStreamer1});

            this.layoutGroup1.Location = new System.Drawing.Point(100, 125);

            this.layoutGroup1.Name = "layoutGroup1";

            this.layoutGroup1.SetItem = true;

            // 

            // ImageStreamer1

            // 

            this.imageStreamer1.Images = ((System.Collections.Generic.List<System.Drawing.Image>)(resources.GetObject("imageStreamer1.Images")));

            this.imageStreamer1.InternalBackColor = System.Drawing.Color.Green;

            this.imageStreamer1.Location = new System.Drawing.Point(5, 0);

            this.imageStreamer1.Name = "imageStreamer1";

            this.imageStreamer1.Size = new System.Drawing.Size(120, 120);

            this.imageStreamer1.TabIndex = 0;

            this.imageStreamer1.Text = "imageStreamer1";

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load

'Initialize the tabControlAdv and tabPageAdv.

Me.tileLayout1 = New Syncfusion.Windows.Forms.Tools.TileLayout()

Me.layoutGroup1 = New Syncfusion.Windows.Forms.Tools.LayoutGroup()

Me.imageStreamer1 = New Syncfusion.Windows.Forms.Tools.ImageStreamer()

' 

' TileLayout1

' 

Me.tileLayout1.Controls.Add(Me.layoutGroup1)

Me.tileLayout1.Dock = System.Windows.Forms.DockStyle.Fill

Me.tileLayout1.Location = New System.Drawing.Point(0, 0)

Me.tileLayout1.Name = "tileLayout1"

Me.tileLayout1.SetParentFormFlat = False

Me.tileLayout1.ShowGroupTitle = False

Me.tileLayout1.ShowItemPreview = False

' 

' LayoutGroup1

' 

Me.layoutGroup1.Controls.Add(Me.imageStreamer1)

Me.layoutGroup1.Location = New System.Drawing.Point(100, 125)

Me.layoutGroup1.Name = "layoutGroup1"

Me.layoutGroup1.SetItem = True

Me.layoutGroup1.Size = New System.Drawing.Size(140, 244)

Me.layoutGroup1.TabIndex = 0

' 

' ImageStreamer1

' 

Me.imageStreamer1.Location = New System.Drawing.Point(5, 0)

Me.imageStreamer1.Name = "imageStreamer1"

Me.imageStreamer1.Size = New System.Drawing.Size(120, 120)

Me.imageStreamer1.TabIndex = 0

Me.imageStreamer1.Text = "imageStreamer1"

End Sub

{% endhighlight %}

 Properties

_Table_ _853_: Property Table

<table>
<tr>
<td>
Property</td><td>
Description</td><td>
Data Type</td></tr>
<tr>
<td>
SliderSpeed</td><td>
Specifies the speed of ImageStreamer slider.</td><td>
int</td></tr>
<tr>
<td>
SlideShow</td><td>
Shows the slide.</td><td>
Bool</td></tr>
<tr>
<td>
ShowNavigator</td><td>
Shows the navigator in the slides.</td><td>
Bool</td></tr>
</table>


