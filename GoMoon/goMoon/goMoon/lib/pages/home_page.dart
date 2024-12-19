import "package:flutter/material.dart";
import "package:go_moon/widgets/custom_dropdown_button.dart";

class HomePage extends StatelessWidget{
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context)
  {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: _deviceWidth,
          height: _deviceHeight,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth *0.05),
          child: Stack(children: [Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _pageTitle(),
              _bookRide(),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: _imageWidget(),
          ),
          ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle(){
    return const Text("#GoMoon", style: TextStyle(
      color: Colors.white, 
      fontSize: 70,
      fontWeight: FontWeight.w800,),);
  }

  Widget _imageWidget(){
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.65,
        decoration: const BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/space.jpg"),
          ),
        ),
    );
  }

  Widget _destinationDropDownWidget(){
    return CustomDropdownButtonClass(values: 
    ["James Bruh", "James Brooke", "James Broke"], 
    width: _deviceWidth,);      
  }

  Widget _travellersInformationWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownButtonClass(
          values: const["1", "2", "3", "4"],  
          width: _deviceWidth * 0.45,
        ),
        CustomDropdownButtonClass(
          values: const["Economy", "Business", "First", "Private"],  
          width: _deviceWidth * 0.40,
        ),
      ]
    );      
  }

  Widget _bookButton(){
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight*0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(onPressed: (){}, 
      child: const Text("BOOK NOW!",
      style: TextStyle(
        color: Colors.black),
        ),
    ),
    );
  }

  Widget _bookRide(){
    return Container(
      height: _deviceHeight *0.25, 
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          _destinationDropDownWidget(),
          _travellersInformationWidget(),
          _bookButton(),
        ],
      ),
    );
  }
}