---
layout: post
title: Advanced-Features
description: advanced features
platform: WindowsForms
control: Docking Package 
documentation: ug
---

# Advanced Features

The following advanced features are covered in this section.

## DockingClientPanel

A premise of any docking windows implementation is the existence of a client window the bounds of which vary at run-time as windows get docked or undocked. This paradigm is extremely well suited for MDI type forms where theMDIClient window gets resized / relocated in synchronization with changes in the docking windows layout. 

Child controls located within the MDIClient window are thus always assured of a static spatial relationship with the parent container. 

Non-MDI forms, however, do not have any such client window and all non-dockable statically positioned controls risk being clipped by windows that are docked in their proximity. 

The Essential Tools DockingClientPanel control helps overcome this limitation by providing an auto-resized client surface on which a form's non-dockable controls may be located.



N> The DockingClientPanel control is intended only for use with forms that do not have the MDIContainer style set.

### Using the DockingClientPanel Control

The following sequence lists the steps involved in setting up a docking layout on a non-MDIContainer form using the DockingClientPanel. The DockingClientPanel is used here because in addition to the docking windows, the host form also contains several non-dockable controls that require a container with static relative bounds for implementing positioning and layout management. 

1. Add the DockingManager to the form and apply the EnableDocking on dockingManager1 property for those controls that need to be set as docking windows.
2. Select the DockingClientPanel control from the designer tool box and drop it onto the form hosting the DockingManager. Size the control so that its bounds are sufficient to accommodate any non-dockable child controls that may already be present on the form.
3. If any non-dockable controls are present on the form, then drag-and-drop these controls onto the DockingClientPanel instance.
4. Set the DockingClientPanel.SizeToFit property to be true. Turning on the SizeToFit property will force the DockingClientPanel to start interacting with the Essential Tools docking architecture and the control will automatically be resized / repositioned to occupy the form's client bounds, left unoccupied by the docking windows. 
5. Set the BorderStyle property to get the 3D or fixed single effect to the dockingclientpanel control.
6. The DockingClientPanel will now function as a proxy for the form's client surface and all controls originally intended to be placed on the form should henceforth be located on the DockingClientPanel; any anchoring / layout features for the child controls should be set relative to the DockingClientPanel. 
7. To add controls directly to the form, the SizeToFit property can temporarily be turned off within the designer and the form resized to expose its surface. At run-time, the SizeToFit property is always enabled. 

	Table 58: DockingClientPanel Property Table

	<table>
	<tr>
	<td>
	DockingClientPanel Property</td><td>
	Description</td></tr>
	<tr>
	<td>
	SizeToFit</td><td>
	Gets or sets a value indicating whether the control is sized to fill the form's area.</td></tr>
	<tr>
	<td>
	BorderStyle</td><td>
	Indicates the border Style of the Control.</td></tr>
	</table>


8. DockingClientPanel control can be added to the Non-MDI forms using the below code snippet for example.

   ~~~ cs



		//Declaration and initialization

		private Syncfusion.Windows.Forms.Tools.DockingClientPanel dockingClientPanel1;

		this.dockingClientPanel1 = new Syncfusion.Windows.Forms.Tools.DockingClientPanel();

		this.dockingClientPanel1.SuspendLayout();



		//Add a control to dockingclientpanel

		this.dockingClientPanel1.Controls.Add(this.tabControlAdv1);



		//set the properties

		this.dockingClientPanel1.Location = new System.Drawing.Point(0, 133);

		this.dockingClientPanel1.Name = "dockingClientPanel1";

		this.dockingClientPanel1.Size = new System.Drawing.Size(600, 369);

		this.dockingClientPanel1.SizeToFit = true;

		this.dockingClientPanel1.TabIndex = 0;

		this.dockingClientPanel1.Paint += new System.Windows.Forms.PaintEventHandler(this.dockingClientPanel1_Paint);

		this.DockingClientPanel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D



		//Add the control to the form

		this.Controls.Add(this.dockingClientPanel1);

		this.dockingClientPanel1.ResumeLayout(false);

   ~~~
   {:.prettyprint}

   ~~~ vbnet



		' Declaration and initialization

		Private dockingClientPanel1 As Syncfusion.Windows.Forms.Tools.DockingClientPanel

		Me.dockingClientPanel1 = New Syncfusion.Windows.Forms.Tools.DockingClientPanel()

		Me.dockingClientPanel1.SuspendLayout()



		' Add a control to dockingclientpanel 

		Me.dockingClientPanel1.Controls.AddRange(New System.Windows.Forms.Control() {Me.tabControlAdv1})



		'set the properties

		Me.dockingClientPanel1.AutoScroll = True

		Me.dockingClientPanel1.Location = New System.Drawing.Point(106, 0)

		Me.dockingClientPanel1.Name = "dockingClientPanel1"

		Me.dockingClientPanel1.Size = New System.Drawing.Size(452, 417)

		Me.dockingClientPanel1.SizeToFit = True

		Me.DockingClientPanel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D

		' Add the control to the form

		Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.dockingClientPanel1})

		Me.dockingClientPanel1.ResumeLayout(False)
   ~~~
   {:.prettyprint}


 ![](Advanced-Features_images/Advanced-Features_img2.png) 



A sample which discusses DockingClientPanel is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo

### Properties

The DockingClientPanel can be given an attractive look and feel using the appearance and size properties. These properties are discussed in detail below. This section also gives an idea about the scrolling feature available for the DockingClientPanel.

### Background and Foreground Settings

The background and foreground of the DockingClientPanel control can be customized using the below properties.

Background color of the control can be set using the BackColor property. Background image for the control can be specified using BackgroundImage property and image layout is set through BackgroundImageLayout property. Below are the code snippets to set these properties programmatically.

Table 59: DockingClientPanel Property Table

<table>
<tr>
<td>
DockingClientPanel Property</td><td>
Description</td></tr>
<tr>
<td>
BackColor</td><td>
Indicates the background color of the component.</td></tr>
<tr>
<td>
BackgroundImage</td><td>
Indicates the background image used for the control.</td></tr>
<tr>
<td>
BackgroundImageLayout</td><td>
Indicates the background image layout used for the control.</td></tr>
</table>


{% highlight C# %}




this.dockingClientPanel1.BackColor = System.Drawing.Color.AliceBlue;

this.dockingClie{_
{% endhighlight %}




{% highlight vbnet %}




Me.dockingClientPanel1.BackColor = System.Drawing.Color.AliceBlue

Me.dockingClientPanel1.BackgroundImage = CType((Resources.GetObject("dockingClientPanel1.BackgroundImage")), System.Drawing.Image)

Me.dockingClientPanel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch

{% endhighlight %}

The font used to display the text in the control is set through Font property and the forecolor through ForeColor property. Below are the code snippets to set these two properties programmatically.

Table 60: DockingClientPanel Property Table

<table>
<tr>
<td>
DockingClientPanel Property</td><td>
Description</td></tr>
<tr>
<td>
Font</td><td>
The font used to display text in the control.</td></tr>
<tr>
<td>
ForeColor</td><td>
The foreground color of this component, which is used to display the text.</td></tr>
</table>




{% highlight C# %}


this.dockingClientPanel1.Font = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

this.dockingClientPanel1.ForeColor = System.Drawing.Color.RoyalBlue;

{% endhighlight %}



{% highlight vbnet %}



Me.dockingClientPanel1.Font = New System.Drawing.Font("Arial", 9.0F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType((0), Byte))

Me.dockingClientPanel1.ForeColor = System.Drawing.Color.RoyalBlue

{% endhighlight %}

Below image illustrates a DockingClientPanel with the foreground and background properties set.



 ![](Advanced-Features_images/Advanced-Features_img3.jpeg) 


### Scroll properties

When the control contents are larger than its visible area, the scroll bars will automatically appear, by enabling AutoScroll property. The margin for the control during autoscroll is specified using AutoScrollMargin property and the minimum size for auto scroll area can be specified using the AutoScrollMinSize property.

Table 61: DockingClientPanel Property Table

<table>
<tr>
<th>
DockingClientPanel Property</th><th>
Description</th></tr>
<tr>
<td>
AutoScroll</td><td>
Indicates whether scroll bars automatically appear when the control contents are larger than its visible area.</td></tr>
<tr>
<td>
AutoScrollMargin</td><td>
Indicates the margin around controls during auto scroll.</td></tr>
<tr>
<td>
AutoScrollMinSize</td><td>
Indicates the minimum logical size for auto scroll region.</td></tr>
</table>



{% highlight C# %}



this.dockingClientPanel1.AutoScroll = true;

this.dockingClientPanel1.AutoScrollMargin = new System.Drawing.Size(1, 1);

this.dockingClientPanel1.AutoScrollMinSize = new System.Drawing.Size(1, 1);

{% endhighlight %}



{% highlight vbnet %}

Me.dockingClientPanel1.AutoScroll = True

Me.dockingClientPanel1.AutoScrollMargin = New System.Drawing.Size(1, 1)

Me.dockingClientPanel1.AutoScrollMinSize = New System.Drawing.Size(1, 1)     

{% endhighlight %}


 ![](Advanced-Features_images/Advanced-Features_img4.jpeg)



### Sizing Properties

AutoSize property when set, will allow the control to automatically size itself to fit its contents. The resize mode can be specified using AutoSizeMode property.

Table 62: DockingClientPanel Property Table

<table>
<tr>
<th>
DockingClientPanel Property</th><th>
Description</th></tr>
<tr>
<td>
AutoSize</td><td>
Specifies whether a control will automatically size itself to fit its contents.</td></tr>
<tr>
<td>
AutoSizeMode</td><td>
Specifies the mode by which the user interface element automatically resizes itself.</td></tr>
</table>



{% highlight C# %}




this.dockingClientPanel1.AutoSize = true;

this.dockingClientPanel1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;

{% endhighlight %}



{% highlight vbnet %}


Me.dockingClientPanel1.AutoSize = True

Me.dockingClientPanel1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
{% endhighlight %}

## Dock State Persistence

The docking behavior can be saved in the following formats.

* Binary Format
* XML Format
* IsolatedStorage medium
* MemoryStream
* PersistState property

The docking windows framework has a fully built-in serialization feature that provides automatic serialization of the form's docking state. In addition to this automatic dock state persistence during application termination and start, multiple intermediate docking states can be saved or loaded anytime using the programmatic API. The serialization mechanism is implemented using the standardized Syncfusion.Windows.Forms.AppStateSerializer component that acts as a central coordinator of all the Essential Tools components and provides the option to read / write to different media such as the default Isolated Storage, XML file, XML stream, Binary file, Binary stream and the Windows Registry.

### Persisting Dock State in default storage

The dock state of a control can be persisted by setting the PersistState property of Docking manager. This information is stored in the Isolated storage.

Table 63: DockingClientPanel Property Table

<table>
<tr>
<th>
DockingClientPanel Property</th><th>
Description</th></tr>
<tr>
<td>
PersistState</td><td>
Gets or sets a value indicating whether the application's docking window state should be persisted.</td></tr>
</table>



{% highlight C# %}



this.dockingManager1.PersistState = true;
{% endhighlight %}





{% highlight vbnet %}

Me.dockingManager1.PersistState = True
{% endhighlight %}

The DockingManager has built-in support for dock state serialization that can be enabled or disabled using the PersistState property. When the PersistState property is set to True, closing the form and hosting the docking windows will force the DockingManager to capture the current docking layout and serialize it using the Essential Studio AppStateSerializer serialization.

The default serialization option is Isolated storage and the System.IO.IsolatedStorage routines normally store application specific encrypted entries under the 'C:\Documents and Settings\[USER name]\Local Settings\Application Data\IsolatedStorage\' folder. All of the Essential Tools framework components use the 'Syncfusion.Runtime.Serialization.AppStateSerializer' class in the Shared library for Read/Write. The AppStateSerializer is fully documented and can be initialized for different persistence mediums such as XML / Binary files, XML / Binary streams, and the Win32 Registry using its API.

The default auto serialization implementation for the DockingManager uses a single instance of the AppStateSerializer that you can access through the AppStateSerializer.GetSingleton() method and reinitialize if necessary. But this single reinitialization should be done within the application’s Main method before the first instance gets a chance to be created. Another option would be to use a custom instance of the AppStateSerializer and pass this to application-level invocations of the DockingManager's LoadDockState / SaveDockState routines. 

### LoadDockState and SaveDockState methods

#### LoadDockState

Table 64: Methods Table

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
LoadDockState</td><td>
Reads the persisted dockstate from the Isolated Storage. </td></tr>
<tr>
<td>
LoadDockState (Overloaded)</td><td>
Reads a previously serialized dockstate using the AppStateSerializer object. Parameter is,Serializer - An instance of AppStateSerializer class.</td></tr>
<tr>
<td>
LoadDockState (Overloaded)</td><td>
Reads a previously serialized dockstate for the specified dockable control and applies the new state. The parameters are, Serializer - An instance of AppStateSerializer class.Ctrl - Indicates the docked control.</td></tr>
</table>




{% highlight C# %}


this.dockingManager1.LoadDockState();

this.dockingManager1.LoadDockState(serializer);

this.dockingManager1.LoadDockState(serializer, this.listBox1);
{% endhighlight %}





{% highlight vbnet %}


Me.dockingManager1.LoadDockState(serializer)

Me.dockingManager1.LoadDockState();

Me.dockingManager1.LoadDockState(serializer, this.listBox1)
{% endhighlight %}

#### SaveDockState

Table 65: Methods Table

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
SaveDockState</td><td>
Saves the current dockstate to Isolated Storage.</td></tr>
<tr>
<td>
SaveDockState (Overloaded)</td><td>
Saves the current dockstate information to the specified AppStateSerializer. Parameter is,Serializer - An instance of AppStateSerializer class.</td></tr>
<tr>
<td>
LoadDockState (Overloaded)</td><td>
Saves the dockstate information for the specified dockable control. The parameters are, Serializer - An instance of AppStateSerializer class.Ctrl - Indicates the docked control.</td></tr>
</table>




{% highlight C# %}



this.dockingManager1.SaveDockState();

this.dockingManager1.SaveDockState(serializer);

this.dockingManager1.SaveDockState(serializer, this.listBox1);

{% endhighlight %}


{% highlight vbnet %}



Me.dockingManager1.SaveDockState()

Me.dockingManager1.SaveDockState(serializer)

Me.dockingManager1.SaveDockState(serializer, this.listBox1)
{% endhighlight %}

### Persisting Dock state in XML file

When the DockingManager's PersistState property is set, it will save the dock state into default persistence medium, 'IsolatedStorage'. To store the dock state to some other medium like XML, it could be done as follows:



{% highlight C# %}



using Syncfusion.Runtime.Serialization;

// Persist the dock state into XML File named Dock1.xml. Use this line in the constructor of Control which hosts the dockinglayout 

public form1()

{ 

AppStateSerializer.InitializeSingleton(SerializeMode.XMLFile,"Dock1"); 

}
{% endhighlight %}





{% highlight vbnet %}


Imports Syncfusion.Runtime.Serialization

' Persist the dock state into XML File named Dock1.xml.Use this line in the constructor of Control which hosts the dockinglayout 

Private Sub New()

        AppStateSerializer.InitializeSingleton(SerializeMode.XMLFile, "Dock1")

End Sub()
{% endhighlight %}

### Persisting Dock State in Memory Stream

To persist docking information in a database, we need to serialize the state into a memory stream. After which the stream is written into the database. The field to where the dock state is saved is binary.

### Storing State



{% highlight C# %}



// Saving dockstate to memory stream  

MemoryStream ms = new MemoryStream();

AppStateSerializer aser = new AppStateSerializer(SerializeMode.BinaryFmtStream, ms);

this.dockingManager1.SaveDockState(aser);

aser.PersistNow();

//Code to store the memory stream into database. Depends upon the database.

{% endhighlight %}



{% highlight vbnet %}


' Saving dockstate to memory stream  

Dim ms As MemoryStream = New MemoryStream()

Dim aser As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFmtStream, ms)

Me.dockingManager1.SaveDockState(aser) 

aser.PersistNow() 

'Code to store the memory stream into database. Depends upon the database.

Retrieving State

{% endhighlight %}




{% highlight C# %}

//Code to retrieve data(stream) from database

MemoryStream ms = new MemoryStream(val);

ms.Position = 0;

AppStateSerializer aser = new AppStateSerializer(SerializeMode.BinaryFmtStream, ms);

this.dockingManager1.LoadDockState(aser);

{% endhighlight %}




{% highlight vbnet %}

'Code to retrieve data(stream) from database

Dim ms As MemoryStream = New MemoryStream(value)

ms.Position = 0

Dim aser As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFmtStream, ms)

Me.dockingManager1.LoadDockState(aser)

{% endhighlight %}

To serialize in Binary Format, use the below code.



{% highlight C# %}



// To Save

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.BinaryFile, "myfile");

this.dockingManager1.SaveDockState(serializer);

serializer.PersistNow();



// To Load

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.BinaryFile, "myfile");

this.dockingManager1.LoadDockState(serializer);
{% endhighlight %}




{% highlight vbnet %}




' To Save

Dim serializer As New AppStateSerializer(SerializeMode.BinaryFile, "myfile")

Me.dockingManager1.SaveDockState(serializer)

serializer.PersistNow()



' To Load

Dim serializer As New AppStateSerializer(SerializeMode.BinaryFile, "myfile")

Me.dockingManager1.LoadDockState(serializer)

{% endhighlight %}

To serialize in Isolated Storage medium, use the below code.



{% highlight C# %}


// To Save

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.IsolatedStorage, "myfile");

this.dockingManager1.SaveDockState(serializer);

serializer.PersistNow();



// To Load

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.IsolatedStorage, "myfile");

this.dockingManager1.LoadDockState(serializer);
{% endhighlight %}



{% highlight vbnet %}



' To Save

Dim serializer As New AppStateSerializer(SerializeMode.IsolatedStorage, "myfile")

Me.dockingManager1.SaveDockState(serializer)

serializer.PersistNow()



' To Load

Dim serializer As New AppStateSerializer(SerializeMode.IsolatedStorage, "myfile")

Me.dockingManager1.LoadDockState(serializer)
{% endhighlight %}


LoadDesignerDockState() - The dock state that is set through visual designer can be restored by calling LoadDesignerDockState method.

{% highlight C# %}




this.dockingManager1.LoadDesignerDockState();
{% endhighlight %}

{% highlight vbnet %}




Me.dockingManager1.LoadDesignerDockState()

{% endhighlight %}

GetSerializedControls - Calling the GetSerializedControls method will return the serialized control collection enumerator in the specified serializer. This can be done through code as follows.

Table 66: Parameter Table

<table>
<tr>
<th>
Parameter</th><th>
Description</th></tr>
<tr>
<td>
Serializer</td><td>
An instance of AppStateSerializer class.</td></tr>
</table>



{% highlight C# %}




this.dockingManager1.GetSerializedControls(serializer);

Console.Write("Serialized controls :" + this.dockingManager1.GetSerializedControls(serializer));
{% endhighlight %}




{% highlight vbnet %}



Me.dockingManager1.GetSerializedControls(serializer)

Console.Write("Serialized controls :" + Me.dockingManager1.GetSerializedControls(serializer))
{% endhighlight %}

{% seealso %}

[ProvidePersistenceID Event](/windowsforms/Tools/DockingPackage/Docking-Events.html#providepersistenceid-event), [How to avoid flickering while loading dock state?](/windowsforms/Tools/DockingPackage/FrequentlyAskedQuestions/Dock-State.html#how-to-avoid-flickering-while-loading-dock-state), 


How to serialize or deserialize the docking state for a docked control on loading the application?

{% endseealso %}

N> PersistState property mechanism assumes that the DockingManger is hosted on a form and captures the docking layout on the host form’s closing event. When DockingManager is hosted on a UserControl, LoadDockState and SaveDockState methods have to be called explicitly, on the Load and Closed events of the form that hosts the UserControl.

## MDI Child Transition

You can convert the docked control to an MDI child form and vice versa by referring the following steps and code example.

1. Add the required Syncfusion assembly references.
2. Declare and initialize the DockingManager and other controls. 
3. Set the properties required and add the controls to the form. Set the IsMdiContainer property of the form to true.
4. Call the SetAsMDIChild method. This method sets the specified docked control as an MDI child.

		Table 67: Methods Table

		<table>
		<tr>
		<td>
		Methods</td><td>
		Description</td></tr>
		<tr>
		<td>
		SetAsMDIChild </td><td>
		Sets the control specified in Ctrl parameter as MDI child when bsetMDI is set to true. The parameter are, Ctrl - Indicates the docked control.bsetMDI - Represents a Boolean value indicating true or false.</td></tr>
		<tr>
		<td>
		SetAsMDIChild(Overloaded)</td><td>
		Sets the specified docked control as MDI child with the new size provided by using the Layout parameter.Ctrl - Indicates the docked control.bsetMDI - Represents a Boolean value indicating true or false.Layout - Stores a set of four integers that represents the location and size of a rectangle.</td></tr>
		</table>




   ~~~ cs


		private void button1_Click(object sender, System.EventArgs e)

		{

		//Sets the panel1 as child form for the MDI form

		this.dockingManager1.SetAsMDIChild(this.panel1,true);

		}

		private void button2_Click(object sender, System.EventArgs e)

		{

		//Sets the MDI child form to the normal Docking window.

		this.dockingManager1.SetAsMDIChild(this.panel1,false);

		}



		//Overloaded

		private void button1_Click(object sender, System.EventArgs e)

		{

		//Sets the panel1 as child form for the MDI form

		this.dockingManager1.SetAsMDIChild(listBox1,true, new Rectangle(200,400,500,300));

		}

		private void button2_Click(object sender, System.EventArgs e)

		{

		//Sets the MDI child form to the normal Docking window.

		this.dockingManager1.SetAsMDIChild(listBox1,true, new Rectangle(200,400,500,300));

		}

   ~~~
   {:.prettyprint}



   ~~~ vbnet




		Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles button1.Click

		'Sets the panel1 as child form for the MDI form

		Me.dockingManager1.SetAsMDIChild(Me.panel1,True)

		End Sub



		Private Sub button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles button2.Click

		'Sets the MDI child form to the normal Docking window.

		Me.dockingManager1.SetAsMDIChild(Me.panel1,False)

		End Sub



		''Overloaded

		Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles button1.Click

		'Sets the panel1 as child form for the MDI form

		Me.dockingManager1.SetAsMDIChild(listBox1,True, New Rectangle(200,400,500,300))

		End Sub



		Private Sub button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles button2.Click

		'Sets the MDI child form to the normal Docking window.

		Me.dockingManager1.SetAsMDIChild(listBox1,True, New Rectangle(200,400,500,300))

		End Sub
   ~~~
   {:.prettyprint}


5. Run the application, click the buttons and see the respective transitions.

   ![](Advanced-Features_images/Advanced-Features_img6.png) 



   ![](Advanced-Features_images/Advanced-Features_img7.png)





N> You can set the docked control as an MDI Child in an easy method, by using the "MDI Child" option in the context menu.

A sample that demonstrates MDI child transition is available in the following sample installation path.

C:\Users\&lt;User&gt;\AppData\Local\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Docking Manager\MDI\CS

### Office 2007 Style for MDI Child Form

The MDI child forms can have Office2007 look and feel. It can be enabled through Office2007MdiChildForm property. Color schemes are also supported that can be specified by using Office2007MdiColorScheme property.



{% highlight C# %}



this.dockingManager1.Office2007MdiChildForm = true;



//Sets the Blue Color scheme.

this.dockingManager1.Office2007MdiColorScheme = Office2007Theme.Blue;
{% endhighlight %}





{% highlight vbnet %}


Me.dockingManager1.Office2007MdiChildForm = True



'Sets the Blue Color scheme.

Me.dockingManager1.Office2007MdiColorScheme = Office2007Theme.Blue
{% endhighlight %}


![](Advanced-Features_images/Advanced-Features_img9.jpeg) 



{% seealso %}

[How to avoid flickering while creating MDI child form?](/windowsforms/Tools/DockingPackage/FrequentlyAskedQuestions/MDIChild.html#how-to-avoid-flickering-while-creating-mdi-child-form),[How to detect whether a particular control is in MDI mode or not?](/windowsforms/Tools/DockingPackage/FrequentlyAskedQuestions/MDIChild.html#how-to-detect-whether-a-particular-control-is-in-mdi-mode-or-not)

{% endseealso %}

## Nested Docking and Floating

Docking windows framework provides full-fledged support for nested docking and Floating at runtime without implementing a single piece of code. 

 ![](Advanced-Features_images/Advanced-Features_img10.jpeg) 



 ![](Advanced-Features_images/Advanced-Features_img11.jpeg) 



 ![](Advanced-Features_images/Advanced-Features_img12.png) 



You can create Nested Docking Layouts using UserControls. A sample demonstrating this is available in the below sample installation path.

C:\Users\&lt;User&gt;\AppData\Local\Syncfusion\EssentialStudio\13.2.0.13\Windows\Tools.Windows\Samples\Docking Manager\Docking Layouts\CS

## Linked Managers

Linked Manager concept allows the transfer of a docking window from one form to another form or usercontrol. It is done with a single method call. 

AddToTargetManagersList method will let you add the DockingManager to the Target DockingManagers list, and hence transfers the docking window to the selected target form. 

RemoveFromTargetManagersList method, removes the DockingManager from the TargetManagers List.

Table 68: Methods Table

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
AddToTargetManagersList </td><td>
Adds the DockingManager to the Target Providers List, belonging to the current manager. The parameter is,dockingmgr - docking manager to be added to the target list.</td></tr>
<tr>
<td>
RemoveFromTargetManagersList</td><td>
Removes the DockingManager from the Target Providers List, belonging to the current manager. The parameter is,dockingmgr - docking manager to be removed from the target list.</td></tr>
</table>



{% highlight C# %}




//Control from form2 to be transferred to form1

//dockingManager1 an instance of Form1 and dockingManager2 an instance of Form2

this.dockingManager1.AddToTargetManagersList(dockingManager2);

{% endhighlight %}



{% highlight vbnet %}


'Control from form2 to be transferred to form1

'dockingManager1 an instance of Form1 and dockingManager2 an instance of Form2

Me.dockingManager1.AddToTargetManagersList(dockingManager2)
{% endhighlight %}

### Events during the Transfer of Docking Manager

If any control comes from other docking manager, [TransferredToManager event](/windowsforms/Tools/DockingPackage/Docking-Events.html#transferredtomanager-event) will be handled and if a control is transferred out to other docking managers, [TransferredFromManager event](/windowsforms/Tools/DockingPackage/Docking-Events.html#transferringfrommanager-event) will be handled.

