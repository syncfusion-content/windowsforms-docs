---
layout: post
title: ProgressBarAdv-Events | WindowsForms | Syncfusion
description: progressbaradv events
platform: WindowsForms
control: ProgressBarAdv
documentation: ug
---

# ProgressBarAdv events

The list of events and a detailed explanation about each of them is given in the following sections.

Events table

<table>
<tr>
<th>
ProgressBarAdv events</th><th>
Description</th></tr>
<tr>
<td>
DrawWaitingCustomRender</td><td>
This event can be handled to draw a custom waiting render. WaitingCustomRender must be set to 'True'.</td></tr>
<tr>
<td>
ValueChanged</td><td>
This event is handled to set the text of the ProgressBarAdv when the value changes.The TextStyle property should be set to 'Custom'.</td></tr>
</table>


## DrawWaitingCustomRender event

The CustomWaitingRender property indicates whether the waiting gradient will be replaced by another custom waiting render which is defaulted to segments. When this property is set to 'True', it enables the custom waiting render behavior which will fire this DrawWaitingCustomRender event.

This event lets you do the desired drawing. If you perform custom drawing, you should specify that to the ProgressBarAdv (so that it does not perform it's default painting), by setting e.Handled = true. If no custom painting is done, then you do not have to set e.Handled value, and the ProgressBarAdv draws it's default segmented waiting gradient. The type of segments are specified through the ProgressFallBackStyle with the options Continuous, Tube, Gradient and System.

### Event data

The event handler receives an argument of the type ProgressBarAdvDrawEventArgs containing data related to this event. The following ProgressBarAdvDrawEventArgs members provide information specific to this event.

Member table

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Graphics</td><td>
Gets the graphic used to paint.</td></tr>
<tr>
<td>
Handled</td><td>
Gets/sets a value indicating whether the DrawWaitingCustomRender event was handled.</td></tr>
<tr>
<td>
Rectangle</td><td>
Gets the bounding rectangle.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void progressBarAdv1_DrawWaitingCustomRender(object sender, Syncfusion.Windows.Forms.Tools.ProgressBarAdvDrawEventArgs e)

{

//Gets the graphics used to paint using the Graphics property

e.Graphics.PixelOffsetMode.ToString();



//If you perform custom drawing, you should specify that to the ProgressBarAdv 

//(so that it does not perform its default painting), by setting the below code.

e.Handled = true;



//To get the bounding rectangle use the below code

e.Rectangle.ToString();

}

{% endhighlight %}

{% highlight VB %}

Private Sub progressBarAdv1_DrawWaitingCustomRender(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.ProgressBarAdvDrawEventArgs)



'Gets the graphics used to paint using the Graphics property

e.Graphics.PixelOffsetMode.ToString();



'If you perform custom drawing, you should specify that to the ProgressBarAdv 

'(so that it does not perform its default painting), by setting the below code.

e.Handled = true;



'To get the bounding rectangle use the below code

e.Rectangle.ToString();

End Sub

{% endhighlight %}

{% endtabs %}

## ValueChanged event

For information about this event, refer to the How to display custom text on the ProgressBarAdv to indicate the status of the task instead of the percentage completed? topic under the Frequently Asked Questions section.

