---
layout: post
title: Adding Bar Items to a BarManager
description: adding bar items to a barmanager
platform: windowsforms
control: Menus Package 
documentation: ug
---
## Adding Bar Items to a BarManager

To programmatically add bar items to a BarManager, perform the below steps.

1. Include the required namespaces.





				using Syncfusion.Windows.Forms.Tools;

				using Syncfusion.Windows.Forms.Tools.XPMenus;







				Imports Syncfusion.Windows.Forms.Tools

				Imports Syncfusion.Windows.Forms.Tools.XPMenus



2. Create an instance of MainFrameBarManager.





				private Syncfusion.Windows.Forms.Tools.XPMenus.MainFrameBarManager mainFrameBarManager1;

				this.mainFrameBarManager1 = new Syncfusion.Windows.Forms.Tools.XPMenus.MainFrameBarManager(this.components, this);







				Private mainFrameBarManager1 As Syncfusion.Windows.Forms.Tools.XPMenus.MainFrameBarManager

				Private Me.mainFrameBarManager1 = New Syncfusion.Windows.Forms.Tools.XPMenus.MainFrameBarManager(Me.components, Me)



3.  Add category to the MainFrameBarManager.





				this.mainFrameBarManager1.Categories.Add("MainMenu");







				Me.mainFrameBarManager1.Categories.Add("MainMenu")



4.  Create an instances for ParentBarItem(File) and BarItems(New,Open and Close).





					private Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem parentBarItem1;

					private Syncfusion.Windows.Forms.Tools.XPMenus.BarItem barItem1;

					private Syncfusion.Windows.Forms.Tools.XPMenus.BarItem barItem2;

					private Syncfusion.Windows.Forms.Tools.XPMenus.BarItem barItem3;



					this.parentBarItem1 = new Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem();

					this.barItem1 = new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem();

					this.barItem2 = new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem();

					this.barItem3 = new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem();







					Private parentBarItem1 As Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem

					Private barItem1 As Syncfusion.Windows.Forms.Tools.XPMenus.BarItem

					Private barItem2 As Syncfusion.Windows.Forms.Tools.XPMenus.BarItem

					Private barItem3 As Syncfusion.Windows.Forms.Tools.XPMenus.BarItem



					Me.parentBarItem1 = New Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem()

					Me.barItem1 = New Syncfusion.Windows.Forms.Tools.XPMenus.BarItem()

					Me.barItem2 = New Syncfusion.Windows.Forms.Tools.XPMenus.BarItem()

					Me.barItem3 = New Syncfusion.Windows.Forms.Tools.XPMenus.BarItem()



5.  Add BarItems to the MainFrameBarManager.





				this.mainFrameBarManager1.Items.AddRange(new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem[] {

				this.parentBarItem1,this.barItem1,this.barItem2,this.barItem3});







				Me.mainFrameBarManager1.Items.AddRange(New Syncfusion.Windows.Forms.Tools.XPMenus.BarItem() { Me.parentBarItem1,Me.barItem1,Me.barItem2,Me.barItem3})



				 Refer Adding Toolbars and Populating the Bar Items to add toolbar and populate menus.
   {:.prettyprint}