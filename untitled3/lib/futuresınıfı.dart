main(List<String> args){
  print("Anne çocuğu ekmek almaya yollar");
  print("çocuk ekmek almak için evden çıkar");
  Future<String> sonuc = uzunSurenIslem();
  sonuc.then((String value) => print(value)).catchError((hata){
    print(hata);}).whenComplete(() => print("ekmek alma operasyonu bitti."));

  print("peynir zeytin hazırlanır");
  print("kahvaltı hazır!!");


}
Future<String> uzunSurenIslem(){
  Future<String> sonuc = Future.delayed(Duration(seconds: 2),(){
     return "çocuk ekmekle eve girer";
    // throw Exception("Bakkalda ekmek kalmamış");

  });
   return sonuc;

}