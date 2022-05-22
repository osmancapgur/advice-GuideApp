import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TavsiyeApp());
}

class TavsiyeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TAVSİYE REHBERİ"),
          centerTitle: true,
          backgroundColor: Colors.redAccent[700],
        ),
        body: TavisyeVer(),
      ),
    );
  }
}

int degerDegistir = 0;
int sozDegistir = 0;
int resim = 0;
int x = 0;

class TavisyeVer extends StatefulWidget {
  @override
  _TavisyeVerState createState() => _TavisyeVerState();
}

class _TavisyeVerState extends State<TavisyeVer> {
  List<String> basliklar = [
    "TAVSİYE İÇİN TIKLAYIN",
    "GODZİLLA vs KONG",
    "HIZLI VE ÖFKELİ",
    "JOKER",
    "BATMAN",
    "THE MANDOLORİAN",
    "SUPERMAN",
    "VİKİNGS",
    "THE WİTCHER",
    "PRİSON BREAK",
    "LA CASA DE PAPEL",
    "MOTİVASYONUNU KAYBETME"
  ];

  List<String> sozler = [
    "ALİ OSMAN ÇAPĞUR SUNAR",
    "Sadece çok ileri gitme riskini alanlar ne kadar ileri gidebildiklerini görür. –T.S. Elliot",
    "Başarı kazanmanın kendisidir. İnanmak, başarmanın yarısıdır.",
    "Yalnız işsiz olanlar değil. Daha iyisini yapabilecekken yapmayanlar da başı boştur. Sokrates",
    "Geçmişte kim olduğunu bilmek istiyorsan, şu an kim olduğuna bak. Kim olacağını bilmek istiyorsan, ne yaptığına bak. Buddha",
    "Arzu, motivasyon için kilit noktadır, fakat kararlılığın ve hedefini sürekli kovalamamaya olan bağlılığın,sana aradığın başarıyı yakalamanda imkan tanıyacaktır. Mario Andretti",
    "Dünyanın düşleyenlere de ihtiyacı var, yapanlara da, ama düşlediğini yapanlara daha çok ihtiyacı var. S. Breathnach",
    "Ne düşünürsek oyuz. Biz her neyse, düşüncelerimizden doğar. Düşüncelerimizle dünyamızı yaparız. Budha",
    "Eğer sevdiğin işi yaparsan, hayatın boyunca bir kez bile çalışmış olmazsın. Konfüçyus",
    "Gülümsüyorum. Çünkü: biliyorum ki gülümsemek; dostlarıma karşı sunduğum en iyi ikram, düşmanlarıma karşıda en asil darbedir!",
    "Ben, iyi niyetimden sadece bugün kaybederim ama sen; karaktersizliğinle bir ömür kaybedersin.",
    "Canavarların düyada dolaştığı, insanlığın gelecekleri için mücadele ettiği bir zamanda, doğanın en güçlü ikilisi olan Godzilla ve Kong, daha önce hiç görülmemiş bir savaşta çarpışmasını konu ediyor.",
    "Gecenin karanlığında Los Angeles'ın arka sokaklarında, çeteler büyük paralar ortaya koyarak araba yarışları yaparak, tehlikeli oyunlara atılmaktadırlar. Ancak şöhret ve para gibi getirileri de olmaktadır.",
    "Toplum tarafından dışlanan bir adam olan Arthur, hayatta yapayalnızdır. Bir süre sonra kendisini Gotham Şehri’nde suç ve kaosun içinde bulur.",
    "Gotham adeta şeytanlarla, kötü hesapların peşinde olan adamlarla kuşatılmış bir yerdir. Suç olayları bitmek bilmez. Bruce Wayne’in amacı bu şehre adaleti getirerek insanları huzurlu kılmaktır.",
    "Ailesini çocuk yaşta kaybeden Mandaloryalı’nın, maske taktığı için yüzünü kimse görememektedir. Bir kelle avcısı ve sliahşör olan Mandaloryalı, Bebek Yoda’yı kurtarmak için tutulur kaçış, kovalamaca hep sürer. ",
    "Clark Kent(SUPERMAN) ve Lois Lane sadece meslektaş değil aynı zamanda evli bir çifttir. Superman çocukları için daha basit bir yaşam kurmak ister bu yüzden Smallville'e geri döner.",
    "Basit bir çiftçiyken cesur bir savaşçıya dönüşen Ragnar Lothbrok ve ailesinin öyküsünü ekranlara taşıyor. Savaşçı ve tüccar bir kavim olan Vikingler’in çok az işlenmiş ilgi çekici kültürüne hep birlikte tanık oluyoruz.",
    "Yüzyılı aşkın süredir bir arada yaşayan insanlar, cüceler ve elfler arasındaki barış sona erer ve yeni bir ırklar arası savaş patlak verir. The Witcher olarak Geralt, vaadedilen çocuğun doğumunu beklemektedir.",
    "Haksız yere suçlandığını düşündüğü abisini hapishaneden kurtarmak isteyen Michael Scofield, nerdeyse kusursuz bir plan yapar. Lincoln Burrows'a yüklenen suç, kendilerini temize çıkarabilecekleri bir suç değildir.",
    "Profesör olarak adlandırılan bir suç dehası, tarihin en büyük soygununu yapmayı planlar. Amacı İspanya Kraliyet Darphanesine girmektir. Bunun için de işlerinde uzman olan 8 suçludan oluşan bir ekip kurar."
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              //CircleAvatar(
              // foregroundImage: AssetImage("assets/images/logo/myLogo.jpg"),
              //minRadius: 50.0,
              //),
              SizedBox(height: 140),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.emoji_events,
                    size: 30.0,
                    color: Colors.green,
                  ),
                  title: Text("MOTİVASYON",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Zen",
                          color: Colors.green,
                          backgroundColor: Colors.white)),
                  onTap: () {
                    setState(() {
                      degerDegistir = 11;
                      sozDegistir = Random().nextInt(9) + 1;
                      resim = sozDegistir + 10;
                    });
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.movie_creation,
                    size: 30.0,
                    color: Colors.lime,
                  ),
                  title: Text("FİLM ÖNERİSİ",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Zen",
                          color: Colors.lime,
                          backgroundColor: Colors.white)),
                  onTap: () {
                    setState(() {
                      degerDegistir = Random().nextInt(4) + 1;
                      resim = degerDegistir;
                      sozDegistir = degerDegistir + 10;
                    });
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.live_tv,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                  title: Text("DİZİ ÖNERİSİ",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Zen",
                          color: Colors.blue,
                          backgroundColor: Colors.white)),
                  onTap: () {
                    setState(() {
                      degerDegistir = Random().nextInt(6) + 5;
                      resim = degerDegistir;
                      sozDegistir = degerDegistir + 10;
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 1),
                height: 45,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 1),
                  child: Text(basliklar[degerDegistir],
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          backgroundColor: Colors.redAccent[200],
                          fontFamily: "Anton"),
                      textAlign: TextAlign.center),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                height: 180,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 1.0),
                  child: Text(sozler[sozDegistir],
                      style: TextStyle(
                          backgroundColor: Colors.deepOrange,
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: "Roboto"),
                      textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/resim$resim.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
