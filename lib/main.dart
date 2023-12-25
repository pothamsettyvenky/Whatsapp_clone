
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage > with SingleTickerProviderStateMixin {
  // ignore: prefer_final_fields
  late TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3,vsync: this);
  }
  void _incrementCounter() {
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: <Widget> [
          IconButton(onPressed: _incrementCounter, icon: const Icon(Icons.search)),
          IconButton(onPressed: _incrementCounter, icon: const Icon(Icons.more_vert))
        
        ],
        bottom: TabBar(controller: controller,
          tabs: const[
            Tab(icon: Icon(Icons.group)),
            Tab(icon: Icon(Icons.phone)),
            Tab(icon: Icon(Icons.adjust))
          ],
        ),
      ),
      
      
      body:  TabBarView(
        controller: controller,
        children:const [
          Icon(Icons.group),
          Icon(Icons.phone),
          Icon(Icons.adjust)
        ],
        
        // child: Column(
          
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     const Text(
        //       'You have pushed the button this many times:',
        //     ),
        //     Text(
        //       '$_counter',
        //       style: Theme.of(context).textTheme.headlineMedium,
        //     ),
        //   ],
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
