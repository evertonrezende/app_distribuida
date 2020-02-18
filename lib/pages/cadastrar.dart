import 'package:flutter/material.dart';

class Cadastrar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Alunos'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh),
            
            onPressed: () {},)
        ]
      ),
       
        body:Container(
          //backgroundColor: Color(0xff84FFFF),
          padding:EdgeInsets.only(top:10, left:40, right:40),
          color:Color(0XFFE6E6FA),
          
          child:ListView(
            children: <Widget> [
              Icon(Icons.person_add, size: 120.0, color: Colors.lightBlue),
            
              SizedBox(
                height: 20,
              ),
              TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  decoration:InputDecoration(  //contera as propriedades da label
                    labelText: "Nome",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style:TextStyle(fontSize:20) //propriedades do texto interno
                ),
                SizedBox(
                  height: 10,
                ),
              TextFormField(
                  //autofocus: true,
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
                SizedBox(
                  height: 20,
                ),
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
                      child: Text(
                            "Cadastrar",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.white,
                              fontSize:20,
                            
                            ),
                            textAlign: TextAlign.center,
                          ),
                          onPressed:(){}
                        
                    ),
                  )
                ),
            ]
          )
        )
    );
  }
}  