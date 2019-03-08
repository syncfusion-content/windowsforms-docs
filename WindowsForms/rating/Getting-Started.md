---
layout: post
title: Getting-Started | RatingControl | WindowsForms | Syncfusion
description: This section describes how to add rating control into windowsforms application
platform: WindowsForms
control: Rating  
documentation: ug
---

# Getting Started 

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#ratingcontrol) section to get the list of assemblies or NuGet package that needs to be added as a reference to use the control in any application.

You can find more details about installing the NuGet packages in a Windows Forms application in the following link: 

[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)

## Create a simple application with RatingControl

You can create a Windows Forms application with RatingControl using the following steps:

### Create a project

Create a new Windows Forms project in Visual Studio to display the RatingControl with its different shapes.

## Add control through designer

The RatingControl can be added to an application by dragging it from the toolbox to a designer view. The following assembly references are added automatically:

• Syncfusion.Grid.Base
• Syncfusion.Grid.Windows
• Syncfusion.Shared.Base
• Syncfusion.Shared.Windows
• Syncfusion.Tools.Base
• Syncfusion.Tools.Windows

![Search rating control in toolbox](Getting-Started_images/Getting-Started_img1.png)

![Drag and drop the rating control to form](Getting-Started_images/Getting-Started_img2.png)

## Add control manually using code

To add the control manually in C#, follow the given steps:

**Step 1** - Add the following required assembly references to the project:

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll

**Step 2** - Include the namespaces **Syncfusion.Windows.Forms.Tools**.

{% tabs %}
{% highlight C# %}
using Syncfusion.Windows.Forms.Tools;
{% endhighlight  %}
{% highlight VB %}
Imports Syncfusion.Windows.Forms.Tools
{% endhighlight  %}
{% endtabs %} 

**Step 3** - Create `RatingControl` control instance and add it to the form.

{% tabs %}
{% highlight C# %}
RatingControl ratingControl1 = new RatingControl ();
this.Controls.Add(ratingControl1);
{% endhighlight %}
{% highlight VB %}
Dim  ratingControl1 As RatingControl = New RatingControl
Me.Controls.Add(ratingControl1)
{% endhighlight %}
{% endtabs %}

## Built-in shapes for rating

In RatingControl, there are six predefined shapes available for customization. 

*	Star
*	Circle
*	Triangle
*	Heart
*	Diamond
*	Kite

You can customize the shapes of the RatingControl using the [Shape](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RatingControl~Shape.html) property. 

{% tabs %}
{% highlight C# %}
//Setting shape
this.ratingControl1.Shape = Syncfusion.Windows.Forms.Tools.Shapes.Heart;
{% endhighlight %}
{% highlight VB %}
‘Setting shape
Me.ratingControl1.Shape = Syncfusion.Windows.Forms.Tools.Shapes.Heart
{% endhighlight %}
{% endtabs %}

![RatingControls shapes](Getting-Started_images/rating-controls-shapes.png)

