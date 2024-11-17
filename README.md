# Async Programming
## Brilyan Satria Wahyuda
## TI-3H/2241720019
### Soal 3
<p>Soal 3: <br> </p>
- substring: digunakan untuk ekstraksi sebagian isi string, memiliki 2 parameter yaitu start dan end. Sehingga hanya akan mengambil string dari 0 sampai 450, dengan kata lain 450 character pertama dalam string
<br><br>
- catchError digunakan untuk menghandle error di operasi asnyc, pada konteks ini catchError akan menangkap error apa yang terjadi saat kiya mengambil string tadi, jika ada error maka akan ditampilkan result yang telah kita tentukan
<br><br>
Berikut adalah hasil run soal 3 dengan menggunakan Google books API<br>

![Hasil Run Soal 3](soal3.gif)

### Soal 4
<p>Maksud dari langkah 1 adalah membuat sebuah function yang bersifat asnyc dimana function akan di delay selama 3 detik sebelum berjalan. Saat berjalan function akan mereturn bilangan yang telah ditentukan</p>
<p>Maksud dari langkah 2 adalah menangkap value return dari tiga function async yang telah dibuat, setelah ditangkap dan dijumlahkan dalam variable total, akan diteruskan ke variabvle result yang nantinya akan ditampilkan ke layar.</p>
<p>Berikut adalah hasil run soal 4 dengan memanfaatkan async function:</p>

![Hasil Run Soal 4](soal4.gif)

### Soal 5
<p>Maksud dari langkah 2 adalah: <br>
- Pembuatan Completer dengan variable late yang berarti variable ini bisa diisi nanti 
  <br> - Pembuatan function get number, dimana function ini akan menjalankan sebuah asnyc operation calculate()
  <br> - PAda function calculate() akan terjadi delay selama 5 detik, setelah itu akan return sebuah value bernilai 42
  <br> Berikut adalah hasil run soal 5 yang menggunakan completer
  
  ![Hasil Run Soal 5](soal5.gif)
</p>

### Soal 6
<p>Perbedaan paling besar ada di fungsi calculate, sekarang terdapat catch dan akan dieksekusi completer.completeError yang menyelesaikan future dengan error. <br> Dalam Elevated Button juga terdapat try catch yang akan menampilkan pesan error saat terjadi. <br>Untuk hasil run, saya mendapat hasil yang sama seperti praktikum sebelumnya yaitu menampilkan angka 42: 

 ![Hasil Run Soal 6](soal6.gif)
</p>

### Soal 7
<p>Akan dijalankan Future Group dengan delay 3 detik, tidak seperti future biasa yang saling tunggu, Future Group akan menjalankan secara bersamaan sehingga hasilnya lebih cepat.</p>

 ![Hasil Run Soal 7](soal7.gif)