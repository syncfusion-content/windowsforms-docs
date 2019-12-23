---
layout: post
title: Serialization-Support | WindowsForms | Syncfusion
description: This section briefly describes the serialization support in Syncfusion's RibbonControlAdv for WinForms
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---

# Serialization Support

RibbonControlAdv comes with serialization support. Using this we can restore the saved state of the ribbon control.

## States which get serialized

*	The items in the QuickAccessToolBar that are added through the “Customize Quick Access ToolBar” can be persisted.
*	Items added through the context menu that appears while clicking the dropdown arrow to the right of the QuickAccessToolBar can be persisted.
*	The collapsed / expanded / floating state of the RibbonPanel can be persisted.
*	The position of the QuickAccessToolBar, either below or above the ribbon panel can be persisted.

## Save state

### Save Ribbon state

#### Through Isolated storage

The Ribbon state can be saved in the isolated storage using the `SaveState` function in the Ribbon. The isolated storage can be located in the following location: "C:\Users\<user>\AppData\Local\IsolatedStorage".

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

The Ribbon state can be saved in an xml file and stored in a specific location using the `AppStateSerializer`. The instance of `AppStateSerializer` must be passed as an argument to the `SaveState` function in the Ribbon. 

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

Ribbon control provides an option to save the state of QAT alone instead of saving all Ribbon states using the `SerializationOptions`. The [`SerializationOptions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv+SerializationOptions_properties.html) consists of two boolean properties such as [`SerializeQATItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv+SerializationOptions~SerializeQATItems.html) and [`SerializeTabItems`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv+SerializationOptions~SerializeTabItems.html) which are set as **"True"** by default. To serialize only the QAT state, the [`SerializeTabItems`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv+SerializationOptions~SerializeTabItems.html) property must be set as **"False"**. This instance of `SerializationOptions` must be passed as an argument to [`SaveState`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv~SaveState(AppStateSerializer,SerializationOptions).html) function in addition to the `AppStateSerializer` instance.

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

Ribbon control provides an option to save the state of Ribbon Tabs alone instead of saving all Ribbon states using the `SerializationOptions`. The [`SerializationOptions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv+SerializationOptions_properties.html) consists of two boolean properties such as [`SerializeQATItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv+SerializationOptions~SerializeQATItems.html) and [`SerializeTabItems`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv+SerializationOptions~SerializeTabItems.html) which are set as **"True"** by default. To serialize only the Tab state, the [`SerializeQATItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv+SerializationOptions~SerializeQATItems.html) property must be set as **False**. This instance of `SerializationOptions` must be passed as argument to the [`SaveState`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv~SaveState(AppStateSerializer,SerializationOptions).html) in addition to the `AppStateSerializer` instance.

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

The saved Ribbon state can be loaded from an xml file using the `AppStateSerializer`. The instance of `AppStateSerializer` must be passed as an argument to the `LoadState` function in the Ribbon. 

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

Ribbon control provides an option to load the state of QAT alone instead of loading all Ribbon states using the `DeserializationOptions`. The [`DeserializationOptions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv+DeserializationOptions_properties.html) consists of two boolean properties such as [`DeserializeQATItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv+DeserializationOptions~DeserializeQATItems.html) and [`DeserializeTabItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv+DeserializationOptions~DeserializeTabItems.html) which are set as **True** by default. To deserialize only the QAT state, the [`DeserializeTabItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv+DeserializationOptions~DeserializeTabItems.html) property must be set as **False**. The instance of `DeserializationOptions` must be passed as argument to the [`LoadState`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv~LoadState(AppStateSerializer,DeserializationOptions).html) function in addition to the `AppStateSerializer` instance.

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

Ribbon control provides an option to load only the state of Ribbon Tabs instead of all Ribbon states using the `DeserializationOptions`. The [`DeserializationOptions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv+DeserializationOptions_properties.html) consists of two boolean properties such as [`DeserializeQATItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv+DeserializationOptions~DeserializeQATItems.html) and [`DeserializeTabItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv+DeserializationOptions~DeserializeTabItems.html) which are set as **"True"** by default. To deserialize only the Tab state, the [`DeserializeQATItems`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv+DeserializationOptions~DeserializeQATItems.html) property must be set as **"False"**. This instance of `DeserializationOptions` must then be passed as argument to the [`LoadState`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RibbonControlAdv~LoadState(AppStateSerializer,DeserializationOptions).html) function in addition to the `AppStateSerializer` instance.

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