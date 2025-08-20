import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icon_snackbar/flutter_icon_snackbar.dart';
import 'package:fun88_clone/app/router/app_router.gr.dart';
import 'package:fun88_clone/app/theme/app_colors.dart';
import 'package:fun88_clone/core/data/data.dart';
import 'package:fun88_clone/core/shared/buttons/app_button.dart';
import 'package:fun88_clone/core/shared/buttons/app_icon_button.dart';
import 'package:fun88_clone/core/shared/cards/casino_card.dart';
import 'package:fun88_clone/core/shared/cards/game_card.dart';
import 'package:fun88_clone/core/shared/ui/heading_carousel_slider.dart';
import 'package:fun88_clone/core/shared/ui/sidebar.dart';
import 'package:fun88_clone/core/utils/snack_bar.dart';
import 'package:gap/gap.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      key: _scaffoldKey,
      drawer: Sidebar(
        list: ['HomeScreen', 'Favorite', 'History', 'Casino', 'Profile'],
        onTap: () {
          _scaffoldKey.currentState?.openDrawer();
        },
      ),

      appBar: AppBar(
        toolbarHeight: 65,
        iconTheme: const IconThemeData(color: AppColors.primary),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'FUN88',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: AppColors.primary,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),
            ),
            Row(
              children: [
                AppButton(
                  textButton: "Login",
                  color: AppColors.primary,
                  onClick: () => context.router.push(const LoginRoute()),
                ),
                Gap(20),
                AppButton(textButton: "Register", color: AppColors.secondary),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            HeadingCarouselSlider(),
            SizedBox(height: 150, child: casinoCardListView()),
            SizedBox(height: 120, child: iconListView()),
            Container(
              padding: EdgeInsets.only(bottom: 60),
              height: 460,
              child: gameListView(),
            ),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: StylishBottomBar(
        items:
            bottomNavigationList
                .map(
                  (item) => BottomBarItem(
                    icon: Icon(item.icon, color: Colors.grey),
                    selectedIcon: Icon(item.icon, color: AppColors.primary),
                    title: Text(
                      item.label,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: AppColors.gray,
                      ),
                    ),
                  ),
                )
                .toList(),
        currentIndex: _currentIndex,
        option: AnimatedBarOptions(
          iconSize: 28,
          barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.simple,
        ),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  ListView casinoCardListView() {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = (screenWidth - 60) / 3;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8),
      itemCount: cardList.length,
      itemBuilder: (context, index) {
        final card = cardList[index];
        return CasinoCardWidget(title: card.title, width: itemWidth);
      },
    );
  }

  ListView iconListView() {
    final theme = Theme.of(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = (screenWidth - 60) / 4;
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8),
      itemCount: iconList.length,
      separatorBuilder: (context, index) => const SizedBox(width: 12),
      itemBuilder: (context, index) {
        final item = iconList[index];
        return SizedBox(
          width: itemWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppIconButton(
                icon: item.icon,
                color: AppColors.gray,
                onPressed: () {
                  showSnackBar(
                    context,
                    errorMessage: 'Icon Tapped',
                    type: SnackBarType.alert,
                  );
                },
              ),
              const SizedBox(height: 8),
              Text(
                item.label,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: AppColors.gray,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}

GridView gameListView() {
  return GridView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: 20,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3, // 3 items per row
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 1, // square items
    ),
    itemBuilder: (context, index) {
      return GameCardWidget();
    },
    shrinkWrap: true, // required inside scrollable
  );
}

class IconItem {
  final IconData icon;
  final String label;

  IconItem({required this.icon, required this.label});
}

class CasinoCard {
  final String title;

  CasinoCard({required this.title});
}

class GameCard {
  final String name;
  final String imageUrl;

  GameCard({required this.name, required this.imageUrl});
}
