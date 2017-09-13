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


{% tabs %}

{% highlight c# %}

 /// <summary>
        /// To load TreeViewAdv from XML File
        /// </summary>
        private void LoadTreeViewAdvfromXML()
        {
            XmlDocument xDoc = new XmlDocument();

            xDoc.Load("TreeView.xml");

            treeViewAdv1.Nodes.Clear();

            treeViewAdv1.Nodes.Add(new
              TreeNodeAdv(xDoc.DocumentElement.Name));

            TreeNodeAdv tNode = new TreeNodeAdv();

            tNode = (TreeNodeAdv)treeViewAdv1.Nodes[0];

            LoadFromXML(xDoc.DocumentElement, tNode);

            treeViewAdv1.ExpandAll();
        }

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
                }}
            
			else 
                treeNode.Text = xmlNode.OuterXml.Trim();}
				 //click  event to LoadTreeViewAdvfromXML()
        private void buttonAdv1_Click(object sender, EventArgs e)
        {
            LoadTreeViewAdvfromXML();
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
                    XmlTextWriter.WriteString(node.Text);}}}

        private void buttonAdv2_Click(object sender, EventArgs e)
        {
            ExportToXML(treeViewAdv1, "TreeView.xml");}
{% endhighlight %}
{% highlight VB %}
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
			End If End Sub

		Private Sub buttonAdv1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles buttonAdv1.Click
			LoadTreeViewAdvfromXML()
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
		Private Sub buttonAdv2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles buttonAdv2.Click
			ExportToXML(treeViewAdv1, "TreeView.xml")
		End Sub

{% endhighlight %}
{% endtabs %}

![](DataBinding_images/databindingimage1.png)