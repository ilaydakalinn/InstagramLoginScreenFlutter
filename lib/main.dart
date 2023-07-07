import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(InstagramLogin());
}
class InstagramLogin extends StatelessWidget {
  const InstagramLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment(0,0.8),//Columnda sadece ortadaki Column ayarlarken hepsine atadım
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff1A3056), Color(0xff1A301D)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //SizedBox ile en üste olan logoyu 145 aşağıya indirdim
                SizedBox(
                  height: 145,
                ),
                Image.asset('assets/images/instaLogo.png',
                  height: 90,
                  width: 90,
                ),
                SizedBox(height: 100,),
                ListView(
                  shrinkWrap: true,//içeriğin boyutunu sınırlar ve yalnızca mevcut alanı kaplamasına izin verir.
                  padding: EdgeInsets.only(top: 8, left: 10, right: 10, bottom: 1),//EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: TextField(
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                            hintText: 'Kullanıcı adı, e-posta adresi veya cep telefonu numarası',
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                            filled: true,//arkaplanın doluldur dedim
                            fillColor: Colors.black45.withOpacity(0.3),//arkaplanın siyah olmasını istediğim ve görünen opaklığı 0.3 yaptım
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)
                            )
                        ),
                      ),
                    ),
                  ],
                ),

                ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 1, left: 10,right: 10,bottom: 8),//EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: TextField(
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                            hintText: 'Şifre',
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                            filled: true,
                            fillColor: Colors.black.withOpacity(0.3),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)
                            )
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 40,
                  width: 375,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(//butona şekil vermek için
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                    onPressed: (){},
                    child: Text('Giriş Yap', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text('hesabını bul',
                        style: TextStyle(color: Colors.white)
                    ),
                  ],
                ),

                SizedBox(
                  height: 200,
                ),
                SizedBox(
                  height: 40,
                  width: 375,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(//butona şekil vermek için
                      primary: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(color: Colors.blue)
                      ),
                    ),
                    onPressed: (){},
                    child: Text('Yeni Hesap Oluştur', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.blue)),
                  ),
                ),



                /*Container(
                  child:Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () {
                        // Butona basıldığında gerçekleştirilecek işlemler
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Kenarları yuvarlatma
                        ),
                        padding: EdgeInsets.all(14), // Butonun boyutunu ayarlama
                      ),
                      child: Text('Yeni Hesap Oluştur',style: TextStyle(fontSize: 14),),
                    ),
                  ),/**/
                ),*/

              ],
            ),
          ),
        ),
      ),
    );
  }
}