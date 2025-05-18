import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/containers/rounded_container.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/layouts/templates/site_layout.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/responsive/screens/desktop_layout.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/responsive/screens/responsive_design.dart';
import 'package:web_by_flutter_ecom_admin/routes/app_routes.dart';
import 'package:web_by_flutter_ecom_admin/routes/route.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/text_strings.dart';
import 'package:web_by_flutter_ecom_admin/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),

      getPages: TAppRoute.pages,
      initialRoute: TRoutes.login,
      unknownRoute: GetPage(name: '/page-not-found', page: () => Scaffold(body: Center(child: Text("Page Not Found!"),),)),
      
      // home:  DesktopLayout(),
    );
  }
}

class ResponsiveDesignPage extends StatelessWidget {
   ResponsiveDesignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TSiteTemplate(desktop: Desktop(), tablet: Tablet(), mobile: Mobile(),);
  }
}


class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Opacity(opacity: 0.2, child: Container( height: 190,  child: Center(child: Text("Box 1"),), color: Colors.blue, margin: EdgeInsets.all(20),)),
          SizedBox(height: 10,),
          Opacity(opacity: 0.2, child: Container( height: 190,  child: Center(child: Text("Box 2"),), color: Colors.orange, margin: EdgeInsets.all(20),)),
          SizedBox(height: 10,),
          Opacity(opacity: 0.2, child: Container( height: 190,  child: Center(child: Text("Box 3"),), color: Colors.red, margin: EdgeInsets.all(20),)),
          SizedBox(height: 10,),
          Opacity(opacity: 0.2, child: Container( height: 190,  child: Center(child: Text("Box 4"),), color: Colors.green, margin: EdgeInsets.all(20),)),
          Opacity(opacity: 0.2, child: Container( height: 190, child: Center(child: Text("Box 5"),), color: Colors.indigo, margin: EdgeInsets.all(20))),
          SizedBox(width: 10,),
          Opacity(opacity: 0.2, child: Container( height: 190, child: Center(child: Text("Box 6"),), color: Colors.grey, margin: EdgeInsets.all(20))),
        ],
      ),
    );
  }
}

class Tablet extends StatelessWidget {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(flex: 1, child: Opacity(opacity: 0.2, child: Container( height: 450,  child: Center(child: Text("Box 1"),), color: Colors.blue, margin: EdgeInsets.all(20),))),
            SizedBox(width: 30,),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: Opacity(opacity: 0.2, child: Container( height: 190,  child: Center(child: Text("Box 2"),), color: Colors.orange, margin: EdgeInsets.all(20),)),
                      )
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Expanded(child: Opacity(opacity: 0.2, child: Container( height: 190,  child: Center(child: Text("Box 3"),), color: Colors.red, margin: EdgeInsets.all(20),))),
                      Expanded(child: Opacity(opacity: 0.2, child: Container( height: 190,  child: Center(child: Text("Box 4"),), color: Colors.green, margin: EdgeInsets.all(20),))),
                    ],
                  ),
                ],
              ),
            ),


          ],
        ),
        Row(
          children: [
            Expanded(flex: 2, child: Opacity(opacity: 0.2, child: Container( height: 190, child: Center(child: Text("Box 5"),), color: Colors.indigo, margin: EdgeInsets.all(20)))),
            SizedBox(width: 15,),
            Expanded(flex: 1, child: Opacity(opacity: 0.2, child: Container( height: 190, child: Center(child: Text("Box 6"),), color: Colors.grey, margin: EdgeInsets.all(20)))),
          ],
        ),
      ],
    );
  }
}


class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          children: [
            Expanded(flex: 1, child: Opacity(opacity: 0.2, child: Container( height: 500,  child: Center(child: Text("Box 1"),), color: Colors.blue, margin: EdgeInsets.all(20),))),
            SizedBox(width: 50,),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: Opacity(opacity: 0.2, child: Container( height: 215,  child: Center(child: Text("Box 2"),), color: Colors.orange, margin: EdgeInsets.all(20),)),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Opacity(opacity: 0.2, child: Container( height: 215,  child: Center(child: Text("Box 3"),), color: Colors.red, margin: EdgeInsets.all(20),))),
                      Expanded(child: Opacity(opacity: 0.2, child: Container( height: 215,  child: Center(child: Text("Box 4"),), color: Colors.green, margin: EdgeInsets.all(20),))),
                    ],
                  ),
                ],
              ),
            ),


          ],
        ),
        Row(
          children: [
            Expanded(flex: 2, child: Opacity(opacity: 0.2, child: Container( height: 225, child: Center(child: Text("Box 5"),), color: Colors.indigo, margin: EdgeInsets.all(20)))),
            SizedBox(width: 15,),
            Expanded(flex: 1, child: Opacity(opacity: 0.2, child: Container( height: 225, child: Center(child: Text("Box 6"),), color: Colors.grey, margin: EdgeInsets.all(20)))),
          ],
        ),
      ],
    );
  }
}


class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        centerTitle: true,
        backgroundColor: Color(0x8E35C2FF),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text('Awesome! 🎊 Project Structure is set up and running. \n Happy T Coding 🎊', textAlign: TextAlign.center,),SizedBox(height: 50,),
            SizedBox(width: 550,
              child: ElevatedButton(onPressed: () {
                Get.toNamed('/second-screen');
              }, child: Text("Pass Data to 2nd Screen with no parameters in the URLs")),
            ), SizedBox(height: 50,),
            SizedBox(width: 550,
              child: ElevatedButton(onPressed: () {
                Get.toNamed('/second-screen?device=oppo&id=12345&name=esty');
              }, child: Text("Pass Data to 2nd Screen Screen with parameters in the URLs")),
            ), SizedBox(height: 50,),
            SizedBox(width: 550,
              child: ElevatedButton(onPressed: () {
                Get.toNamed('/second-screen', arguments: 'arguments is just a msg type probably');
              }, child: Text("Pass Data to 2nd Screen Screen with parameters in arguments")),
            ), SizedBox(height: 50,),
            SizedBox(width: 550,
              child: ElevatedButton(onPressed: () {
                Get.toNamed('/second-screen/1234hello', arguments: 'arguments is just a msg type probably');
              }, child: Text("Pass Data to 2nd Screen Screen with direct values in URLs")),
            ), SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}


class SecondScreen extends StatelessWidget {
   SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        centerTitle: true,
        backgroundColor: Color(0x8E35C2FF),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text('Awesome! 🎊 Project Structure is set up and running. \n Happy T Coding 🎊', textAlign: TextAlign.center,),
            Text("device = ${Get.parameters['device'] ?? ''}"),
            Text("id = ${Get.parameters['id'] ?? ''}"),
            Text("name = ${Get.parameters['name'] ?? ''}"),
            Text("Arguments = ${Get.arguments ?? ''}"),
            Text("Direct value in URLs = ${Get.parameters['userValue'] ?? ''}"),

          ],
        ),
      ),
    );
  }
}


