
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: CupertinoColors.white,
        elevation: 0,
        title: Row(
          children: [
             CircleAvatar(
               radius: 25,
               backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/73957933?s=400&u=18a0837911fee942decabad9990dd06cff270e75&v=4"),
              
             ),
            SizedBox(
              width: 15,
            ),
            Text('Chats',style: TextStyle(
              color: Colors.black,
            )),

          ],
        ),
        actions: [
           IconButton(icon: CircleAvatar(
               radius: 16,
               backgroundColor: Colors.blue,
               child: Icon(
                 Icons.camera_alt,
                 size: 18,
                 color: Colors.white,

               )
           ), onPressed: (){  },),
          IconButton(icon: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 18,
                color: Colors.white,

              )
          ), onPressed: (){  },)

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Search'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) => buildStoryItem(),
                  itemCount: 10,
                  separatorBuilder: (context,index) => SizedBox(width: 20,),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(height: 20,),
                itemCount: 20 ,
                itemBuilder:  (context, index) => buildChatItem()),


            ],
          ),
        ),
      ),
    );
  }


  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/73957933?s=400&u=18a0837911fee942decabad9990dd06cff270e75&v=4"),
          ),
          CircleAvatar(
            radius: 8,
            backgroundColor: Colors.white,
          ),
          CircleAvatar(
            radius: 7,
            backgroundColor: Colors.green,
          ),

        ],
      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kerolos Romany',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Expanded(child: Text('Hello my name is Kerolos Kerolos Kerolos Kerolos Kerolos Kerolos Kerolos',maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.0),
                ),
                Container(
                  width: 3,
                  height: 3,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('02:00 pm'),
              ],
            ),
          ],
        ),
      ),

    ],
  );
  Widget buildStoryItem() => Container(
    width: 60,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/73957933?s=400&u=18a0837911fee942decabad9990dd06cff270e75&v=4"),
            ),
            CircleAvatar(
              radius: 8,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 7,
              backgroundColor: Colors.green,
            ),

          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text('Kerolos Romany',style: TextStyle(
          fontWeight: FontWeight.bold,), maxLines: 2, overflow: TextOverflow.ellipsis),


      ],
    ),
  );
}
































