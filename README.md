
TECHNICAL DOCUMENTATION FOR
DOORTRACK
Mobile App

Step 1: Install android studio if its not available in your Computer
Download the android studio https://developer.android.com/studio from this official website of Google and install it in your pc 

Step 2: Install Flutter in your Computer
1. Download or clone the following installation bundle to get the latest stable release           of the Flutter SDK.
           Download link :  git clone -b master https://github.com/flutter/flutter.git
2.Create a folder where you can install Flutter.
3.Update your Windows PATH variable
To run Flutter commands in PowerShell, add Flutter to the PATH environment variable.
* Press Windows + S.
* Type environment.
* When Edit the system environment variables displays as the Best match, click Open under Edit the system environment variables.
* Click About.
* Click Advanced System Settings.
* Click Environment Variables… The Environment Variables dialog displays.
* Under User variables for <user> check for the Path entry.
* If the entry exists, click Edit….
* If the entry doesn’t exist, click New….
* Click New.
* Type <install-directory>\flutter\bin.
* Click the <install-directory>\flutter\bin entry.
* Click Move Up until the Flutter entry sits at the top of the list.
* Click OK.
* To enable these changes, close and reopen any existing command prompts and PowerShell instances.
If you have installed all prerequisites and the Flutter SDK, you should be able to start developing Flutter on Windows for mobile.
          
       4. Configure the Android toolchain in Android Studio
        Start Android Studio.Follow the Android Studio Setup Wizard.
* Install the following components:
* 		Android SDK Platform, API 33.0.0
* 		Android SDK Command-line Tools
* 		Android SDK Build-Tools
* 		Android SDK Platform-Tools
* 		Android Emulator

    5. Install Flutter and Dart plugin in Android studio        

￼
6. Before you can use Flutter and after you install all prerequisites, agree to the licenses of the Android SDK platform.
* Open an elevated console window.
* Run the following command to enable signing licenses.
 flutter doctor --android-licenses
* You can skip the next step.
* Before agreeing to the terms of each license, read each with care.
* Check flutter installation is running perfectly
Open command line interface and run the command : flutter doctor -v





Step 3: Open flutter  Project in Android studio 
Step 4: Connect your real device via usb to your computer or create an emulator in Android studio . 
STep 5: Build the project in an Emulator or real device from android studio and it's a very easy step .
      
        

First run the project and follow the source code functional documentation below.I declared here every fun working process and what is responsible for.

        OVERVIEW:
In this app we have used some packages. Here is the list of the packages and usages of the packages.
Package Name	Usages
get	State management
shared_preferance	Local storage
http	Network calls
google_fonts	Text styling
carousel_slider	sliding
dots_indicator	Showing the dots
flutter_screenutil	Responsive design
flutter_easyloading	Loading indicator
flutter_native_splash	Showing splash native
flutter_launcher_icon	Updating Flutter app's launcher icon
Cached_network_image	Network image handling
Flutter_rounded_date_picker	For customised date picker
another_flushbar	Showing msg in the app
fluttertoast	Showing msg in the app
Permission_handler	Handling permission request
Flutter_spinkit	Loading indicator
Flutter_svg	Display svg images
Infinite_scroll_pagination	Pagination
Awesome_dialogue	Showing dialogue
Awesome_snackbar_content	Showing snack bar msg
gap	Spacing dynamically
Flutter_country_code_picker	Picking country code
Flutter_calendar_week	Showing calendar week
Note: Controller class is responsible for api implementation and functionality and that documentation added after api implementation

After Successful build it will open first and its welcome screen and every screen is described below . 

Here are the list and detail all screen
* Welcome Screen
￼
￼
Class name: WelcomeView that extends GetView<WelcomeController> class. 
Here are the details about the WelcomeView class. This screen design is divided into three parts. The three methods are stored in welcome_screen/component/
Here is the detail and usages of these methods.
Methods	Description	Api
header()	Welcome text	
loginDescripsionButton()	The buttons are email, google, facebook.	
footerRegistration()	Text button “register”	
	.	Login Screen

￼
￼
Class name: LoginView that extends GetView<LoginController> class. 
Here is the detail about LoginView class. This screen design is divided into three part. The three methods are stored in Login_screen/component/
Here is the detail and usages of these methods.
Methods	Description	Api
header()	Welcome text	
loginFields()	The textfields are email, password. Buttons are forget password, login.	
footerRegistration()	Text button “register”	
* Forget Password
￼
￼
Class name: ForgetPasswordView that extends GetView<ForgetPasswordController> class. 
Here are the details about the ForgetPasswordView class. This screen design is divided into three parts. The three methods are stored in Login_screen/component/
Here is the detail and usages of these methods.
Methods	Description	Api
header()	Forget Password text	
emailField()	The textfields are email.	
Floating action button	Send button. Use to send otp	
* Verification View
￼
￼
Class name: VerificationView that extends GetView<VerificationController> class. 
Here is the detail about the VerificationView class. This screen design is divided into three parts. The two methods are stored in Verification_screen/component/
Here is the detail and usages of these methods.
Methods	Description	Api
header()	Verify email text	
otpTextFields()	The textfields are otp text fields.	
Floating action button	Submit button. Verify otp	
* Reset Password
￼
￼
￼
Class name: ResetPasswordView that extends GetView<ResetPasswordController> class. 
Here is the detail about the ResetPasswordView class. This screen design is divided into three parts. The two methods are stored in reset_password/component/
Here is the detail and usages of these methods.
Methods	Description	Api
header()	Reset passwod text	
reseatPasswordFields()	The text fields are confirm password, confirm again password.	
Floating action button	Update button and success dialogue.	
* Registration Screen
 
￼
￼
Class name: RegistrationView that extends GetView<RegistrationController> class. 
Here are the details about the RegistrationView class. This screen design is divided into three parts. The three methods are stored in registration/components/
Here is the detail and usages of these methods.
Methods	Description	Api
header()	Welcome text	
registrationFields()	The text fields are first name, last name, email, password, date of birth and a register button.	
footerLogin()	“Login” button	
	.	Dashboard
￼
Class name:  DashboardView that extends GetView< DashboardController> class. 
Here are the details about the  DashboardView class. In the body we use  DashboardController class where we declare all the pages named “bottomPageList” and in bottom navigation all the bottom navigation buttons are declared. Inside BottomNavigationBar class onTap parameter we use DashboardController where we define the “onBottomTap” method it uses to set the tap index of the bottom button.

* Home 
￼
￼
Class Name: 
HomeView that extends  GetView<HomeController> class.
Details: 
We use a common method “mainAppbar()” in the appbar.  
Location of the specified method is lib/app/theme/custom_appbar.dart
In the drawer method we use MainDrawer class that is located in lib/app/drawer/drawer.dart
In the floating action button we use a method “getPickedFileDialogue()” which shows the picked file options.
Location of the method is lib/app/utils/success_pop_up.dart
Methods	Descriptions	Api
mainAppbar()	Used in the appbar.
lib/app/theme/custom_appbar.dart	
getPickedFileDialogue()	which shows the pop up dialogue picked file options. 
lib/app/utils/success_pop_up.dart	
leadPipeline()	It is used to design the lead pipeline items.

lib/app/modules/home/components/lead_pipeline.dart	
dashboardAnalysis()	It is used to design the dashboard analysis items.

lib/app/modules/home/components/dashboard_analysis.dart	
documents()	It is used to design the document items.
lib/app/modules/home/components/documents.dart	
		
	.	Contacts
￼
￼
Class Name: 
ContactsView that extends  GetView<ContactsController> class.
Details: 
We use a common method “mainAppbar()” in the appbar.  
Location of the specified method is lib/app/theme/custom_appbar.dart
In the floating action button we used an svg image of dialer.

Methods	Descriptions	Api
mainAppbar()	Used in the appbar.
lib/app/theme/custom_appbar.dart	
searchTextField()	which shows the search bar. 
lib/app/utils/success_pop_up.dart	
leadPipeline()	It is used to design the lead pipeline items.

lib/app/modules/home/components/lead_pipeline.dart	
	.	

