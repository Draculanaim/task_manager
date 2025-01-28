import 'package:flutter/material.dart';
import 'package:task_manager/ui/screans/update_profile_screen.dart';

import '../utils/app_colors.dart';

class TMappBar extends StatelessWidget implements PreferredSizeWidget  {
  const TMappBar({
    super.key,
    this.fromUpdateProfile =false,
  });

  final bool fromUpdateProfile;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AppBar(
      backgroundColor: AppColors.themeColor,
      title: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            CircleAvatar(

            ),
            SizedBox(width: 16,),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  if(!fromUpdateProfile) {
                    Navigator.pushNamed(context, UpdateProfileScreen.name);
                  }
                  },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Naimur Rahman',style: textTheme.titleSmall?.copyWith(
                      color: Colors.white,

                    ),),
                    Text('jimkhannaim97@gmail.com',style: textTheme.bodySmall?.copyWith(
                      color: Colors.white,

                    ),),
                  ],
                ),
              ),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.logout),)
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}