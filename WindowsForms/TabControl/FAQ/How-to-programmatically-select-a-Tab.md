---
layout: post
title: How-to-programmatically-select-a-Tab | WindowsForms | Syncfusion®
description: Clarified TabControlAdv usage and added complete C#/VB examples to show how to programmatically select a tab in WinForms.
platform: windowsforms
control: TabsPackage
documentation: ug
---

# How to programmatically select a tab?

To programmatically select a specific tab in the `TabControlAdv`, you can use the `SelectedIndex` property or the `SelectedTab` property.

{% tabs %}

{% highlight C# %}

using System;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools;

namespace TabControlAdvExample
{
    public class MainForm : Form
    {
        private TabControlAdv tabControlAdv1;
        private TabPageAdv tabPageAdv1;
        private TabPageAdv tabPageAdv2;

        public MainForm()
        {
            tabControlAdv1 = new TabControlAdv();
            tabPageAdv1 = new TabPageAdv() { Text = "Tab 1" };
            tabPageAdv2 = new TabPageAdv() { Text = "Tab 2" };

            tabControlAdv1.TabPages.Add(tabPageAdv1);
            tabControlAdv1.TabPages.Add(tabPageAdv2);
            tabControlAdv1.Dock = DockStyle.Fill;

            this.Controls.Add(tabControlAdv1);

            // Programmatically select the second tab using SelectedIndex
            tabControlAdv1.SelectedIndex = 1;

            // OR use SelectedTab
            tabControlAdv1.SelectedTab = tabPageAdv2;

            this.Text = "TabControlAdv Example";
            this.StartPosition = FormStartPosition.CenterScreen;
            this.Size = new System.Drawing.Size(400, 300);
        }

        static void Main()
        {
            Application.EnableVisualStyles();
            Application.Run(new MainForm());
        }
    }
}
{% endhighlight %}

{% highlight VB %}

Imports System
Imports System.Windows.Forms
Imports Syncfusion.Windows.Forms.Tools

Public Class MainForm
    Inherits Form

    Private tabControlAdv1 As TabControlAdv
    Private tabPageAdv1 As TabPageAdv
    Private tabPageAdv2 As TabPageAdv

    Public Sub New()
        tabControlAdv1 = New TabControlAdv()
        tabPageAdv1 = New TabPageAdv() With {.Text = "Tab 1"}
        tabPageAdv2 = New TabPageAdv() With {.Text = "Tab 2"}

        tabControlAdv1.TabPages.Add(tabPageAdv1)
        tabControlAdv1.TabPages.Add(tabPageAdv2)
        tabControlAdv1.Dock = DockStyle.Fill

        Me.Controls.Add(tabControlAdv1)

        ' Programmatically select the second tab using SelectedIndex
        tabControlAdv1.SelectedIndex = 1

        ' OR use SelectedTab
        tabControlAdv1.SelectedTab = tabPageAdv2

        Me.Text = "TabControlAdv Example"
        Me.StartPosition = FormStartPosition.CenterScreen
        Me.Size = New Drawing.Size(400, 300)
    End Sub

    Public Shared Sub Main()
        Application.EnableVisualStyles()
        Application.Run(New MainForm())
    End Sub
End Class
{% endhighlight %}

{% endtabs %}



