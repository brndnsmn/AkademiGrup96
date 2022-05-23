class OyunItem extends StatelessWidget {
  final Oyun listelenenOyun;
  const OyunItem({required this.listelenenOyun, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => KategoriAciklama(secilenOyun: listelenenOyun),
                ),
              );
            },
            leading: Image.asset(
              "images/" + secilenOyun.oyunKucukResim,
            ),
            title: Text(
              listelenenOyun.oyunAdi,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              listelenenOyun.kategoriAciklama,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
