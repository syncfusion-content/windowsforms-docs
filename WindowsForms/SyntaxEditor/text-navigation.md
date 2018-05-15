---
layout: post
title: Text Navigation
description: This section explains about the navigation support in EditControl
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# Text navigation

EditControl offers extensive support for text navigation. You can perform navigation at character, word, line, page or entire document levels. This section briefly explains the navigation of text in EditControl.

![](Text-Navigation_images/Text-Navigation_img1.png)

## Character based navigation

The following methods enable text navigation in the EditControl, in terms of characters or columns.

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
MoveUp</td><td>
Moves cursor up, if possible</td></tr>
<tr>
<td>
MoveDown</td><td>
Moves cursor down, if possible</td></tr>
<tr>
<td>
MoveLeft</td><td>
Moves cursor left, if possible</td></tr>
<tr>
<td>
MoveRight</td><td>
Moves cursor right, if possible</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.editControl1.MoveUp();

this.editControl1.MoveDown();

this.editControl1.MoveLeft();

this.editControl1.MoveRight();

{% endhighlight %}


{% highlight VB %}

Me.editControl1.MoveUp()

Me.editControl1.MoveDown()

Me.editControl1.MoveLeft()

Me.editControl1.MoveRight()

{% endhighlight %}

{% endtabs %}

## Word based navigation

The following methods enable text navigation in the EditControl, in terms of words.

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
MoveLeftWord</td><td>
Moves caret to the left by one word</td></tr>
<tr>
<td>
MoveRightWord</td><td>
Moves caret to the right by one word</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.editControl1.MoveLeftWord();

this.editControl1.MoveRightWord();

{% endhighlight %}


{% highlight VB %}

Me.editControl1.MoveLeftWord()

Me.editControl1.MoveRightWord()

{% endhighlight %}

{% endtabs %}

## Line based navigation

The following methods enable text navigation in the EditControl, in terms of lines.

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
MoveToLineStart</td><td>
Moves caret to the beginning of the line. First whitespace will be skipped</td></tr>
<tr>
<td>
MoveToLineEnd</td><td>
Moves caret to the end of the line</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.editControl1.MoveToLineStart();

this.editControl1.MoveToLineEnd();

{% endhighlight %}


{% highlight VB %}

Me.editControl1.MoveToLineStart()

Me.editControl1.MoveToLineEnd()

{% endhighlight %}

{% endtabs %}

## Page based navigation

The following methods enable text navigation in the EditControl, in terms of pages.

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
MovePageUp</td><td>
Moves caret one page up</td></tr>
<tr>
<td>
MovePageDown</td><td>
Moves caret one page down</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.editControl1.MovePageUp();

this.editControl1.MovePageDown();

{% endhighlight %}


{% highlight VB %}

Me.editControl1.MovePageUp()

Me.editControl1.MovePageDown()

{% endhighlight %}

{% endtabs %}

## Block based navigation

We can position the keyboard cursor at the beginning or end of the indentation block using the `JumpToIndentBlockStart` and `JumpToIndentBlockEnd` methods respectively.

{% tabs %}

{% highlight C# %}

this.editControl1.JumpToIndentBlockStart();

this.editControl1.JumpToIndentBlockEnd();

{% endhighlight %}


{% highlight VB %}

Me.editControl1.JumpToIndentBlockStart()

Me.editControl1.JumpToIndentBlockEnd()

{% endhighlight %}

{% endtabs %}

## Document based navigation

The following methods enable text navigation in the EditControl, in terms of documents.

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
MoveToBeginning</td><td>
Moves caret to the beginning of the file</td></tr>
<tr>
<td>
MoveToEnd</td><td>
Moves caret to the end of the file</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.editControl1.MoveToBeginning();

this.editControl1.MoveToEnd();

{% endhighlight %}


{% highlight VB %}

Me.editControl1.MoveToBeginning()

Me.editControl1.MoveToEnd()

{% endhighlight %}

{% endtabs %}

### Retrieve current word

We can retreive the current word in EditControl by using the `GetCurrentWord` method.

{% tabs %}

{% highlight C# %}

Console.WriteLine(this.editControl1.GetCurrentWord().ToString());

{% endhighlight %}


{% highlight VB %}

Me.WriteLine(this.editControl1.GetCurrentWord().ToString())

{% endhighlight %}

{% endtabs %}

### Retrieve current column index in line

We can retreive the current word column index in EditControl by using the `GetCurrentWordColumn` method and `CurrentColumn` property.

{% tabs %}

{% highlight C# %}

Console.WriteLine(this.editControl1.GetCurrentWordColumn().ToString());

Console.WriteLine(this.editControl1.CurrentColumn);

{% endhighlight %}


{% highlight VB %}

Me.WriteLine(this.editControl1.GetCurrentWordColumn().ToString())

Me.WriteLine(this.editControl1.CurrentColumn)

{% endhighlight %}

{% endtabs %}

### Retrieve current line index

We can retreive the current word column index in EditControl by using the `CurrentLine` property.

{% tabs %}

{% highlight C# %}

Console.WriteLine(this.editControl1.CurrentLine);

{% endhighlight %}


{% highlight VB %}

Me.WriteLine(this.editControl1.CurrentLine)

{% endhighlight %}

{% endtabs %}

A sample which demonstrates the above features is available in the below sample installation path.

Installation Location\Syncfusion\Essential Studio\Version Number\Windows\Edit.Windows\Samples\Text Navigation\Text Navigation

## Scrolling

EditControl offers extremely smooth scrolling behavior using idle-time processing and dynamic scroll area expansion techniques. The scrolling behavior is smooth even when large files are loaded,though the EditControl scrolls by several hundred lines for a small movement of the scroller.

The scrollers in the EditControl can be optionally shown / hidden by using the below given properties.

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
ShowVerticalScroller</td><td>
Specifies a value indicating whether the vertical scroller can be shown</td></tr>
<tr>
<td>
ShowHorizontalScroller</td><td>
Specifies a value indicating whether the horizontal scroller can be shown</td></tr>
<tr>
<td>
AlwaysShowScrollers</td><td>
Specifies a value indicating whether scrollers should be always visible</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Display the Horizontal Scroller.

this.editControl1.ShowHorizontalScroller = true;

// Display the Vertical Scroller.

this.editControl1.ShowVerticalScroller = true;

this.editControl1.AlwaysShowScrollers = true;

{% endhighlight %}


{% highlight VB %}

// Display the Horizontal Scroller.

Me.editControl1.ShowHorizontalScroller = True

// Display the Vertical Scroller.

Me.editControl1.ShowVerticalScroller = True

Me.editControl1.AlwaysShowScrollers = True

{% endhighlight %}

{% endtabs %}

EditControl supports scroller events that are raised when the scroll arrows are clicked. The scroller events are used to synchronize the scrolling of multiple EditControls.

![](Text-Navigation_images/Text-Navigation_img2.jpg)

### Scroll position and offsets

The scroll position and offsets of the EditControl are set by using the below given properties.

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
ScrollPosition</td><td>
Specifies scroll position of EditControl</td></tr>
<tr>
<td>
ScrollOffsetBottom</td><td>
Specifies the bottom scroll offset</td></tr>
<tr>
<td>
ScrollOffsetLeft</td><td>
Specifies the left scroll offset</td></tr>
<tr>
<td>
ScrollOffsetRight</td><td>
Specifies the right scroll offset.</td></tr>
<tr>
<td>
ScrollOffsetTop</td><td>
Specifies the top scroll offset.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.editControl1.ScrollPosition = new Point(1, 5);

this.editControl1.ScrollOffsetBottom = 5;

this.editControl1.ScrollOffsetLeft = 10;

this.editControl1.ScrollOffsetTop = 5;

this.editControl1.ScrollOffsetTop = 10;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.ScrollPosition = New Point(1, 5) 

Me.editControl1.ScrollOffsetBottom = 5 

Me.editControl1.ScrollOffsetLeft = 10 

Me.editControl1.ScrollOffsetTop = 5 

Me.editControl1.ScrollOffsetTop = 10

{% endhighlight %}

{% endtabs %}

