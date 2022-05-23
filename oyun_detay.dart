class OyunDetay extends StatefulWidget {
  final Oyun secilenBurc;
  const OyunDetay({required this.secilenOyun, Key? key}) : super(key: key);

  @override
  _OyunDetayState createState() => _OyunDetayState();
}

class _OyunDetayState extends State<OyunDetay> {
  Color appbarRengi = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    appbarRenginiBul();
    print('init state çalıstı');
    // _generator = PaletteGenerator.fromImageProvider(AssetImage(assetName));
  }

  @override
  Widget build(BuildContext context) {
    print('build çalıstı');
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: appbarRengi,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(widget.secilenOyun.oyunAdi + " Oyun ve Özellikleri"),
            centerTitle: true,
            background: Image.asset(
              'images/' + widget.secilenoyun.oyunBuyukResim,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Text(
                widget.secilenoyun.oyunDetayi,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
        ),
      ],
    ));
  }

  void appbarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('images/${widget.secilenOyun.oyunBuyukResim}'));
    appbarRengi = _generator.vibrantColor!.color;
    setState(() {});
    print(appbarRengi);
  }
}
