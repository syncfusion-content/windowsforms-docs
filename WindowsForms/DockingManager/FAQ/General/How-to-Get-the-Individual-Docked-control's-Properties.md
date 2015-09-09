---
layout: post
title: How to Get the Individual Docked control's Properties
description: How to Get the Individual Docked control's Properties
platform: WindowsForms
control: DockingManager
documentation: ug
---

# How to Get the Individual Docked control's Properties?

To check whether a control (in this case it's a listbox) is floating or docked, you could use the code snippet given below.

{% highlight C# %}




this.dockingManager1.IsFloating(this.listBox1);

{% endhighlight %}


{% highlight vbnet %}



Me.dockingManager1.IsFloating(this.listBox1);

{% endhighlight %}

### To get the Dock location

1. Add a listview and a docking manager in your form.
2. Enable the listview as a docked control.

   ~~~ cs
   
		this.dockingManager1.SetEnableDocking(this.listView1,true);

   ~~~
   {:.prettyprint}


   ~~~ vbnet

		Me.dockingManager1.SetEnableDocking(Me.listView1, True)
   ~~~
   {:.prettyprint}


3. Now add the below given code in your form's constructor.

   ~~~ cs



		//listView1 is the dockable control. We could get it's dock properties by accessing DockHost and DockHostController.

		Syncfusion.Windows.Forms.Tools.DockHost dhost = this.listView1.Parent as Syncfusion.Windows.Forms.Tools.DockHost;

		Syncfusion.Windows.Forms.Tools.DockHostController dhc = dhost.InternalController as

		Syncfusion.Windows.Forms.Tools.DockHostController;



		//The DockInfo object will give all the information about docked control.

		Syncfusion.Windows.Forms.Tools.DockInfo di = dhc.GetSerCurrentDI();

		MessageBox.Show(di.dStyle.ToString() + dhc.LayoutRect.ToString());


   ~~~
   {:.prettyprint}


   ~~~ vbnet



		' listView1 is the dockable control. We could get it's dock properties by accessing DockHost and DockHostController.

		Dim dhost As Syncfusion.Windows.Forms.Tools.DockHost = CType(IIf(TypeOfMe.listView1.Parent Is Syncfusion.Windows.Forms.Tools.DockHost, Me.listView1.Parent,Nothing), Syncfusion.Windows.Forms.Tools.DockHost)

		Dim dhc As Syncfusion.Windows.Forms.Tools.DockHostController = CType(IIf(TypeOfdhost.InternalController Is Syncfusion.Windows.Forms.Tools.DockHostController, dhost.InternalController, Nothing), Syncfusion.Windows.Forms.Tools.DockHostController)



		' The DockInfo object will give all the information about docked control.

		Dim di As Syncfusion.Windows.Forms.Tools.DockInfo = dhc.GetSerCurrentDI()

		MessageBox.Show((di.dStyle.ToString + dhc.LayoutRect.ToString))

   ~~~
   {:.prettyprint}




4. Just before you close a docked / floating control, access the control’s parent and cast this to type Syncfusion.Windows.Forms.Tools.DockHost. 
5. Now access the DockHost's InternalController and get it’s current serialization info by using the GetSerCurrInfo() method. This will fetch an object of type Syncfusion.Windows.Forms.Tools.DockInfo. The DockInfo.DockingStyle member gives the dock position of the particular control with respect to the host form and the DockInfo.rcDockArea member returns the control bounds. 
6. If the control is floating, then DockingStyle will be equal to Syncfusion.Windows.Forms.Tools.DockingStyle.Fill. You can serialize this information against the control’s name and later upon loading, appropriately use either the DockingManager.DockControl() / FloatControl() method, based on the serialized DockingStyle / rcbounds values, to set the control’s dock state.


