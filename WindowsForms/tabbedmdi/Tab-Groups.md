---
layout: post
title: Tab Groups in Windows Forms TabbedMDI control | Syncfusion
description: Learn about Tab Groups support in Syncfusion Windows Forms TabbedMDI control, its elements and more details.
platform: WindowsForms
control: TabbedMDIManager 
documentation: ug
---

# Tab groups in Windows Forms TabbedMDI control

TabbedMDIManager supports multiple TabGroups which can be resizable. It allows users to programmatically control and restrict the number and layout of the tab groups and also lets users to associate a form with a specific tab group. This way users can provide a custom tabbed layout for the end users of the TabbedMDI application. The MDI Children can arranged horizontally or vertically.

![Tab groups](Tab-Groups_images/Tab-Groups_img1.jpeg)



The below topics will guide you on how to create tab groups and set borders for the tab groups.

## Creating tab groups

* To the application add Tools.Windows and Shared.Base Syncfusion assemblies.
* Add 2 more forms and rename them as TabGroup1_Form and TabGroup2_Form. (The application now contains three forms (i.e.) Form1, TabGroup1_Form and TabGroup2_Form).
* In Form1, add the namespace Syncfusion.Windows.Forms.Tools.

{% tabs %}

{% highlight C# %}

Using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.Tools 

{% endhighlight %}

{% endtabs %}

* Declare the TabbedMDIManager in your form.

{% tabs %}

{% highlight C# %}

Private TabbedGroupedMDIManager tabbedMDIManager;

{% endhighlight %}

{% highlight VB %}

Private TabbedGroupedMDIManager As TabbedMDIManager 

{% endhighlight %}

{% endtabs %}

* Set the form's [IsMdiContainer](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.form.ismdicontainer?view=netframework-4.7.2) property to `true`.
* Initialize the TabbedMDIManager and set the required properties.

{% tabs %}

{% highlight C# %}

public Form1()

{

InitializeComponent();

// Initialize a TabbedGroupedMDIManager. 

this.tabbedMDIManager = new TabbedGroupedMDIManager();

// Indicates whether the user can drag and drop tabs(child forms) from one tab group to another. 

this.tabbedMDIManager.AllowTabGroupCustomizing = false;

// Align TabGroup horizontally.

this.tabbedMDIManager.Horizontal = true;

}

{% endhighlight %}


{% highlight VB %}



Public Sub New()

InitializeComponent()

' Initialize a TabbedGroupedMDIManager. 

Me.tabbedMDIManager = New TabbedGroupedMDIManager()

' Indicates whether the user can drag and drop tabs(child forms) from one tab group to another.

Me.tabbedMDIManager.AllowTabGroupCustomizing = False

' Align TabGroup horizontally.

Me.tabbedMDIManager.Horizontal = True

End Sub

{% endhighlight %}

{% endtabs %}

* Attach the TabbedMDIManager to your form and specify the Tab Groups.

{% tabs %}

{% highlight C# %}



private void Form1_Load(object sender, System.EventArgs e)

{

this.tabbedMDIManager.AttachToMdiContainer(this);

// Specify the tab groups.

this.tabbedMDIManager.TabbedGroups.Add(new TabbedGroup("TabGroup1"));

this.tabbedMDIManager.TabbedGroups.Add(new TabbedGroup("TabGroup2"));

}

{% endhighlight %}

{% highlight VB %}



Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load

Me.tabbedMDIManager.AttachToMdiContainer(Me)

' Specify the tab groups.

Me.tabbedMDIManager.TabbedGroups.Add(New TabbedGroup("TabGroup1"))

Me.tabbedMDIManager.TabbedGroups.Add(New TabbedGroup("TabGroup2"))

End Sub

{% endhighlight %}

{% endtabs %}

* Add 2 bar items (or buttons can also be used) to add the tab groups. In the barItem_click event, add the below given code.

{% tabs %}

{% highlight C# %}



// Adding tab group 1 forms by clicking on a barItem.

private void barItem1_Click(object sender, System.EventArgs e)

{

TabGroup1_Form  form = new TabGroup1_Form ();

form.Text = "TabGroup1_Child1";

// Add the TabGroup1_Form to a specific group.

this.tabbedMDIManager.TabbedGroups["TabGroup1"].AddForm(form);

}

// Adding tab group 2 forms by clicking on another barItem.

private void barItem2_Click(object sender, System.EventArgs e)

{

TabGroup2_Form  form = new TabGroup2_Form ();

form.Text = "TabGroup2_Child2";

// Add the TabGroup2_Form to a specific group.

this.tabbedMDIManager.TabbedGroups["TabGroup2"].AddForm(form);                        

}

{% endhighlight %}

{% highlight VB %}



' Adding tab group 1 forms by clicking on a barItem.

Private Sub barItem1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles barItem1.Click

Dim form As TabGroup1_Form = New TabGroup1_Form

Form.Text = "TabGroup1_Child1"

' Add the TabGroup1_Form to a specific group.

Me.tabbedMDIManager.TabbedGroups("TabGroup1").AddForm(Form)

End Sub

' Adding tab group 2 forms by clicking on another barItem.

Private Sub barItem2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles barItem2.Click

Dim form As TabGroup2_Form = New TabGroup2_Form

Form.Text = "TabGroup2_Child2"

' Add the TabGroup2_Form to a specific group.

Me.tabbedMDIManager.TabbedGroups("TabGroup2").AddForm(Form)

End Sub

{% endhighlight %}

{% endtabs %}


![Tab groups created by code](Tab-Groups_images/Tab-Groups_img2.jpeg)


The [AllowTabGroupCustomizing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html#Syncfusion_Windows_Forms_Tools_TabbedMDIManager_AllowTabGroupCustomizing) property indicates whether the user can drag and drop tabs (child forms) from one tab group to another.

The below methods can be used for specific functionalities in TabGroups.

Methods table

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
MakeSingleTabGroup</td><td>
Consolidates the child forms in different tab groups into a single tab group.</td></tr>
<tr>
<td>
MaximizeTabGroup</td><td>
This method is called to make the tab group host specified in the Syncfusion.Windows.Forms.Tools.TabHost occupy the maximum space.</td></tr>
<tr>
<td>
MoveActiveDocTo</td><td>
Moves the active form to the specified tab group.</td></tr>
<tr>
<td>
MoveDocTo</td><td>
Moves the child form to the specified tab group.</td></tr>
<tr>
<td>
CreateNewHorizontalGroup</td><td>
Creates a new horizontal tab group, moving the active child form to that group.</td></tr>
<tr>
<td>
CreateNewVerticalGroup</td><td>
Creates a new vertical tab group, moving the active child form to that group.</td></tr>
</table>

### Border settings

## Border color

To set the Border Color of the borders that appear under the MDI tabs, we can use the [BottomBorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabHost.html#Syncfusion_Windows_Forms_Tools_TabHost_BottomBorderColor) property of TabGroupHosts.

{% tabs %}

{% highlight C# %}



tabbedMDIManager.TabGroupHosts[0].BottomBorderColor=Color.Red;

tabbedMDIManager.TabGroupHosts[1].BottomBorderColor = Color.Green;

{% endhighlight %}

{% highlight VB %}



tabbedMDIManager.TabGroupHosts(0).BottomBorderColor=Color.Red

tabbedMDIManager.TabGroupHosts(1).BottomBorderColor = Color.Green

{% endhighlight %}

{% endtabs %}


![tab group items border color](Tab-Groups_images/Tab-Groups_img3.jpeg)


## Border height

To set the Border Height of the borders, we can use the [BottomBorderHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabHost.html#Syncfusion_Windows_Forms_Tools_TabHost_BottomBorderHeight) property of TabGroupHosts.

{% tabs %}

{% highlight C# %}



// To set the Border Height.   

tabbedMDIManager.TabGroupHosts[0].BottomBorderHeight = 0;

tabbedMDIManager.TabGroupHosts[1].BottomBorderHeight = 3;

// To set the Border Color.

tabbedMDIManager.TabGroupHosts[0].BottomBorderColor = Color.Black;

tabbedMDIManager.TabGroupHosts[1].BottomBorderColor = Color.Black;

{% endhighlight %}

{% highlight VB %}



'To set the Border Height.

tabbedMDIManager.TabGroupHosts(0).BottomBorderHeight = 0

tabbedMDIManager.TabGroupHosts(1).BottomBorderHeight = 3

'To set the Border Color.

tabbedMDIManager.TabGroupHosts(0).BottomBorderColor = Color.Black

tabbedMDIManager.TabGroupHosts(1).BottomBorderColor = Color.Black

{% endhighlight %}

{% endtabs %}

![Tab groups border height](Tab-Groups_images/Tab-Groups_img4.jpeg)


A sample which illustrates this feature is available in the below sample installation location.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo

