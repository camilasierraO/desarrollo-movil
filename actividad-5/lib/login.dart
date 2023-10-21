import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => _Login();


  
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 70, 0, 32),
                child: Container(
                  width: 200,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: const Text(
                    'Bienvenido',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 60, 16, 16),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxWidth: 570,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 253, 186, 98),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 6,
                          color: Color.fromARGB(255, 255, 111, 0),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            32, 32, 32, 32),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Inicio de Sesión',
                              style: TextStyle(fontSize: 25,
                              fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 30, 0, 16),
                              child: SizedBox(
                                width: double.infinity,
                                child: TextFormField(
                                  autofocus: true,
                                  autofillHints: const [AutofillHints.email],
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Correo',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 255, 140, 0),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    filled: true,
                                    fillColor: const Color.fromARGB(255, 255, 255, 255),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 16),
                              child: SizedBox(
                                width: double.infinity,
                                child: TextFormField(
                                  autofocus: true,
                                  autofillHints: const [AutofillHints.password],
                                  decoration: InputDecoration(
                                    labelText: 'Contraseña',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    filled: true,
                                    fillColor: const Color.fromARGB(255, 255, 255, 255),
                                    suffixIcon: InkWell(
                                      focusNode: FocusNode(skipTraversal: true),
                                      child:
                                          const Icon(Icons.visibility_outlined),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 16),
                              child: ElevatedButton(
                                

        style: ElevatedButton.styleFrom(
     backgroundColor: Color.fromARGB(255, 67, 76, 87), // Cambia el color de fondo según tus preferencias
          minimumSize: const Size(250, 40), // Establece el tamaño del botón
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Cambia el borde según tus preferencias
          ),
        ),


                                onPressed: () {},
                                child: const Text('Ingresar'),
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 24),
                              child: Text(
                                'O inicia sesión con',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 16),
                              child: ElevatedButton(
                                
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 67, 76, 87), // Cambia el color de fondo según tus preferencias
          minimumSize: const Size(250, 40), // Establece el tamaño del botón
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Cambia el borde según tus preferencias
          ),
        ),
                                onPressed: () {},
                                child: const Text('Continua con Google'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),

    );
  }


}