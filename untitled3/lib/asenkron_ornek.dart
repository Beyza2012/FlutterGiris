main(List<String> args) {


  kullanici(2).then((value) {
    print(value);
    usernamegorekursgetir(value['username']).then((List kursListesi) {
      print(kursListesi);
      String ilkKurs = kursListesi[0];
      kursIlkYorumGetir(ilkKurs).then((String yorum) {
        print(yorum);
      });
    });
  });

}
  /*Future<List> userkurslari = usernamegorekursgetir("beyza");
  userkurslari.then((value) => print(value)).catchError((hata){
    print("kullanıcı bulunamadı");
 }).whenComplete(() => print("kullanıcı kursları getirildi"));
*/
Future<String> kursIlkYorumGetir(String kursAdi){
  return Future<String>.delayed(Duration(seconds: 1),(){
    return "kurs mukemmel";
  });

}
Future<List> usernamegorekursgetir(String username){
  print("$username kullanıcısının kursları getiriliyor");
  return Future<List>.delayed(Duration(seconds: 4),(){
    return ['flutter', 'kotlin','javascript'];
  });
}

Future<Map<String,dynamic>> kullanici(int id){
  print("$id idli kullanıcı getiriliyor");
 return Future<Map<String,dynamic>>.delayed(Duration(seconds: 2),(){
    return {'username':'emrealtunbilek','id':id};

  });

}

