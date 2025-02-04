---
layout: post
title: Customization in Windows Forms TabControl control | Syncfusion®
description: Learn about Customization support in Syncfusion® Windows Forms TabControl (TabControlAdv) control and more details.
platform: windowsforms
control: TabControlAdv
documentation: ug
---

# Customization in Windows Forms TabControl (TabControlAdv)

The look and feel of the [TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html) can be customized through various properties of the control. These properties are discussed in below topics.

## Renaming TabItems

TabControlAdv comes with the renaming functionality similar to Microsoft Excel. Users can edit TabControlAdv's text at run-time using the [LabelEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_LabelEdit) property which has to be set to `true`.

To bring the text of the TabItem to the edit mode, the following can be done.

1. Select the text of the TabItem to be edited and right-click on the tab to bring the text to edit mode. The text can now be edited and it can be saved by pressing the Enter key.
2. Also, double-clicking on a tab makes the text change to edit mode.

   ![Renaming tab item](TabControlAdv_images/TabControlAdv_img1.png)



   After editing the text, to come out of the edit mode, press the Enter key or click the Left Mouse button.

3. Programmatically the [LabelEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_LabelEdit) property can be set as follows.

{% tabs %}

{% highlight C# %}


// Renaming TabControlAdv’s Text.

this.tabControlAdv.LabelEdit = true;

{% endhighlight %}

{% highlight VB %}

' Renaming TabControlAdv’s Text.

Me.tabControlAdv.LabelEdit = True

{% endhighlight %}

{% endtabs %}


## Moving TabItems

The order of the tabs within the [TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html) can be changed at design-time and also at run-time by simply dragging and dropping the tabs in the required places. This can be enabled using the [UserMoveTabs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_UserMoveTabs) property.

{% tabs %}

{% highlight C# %}

this.tabControlAdv1.UserMoveTabs = true;

{% endhighlight %}

{% highlight VB %}

Me.tabControlAdv1.UserMoveTabs = True

{% endhighlight %}

{% endtabs %}

## Padding

Using the [Padding](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_Padding) property, the space around the text/image of the TabItems can be changed by setting the X-axis and Y-axis values.

Code snippets to set the padding

{% tabs %}

{% highlight C# %}

// Setting the Padding for TabControlAdv through Coding. 

this.tabControlAdv1.Padding = new Point(12, 12); 

{% endhighlight %}

{% highlight VB %}


'Setting the Padding for TabControlAdv through Coding. 

Me.tabControlAdv1.Padding = New Point(12, 12)

{% endhighlight %}

{% endtabs %}

![Padding support](TabControlAdv_images/TabControlAdv_img3.jpeg)

## UseMnemonic

This [UseMnemonic](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_UseMnemonic) property specifies whether the [TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html) interprets the Ampersand character (&) as an Access key prefix character or not. The default value is set to `false`.

## TabPages

### Border settings

The [BorderStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_BorderStyle) property of [TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html) can be used to set the border styles for the [TabPages](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_TabPages).

The three types of border styles are given below.

* FixedSingle
* Fixed 3D
* None

![Tab border style](TabControlAdv_images/TabControlAdv_img6.jpeg)

#### FixedSingleBorderColor

The [FixedSingleBorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_FixedSingleBorderColor) property is used to set the border color of the TabPage in the TabControlAdv when the BorderStyle is set to FixedSingle.

![Border color customization](TabControlAdv_images/TabControlAdv_img7.jpeg)

N> The [TabControlAdv.ResetFixedSingleBorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_ResetFixedSingleBorderColor) method resets the border color of the TabPage to the default value.

 
### Image settings

TabControlAdv now supports animation on [TabPages](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_TabPages). Animated image in GIF can be inserted in a TabPage. The format supports up to 8 bits per pixel with a palette of up to 256 distinct colors chosen from the 24-bit RGB color space. Both 3D and 2D formats are supported.

Users can insert graphics or logos with solid areas of color, small animations, low-resolution film clips etc. to make the TabPage more interactive and lively. The size of the image can also be adjusted.

There are two major properties which come into picture:

* [Image](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabPageAdv.html#Syncfusion_Windows_Forms_Tools_TabPageAdv_ImageSize)
* [ImageSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabPageAdv.html#Syncfusion_Windows_Forms_Tools_TabPageAdv_ImageSize)

![Image support](TabControlAdv_images/TabControlAdv_img8.jpeg)


#### Inserting GIF image

The code should be in the following format:

{% tabs %}

{% highlight C# %}

this.tabPageAdv.Image = Image.FromFile(imagePath);

this.tabPageAdv.ImageSize = new System.Drawing.Size(height,width);

{% endhighlight %}

{% endtabs %}

The following code illustrates insertion of the required GIF image.

{% tabs %}

{% highlight C# %}

this.tabPageAdv.Image = Image.FromFile(“sample.gif”);

this.tabPageAdv.ImageSize = new System.Drawing.Size(16,16);

{% endhighlight %}

{% endtabs %}

N> Only when the ImageIndex property is -1, image from the Image property will be displayed or else image from ImageList will be displayed.


### Prevent moving a specific tab in TabControlAdv 

Now, the [TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html) allows to prevent a specific tab from being moved on [TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html). This is achieved by using the property named [TabMoving](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html).

{% tabs %}

{% highlight C# %}

//Prevents moving the tab.

this this.tabControlAdv1.TabMoving += new Syncfusion.Windows.Forms.Tools.TabMovingEventHandler(tabControlAdv1_TabMoving);

void tabControlAdv1_TabMoving(object sender, Syncfusion.Windows.Forms.Tools.TabMovingEventArgs e)
        {

            if(e.From == 1 || e.Target == 1)

            {

                e.Cancel = true;

            }

        }     

{% endhighlight %}

{% highlight VB %}

‘Prevents moving the tab.

Private Me.tabControlAdv1.TabMoving += New Syncfusion.Windows.Forms.Tools.TabMovingEventHandler(AddressOf tabControlAdv1_TabMoving)



Private Sub tabControlAdv1_TabMoving(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.TabMovingEventArgs)

If e.From = 1 OrElse e.Target = 1 Then

e.Cancel = True

End If

End Sub

{% endhighlight %}

{% endtabs %}
