import 'dart:io';
import 'package:chineasy/presentation/chatbot/chatbot.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp2/lesson_temp2.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp3/lesson_temp3.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp4/lesson_temp4.dart';
import 'package:chineasy/presentation/courses/link/link.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp/lesson_Temp.dart';
import 'package:chineasy/presentation/courses/Multiple_questions/mcq.dart';
import 'package:chineasy/presentation/courses/Matching/match.dart';
import 'package:chineasy/presentation/object_detection_screen/camera_view.dart';
import 'package:chineasy/presentation/welcome_page_four_screen/welcome_page_four_screen.dart';
import 'package:chineasy/presentation/welcome_page_one_screen/welcome_page_one_screen.dart';
import 'package:chineasy/presentation/welcome_page_three_screen/welcome_page_three_screen.dart';
import 'package:chineasy/presentation/welcome_page_two_screen/welcome_page_two_screen.dart';
import 'package:flutter/material.dart';
import 'package:chineasy/presentation/choose_accountone_screen/choose_accountone_screen.dart';
import 'package:chineasy/presentation/choose_accounttwo_screen/choose_accounttwo_screen.dart';
import 'package:chineasy/presentation/choose_accountthree_screen/choose_accountthree_screen.dart';
import 'package:chineasy/presentation/signup_screen/signup_screen.dart';
import 'package:chineasy/presentation/signuptwo_screen/signuptwo_screen.dart';
import 'package:chineasy/presentation/signupone_screen/signupone_screen.dart';
import 'package:chineasy/presentation/login_screen/login_screen.dart';
import 'package:chineasy/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:chineasy/presentation/forget_passwordone_screen/forget_passwordone_screen.dart';
import 'package:chineasy/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:chineasy/presentation/reset_passwordtwo_screen/reset_passwordtwo_screen.dart';
import 'package:chineasy/presentation/profile_leaderboard_screen/profile_leaderboard_screen.dart';
import 'package:chineasy/presentation/courses_test_container_page/courses_test_container_page.dart';
import 'package:chineasy/presentation/home_page_container_screen/home_page_container_screen.dart';
import 'package:chineasy/presentation/inside_course_screen/inside_course_screen.dart';
import 'package:chineasy/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:chineasy/presentation/Flashcards/home-page.dart';
import '../presentation/profile_state_test_page/profile_state_test_page.dart';

class AppRoutes {
  static const String chooseAccountoneScreen = '/choose_accountone_screen';

  static const String chooseAccounttwoScreen = '/choose_accounttwo_screen';

  static const String chooseAccountthreeScreen = '/choose_accountthree_screen';

  static const String signupScreen = '/signup_screen';

  static const String signuptwoScreen = '/signuptwo_screen';

  static const String signuponeScreen = '/signupone_screen';

  static const String loginScreen = '/login_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String forgetPasswordoneScreen = '/forget_passwordone_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordtwoScreen = '/reset_passwordtwo_screen';

  static const String profileLeaderboardScreen = '/profile_leaderboard_screen';

  static const String coursesTestContainerPage = '/courses_test_container_page';

  static const String FlashcardsHomePage = '/home_page';

  static const String profileStateTestPage = '/profile_state_test_page';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String InsideCourseScreen = '/inside_course_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String welcomePageOneScreen = '/welcome_page_one_screen';

  static const String welcomePageTwoScreen = '/welcome_page_two_screen';

  static const String welcomePageThreeScreen = '/welcome_page_three_screen';

  static const String welcomePageFourScreen = '/welcome_page_four_screen';

  static const String chatbotScreen = '/chatbot';

  static const String objectDetectionScreen = '/object_detection_screen';

  static const String MultipleChoiceQuestion = '/courses/Multiple_questions';

  static const String MatchingExercises = '/courses/Matching';

  static const String LINK = '/courses/link';

  static const String Lesson_temp='/courses/lesson_temp';

  static const String Lesson_temp2='/courses/lesson_temp2';
  
  static const String Lesson_temp3='/courses/lesson_temp3';

  static const String Lesson_temp4='/courses/lesson_temp4';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        chooseAccountoneScreen: ChooseAccountoneScreen.builder,
        chooseAccounttwoScreen: ChooseAccounttwoScreen.builder,
        chooseAccountthreeScreen: ChooseAccountthreeScreen.builder,
        signupScreen: SignupScreen.builder,
        signuptwoScreen: SignuptwoScreen.builder,
        signuponeScreen: SignuponeScreen.builder,
        loginScreen: LoginScreen.builder,
        forgetPasswordScreen: ForgetPasswordScreen.builder,
        forgetPasswordoneScreen: ForgetPasswordoneScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        resetPasswordtwoScreen: ResetPasswordtwoScreen.builder,
        profileLeaderboardScreen: ProfileLeaderboardScreen.builder as dynamic,
        profileStateTestPage: ProfileStateTestPage.builder as dynamic,
        coursesTestContainerPage: CoursesTestContainerPage.builder,
        homePageContainerScreen: HomePageContainerScreen.builder as dynamic,
        InsideCourseScreen: InsideCoursesScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        FlashcardsHomePage: (context) => const HomePage(),
        welcomePageOneScreen: (context) => const WelcomePageOneScreen(),
        welcomePageTwoScreen: (context) => const WelcomePageTwoScreen(),
        welcomePageThreeScreen: (context) => const WelcomePageThreeScreen(),
        welcomePageFourScreen: (context) => const WelcomePageFourScreen(),
        objectDetectionScreen: (context) => ObjectDetectionWrapper().myApp,
        chatbotScreen: (context) => ChatScreen(),
        MultipleChoiceQuestion: (context) => ChineseLearningApp(),
        MatchingExercises: (context) => MatchingExercise(),
        LINK: (context) => Link(),
        Lesson_temp:(context)=> Lessontemp(),
        Lesson_temp2:(context)=> Lessontemp2(),
        Lesson_temp3:(context)=> Lessontemp3(),
        Lesson_temp4:(context)=> Lessontemp4(),
        //profileLeaderboardScreen: (context) => ProfileLeaderboardScreen(),
        //: (context) => ProfileStateTestPage(),
        // initialRoute: AppNavigationScreen.builder
      };
}
