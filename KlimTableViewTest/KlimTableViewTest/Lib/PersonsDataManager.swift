//
//  PersonsDataManager.swift
//  KlimTableViewTest
//
//  
//



final class PersonsDataManager {

    // MARK: Properties

    private var ahteletesDataSource = [AthletePersonModel]()

    // MARK: Singleton IMP

    static let shared = PersonsDataManager()

    private init() {}

}

extension PersonsDataManager {

    func makeDataSource() -> [AthletePersonModel] {

        let dataSource = [
            AthletePersonModel(
                firstName: "Conor",
                lastName: "McGregor",
                sportsArea: "MMA",
                age: 33,
                bio: "Conor Anthony McGregor is an Irish professional mixed martial artist."
            ),
            AthletePersonModel(
                firstName: "Vyacheslav",
                lastName: "Datsik",
                sportsArea: "POP-MMA",
                age: 45,
                bio: "Viacheslav Valerievich Datsik, also known as Red Tarzan and Red-Haired Tarzan, is a Russian white supremacist, convicted felon, and former professional kickboxer and mixed martial artist."
            ),
            AthletePersonModel(
                firstName: "Timur",
                lastName: "Nikulin",
                sportsArea: "POP-MMA",
                age: 21,
                bio: "Тимур родился и вырос в городе Бухара, расположенном в Узбекистане. Отец Тимура — русский, а мать — татарка."
            ),
            AthletePersonModel(
                firstName: "Fedor",
                lastName: "Emelianenko",
                sportsArea: "MMA",
                age: 45,
                bio: "Fedor Vladimirovich Emelianenko is a Russian heavyweight mixed martial artist, sambist, and judoka, currently competing for Rizin Fighting Federation and Bellator MMA."
            )
        ]

        self.ahteletesDataSource = dataSource
        return dataSource
    }
}
