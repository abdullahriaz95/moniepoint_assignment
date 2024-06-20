# Moniepoint Take Home Assignment by Abdullah Riaz

The assignment mainly covers the design of the sample Real Estate App.

Source: https://dribbble.com/shots/23780608-Real-Estate-App


## Submission

Github Link: https://github.com/abdullahriaz95/moniepoint_assignment

APK Link: https://github.com/abdullahriaz95/moniepoint_assignment/blob/main/submission/app-release.apk

Demo Video: https://github.com/abdullahriaz95/moniepoint_assignment/blob/main/submission/Moniepoint-Assignment.mp4


## App Design & Architecture 

A little about the app architecture.


- **GoRouter** - This app uses GoRouter for navigation. GoRouter is one of the main navigation packages that is being widely used in Flutter community. It has an extra benefit when it comes to the url handling and web development with Flutter.

- **Localization** - The app is using Flutter native localizations to support different languages. Right now, there are two languages added, english and arabic (arabic translations also return english for now). 😊

- **Riverpod** - Riverpod is being used as the main source of state management in the app. There are providers used for User Profile, Real Estate properties & Daily Real Estate User summary which return the respective data that is being used by the app. Right now, dummy data is being sent to UI, but everything is in place & we only need to attach some data source to make it actually working.

- **Flutter Hooks** - Flutter hooks are being used for quick, clean & efficient coding style. It gives us out of the box functionality that limits out boilerplate code.

- **Flutter Animate** - Like Flutter Hooks to avoid boilerplate code, Flutter Animate is another package being used for the same purpose.

- **Clean Architecture** - This coding architecture with three top folders **config, features & shared** showcase how easy is to find and update any code.

- **Comments** - There are comments in files that require them. Which helps in maintaining code in future and also helps any other developer that starts working on this project.

<br>
<br>

> **Note**: There is always room for improvement, but given the time constraints, I have made my best effort to adhere to good coding conventions and cover all necessary aspects.





