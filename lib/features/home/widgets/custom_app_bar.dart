import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/utils/theme/theme_state.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      primary: true,
      title: Row(
        children: [
          Image.asset(
            'assets/logo.png',
            height: 45,
          ),
          const SizedBox(width: 10),
          const Text("SocioGram"),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.chat_bubble_2),
        ),
        Consumer<ThemeProvider>(builder: (context, value, _) {
          return IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).swap();
            },
            icon: value.themeMode
                ? const Icon(
                    Icons.sunny,
                  )
                : const Icon(CupertinoIcons.moon_fill),
          );
        }),
      ],
    );
  }
}
