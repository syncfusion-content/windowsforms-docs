---
layout: post
title: ContextMenu| TabbedForm | WindowsForms | Syncfusion
description: This section explains about adding context menu in SfTabbedForm.
platform: WindowsForms
control: SfTabbedForm
documentation: ug
---

# Context Menu

The context menu for the tabbedform can be set by using `tabbedFormControl.TabContextMenu` property.

## Customize context menu in tabs like web browser

The context menu can be customized while opening the context menu by handling the `ContextMenuOpening` event. The below code example shows how to provide context menu in tabs like web browser by using the `TabContextMenu` property.

{% tabs %}
{% highlight c# %}
TabPageAdv clickedTab;
SfTabbedFormControl tabbedFormControl;
#region Constructor
public Form1()
{
    InitializeComponent();

    tabbedFormControl = new SfTabbedFormControl();

    for (int i = 1; i <= 15; i++)
        tabbedFormControl.Tabs.Add(new TabPageAdv() { Text = "Document" + i });

    this.Controls.Add(tabbedFormControl);

    this.TabbedFormControl = tabbedFormControl;

    #region Context Menu Customization
    ContextMenuStrip tabContextMenu = new ContextMenuStrip();
    tabContextMenu.Items.Add("Close", null, OnCloseMenuClicked);
    tabContextMenu.Items.Add("Close all but this", null, OnCloseAllMenuClicked);
    tabContextMenu.Items.Add("Close tabs to the right", null, OnCloseTabsToRightMenuClicked);
    tabbedFormControl.TabContextMenu = tabContextMenu;
    tabbedFormControl.ContextMenuOpening += TabbedFormControl_ContextMenuOpening;
    #endregion
}
#endregion

#region ContextMenu events
/// <summary>
/// Occurs when context menu on the tab is opening.
/// </summary>
private void TabbedFormControl_ContextMenuOpening(object sender, ContextMenuOpeningEventArgs e)
{
    clickedTab = e.Tab;
    var tabs = tabbedFormControl.Tabs.OfType<TabPageAdv>();
    var tabsExistsInRight = tabs.Any(tab => tab.TabIndex > e.Tab.TabIndex);

    if (tabs.Count() == 1)
    {
        e.ContextMenu.Items[1].Enabled = false;
        e.ContextMenu.Items[2].Enabled = false;
    }
    else if (!tabsExistsInRight)
        e.ContextMenu.Items[2].Enabled = false;
    else
    {
        e.ContextMenu.Items[0].Enabled = true;
        e.ContextMenu.Items[1].Enabled = true;
        e.ContextMenu.Items[2].Enabled = true;
    }
}

/// <summary>
/// Occurs when Close menu item is clicked.
/// </summary>
private void OnCloseMenuClicked(object sender, EventArgs e)
{
    if (clickedTab != null)
    {
        if (this.TabbedFormControl.Tabs.OfType<TabPageAdv>().Count() == 1)
            this.Close();
        else
            clickedTab.Close();
    }
}

/// <summary>
/// /// <summary>
/// Occurs when Close all but this menu item is clicked.
/// </summary>
private void OnCloseAllMenuClicked(object sender, EventArgs e)
{
    var tabs = tabbedFormControl.Tabs.OfType<TabPageAdv>();
    var removedTabs = new ObservableCollection<TabPageAdv>();
    foreach (var tab in tabs)
    {
        if (clickedTab != null && tab != clickedTab)
            removedTabs.Add(tab);
    }

    foreach (var tab in removedTabs)
    {
        tab.Close();
    }
}

/// <summary>
/// /// <summary>
/// Occurs when Close right to this menu item is clicked.
/// </summary>
private void OnCloseTabsToRightMenuClicked(object sender, EventArgs e)
{
    var tabs = tabbedFormControl.Tabs.OfType<TabPageAdv>();
    var removedTabs = new ObservableCollection<TabPageAdv>();
    foreach (var tab in tabs)
    {
        if (clickedTab != null && tab.TabIndex > clickedTab.TabIndex)
            removedTabs.Add(tab);
    }

    foreach (var tab in removedTabs)
    {
        tab.Close();
    }
}
#endregion
{% endhighlight %}
{% highlight vb %}
Private clickedTab As TabPageAdv
Private tabbedFormControl As SfTabbedFormControl
#Region "Constructor"
Public Sub New()
	InitializeComponent()

	tabbedFormControl = New SfTabbedFormControl()

	For i As Integer = 1 To 15
		tabbedFormControl.Tabs.Add(New TabPageAdv() With {.Text = "Document" & i})
	Next i

	Me.Controls.Add(tabbedFormControl)

	Me.TabbedFormControl = tabbedFormControl

'	#Region "Context Menu Customization"
	Dim tabContextMenu As New ContextMenuStrip()
	tabContextMenu.Items.Add("Close", Nothing, AddressOf OnCloseMenuClicked)
	tabContextMenu.Items.Add("Close all but this", Nothing, AddressOf OnCloseAllMenuClicked)
	tabContextMenu.Items.Add("Close tabs to the right", Nothing, AddressOf OnCloseTabsToRightMenuClicked)
	tabbedFormControl.TabContextMenu = tabContextMenu
	AddHandler tabbedFormControl.ContextMenuOpening, AddressOf TabbedFormControl_ContextMenuOpening
'	#End Region
End Sub
#End Region

#Region "ContextMenu events"
''' <summary>
''' Occurs when context menu on the tab is opening.
''' </summary>
Private Sub TabbedFormControl_ContextMenuOpening(ByVal sender As Object, ByVal e As ContextMenuOpeningEventArgs)
	clickedTab = e.Tab
	Dim tabs = tabbedFormControl.Tabs.OfType(Of TabPageAdv)()
	Dim tabsExistsInRight = tabs.Any(Function(tab) tab.TabIndex > e.Tab.TabIndex)

	If tabs.Count() = 1 Then
		e.ContextMenu.Items(1).Enabled = False
		e.ContextMenu.Items(2).Enabled = False
	ElseIf Not tabsExistsInRight Then
		e.ContextMenu.Items(2).Enabled = False
	Else
		e.ContextMenu.Items(0).Enabled = True
		e.ContextMenu.Items(1).Enabled = True
		e.ContextMenu.Items(2).Enabled = True
	End If
End Sub

''' <summary>
''' Occurs when Close menu item is clicked.
''' </summary>
Private Sub OnCloseMenuClicked(ByVal sender As Object, ByVal e As EventArgs)
	If clickedTab IsNot Nothing Then
		If Me.TabbedFormControl.Tabs.OfType(Of TabPageAdv)().Count() = 1 Then
			Me.Close()
		Else
			clickedTab.Close()
		End If
	End If
End Sub

''' <summary>
''' /// <summary>
''' Occurs when Close all but this menu item is clicked.
''' </summary>
Private Sub OnCloseAllMenuClicked(ByVal sender As Object, ByVal e As EventArgs)
	Dim tabs = tabbedFormControl.Tabs.OfType(Of TabPageAdv)()
	Dim removedTabs = New ObservableCollection(Of TabPageAdv)()
	For Each tab In tabs
		If clickedTab IsNot Nothing AndAlso tab IsNot clickedTab Then
			removedTabs.Add(tab)
		End If
	Next tab

	For Each tab In removedTabs
		tab.Close()
	Next tab
End Sub

''' <summary>
''' /// <summary>
''' Occurs when Close right to this menu item is clicked.
''' </summary>
Private Sub OnCloseTabsToRightMenuClicked(ByVal sender As Object, ByVal e As EventArgs)
	Dim tabs = tabbedFormControl.Tabs.OfType(Of TabPageAdv)()
	Dim removedTabs = New ObservableCollection(Of TabPageAdv)()
	For Each tab In tabs
		If clickedTab IsNot Nothing AndAlso tab.TabIndex > clickedTab.TabIndex Then
			removedTabs.Add(tab)
		End If
	Next tab

	For Each tab In removedTabs
		tab.Close()
	Next tab
End Sub
#End Region
{% endhighlight %}
{% endtabs %}

![tabbed form](ContextMenu_Images/ContextMenu_Images_img1.png)