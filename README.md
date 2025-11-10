1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
Widget tree adalah struktur yang menunjukkan bagaimana widget saling berhubungan satu sama lain dalam Flutter. Widget parent berfungsi sebagai wadah yang mengatur posisi, ukuran, atau perilaku dari widget child di dalamnya. Misalnya, Column dapat berisi beberapa text atau container sebagai anak-anaknya. Dengan demikian, tampilan UI Flutter terbentuk dari gabungan widget-widget yang tersusun secara bertingkat seperti pohon.

2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
-MaterialApp: root widget aplikasi yang menyediakan tema, routing, dan konfigurasi dasar Flutter berbasis Material Design.
-Scaffold: struktur dasar halaman seperti AppBar, body, dan area lainnya.
-AppBar: menampilkan bilah atas (toolbar) dengan judul aplikasi.
-Padding: memberikan jarak di sekitar widget.
-Column: menyusun widget secara vertikal.
-Row: menyusun widget secara horizontal.
-Card: menampilkan konten dalam bentuk kotak dengan bayangan (shadow).
-Container: tempat untuk mengatur tata letak dan gaya widget lain.
-Text: menampilkan teks pada layar.
-GridView.count: menampilkan kumpulan widget dalam bentuk grid dengan jumlah kolom tertentu.
-Center: menempatkan widget di tengah parent-nya.
-Icon: menampilkan ikon dari pustaka Material.
-Material: memberikan efek visual seperti warna dan radius sudut sesuai tema Material Design.
-InkWell: menangani interaksi sentuhan (tap) pada widget dengan efek ripple.
-SnackBar: menampilkan pesan sementara di bagian bawah layar.
-SizedBox: memberikan jarak antar widget dengan tinggi atau lebar tertentu.

3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
MaterialApp berfungsi sebagai titik awal (root) dari aplikasi berbasis Material Design yang berfungsi untuk mengatur berbagai aspek global seperti tema warna, navigasi halaman, dan konfigurasi tampilan utama (home). Widget ini sering digunakan karena menyediakan kerangka kerja utama untuk seluruh aplikasi dan MaterialApp biasanya digunakan sebagai widget paling atas dalam struktur widget tree.

4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
StatelessWidget digunakan untuk widget yang tidak memiliki data atau keadaan (state) yang berubah. Contohnya, teks statis atau ikon tetap. Sedangkan statefulWidget digunakan untuk widget yang memiliki keadaan (state) yang dapat berubah seiring waktu, misalnya tombol yang mengubah warna saat ditekan atau input pengguna.
Kita memilih StatelessWidget jika tampilan tidak perlu diperbarui, sedangkan StatefulWidget digunakan saat tampilan harus bereaksi terhadap interaksi atau perubahan data.

5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
BuildContext adalah objek yang merepresentasikan lokasi sebuah widget dalam widget tree. Ia penting karena digunakan untuk mengakses informasi dari widget parent, seperti tema atau navigasi. Dalam metode build, BuildContext digunakan untuk membangun tampilan dengan mengetahui posisi dan relasi widget terhadap widget lain di tree.

6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
Hot reload memperbarui kode yang sedang berjalan tanpa menghapus state aplikasi. Artinya, perubahan kode (misalnya tampilan UI) langsung terlihat tanpa kehilangan data atau posisi halaman saat ini. Sedangkan hot restart menjalankan ulang seluruh aplikasi dari awal, menghapus seluruh state yang tersimpan (ini mirip seperti menjalankan ulang aplikasi sepenuhnya).


TUGAS 8

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
Navigator.push() menambahkan halaman baru di atas halaman yang sedang dibuka sehingga pengguna bisa kembali ke halaman sebelumnya. Sedangkan Navigator.pushReplacement() menggantikan halaman yang aktif dengan halaman baru, jadi halaman lama dihapus dari tumpukan. Dalam Football Shop, Navigator.push() cocok untuk membuka halaman tambah produk, sedangkan Navigator.pushReplacement() lebih cocok untuk berpindah dari halaman login ke halaman utama agar tidak bisa kembali ke login lagi.

2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
Scaffold digunakan sebagai kerangka utama halaman yang di dalamnya ada AppBar di bagian atas dan Drawer di sisi kiri. Dengan begitu, setiap halaman seperti beranda dan form produk memiliki struktur dan tampilan yang konsisten di seluruh aplikasi.

3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
Widget seperti Padding, SingleChildScrollView, dan ListView membantu menata tampilan agar lebih rapi dan responsif. Misalnya, Padding memberi jarak antar elemen form, SingleChildScrollView memungkinkan form panjang bisa di-scroll, dan ListView cocok untuk menampilkan daftar produk secara vertikal.

4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
Warna tema disesuaikan agar aplikasi punya identitas visual yang konsisten. Misalnya, dengan memakai warna biru untuk tombol All Products, hijau untuk tombol My Products, dan merah untuk Create Product agar terlihat seragam dan mudah dikenali sebagai satu kesatuan tampilan.
