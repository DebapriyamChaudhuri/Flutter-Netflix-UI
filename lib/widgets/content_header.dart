import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/models/content_model.dart';
import 'package:flutter_netflix_responsive_ui/widgets/widgets.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;

  const ContentHeader({Key key, this.featuredContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            height: 500.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(featuredContent.imageUrl),
                    fit: BoxFit.cover))),
        Container(
            height: 500.0,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter))),
        Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250.0,
            child: Image.asset(featuredContent.titleImageUrl),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 40,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            VerticalIconButton(
                icon: Icons.add, title: 'List', onTap: () => print('My List')),
            PlayButton(),
            VerticalIconButton(
                icon: Icons.info_outline,
                title: 'Info',
                onTap: () => print('Info'))
          ]),
        )
      ],
    );
  }
}
