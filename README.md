# flutter_remote_control

## Table of contents

- [Flutter Remote Control](#flutter_remote_control)
  - [Table of contents](#table-of-contents)
  - [Introduction](#introduction)

## Introduction

This Flutter package enable remote control for development or user support purposes on your app. You can use it to automate development repetitive tasks, to connect to a costumer device remotely or just made a live action presentation.

## Usage

TODO

## Mode support by OS

| Mode | MacOS | Linux | Windows | Web | Android | iOS |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Server | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :x: | :x: |
| Client | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |

## Modules

### [Remote Control Core](./core/)

> folder ./core/

This module has all connections and logic to extend to other projects. This module can used by non-Flutter applications.

### Flutter Remote Control

> this folder

This module has core and Flutter Widgets for Flutter Apps.

## Applications

### [Dedicated Server](./dedicated-server/)

> folder ./dedicated-server/

> [Docker Hub Repository](https://hub.docker.com/repository/docker/ranierjardim/flutter_remote_control_dedicated_server)

This app is a dedicated server to remote user support. You can connect to server using the terminal app.

### [Terminal App](./terminal-app/)

> folder ./terminal-app/

> :apple: [App Store](https://www.apple.com/br/app-store/)

This app is used to send commands to your app. It can be used standalone(just open the app to setup an debug server) or using a dedicated server.
