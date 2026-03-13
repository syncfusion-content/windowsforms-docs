---
layout: post
title: Windows Forms AI AssistView control | Syncfusion
description: Learn here all about Events support in Syncfusion AI AssistView control, its elements and more details.
platform: windowsforms
control: SfAIAssistView
documentation: ug
---

# PromptRequest event

This event notifies users when a prompt is submitted in the control. It can be used to validate user input before processing or trigger custom actions based on the prompt content. The input message and its details are passed through the PromptRequestEventArgs. This argument provides the following details:

InputMessage : Represents the input message value of the AIAssistView.
Handled : Boolean value indicating whether the input message in the Messages collection has been handled by the event.

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
        sfAIAssistView1.Dock= DockStyle.Fill;
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
        bool result = e.Handled;
    }
}

{% endhighlight %}

{% endtabs %}