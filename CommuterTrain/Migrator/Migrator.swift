//
//  Migrator.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 16/10/23.
//

import SwiftUI
import CoreData

struct Migrator {
    
    let container: NSPersistentContainer
    
    private let latestMigrationVersion = 1
    
    func migrate() throws {
        let migrations = try container.viewContext.fetch(Migration.fetchRequest())
        if migrations.last?.version ?? 0 < latestMigrationVersion {
            try doMigration()
        }
    }
    
    func doMigration() throws {
        // Stations
        let stationsName = [
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
        ]
        stationsName.forEach { stationName in
            let station = Station(context: container.viewContext)
            station.name = stationName
        }
        saveToPersistent()
        // Lines
        let lines: [LineEntity] = [
            LineEntity(
                name: "Tangerang Line",
                imageName: "lines_tangerang",
                stationsName: [
                    "Duri",
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
                ]
            ),
            LineEntity(
                name: "Cikarang Loop Line",
                imageName: "lines_cikarang",
                stationsName: [
                    "Kampung Bandan",
                    "Angke",
                    "Duri",
                    "Tanah Abang",
                    "Karet",
                    "BNI City",
                    "Sudirman",
                    "Manggarai",
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
                ]
            ),
            LineEntity(
                name: "Bogor Line",
                imageName: "lines_bogor",
                stationsName: [
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
                ]
            ),
            LineEntity(
                name: "Rangkasbitung Line",
                imageName: "lines_rangkasbitung",
                stationsName: [
                    "Tanah Abang",
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
                ]
            ),
            LineEntity(
                name: "Tanjung Priok Line",
                imageName: "lines_tanjungpriok",
                stationsName: [
                    "Jakarta Kota",
                    "Kampung Bandan",
                    "Ancol",
                    "Tanjung Priuk",
                ]
            )
        ]
        let stations = try container.viewContext.fetch(Station.fetchRequest())
        lines.forEach { tlme in
            let line = Line(context: container.viewContext)
            line.imageName = tlme.imageName
            line.name = tlme.name
            stations.forEach { station in
                if tlme.stationsName.contains(where: { stName in
                    stName == station.name
                }) {
                    station.addToLines(line)
                }
            }
        }
        saveToPersistent()
        // Migration
        let migration = Migration(context: container.viewContext)
        migration.version = Int64(latestMigrationVersion)
        migration.timestamp = Date()
        saveToPersistent()
    }
    
    private func saveToPersistent() {
        do {
            try container.viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
    
}
