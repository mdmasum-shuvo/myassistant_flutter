							TECHNICAL DOCUMENTATION FOR
								DOORTRACK
								Mobile App

 Step 1: Install android studio if its not available in your Computer
Download the android studio https://developer.android.com/studio from this official website of Google and install it in your pc
Step 2: Install Flutter in your Computer
1. Download or clone the following installation bundle to get the latest stable release of the Flutter SDK.
Download link : git clone -b master https://github.com/flutter/flutter.git 2.Create a folder where you can install Flutter.
3.Update your Windows PATH variable
To run Flutter commands in PowerShell, add Flutter to the PATH environment variable.
  
1. 2. 3.
4. 5. 6.
7.
8.
PressWindows+S.
Typeenvironment.
When Edit the system environment variables displays as the Best match, click Open under Edit the system environment variables.
Click About.
Click Advanced System Settings.
Click Environment Variables...
The Environment Variables dialog displays.
Under User variables for <user> check for the Path entry.
1. If the entry exists, click Edit....
2. If the entry doesn’t exist, click New....
3. Click New.
4. Type<install-directory>\flutter\bin.
5. Click the <install-directory>\flutter\bin entry.
6. Click Move Up until the Flutter entry sits at the top of the list.
7. Click OK.
To enable these changes, close and reopen any existing command prompts and PowerShell instances.
If you
developing Flutter on Windows for mobile.
have installed all prerequisites and the Flutter SDK, you should be able to start
 4. Configure the Android toolchain in Android Studio Start Android Studio.Follow the Android Studio Setup Wizard.
1. Install the following components:
○ Android SDK Platform, API 33.0.0
○ Android SDK Command-line Tools
○ Android SDK Build-Tools
○ Android SDK Platform-Tools
○ Android Emulator
5. Install Flutter and Dart plugin in Android studio
 
6. Before you can use Flutter and after you install all prerequisites, agree to the licenses of the Android SDK platform.
1. Open an elevated console window.
2. Run the following command to enable signing licenses.
flutter doctor --android-licenses
3. You can skip the next step.
4. Before agreeing to the terms of each license, read each with care.
5. Checkflutterinstallationisrunningperfectly
Open command line interface and run the command : flutter doctor -v
Step 3: Open flutter Project in Android studio
Step 4: Connect your real device via usb to your computer or create an emulator in Android studio .
STep 5: Build the project in an Emulator or real device from android studio and it's a very easy step .
First run the project and follow the source code functional documentation below.I declared here every fun working process and what is responsible for.
