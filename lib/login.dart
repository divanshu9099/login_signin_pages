import 'package:flutter/material.dart';

class myLogin extends StatefulWidget {
  const myLogin({Key? key}) : super(key: key);

  @override
  State<myLogin> createState() => _myLoginState();
}

class _myLoginState extends State<myLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/login.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
            padding: EdgeInsets.only(left: 40, top: 100),
            child: Text(
              "Welcome User",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.5,
              right: 30,
              left: 30,
            ),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(

                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              SizedBox(

                height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sign In", style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold
                    ),),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black12,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward),
                      ),
                    )
                  ],
                ),
                SizedBox(

                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: () {
                      Navigator.pushNamed(context, "register");
                    }, child:
                    Text("Sign Up", style: TextStyle(
                      fontSize: 10, fontWeight: FontWeight.normal,
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                    ))),
                    TextButton(onPressed: () {}, child:
                    Text("Forget Password", style: TextStyle(
                      fontSize: 10, fontWeight: FontWeight.normal,
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                    ))),
                  ],
                ),
              ], // Children
            ),
          ),
        ]),
      ),
    );
  }
}