part of '../../main.dart';

class BuildCard extends StatelessWidget {
  final String text;
  final String imageUrl;

  BuildCard(this.text, this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 166,
      height: 130,
      padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
      decoration: BoxDecoration(
        color: "#FFFFFF".toColor(),
        borderRadius: BorderRadius.circular(12.5),
        border: Border.all(color: "#DADEE3".toColor()),
        boxShadow: [
          BoxShadow(
            offset: const Offset(2, 5),
            blurRadius: 4,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.1),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            imageUrl,
            width: 40,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: themeTitle4,
          ),
        ],
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  IconBottomBar(
      {Key? key,
      required this.text,
      required this.iconVar,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final iconVar;
  final bool selected;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: HeroIcon(
            iconVar,
            color: selected ? "#36B36E".toColor() : Colors.grey,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 14,
              height: .4,
              color: selected ? "#36B36E".toColor() : Colors.grey),
        )
      ],
    );
  }
}

class buildNavigation extends StatefulWidget {
  const buildNavigation({super.key});

  @override
  State<buildNavigation> createState() => _buildNavigationState();
}

class _buildNavigationState extends State<buildNavigation> {
  int varMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              blurRadius: 4,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.3)),
        ],
      ),
      child: BottomAppBar(
        color: "#FFFFFF".toColor(),
        child: SizedBox(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBottomBar(
                  text: "Home",
                  iconVar: HeroIcons.home,
                  selected: varMenu == 0,
                  onPressed: () {
                    setState(() {
                      varMenu = 0;
                    });
                    Get.offAll(() => HomePage());
                  },
                ),
                IconBottomBar(
                  text: "Konsultasi",
                  iconVar: HeroIcons.chatBubbleLeftRight,
                  selected: varMenu == 1,
                  onPressed: () {
                    setState(() {
                      varMenu = 1;
                    });
                  },
                ),
                IconBottomBar(
                  text: "Peserta",
                  iconVar: HeroIcons.users,
                  selected: varMenu == 2,
                  onPressed: () {
                    setState(() {
                      varMenu = 2;
                    });
                    Get.offAll(() => PesertaPage());
                  },
                ),
                IconBottomBar(
                  text: "Artikel",
                  iconVar: HeroIcons.newspaper,
                  selected: varMenu == 3,
                  onPressed: () {
                    setState(() {
                      varMenu = 3;
                    });
                  },
                ),
                IconBottomBar(
                  text: "Setelan",
                  iconVar: HeroIcons.cog6Tooth,
                  selected: varMenu == 4,
                  onPressed: () {
                    setState(() {
                      varMenu = 4;
                    });
                    Get.offAll(() => LoginPage());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
