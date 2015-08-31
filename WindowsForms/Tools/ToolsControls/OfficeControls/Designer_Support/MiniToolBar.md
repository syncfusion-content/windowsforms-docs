---
layout: post
title: MiniToolBar
description: MiniToolBar
platform: Windows Forms
control: Tools 
documentation: ug
---

# MiniToolBar

Essential Tools comes with MiniToolBar control with similar look and feel of MS Office 2007. It appears when the user selects and right clicks on the text. It gives options to customize the selected text. It will look blurred in the beginning, but once the mouse is focussed on it, it will be prominent to the users. 

> Note: MiniToolBar control uses a ToolStripPanelItem to hold its options.
 ![](Designer_images/designer_img63.png)
 _Figure 1260: MiniToolBar Displayed on a RichTextBox
### See Also

## Color Schemes in MiniToolBar
MiniToolbar supports all the three ColorSchemes of Office2007, which can be set using the ColorScheme property.
{% highlight C# %}

this.MiniToolBar.ColorScheme = Syncfusion.Windows.Forms.Tools.ToolStripEx.ColorScheme.Silver;

{% endhighlight %}

{% highlight vbnet %}

Me.MiniToolBar.ColorScheme = Syncfusion.Windows.Forms.Tools.ToolStripEx.ColorScheme.Silver
{% endhighlight %}

![](Designer_images/designer_img64.png)
 
_Figure 1261: MiniToolBar with Silver Color Scheme_

![](Designer_images/designer_img65.png)
 
Figure 1262: MiniToolBar with Blue Color Scheme

![](Designer_images/designer_img66.png)
Figure 1263: MiniToolBar with Black Color Scheme

##Creating MiniToolBar
The sub topics under this section will guide you to create a MiniToolBar control, add controls to it and then associate it with a control. The topics are as follows.
###	Through Designer
To add a MiniToolBar to the form, follow the below given steps.
* Drag and drop a MiniToolBar from the toolbox. 
  ![](Designer_images/designer_img67.png)
  _Figure 1264: MiniToolBar in Toolbox_
* Open the Items Collection Editor of the MiniToolBar.
  ![](Designer_images/designer_img68.png)
  _Figure 1265: Items property in the Properties Grid_
* Add the required items into the MiniToolBar from the Items collection Editor and click Ok. 
  ![](Designer_images/designer_img69.png)
  _Figure 1266: Items Collection Editor_
* Now, drag and drop the control with which the MiniToolBar is to be associated, for eg. a RichTextBox.
* Set the MiniToolBar's AssociatedControl property to the control to which this is to be associated.
  ![](Designer_images/designer_img70.png)
  _Figure 1267: AssociatedControl property of MiniToolBar_
* Run the sample and right-click on the RichTextBox to view the MiniToolBar. 
  ![](Designer_images/designer_img71.png)
  _Figure 1268: MiniToolBar created Through Designer_
  
  > Note: You can also show a MiniToolBar by just selecting the text, as in MSOffice2007, using MouseUp event of the particular control.
  A sample which demonstrates this features is available in the below sample installation location.
  …\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo

  
### See Also
Creating MiniToolBar [Through Code](/windowsforms/tools/officecontrols/designer_support/minitoolbar#throughcode)

### Through Code
This section guides you with the steps to add a MiniToolbar and associating with a RichTextBox control programmatically.
* Add the given namespaces.
 
{% highlight C# %}
 
using Syncfusion.Windows.Forms;  
using Syncfusion.Windows.Forms.Tools;   
 
{% endhighlight %}

{% highlight vbnet %}
 
Imports Syncfusion.Windows.Forms
Imports Syncfusion.Windows.Forms.Tools
 
{% endhighlight %}

* Declare and initialize the MiniToolBar control. Also declare the controls to be added to the MiniToolBar, and also the control, in this case RichTextBow, to which MiniToolBar is to be associated.
 
{% highlight C# %}
 
private Syncfusion.Windows.Forms.Tools.MiniToolBar MiniToolBar;
private System.Windows.Forms.RichTextBox richTextBox1;
 
//Control to be added to the MiniToolBar
private Syncfusion.Windows.Forms.Tools.ToolStripPanelItem MiniToolBarPanelItem;
private Syncfusion.Windows.Forms.Tools.ToolStripPanelItem PanelItem1;
private System.Windows.Forms.ToolStripComboBox FontFaceCombo;
 
//initializing
this.MiniToolBar = new Syncfusion.Windows.Forms.Tools.MiniToolBar();
this.richTextBox1 = new System.Windows.Forms.RichTextBox();
this.MiniToolBarPanelItem = new Syncfusion.Windows.Forms.Tools.ToolStripPanelItem();
this.PanelItem1 = new Syncfusion.Windows.Forms.Tools.ToolStripPanelItem();
this.FontFaceCombo = new System.Windows.Forms.ToolStripComboBox();
 
{% endhighlight %}

{% highlight vbnet %}
 
Private MiniToolBar As Syncfusion.Windows.Forms.Tools.MiniToolBar
Private richTextBox1 As System.Windows.Forms.RichTextBox
 
'Control to be added to the MiniToolBar
Private MiniToolBarPanelItem As Syncfusion.Windows.Forms.Tools.ToolStripPanelItem
Private PanelItem1 As Syncfusion.Windows.Forms.Tools.ToolStripPanelItem
Private FontFaceCombo As System.Windows.Forms.ToolStripComboBox
 
'Initializing
Me.MiniToolBar = New Syncfusion.Windows.Forms.Tools.MiniToolBar()
Me.richTextBox1 = New System.Windows.Forms.RichTextBox()
Me.MiniToolBarPanelItem = New Syncfusion.Windows.Forms.Tools.ToolStripPanelItem()
Me.PanelItem1 = New Syncfusion.Windows.Forms.Tools.ToolStripPanelItem()
Me.FontFaceCombo = New System.Windows.Forms.ToolStripComboBox()
 {% endhighlight %}
* Add the required items into the MiniToolBar.
 
{% highlight C# %}
 
//Adding Panel
this.MiniToolBar.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {this.MiniToolBarPanelItem});
 
//Customizing MiniToolBarPanelItem
this.MiniToolBarPanelItem.ForeColor = System.Drawing.Color.MidnightBlue;
this.MiniToolBarPanelItem.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {this.PanelItem1});
 
//Customizing the Panel
this.PanelItem1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {this.FontFaceCombo});
 
//Customizing the FontFaceCombo
this.FontFaceCombo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;     
 
{% endhighlight %}

{% highlight vbnet %}
'Adding Panel
Me.MiniToolBar.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.MiniToolBarPanelItem})
 
'Customizing MiniToolBarPanelItem
Me.MiniToolBarPanelItem.ForeColor = System.Drawing.Color.MidnightBlue
Me.MiniToolBarPanelItem.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.PanelItem1})
 
'Customizing the Panel
Me.PanelItem1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.FontFaceCombo})
 
'Customizing the FontFaceCombo
Me.FontFaceCombo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
 {% endhighlight %}
 
* Set the MiniToolBar's AssociatedControl property to the RichTextBox to which this is to be associated.
 
{% highlight C# %}
 
//Associates the MiniToolBar with the RichTextBox
this.MiniToolBar.AssociatedControl = this.richTextBox1;         
 
{% endhighlight %}

{% highlight vbnet %}
 
'Associates the MiniToolBar with the RichTextBox
Me.MiniToolBar.AssociatedControl = Me.richTextBox1

{% endhighlight %}

* Right-click on the RichTextBox to view the MiniToolBar.

  ![](Designer_images/designer_img72.png)
 
_Figure 1269: MiniToolbar with FontFaceCombo on a RichTextBox_
A sample which demonstrates how to create and add controls to the MiniToolBar is available in the below sample installation location.
…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo

## MiniToolBar Events
This section discusses about various events that can be handled for the MiniToolBar control. Following are the events covered.
###	ItemAdded Event
This event is handled when a ToolStripItem has been added to the ToolStrip's Item collection.
###Event Data
The ToolStripItemEventHandler receives an argument of type ToolStripItemEventArgs containing data related to this event. The following type ToolStripItemEventArgs member provide information specific to this event.
_Table 777: Member Table_
<table><tr><th>
Member</th><th>	Description</th></tr>
<tr><td>Item</td><td>	Gets a System.Windows.Forms.ToolStripItem for which to handle events.</td></tr></table>

{% highlight C# %}

private void miniToolBar1_ItemAdded(object sender, ToolStripItemEventArgs arg)
{
// You can see the below line in output window during runtime.
Console.WriteLine("ItemAdded event is raised");

e.Item = true;
//Display the ToolStripItem
Console.WriteLine("ToolStrip Item Name : " + arg.Item.ToString());
}

{% endhighlight %}

{% highlight vbnet %}

Private Sub miniToolBar1_ItemAdded(ByVal sender As Object, ByVal e As ToolStripItemEventArgs)
You can see the below line in output window during runtime.
Console.Write("ItemAdded event is raised")

e.Item = True
'Display the ToolStripItem
Console.Write("ToolStrip Item Name : " + arg.Item.ToString)
End Sub

{% endhighlight %}

### ItemClicked Event
This event is handled when a ToolStripItem has been added to the ToolStrip's Item collection.
###  Event Data
The ToolStripItemClickedEventHandler receives an argument of type ToolStripItemEventArgs containing data related to this event. The following type ToolStripItemEventArgs member provide information specific to this event.
_Table 778: Member Table_
<table><tr><th>
Member</th><th>	Description</th></tr>
<tr><td>ClickedItem</td><td>	Gets the item that is clicked on System.Windows.Forms.Toolstrip.
</td></tr>

{% highlight C# %}

private void miniToolBar1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
{
// You can see the below line in output window during runtime.
Console.WriteLine("ItemClicked event is raised");
//Display the ToolStripItem that is clicked
Console.WriteLine("ToolStrip Item Name : " + arg.ClickedItem.ToString());
}
{% endhighlight %}

{% highlight vbnet %}

Private Sub miniToolBar1_ItemClicked(ByVal sender As Object, ByVal e As ToolStripItemClickedEventArgs)
'You can see the below line in output window during runtime.
Console.Write("ItemClicked event is raised")
'Display the ToolStripItem that is clicked
Console.Write("ToolStrip Item Name : " + arg.ClickedItem.ToString)
End Sub

{% endhighlight %}

###	ItemRemoved Event
This event is handled when a ToolStripItem has been removed from the ToolStrip's Item collection.
### Event Data
The ToolStripItemEventHandler receives an argument of type ToolStripItemEventArgs containing data related to this event. The following ToolStripItemEventArgs member provide information specific to this event.
_Table 779: Member Table_
<table>
<tr><th>
Member</th><th>	Description</th></tr>
<tr><td>Item	</td><td>Gets a System.Windows.Forms.ToolStripItem for which to handle events.</td></tr>
</table>

{% highlight C# %}

private void miniToolBar1_ItemClicked(object sender, ToolStripItemEventArgs e)
{
e.Item = true;
}

{% endhighlight %}

{% highlight vbnet %}

Private Sub miniToolBar1_ItemClicked(ByVal sender As Object, ByVal e As ToolStripItemEventArgs)
e.Item = True
End Sub

{% endhighlight %}

### BeginDrag Event
This event is handled when the toolstrip has started to move with a ToolStripPanel.
{% highlight C# %}

private void miniToolBar1_BeginDrag(object sender, System.EventArgs e)
{
//You can see the below line in output window during runtime.
Console.Write("BeginDrag Event is raised");
}
{% endhighlight %}
{% highlight vbnet %}

Private Sub miniToolBar1_BeginDrag(ByVal sender As Object, ByVal e As System.EventArgs)
/You can see the below line in output window during runtime.
Console.Write("BeginDrag Event is raised");
End Sub
{% endhighlight %}

###	Opening Event
This event occurs when the drop down is opening.
### Event Data
The CancelEventHandler receives an argument of type CancelEventArgs containing data related to this event. The following CancelEventArgs members provide information specific to this event.
_Table 780: Member Table_
<table><tr><th>
Member</th><th>	Description</th></tr>
<tr><td>Cancel</td><td>	Gets or Sets a value indicating whether the event should be canceled.
</td></tr></table>

{% highlight C# %}

private void miniToolBar1_Opening(object sender, System.ComponentModel.CancelEventArgs e)
{
//EventArgs can give the options to Allow or Cancel the event by this method.
//Cancel is the boolean property which can prevent docking event when it is true.
e.Cancel=true;
}
{% endhighlight %}

{% highlight vbnet %}

Private Sub miniToolBar1_Opening(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs)
//EventArgs can give the options to Allow or Cancel the event by this method.
//Cancel is the boolean property which can prevent docking event when it is true.
e.Cancel=true;
End Sub

{% endhighlight %}

### Opened Event
This event occurs when the drop down has opened.

{% highlight C# %}
private void miniToolBar1_Opened(object sender, System.EventArgs e)
{
// You can see the below line in output window during runtime.
Console.Write(" Opened Event is raised");
}
{% endhighlight %}

{% highlight vbnet %}

Private Sub miniToolBar1_Opened(ByVal sender As Object, ByVal e As System.EventArgs)
'You can see the below line in output window during runtime.
Console.Write(" Opened Event is raised");
End Sub

{% endhighlight %}