part of '../main_section.dart';

class _NavbarDesktop extends StatelessWidget {
  const _NavbarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(color: appProvider.isDark ? Colors.black : Colors.white,),
      padding: Space.all(),

      child: Row(
        children: [
          // const NavBarLogo(),
          // Space.xm!,
          ...NavBarUtils.names.asMap().entries.map(
                (e) => NavBarActionButton(
                  label: e.value,
                  index: e.key,
                ),
              ),
          const Spacer(),
          EntranceFader(
            offset: const Offset(0, -10),
            delay: const Duration(milliseconds: 100),
            duration: const Duration(milliseconds: 250),
            child: MaterialButton(
              hoverColor: AppTheme.c!.primary!.withAlpha(150),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(
                  color: AppTheme.c!.primary!,
                ),
              ),
              onPressed: () {
                html.window.open(
                  StaticUtils.resume,
                  "pdf",
                );
              },
              child: Padding(
                padding: Space.all(1.25, 0.45),
                child: Text(
                  'RESUME',
                  style: AppText.l1b,
                ),
              ),
            ),
          ),
          Space.x!,

        ],
      ),
    );
  }
}

class _NavBarTablet extends StatelessWidget {
  const _NavBarTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Stack(
      fit: StackFit.passthrough,
      children: [


        Padding(
          padding: Space.v!,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Space.x1!,
              IconButton(
                highlightColor: Colors.white54,
                splashRadius: AppDimensions.normalize(10),
                onPressed: () {
                  drawerProvider.key.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                ),
              ),
              const Spacer(),
              Space.x!,
              EntranceFader(
                offset: const Offset(0, -10),
                delay: const Duration(milliseconds: 100),
                duration: const Duration(milliseconds: 250),
                child: MaterialButton(
                  hoverColor: AppTheme.c!.primary!.withAlpha(150),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(
                      color: AppTheme.c!.primary!,
                    ),
                  ),
                  onPressed: () {
                    html.window.open(
                      StaticUtils.resume,
                      "pdf",
                    );
                  },
                  child: Padding(
                    padding: Space.all(1.25, 0.45),
                    child: Text(
                      'RESUME',
                      style: AppText.l1b,
                    ),
                  ),
                ),
              ),
              Space.x!,

            ],
          ),
        ),
      ],
    );
  }
}
