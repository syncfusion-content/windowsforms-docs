---
layout: post
title: Getting Started with Windows Forms Status Bar | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms Status Bar (StatusBarAdv) control and more details.
platform: WindowsForms
control: StatusBarAdv
documentation: ug
---

# Getting Started with Windows Forms Status Bar (StatusBarAdv)

This section will give a step-by-step procedure to design a StatusBarAdv control through designer and also through programming approach.

## Through designer

To create a StatusBarAdv control through designer,

1. Drag and drop a StatusBarAdv control from the toolbox onto the form.

   ![Create Status Bar through designer in WindowsForms application](overview_images/windowsforms-status-bar-designer.jpeg) 

2. Set the desired background for the StatusBarAdv control by setting the desired values for properties that control the background in the properties window.
3. Drag and drop controls onto the StatusBarAdv control. Add the StatusBarAdvPanel control to it. Set the PanelType property to the desired value, for all the StatusBarAdvPanel controls.
4. Build and run the application.

   ![Run the application in WindowsForms-Status Bar](overview_images/windowsforms-status-bar-run-application.jpeg) 
   
   
## Through code

To create a StatusBarAdv control programmatically,

1. Open a new Visual C# or VB.NET application in Visual Studio .NET.
2. Add the Syncfusion.Shared.Base and Syncfusion.Tools.Windows assemblies to your application.
3. Declare the StatusBarAdv and StatusBarAdvPanel controls.

{% capture codesnippet1 %}​
{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.StatusBarAdv statusBarAdv1;
private Syncfusion.Windows.Forms.Tools.StatusBarAdvPanel statusBarAdvPanel1;
private Syncfusion.Windows.Forms.Tools.StatusBarAdvPanel statusBarAdvPanel2;
private Syncfusion.Windows.Forms.Tools.StatusBarAdvPanel statusBarAdvPanel3;

{% endhighlight %}

{% highlight vb %}

Private statusBarAdv1 As Syncfusion.Windows.Forms.Tools.StatusBarAdv
Private statusBarAdvPanel1 As Syncfusion.Windows.Forms.Tools.StatusBarAdvPanel
Private statusBarAdvPanel2 As Syncfusion.Windows.Forms.Tools.StatusBarAdvPanel
Private statusBarAdvPanel3 As Syncfusion.Windows.Forms.Tools.StatusBarAdvPanel

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

4. Initialize the controls.

{% capture codesnippet2 %}
{% tabs %}
{% highlight c# %}

this.statusBarAdv1 = new Syncfusion.Windows.Forms.Tools.StatusBarAdv();
this.statusBarAdvPanel1 = new Syncfusion.Windows.Forms.Tools.StatusBarAdvPanel();
this.statusBarAdvPanel2 = new Syncfusion.Windows.Forms.Tools.StatusBarAdvPanel();
this.statusBarAdvPanel3 = new Syncfusion.Windows.Forms.Tools.StatusBarAdvPanel();

{% endhighlight %}

{% highlight vb %}

Me.statusBarAdv1 = New Syncfusion.Windows.Forms.Tools.StatusBarAdv() 
Me.statusBarAdvPanel1 = New Syncfusion.Windows.Forms.Tools.StatusBarAdvPanel() 
Me.statusBarAdvPanel2 = New Syncfusion.Windows.Forms.Tools.StatusBarAdvPanel() 
Me.statusBarAdvPanel3 = New Syncfusion.Windows.Forms.Tools.StatusBarAdvPanel() 

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

5. Set the properties to customize the control's appearance, and add the control to the form.

{% capture codesnippet3 %}
{% tabs %}
{% highlight c# %}

this.statusBarAdv1.BackColor = System.Drawing.Color.LightSteelBlue;
this.statusBarAdv1.BorderColor = System.Drawing.Color.Black;
this.statusBarAdv1.Dock = System.Windows.Forms.DockStyle.Bottom;
this.statusBarAdv1.Name = "statusBarAdv1";

this.statusBarAdv1.Controls.Add(this.statusBarAdvPanel1);
this.statusBarAdv1.Controls.Add(this.statusBarAdvPanel2);
this.statusBarAdv1.Controls.Add(this.statusBarAdvPanel3);

this.statusBarAdvPanel1.PanelType = Syncfusion.Windows.Forms.Tools.StatusBarAdvPanelType.CurrentCulture;
this.statusBarAdvPanel2.PanelType = Syncfusion.Windows.Forms.Tools.StatusBarAdvPanelType.ShortDate;
this.statusBarAdvPanel3.PanelType = Syncfusion.Windows.Forms.Tools.StatusBarAdvPanelType.ShortTime;

this.statusBarAdvPanel1.Size = new System.Drawing.Size(100, 27);
this.statusBarAdvPanel2.Size = new System.Drawing.Size(100, 27);
this.statusBarAdvPanel3.Size = new System.Drawing.Size(100, 27);
this.Controls.Add(this.statusBarAdv1);

{% endhighlight %}

{% highlight vb %}
   
Me.statusBarAdv1.BackColor = System.Drawing.Color.LightSteelBlue
Me.statusBarAdv1.BorderColor = System.Drawing.Color.Black
Me.statusBarAdv1.Dock = System.Windows.Forms.DockStyle.Bottom
Me.statusBarAdv1.Name = "statusBarAdv1"

Me.statusBarAdv1.Controls.Add(Me.statusBarAdvPanel1)
Me.statusBarAdv1.Controls.Add(Me.statusBarAdvPanel2)
Me.statusBarAdv1.Controls.Add(Me.statusBarAdvPanel3)

Me.statusBarAdvPanel1.PanelType = Syncfusion.Windows.Forms.Tools.StatusBarAdvPanelType.CurrentCulture
Me.statusBarAdvPanel2.PanelType = Syncfusion.Windows.Forms.Tools.StatusBarAdvPanelType.ShortDate
Me.statusBarAdvPanel3.PanelType = Syncfusion.Windows.Forms.Tools.StatusBarAdvPanelType.ShortTime

Me.statusBarAdvPanel1.Size = New System.Drawing.Size(100, 27)
Me.statusBarAdvPanel2.Size = New System.Drawing.Size(100, 27)
Me.statusBarAdvPanel3.Size = New System.Drawing.Size(100, 27)
Me.Controls.Add(Me.statusBarAdv1)

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet3 | OrderList_Indent_Level_1 }}  
6. Run the application. You will see the StatusBarAdv control docked to the bottom of the form. By default it will be docked to 'Bottom'.

   ![Create Status Bar Through Code](Overview_images/Overview_img62.jpeg) 