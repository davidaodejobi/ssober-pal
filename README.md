# SoberPal (Addiction Support System)

A mobile App that helps addiction and mental health patient mitigate relapse using a push notifications/alert.

## Getting Started 🚀

This projects use two major branch for managing the workflow.

- main branch : main branch is the branch where all the main development will occur
- dev branch : dev branch is where most of the development process will be done

## Run Locally

Clone the project

```bash
  git clone https://github.com/workshopapps/addictionsupportroom.mobile.git
```

Go to the project directory

```bash
  cd addictionsupportroom.mobile
```

Switch to the dev branch 👀

```bash
  git checkout dev
```

Install dependencies

```bash
  flutter pub get
```

Run the project

```bash
  flutter run
```

## Architecture/Folder structure

This project uses the basic MVC + S(Model, View, Controller, Services) pattern

- Model - The model helps hold the state of the application, and gives an API the privilege to filter, manipulate, and access the data.
- View - This is the user interface(UI) as it helps to populate the model's data(widgets and pages within the Flutter application). In essense, it is a visualization of information that the application contains.
- Controller - This is where most of the work and logic is done. The model and the view are interconnected, so the execution is reflected in the view part.
- Services - The services will be responsible for fetching data from anywhere we need one, and return the retrieved data to our app.

## Commits Guidelines

All PRs must be according to the recommended naming convention. (https://www.conventionalcommits.org/en/v1.0.0/)

## Packages

| Package              | Uses                                                                                                                                                                                         |
| -------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| provider             | [provider](https://pub.dev/packages/provider) is the state management used in this project.                                                                                                  |
| cached_network_image | [cached_network_image](https://pub.dev/packages/cached_network_image) is a flutter library to show images from the internet and keep them in the cache directory.                            |
| flutter_svg          | [flutter_svg](https://pub.dev/packages/flutter_svg) is a flutter package that help draw SVG (and some Android VectorDrawable (XML)) files on a Flutter Widget.                               |
| flutter_screenutil   | [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) is a a flutter plugin for adapting screen and font size.Let your UI display a reasonable layout on different screen sizes. |
| go_router            | [go_router](https://pub.dev/packages/go_router) allows for strongly-typed arguments passing, effortless deep-linking.                                                                        |
| auto_route_generator | [auto_route_generator](https://pub.dev/packages/auto_route_generator) is a generator for auto_route library.                                                                                 |

## Demo

Insert gif or link to demo

## Roadmap

- Onboarding, profile setup screen
- Homescreen screen
- Progress Section screen
- Chatroom screen
- Account Session screen
