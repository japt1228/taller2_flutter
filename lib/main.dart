import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice for test',
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Column(
                  children: [
                    Text(
                      'I am a big title',
                      style: TextStyle(fontSize: 24.0),
                    ),
                    Text(
                      'I am a medium title',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      'I am a small title',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: const Text('Opción 1'),
                onTap: () {
                  // Acción cuando se selecciona la opción 1
                },
              ),
              ListTile(
                title: const Text('Opción 2'),
                onTap: () {
                  // Acción cuando se selecciona la opción 2
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: const Text('Practice for test'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 120,
                    height: 30,
                    color: Colors.amber,
                  ),
                  Container(width: 120, height: 30, color: Colors.blue),
                  Container(
                    width: 120,
                    height: 30,
                    color: Colors.red,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Duis sollicitudin ex in tellus facilisis dictum. Cras ac semper purus. Pellentesque quis augue urna. Proin non enim nec ante mattis pulvinar. Vestibulum nec pellentesque dui, et scelerisque mauris. Duis ex orci, porttitor sit amet urna ac, placerat interdum sapien. Mauris laoreet aliquet pharetra. Nullam vulputate enim non facilisis maximus. Mauris in fringilla ipsum. Fusce pretium tellus quis scelerisque elementum. Suspendisse vestibulum faucibus rhoncus. Nulla sagittis interdum faucibus. Aenean aliquet dapibus erat sit amet tempus. Pellentesque ligula risus, semper id dui sed, porttitor sodales sem. Sed consequat ex a est porttitor, ut gravida purus vestibulum.',
                    style: TextStyle(fontSize: 16.0),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.alarm), // Utilizando FontAwesome5Solid como ejemplo
                    onPressed: null,
                  ),
                  IconButton(
                    icon: Icon(Icons.key), // Utilizando FontAwesome5Solid como ejemplo
                    onPressed: null,
                  ),
                  IconButton(
                    icon: Icon(Icons.camera_alt), // Utilizando FontAwesome5Solid como ejemplo
                    onPressed: null,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Select alarm', style: TextStyle(color: Colors.green.shade400)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade100)),
                    child: Text('Select Key', style: TextStyle(color: Colors.green.shade400)),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('Select camera', style: TextStyle(color: Colors.green.shade400),),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Elemento $index'),
                  );
                },
              ),
              const SizedBox(height: 20),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Aliquam erat volutpat. Fusce fringilla a massa eget pretium. Maecenas auctor tincidunt sapien ornare vehicula. Fusce hendrerit neque dolor, quis tempus diam facilisis quis. Morbi in nibh tellus. Duis vitae nunc egestas, lacinia tellus a, hendrerit tellus. Aliquam iaculis mauris eu aliquet pretium. Aenean tincidunt urna non tortor sagittis viverra. Donec dapibus bibendum justo, sit amet euismod neque condimentum ac. Phasellus finibus, velit ac cursus tincidunt, ipsum velit hendrerit quam, tristique tempus ante mi at felis. Morbi sollicitudin leo id nibh venenatis, lacinia iaculis mi interdum. Quisque at ante aliquam, consequat libero ac, vulputate urna. Donec risus metus, mollis ut urna pretium, condimentum placerat felis. Suspendisse tempor sem arcu, vitae pharetra neque faucibus in. Mauris quis tellus sit amet enim congue viverra id et est. Fusce molestie quam dapibus nisl condimentum feugiat.',
                    style: TextStyle(fontSize: 16.0),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'END OF APLICATION',
                style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.green
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
