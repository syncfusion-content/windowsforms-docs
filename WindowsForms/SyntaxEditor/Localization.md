---
layout: post
title: Localization 
description: This section explains about the localization support in EditControl.
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# Localization

Localization is the process of translating the application resources into different language for the specific cultures. `EditControl` supports complete localization to any desired language of all the dialogs boxes and strings associated with it. It can be localized by using [ILocalizationProvider](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ILocalizationProvider.html).

The following steps helps to localize the dialog boxes in the EditControl:

1) Include the required namespaces at the beginning of the file.

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

2) Create a class that implements the [ILocalizationProvider](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ILocalizationProvider.html) interface defined in the Syncfusion.Windows.Forms namespace.

3) Return the localized versions of the strings corresponding to the string identifiers.

4) String identifiers are defined in the [ResourceIdentifiers](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ResourceIdentifiers.html) and the [EditResourceIdentifiers](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Localization.Localizer+EditResourceIdentifiers.html) classes in Syncfusion.Shared.Base and Syncfusion.Edit.Windows assemblies respectively.

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

5) Assign this instance to the [Provider](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.LocalizationProvider~Provider.html) property of the [LocalizationProvider](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.LocalizationProvider.html) class before the InitializeComponent call in the constructor of the application. 

{% tabs %}

{% highlight c# %}

LocalizationProvider.Provider = new Localizer();

{% endhighlight %}

{% highlight vb %}

LocalizationProvider.Provider = New Localizer()

{% endhighlight %}

{% endtabs %}  

6) The following code example demonstrates localizing various dialog boxes in EditControl.

**Find Dialog Box**

Provides Microsoft Visual Studio text editor like `FindDialog` window with similar options, for text search and highlighting. 

For example: Here, `FindDialog` is localized in German Language.

{% tabs %}

{% highlight c# %}

public string GetLocalizedString(System.Globalization.CultureInfo culture, string name,object obj)

{

switch (name)

{

case Localizer.EditResourceIdentifiers.FDbtnClose:

return "schließen";

case Localizer.EditResourceIdentifiers.FDbtnFind:

return "finden";

case Localizer.EditResourceIdentifiers.FDbtnMarkAll:

return "markieren Sie alle";              

case Localizer.EditResourceIdentifiers.FDchkCase:

return "übereinstimmen Fall";               

case Localizer.EditResourceIdentifiers.FDchkHidden:

return "Suche hidden";

case Localizer.EditResourceIdentifiers.FDchkRegular:

return "Suche regelmäßige";

case Localizer.EditResourceIdentifiers.FDchkUp:

return "Suche Up";

case Localizer.EditResourceIdentifiers.FDchkWholeWord:

return "Ganzes Wort";

case Localizer.EditResourceIdentifiers.FDchkWrap:

return "Zeilenumbruch";

case Localizer.EditResourceIdentifiers.FDGroupTitle:

return "Suchen";

case Localizer.EditResourceIdentifiers.FDMain:

return "Startseite";

case Localizer.EditResourceIdentifiers.FDrdbDocument:

return "Document";

case Localizer.EditResourceIdentifiers.FDrdbSelection:

return "Auswahl";

case Localizer.EditResourceIdentifiers.FDTitle:

return "Kommentar";
             
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

Return "finden"

Case Localizer.EditResourceIdentifiers.FDbtnMarkAll

Return "markieren Sie alle"

Case Localizer.EditResourceIdentifiers.FDchkCase

Return "übereinstimmen Fall"

Case Localizer.EditResourceIdentifiers.FDchkHidden

Return "Suche hidden"

Case Localizer.EditResourceIdentifiers.FDchkRegular

Return "Suche regelmäßige"

Case Localizer.EditResourceIdentifiers.FDchkUp

Return "Suche Up"

Case Localizer.EditResourceIdentifiers.FDchkWholeWord

Return "Ganzes Wort"

Case Localizer.EditResourceIdentifiers.FDchkWrap

Return "Zeilenumbruch"

Case Localizer.EditResourceIdentifiers.FDGroupTitle

Return "Suchen"

Case Localizer.EditResourceIdentifiers.FDMain

Return "Startseite"

Case Localizer.EditResourceIdentifiers.FDrdbDocument

Return "Document"

Case Localizer.EditResourceIdentifiers.FDrdbSelection

Return "Auswahl"

Case Localizer.EditResourceIdentifiers.FDTitle

Return "Kommentar"

Case Else

Return String.Empty

End Select

End Function

{% endhighlight %}

{% endtabs %}

![](Localization-and-Globalization_images\Localization-and-Globalization_img5.png)

**Replace Dialog Box**

Provides Microsoft Visual Studio text editor like Find and Replace dialog window with similar options, for text search, highlighting and replace.

For example: Here, `ReplaceDialog` is localized in Chinese Language.

{% tabs %}

{% highlight c# %}

public string GetLocalizedString(System.Globalization.CultureInfo culture, string name,object obj)
{

switch (name)
{

case Localizer.EditResourceIdentifiers.FRTitle:
return "更换";

case Localizer.EditResourceIdentifiers.FRrdbSelection:
return "全部替换";
                
case Localizer.EditResourceIdentifiers.FRbtnReplace:
return "更换";
                
case Localizer.EditResourceIdentifiers.FRbtnReplaceAll:
return "全部替换";

case Localizer.EditResourceIdentifiers.FRGroupTitle:
return "全部替换";

case Localizer.EditResourceIdentifiers.FRbtnClose:
return "全部替换";

case Localizer.EditResourceIdentifiers.FRlblFind:
return "全部替换";

case Localizer.EditResourceIdentifiers.FRlblReplace:
return "全部替换";

}

}

{% endhighlight %}

{% highlight vb %}

Public Function GetLocalizedString(ByVal culture AsSystem.Globalization.CultureInfo, ByVal name As String, ByVal obj As Object) AsString

Select Case name

Case Localizer.EditResourceIdentifiers.FRTitle
Return "更换"

Case Localizer.EditResourceIdentifiers.FRrdbSelection
Return "全部替换"
                
Case Localizer.EditResourceIdentifiers.FRbtnReplace
Return "更换"
                
Case Localizer.EditResourceIdentifiers.FRbtnReplaceAll
Return "全部替换"

Case Localizer.EditResourceIdentifiers.FRGroupTitle
Return "全部替换"

Case Localizer.EditResourceIdentifiers.FRbtnClose
Return "全部替换

Case Localizer.EditResourceIdentifiers.FRlblFind
Return "全部替换"

Case Localizer.EditResourceIdentifiers.FRlblReplace
Return "全部替换"

End Select

End Function

{% endhighlight %}

{% endtabs %}

![](Localization-and-Globalization_images\Localization-and-Globalization_img1.png)

**GoTo Dialog Box**

Provides `GoToLine` dialog window that helps navigate to required line number.

For example: Here, `GoToDialog` is localized in Chinese Language.

{% tabs %}

{% highlight c# %}

public string GetLocalizedString(System.Globalization.CultureInfo culture, string name,object obj)
{

switch (name)
{

case Localizer.EditResourceIdentifiers.FGoTitle:
return "去线";

case Localizer.EditResourceIdentifiers.FGoNumber:
return "电话号码{0}-{1}";

case Localizer.EditResourceIdentifiers.FGobtnOK:
return "好";

case Localizer.EditResourceIdentifiers.FGobtnCancel:
return "取消";

}

}

{% endhighlight %}

{% highlight vb %}

Public Function GetLocalizedString(ByVal culture AsSystem.Globalization.CultureInfo, ByVal name As String, ByVal obj As Object) AsString

Select Case name

Case Localizer.EditResourceIdentifiers.FGoTitle
Return "去线"

Case Localizer.EditResourceIdentifiers.FGoNumber
Return "电话号码{0}-{1}"

Case Localizer.EditResourceIdentifiers.FGobtnOK
Return "好"

Case Localizer.EditResourceIdentifiers.FGobtnCancel
Return "取消"

End Select

End Function

{% endhighlight %}

{% endtabs %}

![](Localization-and-Globalization_images\Localization-and-Globalization_img2.png)

**Context Menu**

Provides a built-in context menu with options to perform editing operations like Undo, Redo, Cut, Copy, Paste, Select All and so on.

For example: Here, `ContextMenu` is localized in Chinese Language.

{% tabs %}

{% highlight c# %}

public string GetLocalizedString(System.Globalization.CultureInfo culture, string name,object obj)
{

      switch (name)
      {

               case Localizer.EditResourceIdentifiers.DEF_MENU_BOOKMARKS:
               return "上下文菜单书签";

                case Localizer.EditResourceIdentifiers.DEF_MENU_CLEARBOOKMARKS:
                    return "清除书签";

                case Localizer.EditResourceIdentifiers.DEF_MENU_CLOSE:
                    return "上下文菜单关";

                case Localizer.EditResourceIdentifiers.DEF_MENU_COLLAPSEALL:
                    return "上下文菜单坍方";

                case Localizer.EditResourceIdentifiers.DEF_MENU_COMMENTSELECTION:
                    return "上下文菜单评论选择";

                case Localizer.EditResourceIdentifiers.DEF_MENU_COPY:
                    return "上文菜单评论";

                case Localizer.EditResourceIdentifiers.DEF_MENU_CUT:
                    return "切";

                case Localizer.EditResourceIdentifiers.DEF_MENU_DELETE:
                    return "删除";

                case Localizer.EditResourceIdentifiers.DEF_MENU_DELETEALL:
                    return "删除所有";

                case Localizer.EditResourceIdentifiers.DEF_MENU_EDIT:
                    return "编辑";

                case Localizer.EditResourceIdentifiers.DEF_MENU_FILE:
                    return "文件";
                    
                case Localizer.EditResourceIdentifiers.DEF_MENU_EXPANDALL:
                    return "展开全部";

                case Localizer.EditResourceIdentifiers.DEF_MENU_FIND:
                    return "找";

                case Localizer.EditResourceIdentifiers.DEF_MENU_GOTO:
                    return "去";

                case Localizer.EditResourceIdentifiers.DEF_MENU_INDENTSELECTION:
                    return "缩进选择";

                case Localizer.EditResourceIdentifiers.DEF_MENU_NEW:
                    return "新";

                case Localizer.EditResourceIdentifiers.DEF_MENU_OPEN:
                    return "打开打开";

                case Localizer.EditResourceIdentifiers.DEF_MENU_OPTIONS:
                    return "打开";

                case Localizer.EditResourceIdentifiers.DEF_MENU_PREVBOOKMARK:
                    return "上一个书签";

                case Localizer.EditResourceIdentifiers.DEF_MENU_PRINT:
                    return "打印";

                case Localizer.EditResourceIdentifiers.DEF_MENU_PRINTPREVIEW:
                    return "打印预览";

                case Localizer.EditResourceIdentifiers.DEF_MENU_REDO:
                    return "重做";

                case Localizer.EditResourceIdentifiers.DEF_MENU_REPLACE:
                    return "更换";

                case Localizer.EditResourceIdentifiers.DEF_MENU_SAVE:
                    return "保存";

                case Localizer.EditResourceIdentifiers.DEF_MENU_SAVEAS:
                    return "另存为";

                case Localizer.EditResourceIdentifiers.DEF_MENU_SELECTALL:
                    return "全选";

                case Localizer.EditResourceIdentifiers.DEF_MENU_TABIFYSELECTION:
                    return "主题";

                case Localizer.EditResourceIdentifiers.DEF_MENU_TOGGLEBOOKMARK:
                    return "切换书签";

                case Localizer.EditResourceIdentifiers.DEF_MENU_UNCOMMENTSELECTION:
                    return "取消注释选择";

                case Localizer.EditResourceIdentifiers.DEF_MENU_UNDO:
                    return "解开";

                case Localizer.EditResourceIdentifiers.DEF_MENU_UNTABIFYSELECTION:
                    return "未选择";

                case Localizer.EditResourceIdentifiers.DEF_MENU_UNINDENTSELECTION:
                    return "取消缩进";

                case Localizer.EditResourceIdentifiers.DEF_MENU_ADVANCED:
                    return "高级";
      }

}

{% endhighlight %}

{% highlight vb %}

Public Function GetLocalizedString(ByVal culture AsSystem.Globalization.CultureInfo, ByVal name As String, ByVal obj As Object) AsString

      Select Case name

               Case Localizer.EditResourceIdentifiers.DEF_MENU_BOOKMARKS
                    Return "上下文菜单书签"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_CLEARBOOKMARKS
                    Return "清除书签"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_CLOSE
                    Return "上下文菜单关"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_COLLAPSEALL
                    Return "上下文菜单坍方"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_COMMENTSELECTION
                    Return "上下文菜单评论选择"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_COPY
                    Return "上文菜单评论"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_CUT
                    Return "切"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_DELETE
                    Return "删除"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_DELETEALL
                    Return "删除所有"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_EDIT
                    Return "编辑"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_FILE
                    Return "文件"
                    
                Case Localizer.EditResourceIdentifiers.DEF_MENU_EXPANDALL
                    Return "展开全部"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_FIND
                    Return "找"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_GOTO
                    Return "去"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_INDENTSELECTION
                    Return "缩进选择"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_NEW
                    Return "新"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_OPEN
                    Return "打开打开"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_OPTIONS
                    Return "打开"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_PREVBOOKMARK
                    Return "上一个书签"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_PRINT
                    Return "打印"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_PRINTPREVIEW
                    Return "打印预览"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_REDO
                    Return "重做"

                case Localizer.EditResourceIdentifiers.DEF_MENU_REPLACE
                    Return "更换"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_SAVE
                    Return "保存"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_SAVEAS
                    Return "另存为"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_SELECTALL
                    Return "全选"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_TABIFYSELECTION
                    Return "主题"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_TOGGLEBOOKMARK
                    Return "切换书签"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_UNCOMMENTSELECTION
                    Return "取消注释选择"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_UNDO
                    Return "解开"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_UNTABIFYSELECTION
                    Return "未选择"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_UNINDENTSELECTION
                    Return "取消缩进"

                Case Localizer.EditResourceIdentifiers.DEF_MENU_ADVANCED
                    Return "高级"


      End Select

End Function

{% endhighlight %}

{% endtabs %}

![](Localization-and-Globalization_images\Localization-and-Globalization_img3.png)

N> Refer to the following sample link that demonstrates the localization support in EditControl.
C:\Users\&lt;User&gt;\AppData\Local\Syncfusion\EssentialStudio\Version Number\Windows\Edit.Windows\Samples\Localization