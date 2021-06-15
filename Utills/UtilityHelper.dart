class HelperUtility {
  static bool isInteger(num value) => 
    value is int || value == value.roundToDouble();

  static bool isNumeric(String str){
    if(str == null) {
      return false;
    }
    return double.tryParse(str) != null;
  }

}