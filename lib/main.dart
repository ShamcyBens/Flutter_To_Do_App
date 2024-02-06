import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(       
        primarySwatch: Colors.indigo
      ),
      home: const HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold( 
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(            
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),

              )
            ),

            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  title: Text('Hi Shama !', style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white
                  )),
                  subtitle: Text('Good Morning', style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white54
                  ),),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/beauty.png'),
                   ),
                )
              ],
              ),
          )
        ],
      ),
    );
  }
}