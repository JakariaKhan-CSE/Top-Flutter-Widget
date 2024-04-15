import 'package:flutter/material.dart';
class BannerWidgetTest extends StatelessWidget {
  const BannerWidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        child: ClipRect(
          child: Banner(
            message: "25\% discount",
            color: Colors.red,
            location: BannerLocation.topEnd,
            child: Container(
              color: Colors.blueGrey,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQamqpHyUPsm0VINKISOMADb-AE2RMYCA3JBWCFfequ4w&s'),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Buy this picture?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ElevatedButton(style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange
                      ),onPressed: (){

                      }, child: Text('Get Now'))
                    ],
                  )
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}
