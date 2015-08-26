---
layout: post
title: ProvideLayoutInformation Event
description: providelayoutinformation event
control: Layout Managers Package
documentation: ug
---
## ProvideLayoutInformation Event

This event is triggered to obtain the preferred size information for a Child control during layout.

The event handler receives an argument of type ProvideLayoutInformationEventArgs containing data related to this event. The ProvideLayoutInformationEventArgs members provide information specific to this event.

_Table467: Members Table_

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Specifies whether the child controls should be automatically aligned.</td></tr>
<tr>
<td>
Handle</td><td>
Specifies whether this event was handled and a value provided.</td></tr>
<tr>
<td>
Requested</td><td>
Returns the type of information requested.</td></tr>
<tr>
<td>
Size</td><td>
Gets / sets the size to be returned.</td></tr>
</table>


You can handle this event to autosize the Label control when you increase / decrease the form width.


{% highlight c# %}


private void flowLayout1_ProvideLayoutInformation(object sender, Syncfusion.Windows.Forms.Tools.ProvideLayoutInformationEventArgs e)

{

if (e.Control == this.label1 && e.Requested == LayoutInformationType.PreferredSize)

{

Graphics g = this.CreateGraphics();

SizeF szPref = g.MeasureString(this.label1.Text, this.label1.Font, this.ClientRectangle.Width);

e.Size = new Size(this.ClientRectangle.Width-20, (int)szPref.Height + 5);

e.Handled = true;

g.Dispose();

}

}



{% endhighlight  %}
{% highlight vbnet %}



Private Sub flowLayout1_ProvideLayoutInformation(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.ProvideLayoutInformationEventArgs)

If e.Control = Me.label1 AndAlso e.Requested = LayoutInformationType.PreferredSize Then

Dim g As Graphics = Me.CreateGraphics()

Dim szPref As SizeF = g.MeasureString(Me.label1.Text, Me.label1.Font, Me.ClientRectangle.Width)

e.Size = New Size(Me.ClientRectangle.Width - 20, CInt(szPref.Height) + 5)

e.Handled = True

g.Dispose()

End If

End Sub
{% endhighlight  %}

