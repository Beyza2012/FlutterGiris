import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tasarım'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {

    super.initState();
    print("Uygulama açıldı");
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,


        title: Text(widget.title),
      ),
      body: Stack(

        children: [
          Yazi("Beyza Bulut", 30.0),
          Container(margin: const EdgeInsets.only(top: 50.0,left: 5.0),
            width: 400, height: 400,
           decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(
            color: Colors.blue,
            width: 3.0,
          ),
           borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Image.asset("resimler/sozlukk.jpeg"),
              Container(width: 100, height: 100, color: Colors.white,),
              SizedBox(
                width: 100,
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(width: 100,height: 100, color: Colors.blue,),
                ),
              ),
              // Expanded boş alanda yayılmayı sağlar


              Column(
                mainAxisSize: MainAxisSize.max,
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 100, height: 100, color: Colors.yellow,
                  child: Align(
                    alignment: Alignment.bottomRight,
                      child: Text("Merhaba")),

                  ),
                  Spacer(flex:30,),
                  SiyahKare(),//özelleştirilmiş widget
                  Spacer(flex:70,),

                  Container(width: 100,height: 100, color: Colors.green,
                  child: Center(
                  child:Text("Merhaba"),
    )
                  ),

                ],

              )
            ],

          ),
        ],
      )

    );
  }
}

//Widget Özelleştirme
class SiyahKare extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(width: 50, height: 50, color: Colors.black,);
  }
}
//Yazı
class Yazi extends StatelessWidget{
  String icerik;
  double yaziBoyutu;


  Yazi(this.icerik, this.yaziBoyutu);

  @override
  Widget build(BuildContext context) {
    return Text(icerik,style: TextStyle(fontSize: yaziBoyutu),);
  }


}

