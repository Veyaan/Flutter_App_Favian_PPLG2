import 'package:flutter_application_1/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController{

  List<MakananModel> dataMakanan = [
    MakananModel(namaMakanan: "Soto ayam", harga: "10.000", rating: "⭐⭐⭐⭐⭐", review: "Sotonya enak kuahnya mantap", deskripsi: "Soto ayam dengan kuah kaldu kuning yang gurih dan kaya rempah, disajikan lengkap dengan suwiran ayam, bihun, tauge, irisan telur, serta taburan bawang goreng."),
    MakananModel(namaMakanan: "Ca kangkung", harga: "8.000", rating: "⭐⭐⭐⭐⭐", review: "Ca kangkungnya fresh enak pedasnya pas", deskripsi: "Tumis kangkung segar pilihan yang dimasak dengan bumbu bawang putih, cabai, dan saus tiram, menghasilkan tekstur sayur yang tetap renyah dan gurih."),
    MakananModel(namaMakanan: "Ayam geprek", harga: "12.000", rating: "⭐⭐⭐⭐", review: "Sambelnya enak bikin nagih", deskripsi: "Ayam goreng tepung crispy yang digeprek bersama sambal bawang ulek segar yang pedasnya nampol dan bikin ketagihan, cocok disantap dengan nasi hangat."),
    MakananModel(namaMakanan: "Sate kambing", harga: "15.000", rating: "⭐⭐⭐⭐", review: "Satenya tidak bau amis atau prengus enak sekali", deskripsi: "Potongan daging kambing empuk pilihan yang dibakar menggunakan arang, disajikan dengan bumbu kecap manis, irisan bawang merah segar, dan potongan cabai rawit."),
    MakananModel(namaMakanan: "Gulai kambing", harga: "14.000", rating: "⭐⭐⭐⭐⭐", review: "Gulainya enak sekali kuahnya enak", deskripsi: "Olahan daging kambing berkuah santan kental dengan bumbu rempah nusantara yang kuat (seperti kapulaga, cengkeh, dan serai), menghasilkan rasa yang gurih dan harum."),
    MakananModel(namaMakanan: "Nasi Goreng", harga: "10.000", rating: "⭐⭐⭐⭐⭐", review: "Nasi gorengnya enak sekali", deskripsi: "Nasi goreng yang disajikan dengan telur dadar, ayam suwir, dan bumbu rempah yang lezat."),
  ].obs;
}