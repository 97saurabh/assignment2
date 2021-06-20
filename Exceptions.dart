class RollNoAlreadyExist implements Exception{
  String errorMessaage(){
    return "Available:";
  }
}

class IncorrectFormatPriceQuantity implements Exception{
  String errorMessaage(){
    return "Value is not corret";
  }
}