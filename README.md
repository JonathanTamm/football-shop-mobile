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


TUGAS 9

1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
Kita buat model Dart agar data JSON punya struktur dan tipe yang jelas di sisi klien. Model memaksa field yang diperlukan ada, menjaga tipe (misalnya int untuk price, String untuk name) dan memudahkan konversi fromJson/toJson. Kalau langsung pakai Map<String, dynamic>, konsekuensinya validasi tipe lemah (bisa salah tipe & crash saat runtime), null safety sulit dijaga (banyak null tak terduga), dan maintainability rendah (kode sulit dibaca, sulit refactor, dan IDE tidak bisa bantu)

2. Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
http adalah package untuk request HTTP stateless sederhana, cocok untuk API publik tanpa session. CookieRequest khusus untuk menyimpan dan mengelola cookie/session sehingga request yang membutuhkan autentikasi (login, create, edit) bisa mengenali user mana yang sedang login. Perbedaannya, http tidak menyimpan state (setiap request terpisah), sedangkan CookieRequest menyimpan cookie/session otomatis sehingga server Django tahu siapa pemanggilnya. 

3. Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Instance CookieRequest harus dibagikan karena menyimpan state autentikasi (cookie, session token). Jika tiap widget buat instance baru, mereka tidak berbagi cookie sehingga server tidak mengenali user yang sudah login. Dengan satu instance yang dibagikan ke semua komponen, semua halaman tersebut memakai session yang sama, bisa cek status login, kirim token/cookie otomatis, dan konsisten UX (misalnya menampilkan menu user saat login).

4. Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
Agar Flutter dan Django berjalan: 
-10.0.2.2 di ALLOWED_HOSTS karena emulator Android mengakses host machine lewat alamat itu, tanpa itu Django menolak request
-aktifkan CORS agar browser like origin (webview/emulator) diizinkan akses API 
-atur cookie SameSite=None dan flag Secure/HttpOnly sesuai kebutuhan agar cookie dikirim lintas origin
-tambahkan INTERNET permission di AndroidManifest.xml agar aplikasi boleh melakukan request HTTP. Kalau salah konfigurasi, hasilnya request akan ditolak (CORS error), cookie tidak dikirim (login/session gagal), aplikasi tidak bisa terhubung ke server (network error), atau Django menolak host (DisallowedHost).

5. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Ketika user isi form di Flutter, lalu Flutter membuat object model, lalu toJson() berfungsi untuk mengirim lewat POST menggunakan CookieRequest.postJson atau http.post ke endpoint Django dan Django menerima, validasi, simpan ke DB, lalu Django membalas JSON sukses + data created, lalu Flutter menerima response, parse JSON jadi model Dart (fromJson), setelah itu akan update UI sehingga data akan tampil. Jika ada gambar/thumbnail, bisa upload terpisah atau simpan URL.

6. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke 
Mekanisme autentikasi, dari Flutter user isi username/password, lalu Flutter kirim POST ke endpoint login Django (bisa form-encoded atau JSON), lalu Django memverifikasi kredensial lewat authenticate(), jika valid Django buat session dan kirim cookie session ke client, lalu CookieRequest menyimpan cookie secara otomatis dan setiap request berikutnya CookieRequest kirim cookie sehingga Django tahu user terautentikasi, lalu Flutter cek response dan menyimpan state (contoh: isLoggedIn=true), lalu tampilkan menu yang sesuai. Untuk register, Flutter kirim data registrasi, lalu Django buat user (validasi, hashing password), lalu (opsional) auto login dan balikan cookie. Untuk logout, Flutter panggil endpoint logout, lalu Django hapus session server side dan cookie. CookieRequest juga clear cookie sehingga UI kembali ke kondisi belum login.

7. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
Pertama definisikan model Django lengkap dan endpoint JSON yang konsisten, lalu desain model Dart sesuai JSON. Lalu implement CookieRequest di root app memakai Provider sehingga instance tersedia global. Untuk backend, buat endpoint spesifik (public JSON, user filtered JSON, create/edit/delete dengan pengecekan request.user). Di Flutter pakai model Dart untuk semua parsing dan validasi input di form sebelum kirim. Untuk koneksi, set ALLOWED_HOSTS termasuk 10.0.2.2, pasang django-cors-headers, konfigurasi cookie SameSite=None saat dev, dan tambahkan INTERNET permission di Android. Setelah itu tes end-to-end, register -> login -> cek cookie di CookieRequest -> panggil endpoint products/user/ untuk memastikan server mengembalikan hanya milik user itu, lalu render di UI. Jika ada error CORS/session, lakukan debug network dan perbaiki header atau pengaturan cookie. Untuk maintainability buat fungsi service (API client) terpusat dan semua parsing/validasi diletakkan di model/validator sehingga komponen UI tinggal panggil service dan render data.