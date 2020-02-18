import 'package:flutter/material.dart';

import 'cadastrar.dart';
import 'home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Container(
          //color: Colors.white,
          color:Color(0XFFE6E6FA),
          padding: EdgeInsets.only(
              top:60, left:40, right:40, bottom:20
          ),
          child:ListView(
            children:<Widget>[
                SizedBox(
                  width: 130,
                  height: 130,
                  child: Image.asset("assets/login2.png"),
                ),
                SizedBox(
                  height: 20,

                ),

                //campo email
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration:InputDecoration(  //contera as propriedades da label
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style:TextStyle(fontSize:20) //propriedades do texto interno
                ),
                //fim campo email
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration:InputDecoration(  //contera as propriedades da label
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style:TextStyle(fontSize:20) //propriedades do texto interno
                ),
                 SizedBox(  //espaço um pouco mais depois do campo da senha para o botão
                  height: 10,
                ),
                
                         
                //container do botão 
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin:Alignment.topLeft,
                      end:Alignment.bottomRight,
                      stops:[0.3, 1],
                      colors:[ 
                        Color(0xFF42A5F5),
                        Color(0xFF1565C0),
                      ],

                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),

                    ),
                  ),
                  child:SizedBox.expand(
                    child:FlatButton(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.white,
                              fontSize:20,

                            ),
                            textAlign: TextAlign.center,

                          ),
                          Container(
                            child:SizedBox(
                              //child:Image.asset("reset")
                              height:30,
                              width:30
                            ),
                          )
                        ]
                      ),
                      onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:(context) => HomePage(),       
                          ),
                        );
                      }
                    )
                  )
                ),
                SizedBox(
                  height: 10,
                ),

               
                Container(
                  height: 40,
                  child: FlatButton(
                    child:Text(
                      "Cadastre-se",
                      textAlign:TextAlign.center,
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=>Cadastrar(),
                        )
                      );
                    }
                  ),
                )
               
            ]
          )
        )
    );
  }
}