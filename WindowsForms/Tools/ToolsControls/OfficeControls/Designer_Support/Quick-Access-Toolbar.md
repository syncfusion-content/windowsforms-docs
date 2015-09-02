---
layout: post
title: Quick-Access-Toolbar
description: Quick Access Toolbar
platform: Windows Forms
control: Tools 
documentation: ug
---

# Quick Access Toolbar

The quick access toolbar provides easy access to the controls that are used in the Office 2007 controls. The visibility of this toolbar can be controlled using RibbonControlAdv.QuickPanelVisible property. 

{% highlight C# %}

this.ribbonControlAdv1.QuickPanelVisible = true;

{% endhighlight %}

{% highlight vbnet %}

Me.ribbonControlAdv1.QuickPanelVisible = True

{% endhighlight %}

### Adding Controls to QuickAccessToolbar
Items / controls can be added to the QuickAccessToolbar by clicking on the Edit quick items Button link in the smart tag of the RibbonControlAdv control. This opens Customize Quick Access Toolbar Dialog which displays the existing toolstrip items. You can add the required items to the Quick Access Toolbar. 
The dialog comes with Office2007 look and feel.

![](Designer_images/designer_img46.png)
_Figure 1240: Accessing Customize Quick Access Toolbar Dialog using RibbonControlAdv Smart Tag_

![](Designer_images/designer_img47.png)
_Figure 1241: Editing Quick Access Toolbar Items_

> Note: You can also add items to the Quick Access Toolbar by enabling the UseInQuickAccessMenu On RibbonControl1 extended property for any control in the designer.
> Note: Ribbon provides option to edit the items at run time also. See [RunTime Customization](/windowsforms/tools/officecontrols/designer_support/quick-access-toolbar#runtime-customization) for more details.

A sample code snippet which adds a ToolStripButton named "File" to the QuickAccessToolbar through code. To know about other controls, refer [ToolStripItems](/windowsforms/tools/officecontrols/designer_support/quick-access-toolbar#toolstripitems) topic.


{% highlight C# %}
// Declare and initialize the toolstripbutton.
private System.Windows.Forms.ToolStripButton toolStripButton1;
this.toolStripButton1 = new System.Windows.Forms.ToolStripButton();

// Set the text and DisplayStyle property.
this.toolStripButton1.Text = "File";
this.toolStripButton1.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;

// Add the toolstripbutton in the header of the RibbonControlAdv.
this.ribbonControlAdv1.Header.AddQuickItem(this.toolStripButton1);

{% endhighlight %}

{% highlight vbnet %}

' Declare and initialize the toolstripbutton.
Private toolStripButton1 As System.Windows.Forms.ToolStripButton
Me.toolStripButton1 = New System.Windows.Forms.ToolStripButton()
 
' Set the text and DisplayStyle property.
Me.toolStripButton1.Text = "File"
Me.toolStripButton1.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
 
' Add the toolstripbutton in the header of the RibbonControlAdv.
Me.ribbonControlAdv1.Header.AddQuickItem (Me.toolStripButton1)
{% endhighlight %}


### See Also
[How to add a component in the QuickAccessMenu programmatically?](/windowsforms/tools/officecontrols/frequently-asked-questions/quick-acess-toolbar/how-to-add-a-component-in-the-quickaccessmenu-prog)
[How to show a Customize Quick Access Toolbar programmatically at run time?](/windowsforms/tools/officecontrols/frequently-asked-questions/quick-acess-toolbar/how-to-show-a-customize-quick-access-toolbar-dialo)
[How to set the description on RibbonControlAdv?](/windowsforms/tools/officecontrols/frequently-asked-questions/quick-acess-toolbar/how-to-get-or-set-the-description-on-ribboncontrol)

## RunTime Customization
At run time, when you click the drop-down button of the Quick Access Toolbar, "Customize Quick Access Toolbar" option will be displayed. 
Clicking the option will open the Customize Quick Access Toolbar Editor dialog which lets you do the following.
* Add new items, 
* Remove the existing items or 
* Change the order of the items.

#### Show/Hide ToolStrip Items from Custom Quick Access Toolbar Dialog
The user can now show/hide ToolStrip Items on Quick Access Toolbar dialog. This can be achieved by setting RibbonControlAdv.SetUseInCustomQuickAccessDialog which allows user to show or hide the ToolStrip Item. It also allows show/hide Ribbon component from the Quick Access Toolbar dialog. By default, all the item values are set to true and will be displayed in the dialog.

{% highlight C# %}
RibbonControlAdv.SetUseInCustomQuickAccessDialog(Component, bool show);
{% endhighlight %}

The following code snippet illustrates the same.

{% highlight C# %}

this.ribbonControlAdv1.SetUseInCustomQuickAccessDialog(this.toolStripTabItem1, false);

 {% endhighlight %}
 
![](Designer_images/designer_img48.png)
_Figure 1242: Quick Access Toolbar Dialog_

![](Designer_images/designer_img49.png)
_Figure 1243: Customizing Quick Access Toolbar dialog_

### Localization support for labels in the QuickAccess Toolbar
In the Quick Access Toolbar, the labels present in a customized Quick Access Toolbar dialog box can be localized to a user-defined language. These labels can be localized by using the appropriate localizer keywords. In the below code snippets the return value of the switch case is the localized text for the labels.
> Note: The following changes must be done within a localizer class used for the application which is inherited from the IlocalizationProvider.

{% highlight C# %}
case ToolsResourceIdentifiers.CustomizeQuickAccessLabel:
     return "Customize QuickAccess Label text";
case ToolsResourceIdentifiers.QuickAccessToolBarLabel:
     return "QuickAccess ToolBar Label text";
case ToolsResourceIdentifiers.CustomizationLabel:
     return "Customization Label text";


{% endhighlight %}
{% highlight vbnet %}

case ToolsResourceIdentifiers.CustomizeQuickAccessLabel:
     return "Customize QuickAccess Label text"
case ToolsResourceIdentifiers.QuickAccessToolBarLabel:
     return "QuickAccess ToolBar Label text"
case ToolsResourceIdentifiers.CustomizationLabel:
     return "Customization Label text"
	 
{% endhighlight %}
	 
#### See Also
[Placing QAT](/windowsforms/tools/officecontrols/designer_support/quick-access-toolbar#placing-qat)
[How to add a component in the QuickAccessMenu programmatically](/windowsforms/tools/officecontrols/frequently-asked-questions/quick-acess-toolbar/how-to-add-a-component-in-the-quickaccessmenu-prog)
[How to show a Customize Quick Access Toolbar programmatically at run time](/windowsforms/tools/officecontrols/frequently-asked-questions/quick-acess-toolbar/how-to-show-a-customize-quick-access-toolbar-dialo)
[How to set the description on RibbonControlAdv](/windowsforms/tools/officecontrols/frequently-asked-questions/quick-acess-toolbar/how-to-get-or-set-the-description-on-ribboncontrol)

## Placing QAT
### DesignTime
By default Quick panel is placed at the top of the control. It can also be placed below the ribbon by enabling the ShowQuickPanelBelowRibbon property. This property can also be enabled by using the smart tag of Ribbon.

![](Designer_images/designer_img50.png)
_Figure 1244: Accessing ShowQuickPanelBelowRibbon property using Smart Tag_

{% highlight C# %}

this.ribbonControlAdv1.QuickPanelVisible = true;
this.ribbonControlAdv1.ShowQuickPanelBelowRibbon = true;

{% endhighlight %}

{% highlight vbnet %}

Me.ribbonControlAdv1.QuickPanelVisible = True
Me.ribbonControlAdv1.ShowQuickPanelBelowRibbon = True

{% endhighlight %}

### RunTime
You can also align the QAT, above or below the ribbon using the options provided at run time.


![](Designer_images/designer_img51.png)
_Figure 1245: QAT placed below Ribbon at Run Time_

## QuickAccessToolBar Events
This section comprises the below events:

### BeforeAddItem and BeforeRemoveItem Events
BeforeAddItem event is handled, just before the item gets added to the Quick Access Toolbar. BeforeRemoveItem event is handled, just before an item is removed from the Quick Access Toolbar.

{% highlight C# %}

private void QuickItems_BeforeAddItem(object sender, RibbonItemEventArgs e)
{
//Gets the item that is going to be added
    MessageBox.Show(e.Item.Text.ToString() + " Item is Added");
}

private void QuickItems_BeforeRemoveItem(object sender, RibbonItemEventArgs e)
{
//Gets the item that is going to be Removed
MessageBox.Show(e.Item.Text.ToString() + " Item is Removed");
}

{% endhighlight %}

{% highlight vbnet %}

Private Sub QuickItems_BeforeAddItem(ByVal sender As Object, ByVal e As RibbonItemEventArgs)
    'Gets the item that is going to be added 
    MessageBox.Show(e.Item.Text.ToString() + " Item is Added")
End Sub

Private Sub QuickItems_BeforeRemoveItem(ByVal sender As Object, ByVal e As RibbonItemEventArgs)
    'Gets the item that is going to be Removed 
    MessageBox.Show(e.Item.Text.ToString() + " Item is Removed")
End Sub
{% endhighlight %}

![](Designer_images/designer_img52.png)
_Figure 1246: "Paste" Item is added to the QAT and the BeforeAddItem Event is Handled just before adding the Item_

### QuickItemAdded and QuickItemRemoved Events
When the QuickAccessToolBar items are added, RibbonControlAdv.Header.QuickItemAdded event will be handled. Similarly when the QuickAccessToolBar items are removed, RibbonControlAdv.Header.QuickItemRemoved event will be handled. 

{% highlight C# %}

this.ribbonControlAdv1.Header.QuickItemAdded += new ToolStripItemEventHandler(Header_QuickItemAdded);
this.ribbonControlAdv1.Header.QuickItemRemoved += new ToolStripItemEventHandler(Header_QuickItemRemoved); 

private void Header_QuickItemAdded(object sender, ToolStripItemEventArgs e)
{
    MessageBox.Show(e.Item.Text);
}
private void Header_QuickItemRemoved(object sender, ToolStripItemEventArgs e)
{
    MessageBox.Show(e.Item.Text);
} 

{% endhighlight %}

{% highlight vbnet %}

AddHandler ribbonControlAdv1.Header.QuickItemAdded, AddressOf Header_QuickItemAdded 
AddHandler ribbonControlAdv1.Header.QuickItemRemoved, AddressOf Header_QuickItemRemoved 

Private Sub Header_QuickItemAdded(ByVal sender As Object, ByVal e As ToolStripItemEventArgs)
    MessageBox.Show(e.Item.Text)

End Sub
Private Sub Header_QuickItemRemoved(ByVal sender As Object, ByVal e As ToolStripItemEventArgs)
    MessageBox.Show(e.Item.Text)
End Sub

{% endhighlight %}

## Enable/Disable Gallery Item
This feature disables/ enables particular gallery item in the gallery. 
Users cannot select the gallery item when it is disabled.
### Enable/Disable Gallery Item
Enable/disable gallery item, by using the following code.

> Note: Third item in the gallery is disabled in this example. 

{% highlight C# %}

toolStripGalleryItem3.Enabled = false;

{% endhighlight %}

{% highlight vbnet %}

toolStripGalleryItem3.Enabled = False

{% endhighlight %}
 
_Figure 1247: Gallery Item Disabled_

### Property Details
The following table contains the property details.
_Table 773: Property Table_

<table><tr>
<th>
Name of the Property	</th><th>Description </th><th>	Type of the Property </th><th>	Value It Accepts</th><th>	Property Syntax</th></tr>
<tr><td>Enabled	</td><td>Gets/sets gallery item enabled/disabled.</td><td>	Normal</td><td>	Boolean</td><td>	public bool Enabled</td>
</tr></table>


## Appearance Settings
The appearance settings of the RibbonControlAdv are discussed under the below sections:

### OfficeColorSchemes
The Ribbon Control Adv has come up with the same visual style of Office 2007. The users can choose between three colors Blue, Silver and Black which, can be set through the OfficeColorScheme property of the RibbonControlAdv class.
{% highlight C# %}

this.ribbonControlAdv1.OfficeColorScheme = Syncfusion.Windows.Forms.Tools.ToolStripEx.ColorScheme.Blue;

{% endhighlight %}

{% highlight vbnet %}

Me.ribbonControlAdv1.OfficeColorScheme = Syncfusion.Windows.Forms.Tools.ToolStripEx.ColorScheme.Blue

{% endhighlight %}
 
![](Designer_images/designer_img53.png)

_Figure 1248: Blue Color Scheme_

 ![](Designer_images/designer_img54.png)
Figure 1249: Silver Color Scheme
 
Figure 1250: Black Color Scheme

### Custom Color Scheme 
To set custom colors, set the ColorScheme as Managed. Then set the desired color using the  Syncfusion.Windows.Forms.Tools.Office12ColorTable.ApplyManagedColors method. 
{% highlight C# %}

//set the custom color to the form and RibbonControlAdv 
this.ColorScheme = ColorSchemeType.Managed;
this.ribbonControlAdv1.OfficeColorScheme = ToolStripEx.ColorScheme.Managed;
Office12ColorTable.ApplyManagedColors(this, Color.Red);           

{% endhighlight %}

{% highlight vbnet %}

'set the custom color to the form and RibbonControlAdv 
Me.ColorScheme = ColorSchemeType.Managed
Me.ribbonControlAdv1.OfficeColorScheme = ToolStripEx.ColorScheme.Managed
Office12ColorTable.ApplyManagedColors(Me, Color.Red)

{% endhighlight %}

Figure 1251: Custom Color (Red) applied to the RibbonControlAdv

### Caption ForeColor
Title color of the RibbonControlAdv can be set with the TitleColor property.
 
![](Designer_images/designer_img55.png)
_Figure 1252: RibbonControlAdv with TitleColor set to Green_

{% highlight C# %}
	this.ribbonControlAdv1.TitleColor = Color.Green;

	{% endhighlight %}
	{% highlight vbnet %}
	  Me.ribbonControlAdv1.TitleColor = Color.Green;
	{% endhighlight %}
	
## Ribbon Merging
RibbonControlAdv allows merging the RibbonPanel in a child form to the RibbonPanel in the parent form without a single line of code.
To merge the RibbonPanel in the ChildForm with the RibbonPanel in the parent form, follow the below given steps.

### Through Designer
In a Ribbonform, add a RibbonControlAdv control and the required ToolStripTabItems and the ToolStripEx items.
From the ToolBox, add a RibbonPanelMergeContainer to the ChildForm. ToolStripEx can be added into this by right Clicking on it. 

 
 ![](Designer_images/designer_img56.png)
_Figure 1253: ToolStrip added to the RibbonPanelMergeContainer in the Child Form_
Now add this ChildForm to the RibbonForm that is the MDIParent of the ChildForm in the default manner.

{% highlight C# %}

ChildForm frm = new ChildForm(); 
frm.MdiParent = this; 
frm.Show();            

{% endhighlight %}

{% highlight vbnet %}

Dim frm As ChildForm = New ChildForm()
frm.MdiParent = Me
frm.Show()

{% endhighlight %}

> Note: The form's IsMDIContainer property must be set as true. Also the MDIParent Ribbonform should host a RibbonControlAdv to get the ChildForm's panels to be merged.

![](Designer_images/designer_img57.png)
_Figure 1254: Child Form added to Ribbon Form_
Run the sample to view the ChildForm and the RibbonPanel merged with the RibbonControlAdv in the ParentForm.
 
![](Designer_images/designer_img58.png)
_Figure 1255: ChildForm and RibbonPanel merged with the RibbonControlAdv_

## Tab Groups
RibbonControlAdv allows to create TabGroups using the TabGroups property available for the RibbonControlAdv.
### Creating TabGroup
### Through Designer

1. Clicking the TabGroup property will pop up a window like the one below and using this, number of groups can be added and customized using the Color, Name and Visible properties provided to the right of the window.
   ![](Designer_images/designer_img59.png)
   _Figure 1256: TabGroup Collection Editor_
2. Now create a ToolStripTabItem using the smart tag of the Ribbon.
3. Switch to the properties grid of the ToolStripTabItem, and select the tabgroup you have added through TabGroup property.
   ![](Designer_images/designer_img60.png)
   _Figure 1257: Selecting the Tab Group_
4. This will display the tab items in the RibbonControlAdv as shown in the image below.
   ![](Designer_images/designer_img61.png)
   _Figure 1258: RibbonControlAdv with Tab Group_
   
### Through Code

{% highlight C# %}

this.ribbonControlAdv1.TabGroups.Add(toolStripTabGroup3);
Syncfusion.Windows.Forms.Tools.ToolStripTabGroup toolStripTabGroup3 = new Syncfusion.Windows.Forms.Tools.ToolStripTabGroup();
this.ribbonControlAdv1.TabGroups.Add(toolStripTabGroup3);
this.ribbonControlAdv1.TabGroups.SetTabGroup(pageLayoutTabItem, toolStripTabGroup1);

{% endhighlight %}

{% highlight vbnet %}

Me.ribbonControlAdv1.TabGroups.Add(toolStripTabGroup3)
Dim toolStripTabGroup3 As Syncfusion.Windows.Forms.Tools.ToolStripTabGroup = New Syncfusion.Windows.Forms.Tools.ToolStripTabGroup
Me.ribbonControlAdv1.TabGroups.Add(toolStripTabGroup3)
Me.ribbonControlAdv1.TabGroups.SetTabGroup(pageLayoutTabItem, toolStripTabGroup1)
{% endhighlight %}

### Customization
Using the Color property, the color for the tabs can be set. Text for the tabs can be specified through Name property and the tabs can be shown or hidden using Visible property.
Programmatically these properties can be set using the below code snippets.

{% highlight C# %}

toolStripTabGroup3.Color = System.Drawing.Color.DarkBlue;
toolStripTabGroup3.Name = "New Group";
toolStripTabGroup3.Visible = true;

{% endhighlight %}

{% highlight vbnet %}

toolStripTabGroup3.Color = System.Drawing.Color.DarkBlue
toolStripTabGroup3.Name = "New Group"
toolStripTabGroup3.Visible = True
{% endhighlight %}

## Title Settings 
This section describes how to customize a normal windows form's title bar appearance using the RibbonControlAdv.
### Form Title Bar Settings
When an application is created, it is usually displayed with the form title bar. The RibbonControlAdv provides option to replace this title bar with the built-in RibbonControlAdv system buttons and this can be enabled by setting the IsFormManager property to true. 

{% highlight C# %}

this.ribbonControlAdv1.IsFormManager = true;

{% endhighlight %}

{% highlight vbnet %}

Me.ribbonControlAdv1.IsFormManager = True

 {% endhighlight %}
 
_Figure 1259: IsFormManager = "False"_Figure_

### Title Settings
The below properties deals with Ribbon title settings.
_Table 774: Property Table_
<table><tr><th>
 Property	</th><th>Description</th></tr>
<tr><td>TitleAlignment</td><td>	Sets the alignment of the Title.</td></tr>
<tr><td>TitleFont	</td><td> Sets the font style of the title.</td></tr>
<tr><td>TitleColor	</td><td>Sets the font color of the title.</td></tr></table>
 
{% highlight C# %}

this.ribbonControlAdv1.TitleAlignment = Syncfusion.Windows.Forms.Tools.TextAlignment.Center;
this.ribbonControlAdv1.TitleFont = new System.Drawing.Font("Arial", 9.75F);
this.ribbonControlAdv1.TitleColor = Color.GreenYellow;
 
{% endhighlight %}

{% highlight vbnet %}
 
Me.ribbonControlAdv1.TitleAlignment = Syncfusion.Windows.Forms.Tools.TextAlignment.Center
Me.ribbonControlAdv1.TitleFont = New System.Drawing.Font("Arial", 9.75F)
Me.ribbonControlAdv1.TitleColor = Color.GreenYellow
{% endhighlight %}

## Persistence Support
RibbonControlAdv comes with persistence support. Using this we can restore the saved state of the ribbon control.
Persistence works for the following.
* The items in the QuickAccessToolBar that are added through the "Customize Quick Access ToolBar" can be persisted.
* Items added through the context menu that appears while clicking the dropdown arrow to the right of the QuickAccessToolBar can be persisted.
* The collapsed / expanded / floating state of the RibbonPanel can be persisted.
* The position of the QuickAccessToolBar, either below or above the ribbon panel can be persisted.

## Events And Methods
RibbonControlAdv comes with various events and methods to make easy customization.
### Events
_Table 775: Events Table_
<table><tr><th>
Events	</th><th>Description</th>	<th>EventArgs</th>
QuickAccessToolbar Events</th></tr>
<tr><td>RibbonControlAdv1.BeforeCustomizeDropDownPopup</td><td>	Occurs before the DropDown of QuickItemsDropDownButton is shown.</td><td>	DropDownEventArgs</td></tr>
<tr><td>RibbonControlAdv1.AfterCustomizeDropDownPopup	</td><td>Occurs after the DropDown of QuickItemsDropDownButton is shown.	</td><td>EventArgs</td></tr>
<tr><td>RibbonControlAdv1.Header.QuickItems.BeforeAddItem</td><td>	Occurs before ToolStripItem added to the QuickAccessPanel collection.	</td><td>RibbonItemsEventArgs</td></tr>
<tr><td>RibbonControlAdv1.Header.QuickItems.BeforeRemoveItem</td><td>	Occurs before ToolStripItem is removed from the QuickAccessPanel collection.</td><td>	RibbonItemsEventArgs</td></tr>
<tr><td>RibbonControlAdv.Header.QuickItemAdded	</td><td>Occurs when an item is added to the Quick Menu.</td><td>	ToolStripItemEventArgs</td></tr>
<tr><td>RibbonControlAdv.Header.QuickItemRemoved</td><td>	Occurs when an item is removed from the Quick Menu.</td><td>	ToolStripItemEventArgs</td></tr>
<tr><th>ToolStripTabItem Events</th></tr>
<tr><td>RibbonControlAdv1.SelectedTabItemChanged	</td><td>Occurs when selected ToolStripTabItem has changed.</td><td>	SelectedTabChangedEventArgs</td></tr>
<tr><td>RibbonControlAdv1.Header.MainItems.BeforeAddItem	</td><td>Occurs before a ToolStripItem is added to the collection.	</td><td>RibbonItemEventArgs</td></tr>
<tr><td>RibbonControlAdv1.Header.MainItems.BeforeRemoveItem</td><td>	Occurs before a ToolStripItem is removed from the collection.</td><td>	RibbonItemEventArgs</td></tr>
<tr><th>OfficeMenuButton Event</th></tr>
</table>

### Methods
_Table 776: Methods Table_
<table><tr><th>
Methods</th><th>	Description</th></tr>
<tr><th>QuickAccessToolbar Methods</th></tr>
<tr><td>RibbonControlAdv1.ShowCustomizeDialog</td><td>	Shows QuickItems customizing dialog.</td></tr>
<tr><td>RibbonControlAdv1.Header.AddQuickItem</td><td>	Adds ToolStripItems to the QuickAccessPanel.</td></tr>
<tr><td>RibbonControlAdv1.Header.QuickItems.RemoveAt</td><td>	Removes the specified ToolStripItems from the QuickAccessPanel.</td></tr>
<tr><th>ToolStripTabItem Method</th></tr>
<tr><td>RibbonControlAdv1.Header.AddMainItem</td><td>	Adds ToolStripTabItems to the RibbonPanel.</td></tr>
<tr><td>RibbonControlAdv1.Header.MainItems.RemoveAt</td><td>	Removes the specified ToolStripTabItems from the QuickAccessPanel.</td></tr>
</table>

### SelectedTabItemChanged Event
This event is handled when selected tab of the RibbonControlAdv is changed. With the SelectedTabChangedEventArgs of this event, we can retrieve the NewSelectedTab and PrevSelectedTab.

{% highlight C# %}

private void ribbonControlAdv1_SelectedTabItemChanged(object sender, SelectedTabChangedEventArgs e)
{
    MessageBox.Show(e.NewSelectedTab.Text);
} 
{% endhighlight %}

{% highlight vbnet %}

Private Sub ribbonControlAdv1_SelectedTabItemChanged(ByVal sender As Object, ByVal e As SelectedTabChangedEventArgs)
    MessageBox.Show(e.NewSelectedTab.Text)

End Sub
	{% endhighlight %}
	
### BeforeCustomizeDropDownPopup Event
RibbonControlAdv has two events BeforeCustomizeDropDownPopup and AfterCustomizeDropDownPopup events that are handled before and after the CustomizeDropDownPopup is activated.
#### Example
The QAT context menu items can be accessed through the DropDownEventArgs of the BeforeCustomizeDropDownPopup event and the QAT context menu can be customized such as adding new items, accessing existing items and so on.
{% highlight C# %}

ToolStripButton newItem = new ToolStripButton();
private void ribbonControlAdv1_BeforeCustomizeDropDownPopup(object sender, DropDownEventArgs e)
{
    newItem.Text = "New Item";
    e.DropDown.Items.Add(newItem);
    foreach (ToolStripItem ts in e.DropDown.Items)
    {
        this.listBox1.Items.Add(ts.Text);
    }
} 
{% endhighlight %}

{% highlight vbnet %}

Private newItem As ToolStripButton = New ToolStripButton()
Private Sub ribbonControlAdv1_BeforeCustomizeDropDownPopup(ByVal sender As Object, ByVal e As DropDownEventArgs)
    newItem.Text = "New Item"
    e.DropDown.Items.Add(newItem)
    For Each ts As ToolStripItem In e.DropDown.Items
        Me.listBox1.Items.Add(ts.Text)
    Next ts
End Sub
{% endhighlight %}