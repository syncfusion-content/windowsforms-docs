---
layout: post
title: Events in Windows Forms SplitContainer control | Syncfusion®
description: Learn about Events support in Syncfusion® Windows Forms SplitContainer (SplitContainerAdv) control and more details.
platform: windowsforms
control: Editors Package
documentation: ug
---

# Events in Windows Forms SplitContainer (SplitContainerAdv)

The events available for the SplitContainerAdv control are as follows.

* [SplitterMoved Event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SplitContainerAdv.html#Syncfusion_Windows_Forms_Tools_SplitContainerAdv_SplitterMoved) - This event is handled when the splitter is moved to a new position.

{% tabs %}

{% highlight C# %}




private void splitContainerAdv2_SplitterMoved(object sender, SplitterMoveEventArgs args)

{

    MessageBox.Show("The Splitter has moved from : " + args.OldSplitPosition.ToString() + " to " + args.NewSplitPosition.ToString());

}
{% endhighlight %}




{% highlight VB %}




Private Sub splitContainerAdv2_SplitterMoved(ByVal sender As Object, ByVal args As SplitterMoveEventArgs)

    MessageBox.Show("The Splitter has moved from : " + args.OldSplitPosition.ToString() + " to " + args.NewSplitPosition.ToString())

End Sub

{% endhighlight %}

{% endtabs %}

 ![Use of splitter moved event](SplitContainerAdv-Images/Overview_img403.jpeg)


* [SplitterMoving Event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SplitContainerAdv.html#Syncfusion_Windows_Forms_Tools_SplitContainerAdv_SplitterMoving) - This event is handled while the splitter is moving.

{% tabs %}

{% highlight C# %}


private void splitContainerAdv2_SplitterMoving(object sender, SplitterMoveEventArgs args)

{

    MessageBox.Show("The splitter is moving to : " + args.NewSplitPosition.ToString());

}
{% endhighlight %}






{% highlight VB %}


Private Sub splitContainerAdv2_SplitterMoving(ByVal sender As Object, ByVal args As SplitterMoveEventArgs)

    MessageBox.Show("The splitter is moving to : " + args.NewSplitPosition.ToString())

End Sub
{% endhighlight %}

{% endtabs %}

![Use of splitter moving event](SplitContainerAdv-Images/Overview_img404.jpeg)

