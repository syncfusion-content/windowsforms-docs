---
layout: post
title: Data-Binding | WindowsForms | Syncfusion
description: data binding
platform: WindowsForms
control: TreeView 
documentation: ug
---

# Data Binding

TreeViewAdv does not have direct option to populate from XML and DataTable. This below section will help to load TreeViewAdv from XML and DataTable.




## XML


{% highlight XML %}

~~~ 
<?xml version="1.0" encoding="utf-8" ?> 
<countries>
	<country>
		<name>USA</name>
		<states>
			<state>Alabama</state>
			<state>Alaska</state>
			<state>Arkansas</state>
			<state>California</state>
		</states>
	</country>
	<country>
		<name>Canada</name>
		<states>
			<state>Alberta</state>
			<state>Manitoba</state>
			<state>Saskatchewan</state>
			<state>Ontario</state>
			<state>Quebec</state>
			<state>British Columbia</state>
			<state>Yukon</state>
			<state>Northwest Territories</state>
		</states>
	</country>
</countries>

~~~

{% endhighlight %}

{% highlight c# %}

        /// <summary>
        /// To load TreeViewAdv from XML File
        /// </summary>
        private void LoadTreeViewAdvfromXML()
        {
            XmlDocument xDoc = new XmlDocument();
			//Load the xml file
            xDoc.Load("TreeView.xml");
            treeViewAdv1.Nodes.Clear();
            treeViewAdv1.Nodes.Add(new
              TreeNodeAdv(xDoc.DocumentElement.Name));
            TreeNodeAdv tNode = new TreeNodeAdv();
            tNode = (TreeNodeAdv)treeViewAdv1.Nodes[0];
            LoadFromXML(xDoc.DocumentElement, tNode);
            treeViewAdv1.ExpandAll();
        }

        /// <summary>
		/// To load information to XML File
		/// </summary>
        private void LoadFromXML(XmlNode xmlNode, TreeNodeAdv treeNode)
        {
            XmlNode xNode;
            TreeNodeAdv tNode;
            XmlNodeList xNodeList;
            if (xmlNode.HasChildNodes) 
            {
                xNodeList = xmlNode.ChildNodes;
                for (int x = 0; x <= xNodeList.Count - 1; x++)
                {
                    xNode = xmlNode.ChildNodes[x];
                    treeNode.Nodes.Add(new TreeNodeAdv(xNode.Name));
                    tNode = treeNode.Nodes[x];
                    LoadFromXML(xNode, tNode);
                }
            }
            else 
                treeNode.Text = xmlNode.OuterXml.Trim();
        }

        /// <summary>
        /// To write details in XML Elements
        /// </summary>
        private XmlTextWriter XmlTextWriter;

        /// <summary>
        /// To save TreeViewAdv node information to XML File
        /// </summary>
        public void ExportToXML(TreeViewAdv tv, string filename)
        {
            XmlTextWriter = new XmlTextWriter(filename, System.Text.Encoding.UTF8);
            XmlTextWriter.WriteStartDocument();
            XmlTextWriter.WriteStartElement(treeViewAdv1.Nodes[0].Text);
            foreach (TreeNodeAdv node in tv.Nodes)
            {
                SaveToXML(node.Nodes);
            }
            XmlTextWriter.WriteEndElement();
            XmlTextWriter.Close();
        }

        /// <summary>
        /// Iterate function helps to save TreeNodeAdv information to XML
        /// </summary>
        private void SaveToXML(TreeNodeAdvCollection tnc)
        {
            foreach (TreeNodeAdv node in tnc)
            {
                if (node.Nodes.Count > 0)
                {
                    XmlTextWriter.WriteStartElement(node.Text);
                    SaveToXML(node.Nodes);
                    XmlTextWriter.WriteEndElement();
                }
                else
                {
                    XmlTextWriter.WriteString(node.Text);
                }
            }
        }


{% endhighlight %}

{% highlight vbnet %}

		''' <summary>
		''' To load TreeViewAdv from XML File
		''' </summary>
		Private Sub LoadTreeViewAdvfromXML()
			Dim xDoc As New XmlDocument()
			xDoc.Load("TreeView.xml")
			treeViewAdv1.Nodes.Clear()
			treeViewAdv1.Nodes.Add(New TreeNodeAdv(xDoc.DocumentElement.Name))
			Dim tNode As New TreeNodeAdv()
			tNode = CType(treeViewAdv1.Nodes(0), TreeNodeAdv)
			LoadFromXML(xDoc.DocumentElement, tNode)
			treeViewAdv1.ExpandAll()
		End Sub


		Private Sub LoadFromXML(ByVal xmlNode As XmlNode, ByVal treeNode As TreeNodeAdv)
			Dim xNode As XmlNode
			Dim tNode As TreeNodeAdv
			Dim xNodeList As XmlNodeList
			If xmlNode.HasChildNodes Then
				xNodeList = xmlNode.ChildNodes
				For x As Integer = 0 To xNodeList.Count - 1
					xNode = xmlNode.ChildNodes(x)
					treeNode.Nodes.Add(New TreeNodeAdv(xNode.Name))
					tNode = treeNode.Nodes(x)
					LoadFromXML(xNode, tNode)
				Next x
			Else
				treeNode.Text = xmlNode.OuterXml.Trim()
			End If
		End Sub

		''' <summary>
		''' To write details in XML Elements
		''' </summary>
		Private XmlTextWriter As XmlTextWriter

		''' <summary>
		''' To save TreeViewAdv node information to XML File
		''' </summary>
		Public Sub ExportToXML(ByVal tv As TreeViewAdv, ByVal filename As String)
			XmlTextWriter = New XmlTextWriter(filename, System.Text.Encoding.UTF8)
			XmlTextWriter.WriteStartDocument()
			XmlTextWriter.WriteStartElement(treeViewAdv1.Nodes(0).Text)
			For Each node As TreeNodeAdv In tv.Nodes
				SaveToXML(node.Nodes)
			Next node
			XmlTextWriter.WriteEndElement()
			XmlTextWriter.Close()
		End Sub

		''' <summary>
		''' Iterate function helps to save TreeNodeAdv information to XML
		''' </summary>
		Private Sub SaveToXML(ByVal tnc As TreeNodeAdvCollection)
			For Each node As TreeNodeAdv In tnc
				If node.Nodes.Count > 0 Then
					XmlTextWriter.WriteStartElement(node.Text)
					SaveToXML(node.Nodes)
					XmlTextWriter.WriteEndElement()
				Else
					XmlTextWriter.WriteString(node.Text)
				End If
			Next node
		End Sub

	End Class
End Namespace

{% endhighlight %}

![](DataBinding_images/databindingimage2.png)

## DataTable

{% highlight c# %}

/// <summary>
/// Adding namespace
/// </summary>
using Syncfusion.Windows.Forms;
using Syncfusion.Windows.Forms.Tools;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

public Form1()
        {
            InitializeComponent();

            dt.Columns.Add("Name", typeof(string));
            dt.Columns.Add("Parent", typeof(string));

            dt.Rows.Add(new string[] { "Root", "0" });
            dt.Rows.Add(new string[] { "Work", "Root" });
            dt.Rows.Add(new string[] { "Home", "Root" });
            dt.Rows.Add(new string[] { "One", "Work" });
            dt.Rows.Add(new string[] { "Two", "Work" });
            dt.Rows.Add(new string[] { "One", "Home" });
            dt.Rows.Add(new string[] { "Two", "Home" });
            dt.Rows.Add(new string[] { "Three", "Home" });
            dt.Rows.Add(new string[] { "Other", "Root" });

            ds.Tables.Add(dt);
            //add a relationship
            ds.Relations.Add("TreeParentChild", ds.Tables["AddressLists"].Columns["Name"],
                ds.Tables["AddressLists"].Columns["Parent"], false);
        }
        #endregion

        #region Function
        /// <summary>
        /// To Populate TreeView
        /// </summary>
        public void PopulateTree(DataRow dr, TreeNodeAdv pNode)
        {
            foreach (DataRow row in dr.GetChildRows("TreeParentChild"))
            {
                TreeNodeAdv cChild = new TreeNodeAdv(row["Name"].ToString());
                pNode.Nodes.Add(cChild);
                //Recursively build the tree
                PopulateTree(row, cChild);
            }
        }


{% endhighlight %}

{% highlight vbnet %}



' Adding name spaces

Imports Syncfusion.Windows.Forms
Imports Syncfusion.Windows.Forms.Tools
Imports System
Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Data
Imports System.Drawing
Imports System.Linq
Imports System.Text
Imports System.Threading.Tasks
Imports System.Windows.Forms

Namespace TreeViewDataBinding
	Partial Public Class Form1
		Inherits MetroForm

		#Region "Variables"
		' DataTable
		Private dt As New DataTable("AddressLists")

		'Use a DataSet to manage the data
		Private ds As New DataSet()
		#End Region

		#Region "Constructor"
		Public Sub New()
			InitializeComponent()

			dt.Columns.Add("Name", GetType(String))
			dt.Columns.Add("Parent", GetType(String))

			dt.Rows.Add(New String() { "Root", "0" })
			dt.Rows.Add(New String() { "Work", "Root" })
			dt.Rows.Add(New String() { "Home", "Root" })
			dt.Rows.Add(New String() { "One", "Work" })
			dt.Rows.Add(New String() { "Two", "Work" })
			dt.Rows.Add(New String() { "One", "Home" })
			dt.Rows.Add(New String() { "Two", "Home" })
			dt.Rows.Add(New String() { "Three", "Home" })
			dt.Rows.Add(New String() { "Other", "Root" })

			ds.Tables.Add(dt)
			'add a relationship
			ds.Relations.Add("TreeParentChild", ds.Tables("AddressLists").Columns("Name"), ds.Tables("AddressLists").Columns("Parent"), False)
		End Sub
		#End Region

		#Region "Function"
		''' <summary>
		''' To Populate TreeView
		''' </summary>
		Public Sub PopulateTree(ByVal dr As DataRow, ByVal pNode As TreeNodeAdv)
			For Each row As DataRow In dr.GetChildRows("TreeParentChild")
				Dim cChild As New TreeNodeAdv(row("Name").ToString())
				pNode.Nodes.Add(cChild)
				'Recursively build the tree
				PopulateTree(row, cChild)
			Next row
		End Sub

		#End Region

	End Class
End Namespace

{% endhighlight %}

![](DataBinding_images/databindingimage1.png)