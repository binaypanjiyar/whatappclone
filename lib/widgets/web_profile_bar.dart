import 'package:flutter/material.dart';
import 'package:whatapp/color.dart';
class WenProfileBar extends StatelessWidget {
  const WenProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.077,
      width: MediaQuery.of(context).size.width*.25,
      padding: const EdgeInsets.all(8),
      decoration:const
      BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor
          )
        ),
        color: webAppBarColor,
      ),
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    const CircleAvatar(
      backgroundImage: NetworkImage
        ('https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'
      ),
      radius: 30,
    ),
    // SizedBox(width: MediaQuery.of(context).size.width*.15,),
    Row(
      children: [
      IconButton(onPressed: (){},
          icon: const Icon(Icons.comment,color: Colors.grey,
          ),
      ),
        IconButton(onPressed: (){},
            icon: const Icon(Icons.more_vert,color: Colors.grey,
            ),
        ),
    ],
    ),

  ],
),

    );
  }
}
