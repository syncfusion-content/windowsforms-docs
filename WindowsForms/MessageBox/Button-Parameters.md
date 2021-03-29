---
layout: post
title: Button-Parameters | WindowsForms | Syncfusion
description: This section describes the various features implemented in Windows Forms MessageBoxAdv
platform: WindowsForms
control: MessageBoxAdv
documentation: ug
---

# Button Parameters in Windows Forms MessageBox (MessageBoxAdv)

[Show](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html#Syncfusion_Windows_Forms_MessageBoxAdv_Show_System_String_) function helps to display a MessageBoxAdv. This section explains regarding the parameters available in [Show](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html#Syncfusion_Windows_Forms_MessageBoxAdv_Show_System_String_) function.


## Caption bar text

The text to display in the caption bar of the MessageBoxAdv.

## Text

Represents the text which need to be displayed in the MessageBoxAdv.

## Buttons 

Provides various button combination like Ok, OkCancel, YesNo, YesNoCancel, RetryCancel and much more. By default, it shows only Ok button. [MessageBoxButtons](https://msdn.microsoft.com/en-us/library/system.windows.forms.messageboxbuttons(v=vs.110).aspx) enumeration helps to set various button combination in MessageBoxAdv. Some of the available default buttons are as follows:

* Ok
* OkCancel
* YesNo
* YesNoCancel
* RetryCancel
* AbortRetryIgnore

### Ok

This option helps to show the MessageBoxAdv with Ok button.

{% tabs %}

{% highlight C# %}

//MessageBox with Ok Button

MessageBoxAdv.Show(this, "Save changes?", "File Modified", MessageBoxButtons.OK, MessageBoxIcon.Question);

{% endhighlight %}

{% highlight VB %}

'MessageBox with Ok Button

MessageBoxAdv.Show(Me, "Save changes?", "File Modified", MessageBoxButtons.OK, MessageBoxIcon.Question)

{% endhighlight %}

{% endtabs %}

![Ok](MessageBoxAdv_images/MessageBoxAdv_img20.jpg) 
 
### OkCancel

This option helps to show the MessageBoxAdv with combination of Ok and Cancel buttons.

{% tabs %}

{% highlight C# %}

//MessageBox with combination of Ok and Cancel buttons.

MessageBoxAdv.Show(this, "Save changes?", "File Modified", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);

{% endhighlight %}

{% highlight VB %}

'MessageBox with combination of Ok and Cancel buttons.

MessageBoxAdv.Show(Me, "Save changes?", "File Modified", MessageBoxButtons.OKCancel, MessageBoxIcon.Question)

{% endhighlight %}

{% endtabs %}
 
 ![Ok cancel](MessageBoxAdv_images/MessageBoxAdv_img21.jpg) 

### YesNo

This option helps to show the MessageBoxAdv with combination of Yes and No buttons.

{% tabs %}

{% highlight C# %}

//MessageBox with combination of Yes and No buttons.

MessageBoxAdv.Show(this, "Save changes?", "File Modified", MessageBoxButtons.YesNo, MessageBoxIcon.Question);

{% endhighlight %}

{% highlight VB %}

'MessageBox with combination of Yes And No buttons.

MessageBoxAdv.Show(Me, "Save changes?", "File Modified", MessageBoxButtons.YesNo, MessageBoxIcon.Question)

{% endhighlight %}

{% endtabs %} 

![Yes no](MessageBoxAdv_images/MessageBoxAdv_img22.jpg) 

### YesNoCancel

This option helps to show the MessageBoxAdv with combination of Yes, No, and Cancel buttons.

{% tabs %}

{% highlight C# %}

//MessageBox with combination of Yes,No and Cancel buttons.

MessageBoxAdv.Show(this, "Save changes?", "File Modified", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question);

{% endhighlight %}

{% highlight VB %}

'MessageBox with combination of Yes,No And Cancel buttons.

MessageBoxAdv.Show(Me, "Save changes?", "File Modified", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question)

{% endhighlight %}

{% endtabs %}

![Yes no cancel](MessageBoxAdv_images/MessageBoxAdv_img23.jpg) 
 
### RetryCancel

This option helps to show the MessageBoxAdv with combination of Retry and Cancel buttons.

{% tabs %}

{% highlight C# %}

//MessageBox with combination of Retry and Cancel buttons.

MessageBoxAdv.Show(this, "Save changes?", "File Modified", MessageBoxButtons.RetryCancel, MessageBoxIcon.Question);

{% endhighlight %}

{% highlight VB %}

'MessageBox with combination of Retry And Cancel buttons.

MessageBoxAdv.Show(Me, "Save changes?", "File Modified", MessageBoxButtons.RetryCancel, MessageBoxIcon.Question)

{% endhighlight %}

{% endtabs %}

![Retry cancel](MessageBoxAdv_images/MessageBoxAdv_img24.jpg) 

### AbortRetryIgnore

This option helps to show the MessageBoxAdv with combination of Abort, Retry, and Ignore buttons.

{% tabs %}

{% highlight C# %}

//MessageBox with combination of Abort,Retry and Ignore buttons.

MessageBoxAdv.Show(this, "Save changes?", "File Modified", MessageBoxButtons.AbortRetryIgnore, MessageBoxIcon.Question);

{% endhighlight %}

{% highlight VB %}

'MessageBox with combination of Abort,Retry And Ignore buttons.

MessageBoxAdv.Show(Me, "Save changes?", "File Modified", MessageBoxButtons.AbortRetryIgnore, MessageBoxIcon.Question)

{% endhighlight %}

{% endtabs %}

![Abort retry ignore](MessageBoxAdv_images/MessageBoxAdv_img25.jpg) 

## Icon 

Supports to display wide variety of built-in icons and also empowered with loading custom icons. The default icons can be displayed in MessageBoxAdv by using [MessageBoxIcon](https://msdn.microsoft.com/en-us/library/system.windows.forms.messageboxicon(v=vs.110).aspx) Enum and it is listed as follows:

* Asterisk
* Error
* Exclamation
* Hand
* Information
* None
* Question
* Stop
* Warning

The following code example illustrates adding `Exclamation` icon in MessageBoxAdv.

{% tabs %}

{% highlight C# %}

//Icon Support

MessageBoxAdv.Show(this, "Save changes?", "Warning", MessageBoxButtons.OKCancel, MessageBoxIcon.Exclamation);

{% endhighlight %}

{% highlight VB %}

'Icon Support

MessageBoxAdv.Show(Me, "Save changes?", "Warning", MessageBoxButtons.OKCancel, MessageBoxIcon.Exclamation)

{% endhighlight %}

{% endtabs %}

![Icon support](MessageBoxAdv_images/MessageBoxAdv_img33.png)

The following code example illustrates adding custom icons in MessageBoxAdv.

{% tabs %}

{% highlight C# %}

//Icon Support

MessageBoxAdv.Show(this, "Save changes?", "Warning", MessageBoxButtons.OKCancel, image, new Size(50,50));

{% endhighlight %}

{% highlight VB %}

'Icon Support

MessageBoxAdv.Show(Me, "Save changes?", "Warning", MessageBoxButtons.OKCancel, image, New Size(50,50))

{% endhighlight %}

{% endtabs %}

![Icon support](MessageBoxAdv_images/MessageBoxAdv_img26.jpg)

## Right to left support

MessageBoxAdv elements can be aligned in right-to-left layout. It is laid out from the right to left when [RightToLeft](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html#Syncfusion_Windows_Forms_MessageBoxAdv_RightToLeft) property is set to true. Its default value is false.

{% tabs %}

{% highlight C# %}

MessageBoxAdv.RightToLeft = RightToLeft.Yes;

MessageBoxAdv.Show(this,"Save changes?", "File Modified", MessageBoxButtons.YesNo,MessageBoxIcon.Question);

{% endhighlight %}

{% highlight VB %}

MessageBoxAdv.RightToLeft = RightToLeft.Yes

MessageBoxAdv.Show(Me,"Save changes?", "File Modified", MessageBoxButtons.YesNo,MessageBoxIcon.Question)

{% endhighlight %}

{% endtabs %}

![Right to left support](MessageBoxAdv_images/MessageBoxAdv_img28.jpg)  

## Details view

This pane helps to view the detail message about the text shown in the MessageBoxAdv. It also provide options to show / hide the detail pane.

{% tabs %}

{% highlight C# %}

MessageBoxAdv.Show(this, "Save changes?", "Warning", MessageBoxButtons.OKCancel, image, new Size(50, 50), "Do you want to save your changes to respective file location?");

{% endhighlight %}

{% highlight VB %}

MessageBoxAdv.Show(Me, "Save changes?", "Warning", MessageBoxButtons.OKCancel, image, New Size(50, 50), "Do you want to save your changes to respective file location?")

{% endhighlight %}

{% endtabs %}

Eg: Detail view 

![Details view support](MessageBoxAdv_images/MessageBoxAdv_img18.jpg)

Eg: Collapsed view

![Collapsed view](MessageBoxAdv_images/MessageBoxAdv_img19.jpg)

## Resizing support

MessageBoxAdv allows you to adjust the size of the control at run time by dragging the gripper at bottom right. It can be achieved by using the [CanResize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html#Syncfusion_Windows_Forms_MessageBoxAdv_CanResize) property.Its default value is false.

{% tabs %}

{% highlight C# %}

MessageBoxAdv.CanResize = true;

{% endhighlight %}

{% highlight VB %}

MessageBoxAdv.CanResize = True

{% endhighlight %}

{% endtabs %}

![Resizing support](MessageBoxAdv_images/MessageBoxAdv_img34.png)

You can download the sample from [here](https://github.com/SyncfusionExamples/Messageboxadv-resize-support-in-Winforms)