---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: gettingstarted
platform: WindowsForms
control: SpellCheckerAdv
documentation: ug
---

# Getting started

The SpellCheckerAdv can be added to Windows Forms application by using either of the following ways:

* Through Designer

* Through Code-Behind

## Through designer

Syncfusion UI for Windows Forms are added automatically to the Visual Studio Toolbox during installation. The following steps helps to add SpellCheckerAdv through drag and drop from Toolbox.

1) Create a Windows Forms project in Visual Studio.

Find SpellCheckerAdv by typing the name of the SpellCheckerAdv in the search box.

 ![](Getting-Started_images/ToolBox.png)

2) Drag SpellCheckerAdv and drop it in the designer.

 ![](Getting-Started_images/GettingStarted1.png)
 

## Through code

The following steps helps to add SpellCheckerAdv through code.

1) Create a Windows Forms project in Visual Studio and include following assemblies.

Syncfusion.Grid.Windows.dll
Syncfusion.Grid.Base.dll
Syncfusion.Shared.Base.dll
Syncfusion.Shared.Windows.dll
Syncfusion.SpellChecker.Base.dll
Syncfusion.Tools.Base.dll
Syncfusion.Tools.Windows.dll

2) Create an instance of SpellCheckerAdv using it namespace.

{% tabs %}

{% highlight C# %}

Syncfusion.Windows.Forms.Tools.SpellCheckerAdv spellCheckerAdv1 = new Syncfusion.Windows.Forms.Tools.SpellCheckerAdv();

{% endhighlight %}


{% highlight VB %}

Dim spellCheckerAdv1 As New Syncfusion.Windows.Forms.Tools.SpellCheckerAdv()

{% endhighlight %}

{% endtabs %}

3) Create instance of Button and RichTextBox in Form.

{% tabs %}

{% highlight C# %}

private System.Windows.Forms.Button button1;

private System.Windows.Forms.RichTextBox richTextBox1;

this.button1 = new System.Windows.Forms.Button();

this.richTextBox1 = new System.Windows.Forms.RichTextBox();

{% endhighlight %}


{% highlight VB %}

Private button1 As System.Windows.Forms.Button

Private richTextBox1 As System.Windows.Forms.RichTextBox

Me.button1 = New System.Windows.Forms.Button()

Me.richTextBox1 = New System.Windows.Forms.RichTextBox()

{% endhighlight %}

{% endtabs %}

5) Inherit  ISpellCheckerAdvEditorTools interface of SpellCheckerAdv and Initialize all the methods and properties in interface.

{% tabs %}

{% highlight C# %}

class TextBoxSpellEditor : ISpellCheckerAdvEditorTools
    {
        /// <summary>
        /// Initializes the TextBoxBase control.
        /// </summary>
        private TextBoxBase textBox;
        /// <summary>
        /// Initializes the new instance of the TextBoxSpellEditor class.
        /// </summary>
        /// <param name="control"></param>
        public TextBoxSpellEditor(Control control)
        {
            Control = control;
        }       
        /// <summary>
        /// Gets or sets the Control whose Text is to be spell checked.
        /// </summary>
        public Control Control
        {
            get
            {
                return textBox;
            }
            set
            {
                textBox = value as TextBoxBase;
            }
        }      
        /// <summary>
        /// Gets or sets the current misspelled word.
        /// </summary>
        public string CurrentWord
        {
            get
            {
                return textBox.Text;
            }
            set
            {
                textBox.Text = value;
            }
        }
        /// <summary>
        /// Gets or sets the Text to be spell checked by the <see cref="SpellCheckerAdv"/>
        /// </summary>
        public string Text
        {
            get
            {
                return textBox.Text;
            }
            set
            {
                textBox.Text = value;
            }
        }
        /// <summary>
        ///  Selects the word specified by the index.
        /// </summary>
        /// <param name="selectionStart">Zero based index of the word on the Text.</param>
        /// <param name="selectionLength">length of the word to be selected.</param>
        public void SelectText(int selectionStart, int selectionLength)
        {
            textBox.Select(selectionStart, selectionLength);
        }       
    }

{% endhighlight %}

{% highlight VB %}

Class TextBoxSpellEditor
	Implements ISpellCheckerAdvEditorTools
	''' <summary>
	''' Initializes the TextBoxBase control.
	''' </summary>
	Private textBox As TextBoxBase
	''' <summary>
	''' Initializes the new instance of the TextBoxSpellEditor class.
	''' </summary>
	''' <param name="control"></param>
	Public Sub New(control__1 As Control)
		Control = control__1
	End Sub
	''' <summary>
	''' Gets or sets the Control whose Text is to be spell checked.
	''' </summary>
	Public Property Control() As Control
		Get
			Return textBox
		End Get
		Set
			textBox = TryCast(value, TextBoxBase)
		End Set
	End Property
	''' <summary>
	''' Gets or sets the current misspelled word.
	''' </summary>
	Public Property CurrentWord() As String
		Get
			Return textBox.Text
		End Get
		Set
			textBox.Text = value
		End Set
	End Property
	''' <summary>
	''' Gets or sets the Text to be spell checked by the <see cref="SpellCheckerAdv"/>
	''' </summary>
	Public Property Text() As String
		Get
			Return textBox.Text
		End Get
		Set
			textBox.Text = value
		End Set
	End Property
	''' <summary>
	'''  Selects the word specified by the index.
	''' </summary>
	''' <param name="selectionStart">Zero based index of the word on the Text.</param>
	''' <param name="selectionLength">length of the word to be selected.</param>
	Public Sub SelectText(selectionStart As Integer, selectionLength As Integer)
		textBox.[Select](selectionStart, selectionLength)
	End Sub
End Class


{% endhighlight %}

{% endtabs %}

4) Initiate PerformSpellCheckForControl method by passing ISpellCheckerAdvEditorTools interface argument. 

{% tabs %}

{% highlight C# %}

TextBoxSpellEditor TextEditor = new TextBoxSpellEditor(this.richTextBox1);

SpellEditor = TextEditor;
 
this.spellCheckerAdv1.PerformSpellCheckForControl(SpellEditor);

{% endhighlight %}


{% highlight VB %}

Dim TextEditor As New TextBoxSpellEditor(Me.richTextBox1)

SpellEditor = TextEditor

Me.spellCheckerAdv1.PerformSpellCheckForControl(SpellEditor)

{% endhighlight %}

{% endtabs %}

5) In the Click event of the button call SpellCheck method with RichTextBox.

{% tabs %}

{% highlight C# %}

private void buttonAdv1_Click(object sender, EventArgs e)
{
     this.spellCheckerAdv1.SpellCheck(new SpellCheckerAdvEditorWrapper(this.richTextBox1));
}

{% endhighlight %}

{% highlight VB %}

Private Sub buttonAdv1_Click(sender As Object, e As EventArgs)
	Me.spellCheckerAdv1.SpellCheck(New SpellCheckerAdvEditorWrapper(Me.richTextBox1))
End Sub

{% endhighlight %}

{% endtabs %}

 ![](Getting-Started_images/GettingStarted2.png)

6) Suggested word can be replaced by double-clicking on the word from the ListBox.


