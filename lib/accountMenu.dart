import 'package:accountmenu1/reusable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class accountMenu extends StatelessWidget {

 // const accountMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        leading: Icon(
          Icons.arrow_back,
        ),

        actions: [
          IconButton(
            icon: Icon(
              Icons.wb_sunny_outlined,
            ),
            onPressed: (){ },
          )
        ],
        elevation: 0.0,
      ),
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 170,
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/imgs/kerolos.jpg'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  'Kerolos Romany',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Text(
                    'kerolosromany@gmail.com',
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  margin: EdgeInsets.only(left: 50,right: 50),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.yellow,
                  ),
                  child: MaterialButton(
                    onPressed: (){  },
                    child: Text(
                      'Upgrade to PRO',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              defaultButton(icon1:  Icon(
                Icons.add_moderator,
                color: Colors.white,
              ), icon2:  Icon(
              Icons.navigate_next_outlined,
              color: Colors.white,
              ), text: 'Privacy',),
              defaultButton(icon1: Icon(Icons.history_outlined,
                color: Colors.white,
              ), icon2: Icon(Icons.navigate_next_outlined,
              color: Colors.white,), text: 'Purchase history'),
              defaultButton(icon1: Icon(
                Icons.help_outline,
                color: Colors.white,
              ), icon2: Icon(
                Icons.navigate_next_outlined,
                color: Colors.white,), text: 'Help & support'),
              defaultButton(icon1: Icon(
                Icons.settings,
                color: Colors.white,
              ), icon2: Icon(
                Icons.navigate_next_outlined,
                color: Colors.white,), text: 'Settings'),
              defaultButton(icon1: Icon(
                Icons.person_add_alt_1,
                color: Colors.white,
              ), icon2: Icon(
                Icons.navigate_next_outlined,
                color: Colors.white,), text: 'Invite a friend'),
              defaultButton(icon1: Icon(
                Icons.logout,
                color: Colors.white,
              ), icon2: Icon(null), text: 'Logout'),

            ],
          ),
        ),
      ),

    );
  }
}
