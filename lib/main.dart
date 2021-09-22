import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyApp()));
}
class MyApp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();

}

class _MyappState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;

    return Scaffold(


      body: Container(
        height: height,
        width: width,

        child: SingleChildScrollView(

          child: Column(



            children: [
              SizedBox(height: 100 ),
              Padding(
                padding: const EdgeInsets.all(0),


                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Inicio de sesión',style: TextStyle(fontSize: 30,fontWeight: FontWeight.normal),),
                  ],
                ),
              ),
              SizedBox(height: 50, ),
              Container(
                padding: EdgeInsets.all(5 ),
                child: TextField(
                decoration: InputDecoration(
                  hintText: 'Usuario',
                  suffixIcon: Icon(Icons.account_circle),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              ),
              SizedBox(height: 5, ),
              Container(
               padding: EdgeInsets.all(5),
                child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    ElevatedButton(
                      child: Text('Iniciar Sesión', textAlign: TextAlign.center,),
                      onPressed: (){},
                    ),
                    Text('¿Has olvidado tu contraseña?',style: TextStyle(fontSize: 12, height: 5),),
                  ],
                ),
              ),
              SizedBox(height:15),
              GestureDetector(
                onTap: (){

                },
                child: Text.rich(
                  TextSpan(
                      text: '¿Aún no tienes cuenta?',
                      children: [
                        TextSpan(
                          text: ' Regístrate gratis aquí',
                          style: TextStyle(
                              color: Colors.blue
                          ),
                        ),
                      ]
                  ),
                ),
              ),


            ],

          ),
        ),


      ),
    );
  }
}