//
//  StationsViewModel.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 13/10/23.
//

import Foundation

class StationsViewModel: ObservableObject {
        
    @Published var stations: [String] = []
    
    init() {
        self.stations = [
            "Jakarta Kota",
            "Jayakarta",
            "Mangga Besar",
            "Sawah Besar",
            "Juanda",
            "Gondangdia",
            "Cikini",
            "Manggarai",
            "Tebet",
            "Cawang",
            "Duren Kalibata",
            "Pasar Minggu Baru",
            "Pasar Minggu",
            "Tanjung Barat",
            "Lenteng Agung",
            "Universitas Pancasila",
            "Universitas Indonesia",
            "Pondok Cina",
            "Depok Baru",
            "Depok",
            "Citayam",
            "Bojong Gede",
            "Cilebut",
            "Bogor",
            "Cibinong",
            "Nambo",
            "Kampung Bandan",
            "Angke",
            "Duri",
            "Tanah Abang",
            "Karet",
            "BNI City",
            "Sudirman",
            "Mampang",
            "Matraman",
            "Rajawali",
            "Kemayoran",
            "Pasar Senen",
            "Gang Sentiong",
            "Kramat",
            "Pondok Jati",
            "Jatinegara",
            "Klender",
            "Buaran",
            "Klender Baru",
            "Cakung",
            "Kranji",
            "Bekasi",
            "Bekasi Timur",
            "Tambun",
            "Cibitung",
            "Metland Telagamurni",
            "Cikarang",
            "Palmerah",
            "Kebayoran",
            "Pondok Ranji",
            "Jurangmangu",
            "Sudimara",
            "Rawa Buntu",
            "Serpong",
            "Cisauk",
            "Cicayur",
            "Parung Panjang",
            "Cilejit",
            "Daru",
            "Tenjo",
            "Tigaraksa",
            "Cikoya",
            "Maja",
            "Citeras",
            "Rangkasbitung",
            "Grogol",
            "Pesing",
            "Taman Kota",
            "Bojong Indah",
            "Rawa Buaya",
            "Kalideres",
            "Poris",
            "Batuceper",
            "Tanah Tinggi",
            "Tangerang",
            "Ancol",
            "Tanjung Priuk"
        ].sorted()
    }
    
}
