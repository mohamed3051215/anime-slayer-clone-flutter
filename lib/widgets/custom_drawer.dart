import 'package:anime_slayer_clone/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName:
                  Text("EL LORD GAMING", style: TextStyle(color: Colors.black)),
              accountEmail: Text("ellordgaming@gmail.com",
                  style: TextStyle(color: Colors.black)),
              currentAccountPicture: Image.network(
                  "https://www.freeiconspng.com/uploads/clipart--person-icon--cliparts-15.png"),
              otherAccountsPictures: [
                IconButton(
                    icon: Icon(Icons.notifications_none), onPressed: () {})
              ],
              decoration:
                  BoxDecoration(color: ThemeData().scaffoldBackgroundColor),
            ),
            CustomListTile(
                icon:
                    Icon(Icons.fiber_new_outlined, size: 30, color: Colors.red),
                text: "Last Update"),
            CustomListTile(icon: Icon(Icons.menu), text: "Anime List"),
            CustomListTile(icon: Icon(Icons.calendar_today), text: "Seasons"),
            Divider(
              color: Colors.black.withOpacity(.5),
            ),
            CustomListTile(
                icon: Icon(Icons.stacked_bar_chart), text: "Global Rate"),
            CustomListTile(
                icon: Icon(Icons.stacked_bar_chart_outlined),
                text: "Arab Rate"),
            Divider(
              color: Colors.black.withOpacity(.5),
            ),
            CustomListTile(
                icon: Icon(Icons.stacked_bar_chart_outlined),
                text: "My Anime List"),
            CustomListTile(icon: Icon(Icons.favorite), text: "Favorite Animes"),
            CustomListTile(
                icon: Icon(Icons.favorite), text: "Favorite Characters"),
            CustomListTile(
                icon: Icon(Icons.watch_later_outlined),
                text: "Recently Watched"),
            CustomListTile(icon: Icon(Icons.download), text: "Downloads"),
            Divider(
              color: Colors.black.withOpacity(.5),
            ),
            CustomListTile(
                icon: Icon(Icons.stacked_bar_chart_outlined),
                text: "Common Characters"),
            CustomListTile(
                icon: Icon(Icons.recommend_rounded), text: "Recommenditions"),
            Divider(
              color: Colors.black.withOpacity(.5),
            ),
            CustomListTile(
                icon: Icon(Icons.settings_applications_sharp),
                text: "settings"),
          ],
        ),
      ),
    );
  }
}
