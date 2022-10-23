import 'package:flutter/material.dart';
import 'package:spotify_ui/pages/home.dart';
import 'package:spotify_ui/pages/library.dart';
import 'package:spotify_ui/pages/mainpage.dart';
import 'package:spotify_ui/pages/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Spotify UI App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
            MainPage() //Anasayfa olarak ilk açılan ekran sayfası Mainpage olarak atanmıştır.
        );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex =
      0; /*index ataması yapılarak bottomnavigationbar panelinde görüntülenecek sayfalar bir 
                           liste içerisinde tanımlanarak index numarasına göre sayfasda görüntülenmesi sağlanmıştır.*/
  onTap(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> screens = [
    //Sayfaların liste içerisinde tanımlanması
    const HomePage(),
    const SearchPage(),
    const LibraryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: screens[
          selectedIndex], //sayfa gövdesine listeli sayfaların index numarası göre sıralanarak gösterilmesi
      bottomNavigationBar: BottomNavigationBar(
        //alt menü atamasının yapılması
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/home.png",
              color: selectedIndex == 0
                  ? Color(0xff1ED760)
                  : Colors
                      .white, //seçili durumda olan index sayfasının görünümü alt menüde yeşil duruma geçer seçili olmayan durumda beyaz görünümde olur.
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/search.png",
                color: selectedIndex == 1 ? Color(0xff1ED760) : Colors.white,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/books.png",
                color: selectedIndex == 2 ? Color(0xff1ED760) : Colors.white,
              ),
              label: ""),
        ],
      ),
    );
  }
}
