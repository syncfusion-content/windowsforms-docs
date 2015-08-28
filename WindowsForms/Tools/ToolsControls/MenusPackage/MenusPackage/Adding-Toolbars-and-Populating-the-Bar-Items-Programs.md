---
layout: post
title: Adding Toolbars and Populating the Bar Items
description: adding toolbars and populating the bar items
platform: windowsforms
control: Menus Package 
documentation: ug
---
## Adding Toolbars and Populating the Bar Items

Follow the steps below to create and populate the toolbar with menus.

1. Create an instance of Toolbar and associate it with MainFrameBarManager.





					private Syncfusion.Windows.Forms.Tools.XPMenus.Bar bar1;

					this.bar1 = new Syncfusion.Windows.Forms.Tools.XPMenus.Bar(this.mainFrameBarManager1, "MyMenu");

					this.mainFrameBarManager1.Bars.Add(this.bar1);

					this.bar1.Manager = this.mainFrameBarManager1;







					Private bar1 As Syncfusion.Windows.Forms.Tools.XPMenus.Bar

					Private Me.bar1 = New Syncfusion.Windows.Forms.Tools.XPMenus.Bar(Me.mainFrameBarManager1, "MyMenu")

					Me.mainFrameBarManager1.Bars.Add(Me.bar1)

					Private Me.bar1.Manager = Me.mainFrameBarManager1



2. Add bar items to the ParentBarItem.





					this.parentBarItem1.Items.AddRange(new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem[] {this.barItem1,this.barItem2,

					this.barItem3});







					Me.parentBarItem1.Items.AddRange(New Syncfusion.Windows.Forms.Tools.XPMenus.BarItem() {Me.barItem1,Me.barItem2, Me.barItem3})



3. Finally add ParentBarItem to the toolbar.





				this.bar1.Items.AddRange(new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem[] {this.parentBarItem1});







				Me.bar1.Items.AddRange(New Syncfusion.Windows.Forms.Tools.XPMenus.BarItem() {Me.parentBarItem1})



4. You can make the toolbar to occupy the entire row in the form by setting BarStyle property to following values.





				this.bar1.BarStyle = ((Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle) ((((Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.AllowQuickCustomizing | Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.IsMainMenu)| Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.Visible) 

				| Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.DrawDragBorder)));







				Me.bar1.BarStyle = (CType((((Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.AllowQuickCustomizing Or Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.IsMainMenu) Or Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.Visible) Or Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.DrawDragBorder), Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle))



   The resulting form will look like the below image.

   ![](Overview_images/Overview_img22.jpeg) 

   {:.prettyprint}

See Also

Concepts and Features