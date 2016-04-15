---
layout: post
title: What are the events available In TileLayout | WindowsForms | Syncfusion
description: What are the events available In TileLayout
platform: WindowsForms
control: TileLayout 
documentation: ug
---

# What are the events available In TileLayout?

## BeforeSliding

This event is triggered before the Slide is moving.

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

This event is triggered after the Side has moved.


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





