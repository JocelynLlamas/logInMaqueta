import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: cuerpo(),
    );
  }
}

Widget cuerpo(){
  return Container(

    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          logo(),
          nombre(),
          const SizedBox(height: 15),
          texto(),
          campoUsuario(),
          campoPassword(),
          const SizedBox(height: 20),
          botonEntrar(),
          const SizedBox(height: 16),
          separacion(),
          const SizedBox(height: 16),
          botonGoogle(),
          const SizedBox(height: 10),
          botonFacebook(),
          const SizedBox(height: 16),
          noTienesCuentaTxt(),
          botonRegistro(),
        ],
      )
    ),
  );
}

Widget logo(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 5),
    child: Image.asset('images/Logo Icono.png'),

  );
}

Widget nombre(){
  return Text("ISI-PHONE",

    style: GoogleFonts.poppins(
      textStyle: const TextStyle(

        color: Colors.black,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,

      ),),
  );
}

Widget texto(){
  return Container(
    // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Text("Iniciar Sesión",

        style: GoogleFonts.poppins(

          textStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),),

      ),
  );
}

Widget campoUsuario(){
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5), //TAMAÑO DE LA CAJA DE NOMBRE DE USUARIO

      child: const TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person, color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(
              color: Color.fromRGBO(239, 235, 235, 1),
              width: 3.0,
            ),
          ),
          hintText: "Nombre de usuario",
          fillColor: Color.fromRGBO(239, 235, 235, 1),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey,
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
  );
}

Widget campoPassword(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5), //TAMAÑO DE LA CAJA DE NOMBRE DE USUARIO

    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock, color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(
            color: Color.fromRGBO(239, 235, 235, 1),
            width: 3.0,
          ),
        ),
        hintText: "Contraseña",
        fillColor: Color.fromRGBO(239, 235, 235, 1),
        filled: true,
        hintStyle: TextStyle(color: Colors.grey,
          fontSize: 15.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

Widget botonEntrar(){
  return FlatButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    ),
    color: Color.fromRGBO(116,28,188,1),
    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
    onPressed: (){},
    child: Text("Iniciar Sesión",

      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          ),),
    ),
  );
}

Widget separacion(){
  return Row(
    children: [
      Expanded(child: Divider()),
      Text("Ó",
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 13.0,
            fontWeight: FontWeight.w500,
          ),),
      ),
      Expanded(child: Divider()),
    ],
  );
}

Widget botonGoogle(){
  return FlatButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    ),
    color: Color.fromRGBO(239, 235, 235, 1),
    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
    onPressed: (){},
    child: Row(
      mainAxisSize: MainAxisSize.min, //PARA QUE NO SE VEA TAN GRANDE
      children: [
        Text("Continuar con ",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
            ),),
        ),
        SizedBox(width: 10),
        Image.asset("images/Logo Google.png")
      ],
    ),
  );
}

Widget botonFacebook(){
  return FlatButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    ),
    color: Color.fromRGBO(239, 235, 235, 1),
    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
    onPressed: (){},
    child: Row(
      mainAxisSize: MainAxisSize.min, //PARA QUE NO SE VEA TAN GRANDE
      children: [
        Text("Continuar con ",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
            ),),
        ),
        SizedBox(width: 10),
        Image.asset("images/Logo Fb.png")
      ],
    ),
  );
}

Widget noTienesCuentaTxt(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Text("¿No tienes cuenta?",

      style: GoogleFonts.poppins(

        textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 13.0,
          fontWeight: FontWeight.w500,
        ),),
    ),
  );
}

Widget botonRegistro(){
  return FlatButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    ),
    color: Color.fromRGBO(116,28,188,1),
    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
    onPressed: (){},
    child: Text("Regístrate",

      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 13.0,
          fontWeight: FontWeight.w500,
        ),),
    ),
  );
}