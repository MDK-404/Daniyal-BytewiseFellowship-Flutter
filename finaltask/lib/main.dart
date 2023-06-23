import 'package:finaltask/models/user.dart';
import 'package:finaltask/providers/user_provider.dart';
import 'package:finaltask/screens/comments_screen.dart';
import 'package:finaltask/screens/home_screen.dart';
import 'package:finaltask/screens/login_screen.dart';
import 'package:finaltask/screens/profile_screen.dart';
import 'package:finaltask/screens/signup_screen.dart';
import 'package:finaltask/utils/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'responsives/mobile_screen_layout.dart';
import 'responsives/responsive_layout_screen.dart';
import 'responsives/web_screen_layout.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyA6pCsHxcTF4tpt4FLbE91dbL08D4hJlf4',
          appId: '1:913027668249:web:63fe372bc68a02e09ecd88',
          messagingSenderId: '913027668249',
          projectId: 'instagram-clone404',
          storageBucket: 'instagram-clone404.appspot.com'),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => UserProvider()
        )
      ], //providers
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram Clone',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.active) {
                if (snapshot.hasData) {
                  return const ResponsiveLayout(
                    mobileScreenLayout: MobileScreenLayout(),
                    webScreenLayout: WebScreenLayout(),
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text('${snapshot.error}'));
                }
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                    child: CircularProgressIndicator(
                  color: primaryColor,
                ));
              }
              return const LoginScreen();
            }),
        routes: {
          'home': (context) => HomeScreen(),
          'signup': (context) => SignupScreen(),
          'login': (context) => LoginScreen(),
          'responsive screen': (context) => ResponsiveLayout(
                webScreenLayout: WebScreenLayout(),
                mobileScreenLayout: MobileScreenLayout(),
              ),
          'comments':(context)=> CommentScreen(
            snap:['postId']
          ),

          'profile':(context)=>ProfileScreen(uid:  '',)
        },
      ),
    );
  }
}
