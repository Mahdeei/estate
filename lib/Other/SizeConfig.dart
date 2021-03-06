import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SizeConfig{

  static double _screenWidth;
  static double _screenHeight;
  static double _blocSizeHorizontal;
  static double _blocSizeVertical;

  static double textMultiplier;
  static double imageSizeMultiplier;
  static double heightMultiplier;


  void init(BoxConstraints constraints , Orientation orientation){
    if(orientation == Orientation.portrait){
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
    }else{
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
    }
    _blocSizeHorizontal = _screenWidth /100;
    _blocSizeVertical = _screenHeight /100;


    textMultiplier = _blocSizeVertical;
    if(_blocSizeVertical >= 2*_blocSizeHorizontal){
      textMultiplier-= 2;
    }
    imageSizeMultiplier = _blocSizeHorizontal;

    heightMultiplier = _blocSizeVertical;
    if(_blocSizeVertical >= 2.3*_blocSizeHorizontal){
      heightMultiplier-= 1.5;
    }
    print(_blocSizeVertical);
    print(imageSizeMultiplier);
  }

}