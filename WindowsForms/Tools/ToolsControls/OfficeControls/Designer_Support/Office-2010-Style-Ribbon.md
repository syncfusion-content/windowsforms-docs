---
layout: post
title: Office-2010-Style-Ribbon
description: Office 2010 Style Ribbon
platform: Windows Forms
control: Tools 
documentation: ug
---

# Office 2010 Style Ribbon

This feature provides Office 2010 like theme for your ribbon. You can give Office 2010 like look and feel for your application. Essential Tools supports the three themes found in Office 2010. They are: 
* Blue
* Black 
* Silver
Essential Tools also enables you to create a BackStageView. You can open the BackStageView by clicking the File tab. This enables you to use the features that fall outside the Ribbon. Ribbon enables you to work in the document and Backstage enables you to work with the document. Using this you can alter contents and provide end-user options that are related to specific solution requirements.
 > Note: Backstageview can be accessed only when Ribbon style is set to Office 2010.
You can apply Office 2010 Style Ribbon and create BackStageView in two methods. They are:
* Through Designer
* Programmatically

##	Through Designer
### Apply Theme for Ribbon
The following are steps to apply Office 2010 style for the Ribbon:
1. Create a Windows Form application in Visual Studio. 
2. Drag and drop the RibbonControlAdv from the Toolbox.
   ![](Office_images/office_img73.png)
   _Figure 1330: Toolbox_
3. In the Property grid, set RibbonStyle to Office2010.
   ![](Office_images/office_img74.png)
   _Figure 1331: RibbonStyle in Property Grid_
4. Office 2010 Ribbon will be applied for Ribbon.
   ![](Office_images/office_img75.png)
   _Figure 1332: Ribbon with Office 2010 Styles_
   
### Creating BackStageView
The following are steps to create a BackStageView:
1. Drag and drop the BackStageView from the Toolbox.
   ![](Office_images/office_img76.png)
   _Figure 1333: Toolbox_
2. In the Property grid, click the ShowBackstage.
   ![](Office_images/office_img77.png)
   _Figure 1334: ShowBackStage in Property Grid_
3. Empty BackStage will be displayed.
   ![](Office_images/office_img78.png)
   _Figure 1335: Empty BackStage_
4. To add a BackStageButton, click the Add BackStage Button.
   ![](Office_images/office_img79.png)
   _Figure 1336: Add BackStage Button in Property Grig_
5. To add BackStageTab, click the Add BackStage Tab.
   ![](Office_images/office_img80.png)
   _Figure 1337: Add BackStage Tab in Property Grid_
6. Set BackStageView to RibbonControlAdv.
   ![](Office_images/office_img81.png)
   _Figure 7: Add BackStageView to RibbonControlAdv_
7. Back Stage will be created with a BackStage Button and a BackStage Tab
   ![](Office_images/office_img82.png)
   _Figure 1338: BackStage with a BackStage Button and BackStage Tab_

## Programmatically 
### Apply Theme for Ribbon
The following code illustrates how to apply the Office2010 theme to the ribbon:
{% highlight C# %}
            this.ribbonControlAdv1.RibbonStyle = Syncfusion.Windows.Forms.Tools.RibbonStyle.Office2010;

{% endhighlight %}
{% highlight vbnet %}
Me.ribbonControlAdv1.RibbonStyle = Syncfusion.Windows.Forms.Tools.RibbonStyle.Office2010
{% endhighlight %}
### Creating BackStageView
The following code illustrates how to create a backstage with a BackStageButtom and a BackStageTab:
{% highlight C# %}

                using Syncfusion.Windows.Forms;


                BackStageView backStageView1 = new BackStageView(this.components);
                BackStage backStage1 = new BackStage();
                BackStageTab backStageTab1 = new BackStageTab();
                BackStageButton backStageButton1 = new BackStageButton();
	
	            // backStageView1
                backStageView1.BackStage = backStage1;
                backStageView1.HostControl = null;
                backStageView1.HostForm = this;
	           
	            // backStage1
                backStage1.Controls.Add(backStageTab1);
                backStage1.Controls.Add(backStageButton1);
                backStage1.Dock = System.Windows.Forms.DockStyle.Fill;
      
	            // backStageTab1
                backStageTab1.Text = "backStageTab1";
               
	            // backStageButton1
                backStageButton1.Text = "backStageButton1";

                // ribbonControlAdv1
	            ribbonControlAdv1.BackStageView = backStageView1;
	           
	            //Add BackStage to RibbonControlAdv 
	            ribbonControlAdv1.BackStageView =backStageView1;
	
	           //Add BackStage and RibbonControlAdv to form
	            this.Controls.Add(backStage1);
	            this.Controls.Add(this.ribbonControlAdv1);        

{% endhighlight %}

{% highlight vbnet %}
                    Imports Syncfusion.Windows.Forms


				Dim backStageView1 As New BackStageView(Me.components)
				Dim backStage1 As New BackStage()
				Dim backStageTab1 As New BackStageTab()
				Dim backStageButton1 As New BackStageButton()

				' backStageView1
				backStageView1.BackStage = backStage1
				backStageView1.HostControl = Nothing
				backStageView1.HostForm = Me

				' backStage1
				backStage1.Controls.Add(backStageTab1)
				backStage1.Controls.Add(backStageButton1)
				backStage1.Dock = System.Windows.Forms.DockStyle.Fill

				' backStageTab1
				backStageTab1.Text = "backStageTab1"

				' backStageButton1
				backStageButton1.Text = "backStageButton1"

				' ribbonControlAdv1
				ribbonControlAdv1.BackStageView = backStageView1

				'Add BackStage to RibbonControlAdv 
				ribbonControlAdv1.BackStageView =backStageView1

			   'Add BackStage and RibbonControlAdv to form
				Me.Controls.Add(backStage1)
					Me.Controls.Add(Me.ribbonControlAdv1)
{% endhighlight %}

### Refer to:
[Appearance Setting](http://help.syncfusion.com/ug/windows%20forms/index.html#!Documents/appearancesettings15.htm)
