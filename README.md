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

### [Remote Control Core](./remote_control_core/)

> folder ./remote_control_core/

This module has all entities, interfaces and core logic to extend to other projects. This module is not designed to import, it's only for other modules internal use.

### [Remote Control Server](./remote_control_server/)

> folder ./remote_control_server/

This module has the server scripts. This module can used by non-Flutter applications.

### [Remote Control](./core/)

> folder ./remote_control/

This module has the client scripts, for a remote controlled device or a terminal. This module can used by non-Flutter applications.

### Flutter Remote Control

> this folder

This module is a client for Flutter Apps.

## Applications

### [Dedicated Server](./dedicated-server/)

> folder ./dedicated-server/

> [Docker Hub Repository](https://hub.docker.com/repository/docker/ranierjardim/flutter_remote_control_dedicated_server)

This app is a dedicated server to remote user support. You can connect to server using the terminal app.

### [Terminal App](./terminal-app/)

> folder ./terminal-app/

> :apple: [App Store](https://www.apple.com/br/app-store/)

This app is used to send commands to your app. It can be used standalone(just open the app to setup an debug server) or using a dedicated server.

## Tested devices/OS by architecture

| Device | OS | i386(32 bits) | AMD64(64 bits) | ARM 32 bits | ARM 64 bits |
| ----- | ----- | ----- | ----- | ----- | ----- |
| - | Windows 11 | :heavy_exclamation_mark: | :white_check_mark: | :o: | :o: |
| Raspberry Pi 3 | Raspbian 11 | :heavy_exclamation_mark: | :heavy_exclamation_mark: | :ballot_box_with_check: | :white_check_mark: |
| - | MacOS 12 | :o: | :o: | :o: | :white_check_mark: |

#### Captions

- :white_check_mark: -> Tested and supported
- :ballot_box_with_check: -> Tested and server only supported
- :x: -> Tested and not supported
- :o: -> Not tested
- :heavy_exclamation_mark: -> Not supported architecture
