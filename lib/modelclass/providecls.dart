import 'package:flutter/material.dart';

class  Provider_class extends ChangeNotifier{
  List favItem=[];
  List get favoriteItem => favItem;
  void favorites(String item){
    final favNameList=favItem.contains(item);
    if(favNameList){
      favItem.remove(item);
      
    }else{
      favItem.add(item);
    }
    notifyListeners();
  }
  bool icn_change(String icnName){
    final favIcn =favItem.contains(icnName);
    return favIcn;
  }
  
  
  
  
  
}