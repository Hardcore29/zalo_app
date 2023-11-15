import 'package:flutter/material.dart';

class WaitingScreenState extends StatelessWidget {
  const WaitingScreenState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/Zalo_Logo.png",
                width: 100,
              ),
            ),
            Expanded(
              flex: 4,
              child: Image.asset("assets/images/slider1.png",
                  width: double.infinity, fit: BoxFit.fill),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => _LoginScreenState()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        )),
                        //padding: const EdgeInsets.all(12.0),
                        //minimumSize: const Size(200, 10)
                      ),
                      child: const Text("Đăng Nhập",
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.white)),
                    ))),
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => _RegisterScreenState()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        )),
                        //padding: const EdgeInsets.all(12.0),
                        //minimumSize: const Size(200, 10)
                      ),
                      child: const Text("Đăng Ký",
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.white)),
                    )))
          ],
        ),
      ),
    );
  }
}

//Màn hình đăng nhập
class _LoginScreenState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Đăng nhập",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Số điện thoại",
                    ),
                  )),
              const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: <Widget>[
                        TextField(
                          obscureText: true,
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Mật khẩu",
                          ),
                        ),
                        Text(
                          "HIỆN",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        )
                      ])),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      )),
                    ),
                    child: const Text(
                      "Đăng Nhập",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Text(
                  "Lấy lại mật khẩu",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 18,
                  ),
                ),
              )
            ],
          )),
    );
  }
}

//Màn hình đăng ký
class _RegisterScreenState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Đăng Ký",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            child: const TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                hintText: "Số điện thoại",
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: const Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    TextField(
                      obscureText: true,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      decoration: InputDecoration(
                        hintText: "Mật khẩu",
                      ),
                    ),
                    Text(
                      "HIỆN",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    )
                  ])),
          Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: const Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    TextField(
                      obscureText: true,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      decoration: InputDecoration(
                        hintText: "Xác nhận mật khẩu",
                      ),
                    ),
                    Text(
                      "HIỆN",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    )
                  ])),
          Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  )),
                ),
                child: const Text(
                  "Đăng Ký",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ))
        ]),
      ),
    );
  }
}
