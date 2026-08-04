---
layout: post
title: Events in Windows Forms AI AssistView control | Syncfusion
description: Learn here all about Events support in Syncfusion AI AssistView control, its elements and more details.
platform: windowsforms
control: SfAIAssistView
documentation: ug
---

# Events in Windows Forms AI AssistView (SfAIAssistView)

The following events are supported by the [SfAIAssistView](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.AIAssistView.SfAIAssistView.html) control:

| Event | Description |
|-------|-------------|
| [PromptRequest](#promptrequest-event) | Notifies when a prompt is submitted in the control. |

## Prerequisites

Before proceeding, ensure the following are in place:

- A `ViewModel` class with a `Chats` collection, `ShowTypingIndicator`, `Suggestion`, and `CurrentUser` properties exists. Refer to the [Getting Started](https://help.syncfusion.com/windowsforms/ai-assistview/getting-started) page for setup details.
- A bot avatar image is added to the project at the path referenced in code (for example, `Asset\AI_Assist.png`).
- The following `using` directives are included in your file:

{% tabs %}
{% highlight c# %}

using System;
using System.Windows.Forms;
using Syncfusion.WinForms.AIAssistView;

{% endhighlight %}
{% endtabs %}

## PromptRequest event

[PromptRequest](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.AIAssistView.SfAIAssistView.html#Syncfusion_WinForms_AIAssistView_SfAIAssistView_PromptRequest) event notifies users when a prompt is submitted in the control. It can be used to validate user input before processing or trigger custom actions based on the prompt content. The input message and its details are passed through the [PromptRequestEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.AIAssistView.PromptRequestEventArgs.html). This argument provides the following details:

- `Message`: Represents the input message value of the AIAssistView (typically a `TextMessage`).
- `Handled`: Boolean value indicating whether the input message in the Messages collection has been handled by the event. Set this to `true` to prevent the default handling of the message.

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

        sfAIAssistView1.PromptRequest += AIAssistView_PromptRequest;
        sfAIAssistView1.DataBindings.Add("Messages", viewModel, "Chats", true, DataSourceUpdateMode.OnPropertyChanged);
        sfAIAssistView1.DataBindings.Add("ShowTypingIndicator", viewModel, "ShowTypingIndicator", true, DataSourceUpdateMode.OnPropertyChanged);
        sfAIAssistView1.DataBindings.Add("Suggestions", viewModel, "Suggestion", true, DataSourceUpdateMode.OnPropertyChanged);
        viewModel.CurrentUser = sfAIAssistView1.User;

        sfAIAssistView1.TypingIndicator.Author = new Author() { Name = "Bot", AvatarImage = Image.FromFile(@"Asset\AI_Assist.png") };
        sfAIAssistView1.TypingIndicator.DisplayText = "Typing";
    }

    private void AIAssistView_PromptRequest(object sender, PromptRequestEventArgs e)
    {
        var message = e.Message as TextMessage;
        if (message == null) return;

        // Example: Mark the prompt as handled so the default processing is skipped
        e.Handled = true;
    }
}

{% endhighlight %}

{% endtabs %}

## Troubleshooting

| Issue | Possible Cause | Resolution |
|-------|----------------|------------|
| `e.Message` is null at runtime | The bound `Messages` collection contains an item of an unexpected type. | Verify that the `Chats` collection is initialized with `TextMessage` (or other supported) items. |
| `Handled = true` does not prevent default behavior | The event is raised after the message has already been added to `Messages`. | Subscribe to `PromptRequest` before the user submits a prompt, and set `Handled` inside the handler. |