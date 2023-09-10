import 'package:flutter/material.dart';

import '../../feauters/main screen/Data/repo/org_repo_impl.dart';
import '../constance/colors.dart';

class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {
  const AppBarCustom({Key? key, this.title, this.enableMenu =false})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  final String? title;
  final bool enableMenu;

  @override
  final Size preferredSize;

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(160),
      child: Container(
        color: Colors.white.withOpacity(.1),
        child: AppBar(
          title: InkWell(
              onTap: () =>
              OrganizersRepoImpl().getAllOrganizers(),
              child: Text(widget.title ?? "Crazy Fantasy",
                  style: const TextStyle(
                      fontSize: 20, fontFamily: 'janna', color: Colors.white))),
          backgroundColor: AppColors.secondColor,
          leading: widget.enableMenu?const SizedBox() :IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 25,
              color: Colors.white,
            ),
          ),
          actions: [
           if (widget.enableMenu) IconButton(
              onPressed: () {
              },
              icon: const Icon(
                Icons.menu,
                size: 30,
                color: Colors.white,
              ),
            ) else const SizedBox(),
          ],
        ),
      ),
    );
  }

  Size get preferredSize => throw UnimplementedError();
}
