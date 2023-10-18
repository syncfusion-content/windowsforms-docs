---
layout: post
title: What are the events available in WinForms Tile Layout | Syncfusion
description: Learn about What are the events available in Syncfusion Windows Forms Tile Layout control, its elements and more details.
platform: WindowsForms
control: TileLayout 
documentation: ug
---

# What are the events available In TileLayout in Windows Forms

This page explains What are the events available In TileLayout in Windows Forms and more details.

## BeforeSliding

This [BeforeSliding](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html#Syncfusion_Windows_Forms_Tools_ImageStreamer_BeforeSliding) event is triggered before the Slide is moving.

{% tabs %}

{% highlight C# %}

void imageStreamer1_BeforeSliding(object sender, EventArgs e)
{
     Console.WriteLine("BeforeSliding event is raised");
}


{% endhighlight %}


{% highlight VB %}

Private Sub imageStreamer1_BeforeSliding(sender As Object, e As EventArgs)

     Console.WriteLine("BeforeSliding event is raised")
	 
End Sub

 
{% endhighlight %}

{% endtabs %}


## AfterSlided

This [AfterSlided](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html#Syncfusion_Windows_Forms_Tools_ImageStreamer_AfterSlided) event is triggered after the Side has moved.


{% tabs %}

{% highlight C# %}

void imageStreamer1_AfterSlided(object sender, EventArgs e)
{
     Console.WriteLine("AfterSlided event is raised");
}



{% endhighlight %}


{% highlight VB %}

Private Sub imageStreamer1_AfterSlided(sender As Object, e As EventArgs)
     Console.WriteLine("AfterSlided event is raised")
End Sub
 
{% endhighlight %}

{% endtabs %}





