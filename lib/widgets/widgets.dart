import 'package:flutter/material.dart';
import 'package:flutter_wallpaper_app/model/wallpaper_model.dart';

import '../views/image_views.dart';

Widget brandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: const <Widget>[
      Text(
        "Wallpaper",
        style: TextStyle(color: Colors.black87, fontFamily: 'Overpass'),
      ),
      Text(
        "Hub",
        style: TextStyle(color: Colors.blue, fontFamily: 'Overpass'),
      )
    ],
  );
}

Widget WallpapersList({required List<WallpaperModel> wallpapers, context}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: wallpapers.map((wallpaper) {
        return GridTile(
            child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ImageView(
                        imgUrl: (wallpaper.src!.portrait)!,
                      )),
            );
          },
          child: Hero(
            tag: (wallpaper.src!.portrait)!,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  (wallpaper.src!.portrait)!,
                  fit: BoxFit.cover,
                )),
          ),
        ));
      }).toList(),
    ),
  );
}