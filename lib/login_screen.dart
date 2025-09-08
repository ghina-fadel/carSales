import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
   const LoginScreen({super.key});

  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 42, 41, 41),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                   SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/logo.png'),
                   ),
                   SizedBox(width: 10,),
                   SizedBox(
                    child: Column(
                      children: [
                        Text('Der Marktplatz fur', style: TextStyle(color: Colors.white),textAlign: TextAlign.left,),
                        Text('reibungslosen', style: TextStyle(color: Colors.white), textAlign: TextAlign.left,),
                        Text('Gebrauchtwagenhandel', style: TextStyle(color: Colors.white),textAlign: TextAlign.left,),
                      ],
                    ),
                  ),
                  ],
                ),
                Expanded(child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Herzlich Willkommen', style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
                          SizedBox(height: 40,),
                          Text('E-Mail', style: TextStyle(color: Colors.grey, fontSize: 14),),
                          SizedBox(height: 5,),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              isDense: true,
                              contentPadding: EdgeInsets.all(12),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Passwort', style: TextStyle(color: Colors.grey, fontSize: 14),),
                               Text('Passwort vergessen', style: TextStyle(color: const Color.fromARGB(255, 156, 148, 148), fontSize: 12),),
                            ],
                          ),
                          SizedBox(height: 5,),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              isDense: true,
                              contentPadding: EdgeInsets.all(12),
                              suffixIcon: IconButton(onPressed:() {} , 
                              icon: Icon(
                                Icons.visibility 
                              ),
                            ), 
                            ),
                          ),
                          SizedBox(height: 60,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Sie haben noch kein Konto?', style: TextStyle(color: const Color.fromARGB(255, 116, 116, 116)),),
                              TextButton(onPressed: () {}, child: Text('Hier anmelden'))
                            ],
                          ),
                          SizedBox(height: 60,),
                          ElevatedButton(onPressed: () {}, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 210, 206, 206),
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadiusGeometry.circular(12),
                            )
                          ),
                          child: Text('Anmelden', style: TextStyle(color: const Color.fromARGB(255, 125, 124, 124)),) 
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}