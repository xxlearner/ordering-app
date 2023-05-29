import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {


Widget singleProducts() {
  return  Container(
    margin: EdgeInsets.symmetric(horizontal: 5),

          height: 220,
          width: 160,
          
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Image.asset('image/cappucino.jpg'),
              ),
              SizedBox(height: 1),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical:1),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                  
                    children: [
                      Text(
                        'Cappuccino', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                      SizedBox(height: 5),
                
                      Text(
                        'Rs.250.00', style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),),
                
                SizedBox(height: 5),

Row(
  children: [
    Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 20),
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey,),
       
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
                    
                      children: [
                  
                  
                        Expanded(
                          child: Text('No.', style: TextStyle( fontSize: 10, color: Colors.black),),
                        ),
                          Center(
                         child: Icon
                        (Icons.arrow_drop_down_rounded,
                        size: 20,
                        color: Colors.black),
                     ),
                    ],),
    ),),
    SizedBox(width: 5),
    Expanded(
      child: Container(
      height: 20,
      width: 20,
       decoration: BoxDecoration(
        border: Border.all(color: Colors.grey,),
       
        borderRadius: BorderRadius.circular(8),
       ),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.remove,
            size: 15,
            color: Colors.black,
            ),
            Text('1', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),

             Icon(Icons.add,
            size: 15,
           color: Colors.black,
            ),
           

          ],
         )
    ),
    ),
  
  
              ],
                ),
                    ],
                  ),
                  ),
              
              ),
          ],),


        
        );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(
        child: ListView(children: [


        ],)
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black87, fontSize: 25),
          
        ),
        centerTitle: true,
        actions: [ 
          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.black12,
            child: Icon(Icons.search, size: 15, color: Colors.black),
           
          
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: Colors.black12,
              radius: 12,
              child: Icon(Icons.shop, size: 15, color: Colors.black),
            ),
          ),
        ],
        backgroundColor: Colors.amberAccent,

        
      ),
   
   body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
    child: Column(
    children: [
      Container(
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/pp.webp'),
              fit: BoxFit.cover,
          )
          
          

          ),
       child: Row(
        children: [
          Expanded(
            
            child:Container(
             
              child: Column(
                children: [
                  Padding(
                    
                    padding: const EdgeInsets.only(right: 120, bottom: 10 ),
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                         color:Color.fromARGB(255, 193, 182, 109),

                        borderRadius: BorderRadius.only (
                        bottomRight: Radius.circular(60),
                        bottomLeft: Radius.circular(60),
                        ),
                        ),

                        child: Center(
                          child: Text('Coffee', 
                          style: TextStyle( 
                            fontSize: 20,
                            color: Colors.white,
                            shadows: [
                              BoxShadow(
                              color: Colors.green,
                              blurRadius: 10,
                              offset: Offset(3,3),
                              )
                            ],
                          ),
                                                                                    ),
                        ),

                   ),
                    ),
                  Text(
                    '10% OFF', style: TextStyle(fontSize: 30, color: Colors.white, 
                  fontWeight: FontWeight.bold),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Seize the opportunity!', style: TextStyle(fontSize: 15, color: Colors.white, 
                    fontWeight: FontWeight.bold),
                    ),
                  ),



                    
                ],
                  )
                
              )

           ),
          
           Expanded(
            
            child:Container(),
           ),

       ],),
        ),
     Padding(
       padding: const EdgeInsets.symmetric(vertical: 5),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
          
            child: Text('Coffee Varieties', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
             ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text('View all', style: TextStyle(color: Colors.white, fontSize: 20), ),
          ),
        ],
       ),
     ),

     SingleChildScrollView(
      scrollDirection: Axis.horizontal,
       child: Row(
        children: [
          singleProducts(),
         SizedBox(width: 200,),

          singleProducts(),
           
         
        ],
       ),
     ),


    
     
     ],
      ),

   ),
   
    );
  }
}
