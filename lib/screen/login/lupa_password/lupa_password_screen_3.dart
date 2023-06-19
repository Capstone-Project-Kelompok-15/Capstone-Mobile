
class _LupaPassword3State extends State<LupaPassword3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: typography500),
        title: Text(
          "Lupa Kata Sandi",
          style: largeBold.copyWith(color: typography500),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 48,),
            Text("Masukkan kata sandi baru", style: largeReguler, textAlign: TextAlign.center,),
            InputField(
              title: " ",
              hintText: "Masukkan kata sandi baru",
            ),
            InputField(
              title: " ",
              hintText: "Konfirmasi kata sandi baru",
            ),
            const SizedBox(height: 24,),
            Button(buttonText: "Kirim", width: 104, onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
            })
          ],
        ),
      ),
    );
  }
}