---
layout: post
title: Button-Parameters | WindowsForms | Syncfusion
description: Learn about various button parameters, Right to Left, Details view and Resizing support in Windows Forms MessageBoxAdv
platform: WindowsForms
control: MessageBoxAdv
documentation: ug
---

# Button Parameters in Windows Forms MessageBox (MessageBoxAdv)

[Show](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html#Syncfusion_Windows_Forms_MessageBoxAdv_Show_System_String_) function helps to display a [MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html). This section explains regarding the parameters available in [Show](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html#Syncfusion_Windows_Forms_MessageBoxAdv_Show_System_String_) function.


## Caption bar text

The text to display in the caption bar of the [MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html).

## Text

Represents the text which need to be displayed in the [MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html).

## Buttons 

Provides various button combination like Ok, OkCancel, YesNo, YesNoCancel, RetryCancel and much more. By default, it shows only Ok button. [MessageBoxButtons](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.messageboxbuttons?view=net-5.0) enumeration helps to set various button combination in [MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html). Some of the available default buttons are as follows:

* Ok
* OkCancel
* YesNo
* YesNoCancel
* RetryCancel
* AbortRetryIgnore

### Ok

This option helps to show the [MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html) with Ok button.

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

![WindowsForms MessageBoxAdv Ok](MessageBoxAdv_images/WindowsForms-MessageBoxAdv-Ok.jpg) 
 
### Ok Cancel

This option helps to show the [MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html) with combination of Ok and Cancel buttons.

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
 
 ![WindowsForms MessageBoxAdv Ok Cancel](MessageBoxAdv_images/WindowsForms-MessageBoxAdv-Ok-Cancel.jpg) 

### Yes No

This option helps to show the [MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html) with combination of Yes and No buttons.

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

![WindowsForms MessageBoxAdv Yes No](MessageBoxAdv_images/WindowsForms-MessageBoxAdv-Yes-No.jpg) 

### Yes No Cancel

This option helps to show the [MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html) with combination of Yes, No, and Cancel buttons.

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

![WindowsForms MessageBoxAdv Yes No Cancel](MessageBoxAdv_images/WindowsForms-MessageBoxAdv-Yes-No-Cancel.jpg) 
 
### Retry Cancel

This option helps to show the [MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html) with combination of Retry and Cancel buttons.

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

![WindowsForms MessageBoxAdv Retry Cancel](MessageBoxAdv_images/WindowsForms-MessageBoxAdv-Retry-Cancel.jpg) 

### Abort Retry Ignore

This option helps to show the [MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html) with combination of Abort, Retry, and Ignore buttons.

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

![WindowsForms MessageBoxAdv Abort Retry Ignore](MessageBoxAdv_images/WindowsForms-MessageBoxAdv-Abort-Retry-Ignore.jpg) 

## Icon 

Supports to display wide variety of built-in icons and also empowered with loading custom icons. The default icons can be displayed in [MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html) by using [MessageBoxIcon](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.messageboxicon?view=net-5.0) Enum and it is listed as follows:

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

![WindowsForms MessageBoxAdv Icon support](MessageBoxAdv_images/WindowsForms-MessageBoxAdv-Icon-support.png)

The following code example illustrates adding custom icons in [MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html).

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

![WindowsForms MessageBoxAdv Custom Icon support](MessageBoxAdv_images/WindowsForms-MessageBoxAdv-Custom-Icon-support.jpg)

## Right to left support

[MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html) elements can be aligned in right-to-left layout. It is laid out from the right to left when [RightToLeft](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html#Syncfusion_Windows_Forms_MessageBoxAdv_RightToLeft) property is set to true. Its default value is false.

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

![WindowsForms MessageBoxAdv Right to left support](MessageBoxAdv_images/WindowsForms-MessageBoxAdv-Right-to-left-support.jpg)  

## Details view

This pane helps to view the detail message about the text shown in the [MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html). It also provide options to show / hide the detail pane.

{% tabs %}

{% highlight C# %}

MessageBoxAdv.Show(this, "Save changes?", "Warning", MessageBoxButtons.OKCancel, image, new Size(50, 50), "Do you want to save your changes to respective file location?");

{% endhighlight %}

{% highlight VB %}

MessageBoxAdv.Show(Me, "Save changes?", "Warning", MessageBoxButtons.OKCancel, image, New Size(50, 50), "Do you want to save your changes to respective file location?")

{% endhighlight %}

{% endtabs %}

Eg: Detail view 

![WindowsForms MessageBoxAdv Details view support](MessageBoxAdv_images/WindowsForms-MessageBoxAdv-Details-view-support.jpg)

Eg: Collapsed view

![WindowsForms MessageBoxAdv Collapsed view support](MessageBoxAdv_images/WindowsForms-MessageBoxAdv-Collapsed-view-support.jpg)

## Resizing support

[MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html) allows you to adjust the size of the control at run time by dragging the gripper at bottom right. It can be achieved by using the [CanResize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html#Syncfusion_Windows_Forms_MessageBoxAdv_CanResize) property. The default value is false.

{% tabs %}

{% highlight C# %}

MessageBoxAdv.CanResize = true;

{% endhighlight %}

{% highlight VB %}

MessageBoxAdv.CanResize = True

{% endhighlight %}

{% endtabs %}

![WindowsForms MessageBoxAdv Resizing support](MessageBoxAdv_images/WindowsForms-MessageBoxAdv-Resizing-support.png)

N> [View sample in GitHub](https://github.com/SyncfusionExamples/Messageboxadv-resize-support-in-Winforms)