---
layout: post
title: Context-Menu-For-TextBox | WindowsForms | Syncfusion
description: context menu for textbox
platform: WindowsForms
control: SpellCheckerAdv
documentation: ug
---

# Context menu for TextBox

SpellCheckerAdv offers Microsoft Office application like context menu suggestions and helps user to correct spell errors by choosing correct option from the listed suggestions.


The following steps helps to add context menu support in the TextBox control through code.


1) Create a Windows Forms project in Visual Studio.


2) Inherit ISpellCheckerAdvEditorTools interface of SpellCheckerAdv and Initialize all the methods and properties in interface.

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

4) Initiate PerformSpellCheckUsingContextMenu method by passing ISpellCheckerAdvEditorTools interface argument. 

{% tabs %}

{% highlight C# %}

TextBoxSpellEditor TextEditor = new TextBoxSpellEditor(this.richTextBox1);

SpellEditor = TextEditor;
 
this.spellCheckerAdv1.PerformSpellCheckUsingContextMenu(SpellEditor);

{% endhighlight %}

{% highlight VB %}

Dim TextEditor As New TextBoxSpellEditor(Me.richTextBox1)

SpellEditor = TextEditor

Me.spellCheckerAdv1.PerformSpellCheckUsingContextMenu(SpellEditor)

{% endhighlight %}

{% endtabs %}

 ![](ContextMenu_images/ContextMenu.png)





