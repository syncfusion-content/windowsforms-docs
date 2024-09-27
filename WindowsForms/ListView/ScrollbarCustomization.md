---
layout: post
title: Scrollbar customization in Windows Forms ListView Control | Syncfusion
description: This section explains about the customization of scrollbar Visibility support in Syncfusion Windows Forms (SfListView) control.
platform: windowsforms
control: SfListView
documentation: ug
---

# Scrollbar customization in Windows Forms ListView Control
This section explains how to customize the scrollbar visibility and behavior in the SfListView control.

## AutoHideScrollBars

The `SfListView` allows you to automatically show or hide horizontal and vertical scrollbars using the <a href="https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfListView.html#Syncfusion_WinForms_ListView_SfListView_AutoHideScrollBars">AutoHideScrollBars</a> property. By default, <a href="https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfListView.html#Syncfusion_WinForms_ListView_SfListView_AutoHideScrollBars">AutoHideScrollBars</a> is set to true. This property manages scrollbar visibility based on content overflow.

{% tabs %}

{% highlight c# %}

using Syncfusion.WinForms.ListView;
   
   namespace WindowsFormsApplication1
   {
       public partial class Form1 : Form
       {
           public Form1()
           {
               InitializeComponent();
               SfListView sfListView1 = new SfListView ();
               sfListView1.AutoHideScrollBars = true;
           }
       }
   }

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.WinForms.ListView
   
   Namespace WindowsFormsApplication1
   	Partial Public Class Form1
   		Inherits Form
   		Public Sub New()
   			InitializeComponent()
   			Dim listView As New SfListView()
               sfListView1.AutoHideScrollBars = True  
   		End Sub
   	End Class
   End Namespace

{% endhighlight %}

{% endtabs %}
         
 ![ScrollbarCustomization](ScrollbarCustomization_images/ScrollbarCustomization_img1.png)       
                             
## Customizing Scrollbar Visibility

### HorizontalScrollBarVisible 

The `HorizontalScrollBarVisible` property is used to show or hide the horizontal scrollbar. When <a href="https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfListView.html#Syncfusion_WinForms_ListView_SfListView_AutoHideScrollBars">AutoHideScrollBars</a> is set to false, the visibility of the horizontal scrollbar will depend on the value of HorizontalScrollBarVisible.

### VerticalScrollBarVisible

The `VerticalScrollBarVisible` property is used to show or hide the horizontal scrollbar. When <a href="https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfListView.html#Syncfusion_WinForms_ListView_SfListView_AutoHideScrollBars">AutoHideScrollBars</a> is set to false, the visibility of the vertical scrollbar will depend on the value of VerticalScrollBarVisible.

{% tabs %}

{% highlight c# %}

sfListView1.AutoHideScrollBars = False;
sfListView1.HorizontalScrollBarVisible = True;
sfListview1.VerticalScrollBarVisible = True;

{% endhighlight %}

{% highlight vb %}

sfListView1.AutoHideScrollBars = False
sfListView1.HorizontalScrollBarVisible = True
sfListview1.VerticalScrollBarVisible = True

{% endhighlight %}

{% endtabs %}

![ScrollbarCustomization](ScrollbarCustomization_images/ScrollbarCustomization_img2.png)

## Scroll Increments
			
### HorizontalScrollIncrement

The `HorizontalScrollIncrement` property allows you to set the multiplier for mouse wheel scrolling during horizontal scrolling. This property lets users customize the increment value for each scroll step of the mouse wheel.

### VerticalScrollIncrement

The <a href="https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfListView.html#Syncfusion_WinForms_ListView_SfListView_VerticalScrollIncrement">VerticalScrollIncrement</a> property allows you to set the multiplier for mouse wheel scrolling during vertical scrolling. Users can customize the increment value for each scroll step of the mouse wheel.

{% tabs %}

{% highlight c# %}

this.sfListView1.HorizontalScrollIncrement = 5;
this.sfListView1.VerticalScrollIncrement = 5;

{% endhighlight %}

{% highlight vb %}

Me.sfListView1.HorizontalScrollIncrement = 5
Me.sfListView1.VerticalScrollIncrement = 5

{% endhighlight %}

{% endtabs %}


