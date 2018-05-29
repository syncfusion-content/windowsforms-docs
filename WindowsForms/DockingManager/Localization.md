---
layout: post
title: Localization 
description: This section explains about the localization support in DockingManager.
platform: WindowsForms
control: DockingManager
documentation: ug
---

# Localization

Localization is the process of translating the application resources into different language for the specific cultures. `DockingManager` supports complete localization to any desired language of header and context menus of docking child windows. It can be localized by using [ILocalizationProvider](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ILocalizationProvider.html).

The following steps helps to localize the header and context menus of docking child windows in DockingManager:

1) Include the required namespaces at the beginning of the file.

{% tabs %}

{% highlight c# %}

using Syncfusion.Windows.Forms;
using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms
Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}

2) Create a class that implements the [ILocalizationProvider](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ILocalizationProvider.html) interface defined in the Syncfusion.Windows.Forms namespace.

3) Return the localized versions of the strings corresponding to the string identifiers.

4) String identifiers are defined in the [ResourceIdentifiers](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ResourceIdentifiers.html) and the [ToolsResourceIdentifiers](http://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ToolsResourceIdentifiers.html) classes in Syncfusion.Shared.Base and Syncfusion.Tools.Windows assemblies respectively.

{% tabs %}

{% highlight c# %}

using Syncfusion.Windows.Forms.Tools.ToolsResourceIdentifiers;
using Syncfusion.Windows.Forms.ResourceIdentifiers;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools.ToolsResourceIdentifiers
Imports Syncfusion.Windows.Forms.ResourceIdentifiers

{% endhighlight %}

{% endtabs %}

5) Assign this instance to the [Provider](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.LocalizationProvider~Provider.html) property of the [LocalizationProvider](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.LocalizationProvider.html) class before the InitializeComponent call in the constructor of the application. 

{% tabs %}

{% highlight c# %}

LocalizationProvider.Provider = new Localizer();

{% endhighlight %}

{% highlight vb %}

LocalizationProvider.Provider = New Localizer()

{% endhighlight %}

{% endtabs %}  

6) The following code example demonstrates header and context menus of docking child windows in `DockingManager`.

**Localize header of child window**

[SetDockLabel](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~SetDockLabel.html) helps to localize the label for a child window. 

{% tabs %}

{% highlight C# %}

// To set the label for the docked controls

this.dockingManager.SetDockLabel(panel1, "解 探险者");

this.dockingManager.SetDockLabel(panel2, "工具箱");

this.dockingManager.SetDockLabel(panel3, "属性");

this.dockingManager.SetDockLabel(panel4, "产量");

{% endhighlight %}


{% highlight VB %}

' To set the label for the docked controls

Me.dockingManager.SetDockLabel(panel1, "解 探险者");

Me.dockingManager.SetDockLabel(panel2, "工具箱");

Me.dockingManager.SetDockLabel(panel3, "属性");

Me.dockingManager.SetDockLabel(panel4, "产量");

{% endhighlight %}

{% endtabs %}

![](Localization_images/Localization_img1.png) 

**Localize ContextMenu options**

The following code example illustrates how to localize the context menus of docking child windows in DockingManager.

{% tabs %}

{% highlight c# %}

public string GetLocalizedString(System.Globalization.CultureInfo culture, string name,object obj)

{

switch (name)
{

 case ToolsResourceIdentifiers.DockableMenuItemText:
 return "可停靠";

 case ToolsResourceIdentifiers.AutoHideMenuItemText:
 return "自动隐藏";

 case ToolsResourceIdentifiers.FloatingMenuItemText:
 return "漂浮的";

 case ToolsResourceIdentifiers.MDIChildMenuItemText:
 return "MDI 子";

 case ToolsResourceIdentifiers.HideMenuItemText:
 return "隐藏";

 case ToolsResourceIdentifiers.MenuItemDockToLeft:
 return "剩下";

 case ToolsResourceIdentifiers.MenuItemDockToRight:
 return "对";

 case ToolsResourceIdentifiers.MenuItemDockToTop:
  return "最佳";

  case ToolsResourceIdentifiers.MenuItemDockToBottom:
  return "底部";

  case ToolsResourceIdentifiers.MenuItemDockTo:
  return "码头";

  default:
  return string.Empty;

}

}

{% endhighlight %}

{% highlight vb %}

Public Function GetLocalizedString(ByVal culture AsSystem.Globalization.CultureInfo, ByVal name As String, ByVal obj As Object) AsString

Select Case name

Case ToolsResourceIdentifiers.DockableMenuItemText:
Return "可停靠";

Case ToolsResourceIdentifiers.AutoHideMenuItemText:
Return "自动隐藏";

Case ToolsResourceIdentifiers.FloatingMenuItemText:
Return "漂浮的";

Case ToolsResourceIdentifiers.MDIChildMenuItemText:
Return "MDI 子";

Case ToolsResourceIdentifiers.HideMenuItemText:
Return "隐藏";

Case ToolsResourceIdentifiers.MenuItemDockToLeft:
Return "剩下";

Case ToolsResourceIdentifiers.MenuItemDockToRight:
Return "对";

Case ToolsResourceIdentifiers.MenuItemDockToTop:
Return "最佳";

Case ToolsResourceIdentifiers.MenuItemDockToBottom:
Return "底部";

Case ToolsResourceIdentifiers.MenuItemDockTo:
Return "码头";

Case Else

Return String.Empty

End Select

End Function

{% endhighlight %}

{% endtabs %}

![](Localization_images/Localization_img2.png) 

N> Refer to the following sample link that demonstrates the localization support in DockingManager.
C:\Users\&lt;User&gt;\AppData\Local\Syncfusion\Essential Studio\Version Number\Windows\Tools.Windows\Samples\Docking manager\Localization