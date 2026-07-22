---
layout: post
title: Typing Indicator in Windows Forms AI AssistView control | Syncfusion
description: Learn about the typing indicator feature displayed in the AI AssistView control while the AI processes or generates a response.
platform: windowsforms
control: SfAIAssistView
documentation: ug
---

# Typing Indicator in Windows Forms AI AssistView

Use the [`TypingIndicator`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.AIAssistView.SfAIAssistView.html#Syncfusion_WinForms_AIAssistView_SfAIAssistView_TypingIndicator) property to show a typing indicator while the AI is processing or generating a response, giving users real-time feedback and enhancing conversational flow.

The `TypingIndicator` shows an animation representing the AI or user typing a message. The indicator is shown when the [`ShowTypingIndicator`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.AIAssistView.SfAIAssistView.html#Syncfusion_WinForms_AIAssistView_SfAIAssistView_ShowTypingIndicator) property is set to `true`.

 following `using` directives are included in your file:

{% tabs %}

{% highlight c# %}
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.WinForms.AIAssistView;

{% endhighlight %}

{% endtabs %}

N> A `ViewModel` class with a `Chats` collection, `ShowTypingIndicator`, `Suggestion`, and `CurrentUser` properties exists. Refer to the [Getting Started](https://help.syncfusion.com/windowsforms/ai-assistview/getting-started) page for setup details.

## Configuring the Typing Indicator

The following example configures the typing indicator's avatar and display text, and binds the `ShowTypingIndicator` property to the `ViewModel`:

{% tabs %}

{% highlight c# %}
public partial class Form1 : Form
{
    ViewModel viewModel;

    public Form1()
    {
        InitializeComponent();
        viewModel = new ViewModel();

        SfAIAssistView sfAIAssistView1 = new SfAIAssistView();
        sfAIAssistView1.Location = new System.Drawing.Point(41, 40);
        sfAIAssistView1.Size = new System.Drawing.Size(818, 457);
        sfAIAssistView1.Dock = DockStyle.Fill;
        this.Controls.Add(sfAIAssistView1);

        sfAIAssistView1.DataBindings.Add("Messages", viewModel, "Chats", true, DataSourceUpdateMode.OnPropertyChanged);
        sfAIAssistView1.DataBindings.Add("ShowTypingIndicator", viewModel, "ShowTypingIndicator", true, DataSourceUpdateMode.OnPropertyChanged);
        sfAIAssistView1.DataBindings.Add("Suggestions", viewModel, "Suggestion", true, DataSourceUpdateMode.OnPropertyChanged);
        viewModel.CurrentUser = sfAIAssistView1.User;

        sfAIAssistView1.TypingIndicator.Author = new Author() { Name = "Bot", AvatarImage = Image.FromFile(@"Asset\AI_Assist.png") };
        sfAIAssistView1.TypingIndicator.DisplayText = "Typing";
    }
}
{% endhighlight %}

{% endtabs %}

![WindowsForms AI AssistView control typing indicator](aiassistview_images/windowsforms_aiassistview_typing_indicator.gif)