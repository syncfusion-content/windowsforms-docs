---
layout: post
title: Serialization Support in Windows Forms Ribbon control | Syncfusion®
description: Learn about Serialization Support in Syncfusion® Windows Forms Ribbon (RibbonControlAdv) control and more details.
platform: windowsforms
control: RibbonControlAdv 
documentation: ug
---

# Serialization Support in Windows Forms Ribbon (RibbonControlAdv)

The RibbonControlAdv has built-in serialization support to serialize the entire Ribbon control state and details of the layout mode. It also provides supports to save and load the Ribbon at any time while running the application, either with simplified or normal layout.

## States which get serialized

*   The [`LayoutMode`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_LayoutMode) and [`EnableSimplifiedLayoutMode`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_EnableSimplifiedLayoutMode) properties of RibbonControlAdv can be persisted.
*	The items in the QuickAccessToolBar that are added through the “Customize Quick Access ToolBar” can be persisted.
*	Items added through the context menu that appears while clicking the dropdown arrow to the right of the QuickAccessToolBar can be persisted.
*	The collapsed / expanded / floating state of the RibbonPanel can be persisted.
*	The position of the QuickAccessToolBar, either below or above the ribbon panel can be persisted.

## Save state

### Save Ribbon state

#### Through Isolated storage

The Ribbon state can be saved in the isolated storage using the [`SaveState`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SaveState().html) function in the Ribbon. The isolated storage can be located in the following location: "C:\Users\<user>\AppData\Local\IsolatedStorage".

{% tabs %}

{% highlight c# %}

//Saves the current state in a Isolated storage
this.ribbonControlAdv1.SaveState();

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.SaveState()

{% endhighlight %}

{% endtabs %}

#### Through XML

The Ribbon state can be saved in an xml file and stored in a specific location using the [`AppStateSerializer`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Runtime.Serialization.AppStateSerializer.html#Syncfusion_Runtime_Serialization_AppStateSerializer__ctor_Syncfusion_Runtime_Serialization_SerializeMode_System_Object_). The instance of [`AppStateSerializer`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Runtime.Serialization.AppStateSerializer.html#Syncfusion_Runtime_Serialization_AppStateSerializer__ctor_Syncfusion_Runtime_Serialization_SerializeMode_System_Object_) must be passed as an argument to the [`SaveState`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SaveState_Syncfusion_Runtime_Serialization_AppStateSerializer_) function in the Ribbon. 

{% tabs %}

{% highlight c# %}

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.XMLFile, "D:/Ribbon Serialization/RibbonState");
this.wordribbon.SaveState(serializer);
serializer.PersistNow();

{% endhighlight %}

{% highlight vb %}

Dim serializer As AppStateSerializer = New AppStateSerializer(SerializeMode.XMLFile, "D:/Ribbon Serialization/RibbonState")
Me.wordribbon.SaveState(serializer)
serializer.PersistNow()

{% endhighlight %}

{% endtabs %}

### Save QAT state

Ribbon control provides an option to save the state of QAT alone instead of saving all Ribbon states using the [`SerializationOptions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.SerializationOptions.html). The [`SerializationOptions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.SerializationOptions.html) consists of two boolean properties such as [`SerializeQATItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.SerializationOptions.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SerializationOptions_SerializeQATItems) and [`SerializeTabItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.SerializationOptions.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SerializationOptions_SerializeTabItems) which are set as **"True"** by default. To serialize only the QAT state, the [`SerializeTabItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.SerializationOptions.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SerializationOptions_SerializeTabItems) property must be set as **"False"**. This instance of [`SerializationOptions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.SerializationOptions.html) must be passed as an argument to [`SaveState`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SaveState_Syncfusion_Runtime_Serialization_AppStateSerializer_Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SerializationOptions_) function in addition to the [`AppStateSerializer`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Runtime.Serialization.AppStateSerializer.html#Syncfusion_Runtime_Serialization_AppStateSerializer__ctor_Syncfusion_Runtime_Serialization_SerializeMode_System_Object_) instance.

{% tabs %}

{% highlight c# %}

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.XMLFile, "D:/Ribbon Serialization/QATState");
RibbonControlAdv.SerializationOptions options = new RibbonControlAdv.SerializationOptions();
options.SerializeTabItems = false;
this.wordribbon.SaveState(serializer);
serializer.PersistNow();

{% endhighlight %}

{% highlight vb %}

Dim serializer As AppStateSerializer = New AppStateSerializer(SerializeMode.XMLFile, "D:/Ribbon Serialization/QATState")
Dim options As RibbonControlAdv.SerializationOptions = New RibbonControlAdv.SerializationOptions()
options.SerializeTabItems = False
Me.wordribbon.SaveState(serializer)
serializer.PersistNow()

{% endhighlight %}

{% endtabs %}

### Save Tab state

Ribbon control provides an option to save the state of Ribbon Tabs alone instead of saving all Ribbon states using the [`SerializationOptions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.SerializationOptions.html). The [`SerializationOptions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.SerializationOptions.html) consists of two boolean properties such as [`SerializeQATItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.SerializationOptions.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SerializationOptions_SerializeQATItems) and [`SerializeTabItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.SerializationOptions.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SerializationOptions_SerializeTabItems) which are set as **"True"** by default. To serialize only the Tab state, the [`SerializeQATItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.SerializationOptions.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SerializationOptions_SerializeQATItems) property must be set as **"False"**. This instance of [`SerializationOptions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.SerializationOptions.html) must be passed as argument to the [`SaveState`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SaveState_Syncfusion_Runtime_Serialization_AppStateSerializer_Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SerializationOptions_) in addition to the [`AppStateSerializer`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Runtime.Serialization.AppStateSerializer.html#Syncfusion_Runtime_Serialization_AppStateSerializer__ctor_Syncfusion_Runtime_Serialization_SerializeMode_System_Object_) instance.

{% tabs %}

{% highlight c# %}

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.XMLFile, "D:/Ribbon Serialization/TabState");
RibbonControlAdv.SerializationOptions options = new RibbonControlAdv.SerializationOptions();
options.SerializeQATItems = false;
this.wordribbon.SaveState(serializer);
serializer.PersistNow();

{% endhighlight %}

{% highlight vb %}

Dim serializer As AppStateSerializer = New AppStateSerializer(SerializeMode.XMLFile, "D:/Ribbon Serialization/TabState")
Dim options As RibbonControlAdv.SerializationOptions = New RibbonControlAdv.SerializationOptions()
options.SerializeQATItems = False
Me.wordribbon.SaveState(serializer)
serializer.PersistNow()

{% endhighlight %}

{% endtabs %}

## Load State

### Load Ribbon state

#### Through Isolated storage

To load the saved ribbon state from the isolated storage, use the below code

{% tabs %}

{% highlight c# %}

//Loads the serialized state from the Isolated storage
this.ribbonControlAdv1.LoadState();

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.LoadState()

{% endhighlight %}

{% endtabs %}

#### Through XML

The saved Ribbon state can be loaded from an xml file using the [`AppStateSerializer`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Runtime.Serialization.AppStateSerializer.html#Syncfusion_Runtime_Serialization_AppStateSerializer__ctor_Syncfusion_Runtime_Serialization_SerializeMode_System_Object_). The instance of [`AppStateSerializer`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Runtime.Serialization.AppStateSerializer.html#Syncfusion_Runtime_Serialization_AppStateSerializer__ctor_Syncfusion_Runtime_Serialization_SerializeMode_System_Object_) must be passed as an argument to the [`LoadState`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_LoadState_Syncfusion_Runtime_Serialization_AppStateSerializer_) function in the Ribbon. 

{% tabs %}

{% highlight c# %}

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.XMLFile, "D:/Ribbon Serialization/RibbonState");
this.wordribbon.LoadState(serializer);


{% endhighlight %}

{% highlight vb %}

Dim serializer As AppStateSerializer = New AppStateSerializer(SerializeMode.XMLFile, "D:/Ribbon Serialization/RibbonState")
Me.wordribbon.LoadState(serializer)

{% endhighlight %}

{% endtabs %}

### Load QAT state

Ribbon control provides an option to load the state of QAT alone instead of loading all Ribbon states using the [`DeserializationOptions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.DeserializationOptions.html). The [`DeserializationOptions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.DeserializationOptions.html) consists of two boolean properties such as [`DeserializeQATItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.SerializationOptions.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SerializationOptions_SerializeQATItems) and [`DeserializeTabItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.DeserializationOptions.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_DeserializationOptions_DeserializeTabItems) which are set as **"True"** by default. To deserialize only the QAT state, the [`DeserializeTabItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.DeserializationOptions.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_DeserializationOptions_DeserializeTabItems) property must be set as **"False"**. The instance of [`DeserializationOptions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.DeserializationOptions.html) must be passed as argument to the [`LoadState`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_LoadState_Syncfusion_Runtime_Serialization_AppStateSerializer_Syncfusion_Windows_Forms_Tools_RibbonControlAdv_DeserializationOptions_) function in addition to the [`AppStateSerializer`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Runtime.Serialization.AppStateSerializer.html#Syncfusion_Runtime_Serialization_AppStateSerializer__ctor_Syncfusion_Runtime_Serialization_SerializeMode_System_Object_) instance.

{% tabs %}

{% highlight c# %}

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.XMLFile, "D:/Ribbon Serialization/QATState");
RibbonControlAdv.DeserializationOptions options = new RibbonControlAdv.DeserializationOptions();
options.DeserializeTabItems = false;
this.wordribbon.LoadState(serializer);

{% endhighlight %}

{% highlight vb %}

Dim serializer As AppStateSerializer = New AppStateSerializer(SerializeMode.XMLFile, "D:/Ribbon Serialization/QATState")
Dim options As RibbonControlAdv.DeserializationOptions = New RibbonControlAdv.DeserializationOptions()
options.DeserializeTabItems = False
Me.wordribbon.LoadState(serializer)

{% endhighlight %}

{% endtabs %}

### Load Tabs state

Ribbon control provides an option to load only the state of Ribbon Tabs instead of all Ribbon states using the [`DeserializationOptions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.DeserializationOptions.html). The [`DeserializationOptions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.DeserializationOptions.html) consists of two boolean properties such as [`DeserializeQATItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.DeserializationOptions.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_DeserializationOptions_DeserializeQATItems) and [`DeserializeTabItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.DeserializationOptions.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_DeserializationOptions_DeserializeQATItems) which are set as **"True"** by default. To deserialize only the Tab state, the [`DeserializeQATItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.DeserializationOptions.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_DeserializationOptions_DeserializeQATItems) property must be set as **"False"**. This instance of [`DeserializationOptions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.DeserializationOptions.html) must then be passed as argument to the [`LoadState`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_LoadState_Syncfusion_Runtime_Serialization_AppStateSerializer_Syncfusion_Windows_Forms_Tools_RibbonControlAdv_DeserializationOptions_) function in addition to the [`AppStateSerializer`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Runtime.Serialization.AppStateSerializer.html#Syncfusion_Runtime_Serialization_AppStateSerializer__ctor_Syncfusion_Runtime_Serialization_SerializeMode_System_Object_) instance.

{% tabs %}

{% highlight c# %}

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.XMLFile, "D:/Ribbon Serialization/TabState");
RibbonControlAdv.DeserializationOptions options = new RibbonControlAdv.DeserializationOptions();
options.DeserializeQATItems = false;
this.wordribbon.LoadState(serializer);

{% endhighlight %}

{% highlight vb %}

Dim serializer As AppStateSerializer = New AppStateSerializer(SerializeMode.XMLFile, "D:/Ribbon Serialization/TabState")
Dim options As RibbonControlAdv.DeserializationOptions = New RibbonControlAdv.DeserializationOptions()
options.DeserializeQATItems = False
Me.wordribbon.LoadState(serializer)

{% endhighlight %}

{% endtabs %}
