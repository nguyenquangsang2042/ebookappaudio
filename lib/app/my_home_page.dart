
import 'package:flutter/material.dart';

import 'app_colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Icon(Icons.menu_outlined),
                  Row(children: const[
                    Icon(Icons.search),
                    Icon(Icons.notifications)
                  ],)
                ],
              ),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text("Popular Books",style: TextStyle(fontSize: 30),),
                  )
                ],
              ),
              Container(
                height: 180,
                child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: PageController(viewportFraction: 0.8,),
                    itemCount: 5,
                    itemBuilder: (_,i){
                  return Transform.scale(child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage("images/pic-8.png")
                        )
                    ),
                  ),scale: 0.95,);
                },),
              )

            ],
          ),
        ),
      ),
    );
  }
}
