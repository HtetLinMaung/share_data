import 'dart:typed_data';
import 'package:blue_thermal_printer/blue_thermal_printer.dart';


class TestPrint {
  String test = "test";
  String test1 = "test";
  String test2 = "test";
  String test3 = "test";
  BlueThermalPrinter bluetooth = BlueThermalPrinter.instance;

   sample() async {
    //SIZE
    // 0- normal size text
    // 1- only bold text
    // 2- bold with medium text
    // 3- bold with large text
    //ALIGN
    // 0- ESC_ALIGN_LEFT
    // 1- ESC_ALIGN_CENTER
    // 2- ESC_ALIGN_RIGHT

    //CHARACTAR
    // 64 charactar
    
    //SKU-35
  
    //SPACE-1
    //PRICE-6
    //SPACE-1
    //Dis-6
    //SPACE-1
    //QTY-4
    //SPACE-1
    //Amount-9

//     var response = await http.get("IMAGE_URL");
//     Uint8List bytes = response.bodyBytes;
    bluetooth.isConnected.then((isConnected) {
      if (isConnected) {
        bluetooth.printCustom("SP Bakery", 1, 1);
        bluetooth.printNewLine();
        bluetooth.printCustom("Store : Htate Tan (CATZ)", 0, 0);
        bluetooth.printCustom("        ထိပ်တန်း (CATZ)", 0, 0);
        bluetooth.printCustom("Tel : 9522844268", 0, 0);
        bluetooth.printCustom("User Name : Delivery Truck 2", 0, 0);
        bluetooth.printCustom("Invoice No : 1", 0, 0);
        bluetooth.printCustom("Print Date : 1/14/2021", 0, 0);
        bluetooth.printCustom("Invoice Date : 1/14/2021", 0, 0);
        bluetooth.printCustom("----------------------------------------------------------------", 0, 0);
        bluetooth.printCustom("SKU                                  Price Dis(%)  Qty    Amount", 0, 0);
        bluetooth.printCustom("SP_Bakery Cheese Cream Roll 3 pack     500   10.5    5    2237.5", 0, 0);
        bluetooth.printCustom("size", 0, 0);
        bluetooth.printCustom("ထောပတ်ပေါင်မုန့်                          100      0   10      1000", 0, 0);
        bluetooth.printCustom("----------------------------------------------------------------", 0, 0);
        bluetooth.printCustom("Sub Total                                                 3237.5", 0, 0);
        bluetooth.printCustom("Discount Amount                                                0", 0, 0);
        bluetooth.printCustom("Special Discount Amount                                        0", 0, 0);
        bluetooth.printCustom("Expired Amount                                                 0", 0, 0);
        bluetooth.printCustom("Discount Expired Amount                                        0", 0, 0);
        bluetooth.printCustom("----------------------------------------------------------------", 0, 0);
        bluetooth.printCustom("Total Amount                                              3237.5", 0, 0);
        bluetooth.printCustom("================================================================", 0, 0);
        bluetooth.printNewLine();
        bluetooth.printCustom("Thank you!",1,1);
        bluetooth.printCustom("SP Bakery supported by Auderbox",1,1);
        // bluetooth.printCustom("HEADER",3,1);
        // bluetooth.printNewLine();
        // bluetooth.printImage(pathImage);   //path of your image/logo
        // bluetooth.printNewLine();
        // bluetooth.printImageBytes(bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes));
        // bluetooth.printLeftRight("LEFT", "RIGHT",0);
        // bluetooth.printLeftRight("LEFT", "RIGHT",1);
        // bluetooth.printNewLine();
        // bluetooth.printLeftRight("LEFT", "RIGHT",2);
        // bluetooth.printLeftRight("LEFT", "RIGHT",3);
        // bluetooth.printLeftRight("LEFT", "RIGHT",4);
        // String testString = " အစမ်းထုတ်";
        // bluetooth.printCustom(testString, 1, 1, charset: "windows-1250");
        // bluetooth.printCustom("$test$test1$test2$test3",0,0);
        // bluetooth.printCustom("test",0,0);
        // bluetooth.printCustom("test",0,0);
        // bluetooth.printCustom("test",0,0);
        // bluetooth.printLeftRight("Številka:", "18000001", 1);
        // bluetooth.printCustom("Body left",1,0);
        // bluetooth.printCustom("Body right",0,2);
        // bluetooth.printNewLine();
        // bluetooth.printCustom("Thank You",2,1);
        // bluetooth.printNewLine();
        // bluetooth.printQRcode("Insert Your Own Text to Generate", 200, 200, 1);
        // bluetooth.printNewLine();
        // bluetooth.printNewLine();
        bluetooth.paperCut();
      }
    });
  }
}