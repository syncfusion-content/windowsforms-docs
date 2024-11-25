---
layout: post
title: Localization in Windows Forms Syntax Editor control | Syncfusion
description: Learn about Localization support in Syncfusion Windows Forms Syntax Editor control and more details.
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# Localization in Windows Forms Syntax Editor

Localization is the process of translating the application resources into different languages for some specific cultures. The `EditControl` supports complete localization to any desired language of all the dialogs boxes and strings associated with it. It can be localized by using the [ILocalizationProvider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.ILocalizationProvider.html).

Follow the steps to localize the dialog boxes in the EditControl:

1. Include the required namespaces at the beginning of the file.

{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms;
using Syncfusion.Windows.Forms.Edit;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms
Imports Syncfusion.Windows.Forms.Edit

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }} 

2. Create a class that implements the [ILocalizationProvider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.ILocalizationProvider.html) interface defined in the Syncfusion.Windows.Forms namespace.

3. Return the localized versions of the string corresponding to the string identifiers.

4. String identifiers are defined in the [ResourceIdentifiers](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.ResourceIdentifiers.html) and the [EditResourceIdentifiers](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Localization.Localizer.EditResourceIdentifiers.html) classes in Syncfusion.Shared.Base and Syncfusion.Edit.Windows assemblies respectively.

{% capture codesnippet2 %}
{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Localization.Localizer.EditResourceIdentifiers;
using Syncfusion.Windows.Forms.ResourceIdentifiers;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Localization.Localizer.EditResourceIdentifiers
Imports Syncfusion.Windows.Forms.ResourceIdentifiers

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }} 

5. Assign this instance to the [Provider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.LocalizationProvider.html#Syncfusion_Windows_Forms_LocalizationProvider_Provider) property of the [LocalizationProvider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.LocalizationProvider.html) class before the InitializeComponent call in the constructor of the application. 

{% capture codesnippet3 %}
{% tabs %}
{% highlight c# %}

LocalizationProvider.Provider = new Localizer();

{% endhighlight %}

{% highlight vb %}

LocalizationProvider.Provider = New Localizer()

{% endhighlight %}
{% endtabs %} 
{% endcapture %}
{{ codesnippet3 | OrderList_Indent_Level_1 }}  

6. The following code example demonstrates localizing various dialog boxes in the EditControl.

**Find Dialog Box**

Provides Microsoft Visual Studio text editor like `FindDialog` window with similar options for text searching and highlighting. 

For example: Here, `FindDialog` is localized in German language.

{% capture codesnippet4 %}
{% tabs %}
{% highlight c# %}

public string GetLocalizedString(System.Globalization.CultureInfo culture, string name,object obj)

{

switch (name)

{

case Localizer.EditResourceIdentifiers.FDbtnClose:

return "schließen";

case Localizer.EditResourceIdentifiers.FDbtnFind:

return "Weitersuchen";

case Localizer.EditResourceIdentifiers.FDbtnMarkAll:

return "Alle markieren";

case Localizer.EditResourceIdentifiers.FDchkCase:

return "Groß-/Kleinschreibung beachten";

case Localizer.EditResourceIdentifiers.FDchkHidden:

return "Verborgenen Text suchen";

case Localizer.EditResourceIdentifiers.FDchkRegular:

return "Reguläre Ausdrücke verwenden";

case Localizer.EditResourceIdentifiers.FDchkUp:

return "Nach oben suchen";

case Localizer.EditResourceIdentifiers.FDchkWholeWord:

return "Ganzen Wort suchen";

case Localizer.EditResourceIdentifiers.FDchkWrap:

return "Umbruch";

case Localizer.EditResourceIdentifiers.FDGroupTitle:

return "Suchen";

case Localizer.EditResourceIdentifiers.FDMain:

return "Nach was suchen:";

case Localizer.EditResourceIdentifiers.FDrdbDocument:

return "Aktuelles Dokument";

case Localizer.EditResourceIdentifiers.FDrdbSelection:

return "Aktuelle Auswahl";

case Localizer.EditResourceIdentifiers.FDTitle:

return "Finden";
             
default:

return string.Empty;

}

}

{% endhighlight %}

{% highlight vb %}

Public Function GetLocalizedString(ByVal culture AsSystem.Globalization.CultureInfo, ByVal name As String, ByVal obj As Object) AsString

Select Case name

Case Localizer.EditResourceIdentifiers.FDbtnClose

Return "schließen"

Case Localizer.EditResourceIdentifiers.FDbtnFind

Return "Weitersuchen"

Case Localizer.EditResourceIdentifiers.FDbtnMarkAll

Return "Alle markieren"

Case Localizer.EditResourceIdentifiers.FDchkCase

Return "Groß-/Kleinschreibung beachten"

Case Localizer.EditResourceIdentifiers.FDchkHidden

Return "Verborgenen Text suchen"

Case Localizer.EditResourceIdentifiers.FDchkRegular

Return "Reguläre Ausdrücke verwenden"

Case Localizer.EditResourceIdentifiers.FDchkUp

Return "Nach oben suchen"

Case Localizer.EditResourceIdentifiers.FDchkWholeWord

Return "Ganzen Wort suchen"

Case Localizer.EditResourceIdentifiers.FDchkWrap

Return "Umbruch"

Case Localizer.EditResourceIdentifiers.FDGroupTitle

Return "Suchen"

Case Localizer.EditResourceIdentifiers.FDMain

Return "Nach was suchen:"

Case Localizer.EditResourceIdentifiers.FDrdbDocument

Return "Aktuelles Dokument"

Case Localizer.EditResourceIdentifiers.FDrdbSelection

Return "Aktuelle Auswahl"

Case Localizer.EditResourceIdentifiers.FDTitle

Return "Finden"

Case Else

Return String.Empty

End Select

End Function

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet4 | OrderList_Indent_Level_1 }} 

![Localized find dialog box in syntax editor](Localization-and-Globalization_images\FindDialogLocalization.png)

**Replace Dialog Box**

Provides Microsoft Visual Studio text editor like Find and Replace dialog window with similar options for text searching, highlighting, and replacing.

For example: Here, `ReplaceDialog` is localized in Chinese language.

{% tabs %}

{% highlight c# %}

public string GetLocalizedString(System.Globalization.CultureInfo culture, string name,object obj)
{

switch (name)
{

case Localizer.EditResourceIdentifiers.FRTitle:
return "替换";

case Localizer.EditResourceIdentifiers.FRrdbSelection:
return "当前选定";
                
case Localizer.EditResourceIdentifiers.FRbtnReplace:
return "替换";
                
case Localizer.EditResourceIdentifiers.FRbtnReplaceAll:
return "全部替换";

case Localizer.EditResourceIdentifiers.FRGroupTitle:
return "搜索";

case Localizer.EditResourceIdentifiers.FRbtnClose:
return "关闭";

case Localizer.EditResourceIdentifiers.FRlblFind:
return "查找内容";

case Localizer.EditResourceIdentifiers.FRlblReplace:
return "替换";

}

}

{% endhighlight %}

{% highlight vb %}

Public Function GetLocalizedString(ByVal culture AsSystem.Globalization.CultureInfo, ByVal name As String, ByVal obj As Object) AsString

Select Case name

Case Localizer.EditResourceIdentifiers.FRTitle
Return "替换"

Case Localizer.EditResourceIdentifiers.FRrdbSelection
Return "当前选定"
                
Case Localizer.EditResourceIdentifiers.FRbtnReplace
Return "替换"
                
Case Localizer.EditResourceIdentifiers.FRbtnReplaceAll
Return "全部替换"

Case Localizer.EditResourceIdentifiers.FRGroupTitle
Return "搜索"

Case Localizer.EditResourceIdentifiers.FRbtnClose
Return "关闭

Case Localizer.EditResourceIdentifiers.FRlblFind
Return "查找内容"

Case Localizer.EditResourceIdentifiers.FRlblReplace
Return "替换"

End Select

End Function

{% endhighlight %}

{% endtabs %}

![Localized replace dialog box in syntax editor](Localization-and-Globalization_images\ReplaceDialogLocalization.png)

**GoTo Dialog Box**

Provides `GoToLine` dialog window to navigate to the required line number.

For example: Here, `GoToDialog` is localized in Chinese language.

{% tabs %}

{% highlight c# %}

public string GetLocalizedString(System.Globalization.CultureInfo culture, string name,object obj)
{

switch (name)
{

case Localizer.EditResourceIdentifiers.FGoTitle:
return "转到行";

case Localizer.EditResourceIdentifiers.FGoNumber:
return "行号（{0} - {1}）：";

case Localizer.EditResourceIdentifiers.FGobtnOK:
return "确定";

case Localizer.EditResourceIdentifiers.FGobtnCancel:
return "取消";

}

}

{% endhighlight %}

{% highlight vb %}

Public Function GetLocalizedString(ByVal culture AsSystem.Globalization.CultureInfo, ByVal name As String, ByVal obj As Object) AsString

Select Case name

Case Localizer.EditResourceIdentifiers.FGoTitle
Return "转到行"

Case Localizer.EditResourceIdentifiers.FGoNumber
Return "行号（{0} - {1}）："

Case Localizer.EditResourceIdentifiers.FGobtnOK
Return "确定"

Case Localizer.EditResourceIdentifiers.FGobtnCancel
Return "取消"

End Select

End Function

{% endhighlight %}

{% endtabs %}

![Localized GoTo dialog box in syntax editor](Localization-and-Globalization_images\GoToDialogLocalization.png)

**Context Menu**

Provides a built-in context menu with options to perform editing operations like undo, redo, cut, copy, paste, select all, and so on.

For example: Here, `ContextMenu` is localized in Chinese language.

{% tabs %}

{% highlight c# %}

public string GetLocalizedString(System.Globalization.CultureInfo culture, string name,object obj)
{

      switch (name)
      {

               case Localizer.EditResourceIdentifiers.DEF_MENU_BOOKMARKS:
               return "上下文菜单书签";

                case Localizer.EditResourceIdentifiers.DEF_MENU_CLEARBOOKMARKS:
                    return "上下文菜单清除书签";

                case Localizer.EditResourceIdentifiers.DEF_MENU_CLOSE:
                    return "上下文菜单关闭";

                case Localizer.EditResourceIdentifiers.DEF_MENU_COLLAPSEALL:
                    return "上下文菜单全部折叠";

                case Localizer.EditResourceIdentifiers.DEF_MENU_COMMENTSELECTION:
                    return "上下文菜单注释选定内容";

                case Localizer.EditResourceIdentifiers.DEF_MENU_COPY:
                    return "上下文菜单复制";

                case Localizer.EditResourceIdentifiers.DEF_MENU_CUT:
                    return "上下文菜单剪切";

                case Localizer.EditResourceIdentifiers.DEF_MENU_DELETE:
                    return "上下文菜单删除";

                case Localizer.EditResourceIdentifiers.DEF_MENU_DELETEALL:
                    return "上下文菜单删除全部";

                case Localizer.EditResourceIdentifiers.DEF_MENU_EDIT:
                    return "上下文菜单编辑";

                case Localizer.EditResourceIdentifiers.DEF_MENU_FILE:
                    return "上下文菜单文件";
                    
                case Localizer.EditResourceIdentifiers.DEF_MENU_EXPANDALL:
                    return "上下文菜单全部展开";

                case Localizer.EditResourceIdentifiers.DEF_MENU_FIND:
                    return "上下文菜单查找";

                case Localizer.EditResourceIdentifiers.DEF_MENU_GOTO:
                    return "上下文菜单转到";

                case Localizer.EditResourceIdentifiers.DEF_MENU_INDENTSELECTION:
                    return "上下文菜单缩进选定内容";

                case Localizer.EditResourceIdentifiers.DEF_MENU_NEW:
                    return "上下文菜单新建";

                case Localizer.EditResourceIdentifiers.DEF_MENU_OPEN:
                    return "上下文菜单打开";

                case Localizer.EditResourceIdentifiers.DEF_MENU_OPTIONS:
                    return "上下文菜单选项";

                case Localizer.EditResourceIdentifiers.DEF_MENU_PREVBOOKMARK:
                    return "上下文菜单上一个书签";

                case Localizer.EditResourceIdentifiers.DEF_MENU_PRINT:
                    return "上下文菜单打印";

                case Localizer.EditResourceIdentifiers.DEF_MENU_PRINTPREVIEW:
                    return "上下文菜单打印预览";

                case Localizer.EditResourceIdentifiers.DEF_MENU_REDO:
                    return "上下文菜单重做";

                case Localizer.EditResourceIdentifiers.DEF_MENU_REPLACE:
                    return "上下文菜单替换";

                case Localizer.EditResourceIdentifiers.DEF_MENU_SAVE:
                    return "上下文菜单保存";

                case Localizer.EditResourceIdentifiers.DEF_MENU_SAVEAS:
                    return "上下文菜单另存为";

                case Localizer.EditResourceIdentifiers.DEF_MENU_SELECTALL:
                    return "上下文菜单全选";

                case Localizer.EditResourceIdentifiers.DEF_MENU_TABIFYSELECTION:
                    return "上下文菜单制表符选定内容";

                case Localizer.EditResourceIdentifiers.DEF_MENU_TOGGLEBOOKMARK:
                    return "上下文菜单切换书签";

                case Localizer.EditResourceIdentifiers.DEF_MENU_UNCOMMENTSELECTION:
                    return "上下文菜单取消注释选定内容";

                case Localizer.EditResourceIdentifiers.DEF_MENU_UNDO:
                    return "上下文菜单撤销";

                case Localizer.EditResourceIdentifiers.DEF_MENU_UNTABIFYSELECTION:
                    return "上下文菜单取消制表符选定内容";

                case Localizer.EditResourceIdentifiers.DEF_MENU_UNINDENTSELECTION:
                    return "上下文菜单取消缩进选定内容";

                case Localizer.EditResourceIdentifiers.DEF_MENU_ADVANCED:
                    return "上下文菜单高级";
      }

}

{% endhighlight %}

{% highlight vb %}

Public Function GetLocalizedString(ByVal culture AsSystem.Globalization.CultureInfo, ByVal name As String, ByVal obj As Object) AsString

      Select Case name

               Case Localizer.EditResourceIdentifiers.DEF_MENU_BOOKMARKS
                    Return "上下文菜单书签"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_CLEARBOOKMARKS
                    Return "上下文菜单清除书签"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_CLOSE
                    Return "上下文菜单关闭"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_COLLAPSEALL
                    Return "上下文菜单全部折叠"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_COMMENTSELECTION
                    Return "上下文菜单注释选定内容"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_COPY
                    Return "上下文菜单复制"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_CUT
                    Return "上下文菜单剪切"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_DELETE
                    Return "上下文菜单删除"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_DELETEALL
                    Return "上下文菜单删除全部"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_EDIT
                    Return "上下文菜单编辑"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_FILE
                    Return "上下文菜单文件"
                    
                Case Localizer.EditResourceIdentifiers.DEF_MENU_EXPANDALL
                    Return "上下文菜单全部展开"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_FIND
                    Return "上下文菜单查找"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_GOTO
                    Return "上下文菜单转到"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_INDENTSELECTION
                    Return "上下文菜单缩进选定内容"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_NEW
                    Return "上下文菜单新建"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_OPEN
                    Return "上下文菜单打开"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_OPTIONS
                    Return "上下文菜单选项"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_PREVBOOKMARK
                    Return "上下文菜单上一个书签"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_PRINT
                    Return "上下文菜单打印"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_PRINTPREVIEW
                    Return "上下文菜单打印预览"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_REDO
                    Return "上下文菜单重做"

                case Localizer.EditResourceIdentifiers.DEF_MENU_REPLACE
                    Return "上下文菜单替换"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_SAVE
                    Return "上下文菜单保存"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_SAVEAS
                    Return "上下文菜单另存为"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_SELECTALL
                    Return "上下文菜单全选"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_TABIFYSELECTION
                    Return "上下文菜单制表符选定内容"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_TOGGLEBOOKMARK
                    Return "上下文菜单切换书签"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_UNCOMMENTSELECTION
                    Return "上下文菜单取消注释选定内容"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_UNDO
                    Return "上下文菜单撤销"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_UNTABIFYSELECTION
                    Return "上下文菜单取消制表符选定内容"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_UNINDENTSELECTION
                    Return "上下文菜单取消缩进选定内容"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_ADVANCED
                    Return "上下文菜单高级"


      End Select

End Function

{% endhighlight %}

{% endtabs %}

![Localized context menu in syntax editor](Localization-and-Globalization_images\ContextMenuLocalization.png)

N> Refer to the following sample link that demonstrates the localization support in EditControl:
C:\Users\&lt;User&gt;\AppData\Local\Syncfusion\EssentialStudio\Version Number\Windows\Edit.Windows\Samples\Localization
