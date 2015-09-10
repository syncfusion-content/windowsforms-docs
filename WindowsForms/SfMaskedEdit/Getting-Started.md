---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: SfMaskedEdit
documentation: ug
---

# Getting Started

## Add SfMaskedEdit to an application

Namespace: Syncfusion.UI.Xaml.Controls.Input

Assembly: Syncfusion.SfInput.WinRT

Dependent assembly: Syncfusion.SfShared.WinRT

### Create the SfMaskedEdit control using XAML

Create a new Windows Store application in Visual Studio and follow the steps given.

1. Drag and drop the SfMaskedEdit control from the Toolbox to the Designer. It generates the instance of SfMaskedEdit.

The following code example shows how to create the SfMaskedEdit from XAML.




{% highlight xml %}


<syncfusion:SfMaskedEdit HorizontalAlignment="Left" Margin="103,143,0,0" TextWrapping="Wrap" Text="SfMaskedEdit" VerticalAlignment="Top" Width="150" Height="30"/>

{% endhighlight %}

![](Getting-Started_images/Getting-Started_img1.png)



### Create the SfMaskedEdit control using C#

To create a MaskedEdit control, use the following code.




{% highlight C# %}



   SfMaskedEdit maskededit = new SfMaskedEdit() { Text = "SfMaskedEdit", Width = 150, Height = 30 };

    this.Content = maskededit;

{% endhighlight %}

![](Getting-Started_images/Getting-Started_img2.png) 



