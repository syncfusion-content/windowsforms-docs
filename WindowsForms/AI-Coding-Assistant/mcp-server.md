---
layout: post
title: SyncfusionWinFormsAssistant MCP Server | Syncfusion
description: Learn how to configure and use SyncfusionWinFormsAssistant MCP server for intelligent code generation, documentation, and troubleshooting in WindowsForms apps.
platform: Windows Forms
control: Getting started with SyncfusionWinFormsAssistant MCP Server
documentation: ug
---

# SyncfusionWinFormsAssistant MCP Server

## Overview

The [SyncfusionWinFormsAssistant](https://www.npmjs.com/package/@syncfusion/winforms-assistant) is a specialized [Model Context Protocol (MCP)](https://modelcontextprotocol.io/docs/getting-started/intro) server that provides intelligent assistance for developers using Syncfusion's Windows Forms component libraries. This tool seamlessly integrates with compatible [MCP clients](https://modelcontextprotocol.io/clients) to enhance your development workflow when building .NET Windows Forms applications with Syncfusion<sup style="font-size:70%">&reg;</sup> components.

### Key Benefits

* Intelligent code generation for Syncfusion<sup style="font-size:70%">&reg;</sup> Windows Forms components.
* Detailed component documentation and usage examples.
* Troubleshooting assistance for common integration challenges.

## Prerequisites

Before using [SyncfusionWinFormsAssistant](https://www.npmjs.com/package/@syncfusion/winforms-assistant), ensure you have:

* Required [node](https://nodejs.org/en/) version >= 18
* A [compatible MCP client](https://modelcontextprotocol.io/clients) (VS Code with GitHub Copilot, [Syncfusion<sup style="font-size:70%">&reg;</sup> CodeStudio](https://www.syncfusion.com/code-studio/), etc.)
* An active Syncfusion<sup style="font-size:70%">&reg;</sup> license (any of the following):
  - [Commercial License](https://www.syncfusion.com/sales/unlimitedlicense)
  - [Free Community License](https://www.syncfusion.com/products/communitylicense)
  - [Free Trial](https://www.syncfusion.com/account/manage-trials/start-trials)
* An active [API KEY](https://syncfusion.com/account/api-key)

## Unlimited Access

Syncfusion<sup style="font-size:70%">&reg;</sup> offers unlimited access to this MCP server. There are no restrictions on:

* Number of requests
* Components usage
* Query types
* Usage duration

This ensures users can fully leverage Syncfusion<sup style="font-size:70%">&reg;</sup> components to enhance their development experience without limitations.

## Installation and setup

Before you can invoke the `SyncfusionWinFormsAssistant` MCP server, you need to configure your MCP client with these core settings. The **Generic MCP Server Settings** shown below are identical across all clients:

### Generic MCP Server Settings

- **npm package name**: `@syncfusion/winforms-assistant`
- **Type**: stdio (standard input/output transport)
- **Command**: npx
- **Arguments**: -y
- **Server name**: SyncfusionWinFormsAssistant

You need to add your [Syncfusion API key](https://syncfusion.com/account/api-key) as an env parameter in the configuration file:

```json
"env": {
  "Syncfusion_API_Key": "YOUR_API_KEY"
}
```

Below are setup instructions for popular MCP clients:

### Syncfusion<sup style="font-size:70%">&reg;</sup> Code Studio

* In [Code Studio](https://www.syncfusion.com/code-studio/), open MCP Marketplace and navigate to the `Custom Servers` tab.
* Enter the Server Name as `winforms-mcp`, choose Server Type as npm package, and set the NPM Package name to `@syncfusion/winforms-assistant`.
* Add an environment variable as `Syncfusion_API_Key` and value as your [Syncfusion API key](https://syncfusion.com/account/api-key), then click **Install Server**.
* Once installed, the server will appear in the User Installed Server list, and will be added to the **config.yaml** file.
* The server is now ready for use in Code Studio. For more details, refer to the [Code Studio documentation](https://help.syncfusion.com/code-studio/reference/configure-properties/mcp/customservers#npm-server).

### Visual Studio Code (GitHub Copilot MCP)

* To configure an MCP server for a specific workspace, you can create a `.vscode/mcp.json` file in your workspace folder.

```json
{
  "servers": {
    "syncfusion-winforms-assistant": {
      "type": "stdio",
      "command": "npx",
      "args": [
        "-y",
        "@syncfusion/winforms-assistant@latest"
      ],
      "env": {
        "Syncfusion_API_Key": "YOUR_API_KEY"
      }
    }
  }
}
```

* After updating the configuration in mcp.json, you'll notice a "Start" option at the top of the config. This allows you to easily start the [SyncfusionWinFormsAssistant](https://www.npmjs.com/package/@syncfusion/winforms-assistant) server directly from the settings interface without additional commands.

* Confirm the server is active by checking for a message like: `SyncfusionWinFormsAssistant is running...` in the output.

* For additional guidance, refer to the [VS Code documentation](https://code.visualstudio.com/docs/copilot/customization/mcp-servers#_add-an-mcp-server).

### Visual Studio (GitHub Copilot MCP)

* To configure an MCP server for a specific workspace, you can create a `.vs/mcp.json` file in your workspace folder.

```json
{
  "servers": {
    "syncfusion-winforms-assistant": {
      "type": "stdio",
      "command": "npx",
      "args": [
        "-y",
        "@syncfusion/winforms-assistant@latest"
      ],
      "env": {
        "Syncfusion_API_Key": "YOUR_API_KEY"
      }
    }
  }
}
```

* After updating the mcp.json configuration, open the GitHub Copilot Chat window. Click the Ask arrow, then select Agent.
* Select the [SyncfusionWinFormsAssistant](https://www.npmjs.com/package/@syncfusion/winforms-assistant) from the tools section.
* For more details, refer to the official [Visual Studio documentation](https://learn.microsoft.com/en-us/visualstudio/ide/mcp-servers?view=vs-2022).

### Cursor

To configure an MCP server for a specific workspace, you can create a .cursor/mcp.json file in your workspace folder.

```json
{
  "mcpServers": {
    "syncfusion-winforms-assistant": {
      "type": "stdio",
      "command": "npx",
      "args": [
        "-y",
        "@syncfusion/winforms-assistant@latest"
      ],
      "env": {
       "Syncfusion_API_Key": "YOUR_API_KEY"
      }
    }
  }
}
```
For more details, refer to the [Cursor documentation](https://cursor.com/docs/context/mcp#using-mcp-json).

### JetBrains IDEs

* Go to Settings -> Tools -> AI Assistant -> Model Context Protocol (MCP).
* Click + Add to add a new MCP server configuration.
* In the New MCP Server dialog, switch the dropdown as `As JSON` and add the following config:

```json
{
  "mcpServers": {
    "syncfusion-winforms-assistant": {
      "command": "npx",
      "args": [
        "-y",
        "@syncfusion/winforms-assistant@latest"
      ],
      "env": {
       "Syncfusion_API_Key": "YOUR_API_KEY"
      }
    }
  }
}
```

* Click OK and Apply.

For further assistance, see the [JetBrains documentation](https://www.jetbrains.com/help/ai-assistant/mcp.html#connect-to-an-mcp-server).

> For more detailed information about configuring MCP servers in various clients, refer to the official documentations, e.g., [Windsurf](https://docs.windsurf.com/windsurf/cascade/mcp#mcp-config-json)

## Usage

To activate the SyncfusionWinFormsAssistant MCP server:

1. Start your prompt with one of the following:
    * 'SyncfusionWinFormsAssistant'
    * '/syncfusion-winforms-assistant'
    * '/syncfusion-winforms'
    * '@syncfusion-winforms'
    * '@ask_syncfusion_winforms'
    * 'winforms'

   In VS Code, you can also use #SyncfusionWinFormsAssistant for direct invocation.

2. Grant permission for the server to run (for the session, workspace, or always).
3. For best results, start a new chat for each new topic to maintain clean context.

### Mode availability

Syncfusion<sup style="font-size:70%">&reg;</sup> MCP Servers provide full access to all AI interaction modes — Ask/Chat, Edit, and Agent — across supported MCP clients.

### Best Practices for Effective Usage

1. `Be specific`: Mention both platform and component (e.g., "How do I create a Syncfusion Windows Forms DataGrid with paging and filtering?").
2. `Provide context`: Include details about your use case for more targeted solutions.
3. `Use descriptive queries`: Avoid vague questions that lack necessary context.
4. `Start fresh for new topics`: Begin a new chat session when switching components or topics.

### Example Queries

Here are some effective ways to use [SyncfusionWinFormsAssistant](https://www.npmjs.com/package/@syncfusion/winforms-assistant):

 * "Create a Syncfusion Windows Forms DataGrid component with paging, sorting and filtering"
 * "How do I implement data binding with Syncfusion Windows Forms Scheduler?"

## Troubleshooting

If you encounter issues:

 * Verify your API key is correctly configured.
 * Ensure the MCP server is enabled in your client's tools selection.
 * Check that you're using a compatible MCP client version.
 * Try restarting your development environment.

## Support

Product support is available through the following mediums.

* [Support ticket](https://support.syncfusion.com/support/tickets/create) - Guaranteed Response in 24 hours \| Unlimited tickets \| Holiday support
* [Community forum](https://www.syncfusion.com/forums/windowsforms)
* [Request feature or report bug](https://www.syncfusion.com/feedback/winforms)
* Live chat

## See also

* [Syncfusion Windows Forms Documentation](https://help.syncfusion.com/windowsforms/overview)
