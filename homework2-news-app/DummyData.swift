//
//  DummyData.swift
//  homework2-news-app
//
//  Created by Samet Koyuncu on 12.09.2022.
//

struct DummyData {
    static let categories = [
        Category(id: 0, name: "Hepsi"),
        Category(id: 1, name: "Dünya"),
        Category(id: 2, name: "Finans"),
        Category(id: 3, name: "Bilim & Teknoloji"),
        Category(id: 4, name: "Spor")
    ]
    
    static let news =  [
        News(id: 0,
             title: "Ukrayna'da Türk iş insanlarına yaptırım için kampanya başlatıldı",
             body: "Ukrayna Dışişleri Bakanlığı’na bağlı bir internet sitesi bazı Türk iş insanlarına, devlete ait Ziraat Bankası’na, İş Bankası yöneticilerine ve Rusya’da faaliyet gösteren Credit Europe Bank’ın sahibi iş insanı Hüsnü Özyeğin’e yaptırım istedi. Aydınlık gazetesinin haberine göre, Ukrayna Dışişleri Bakanlığı’na bağlı bir sitede (sanctions.nazk.gov.ua) bazı Türk iş insanları ve bankalara yaptırım uygulanması yönünde kampanya yürütüldüğü ortaya çıktı.",
             imageName: "ukrayna",
             date: "12 Eylül 2022",
             url: "https://www.bundle.app/gundem/ukraynada-turk-is-insanlarina-yaptirim-icin-kampanya-baslatildi-f9e7fe31-5fd4-465b-b3a9-c47cb6a4f334",
             categoryId: 1
            ),
        // bilim & teknoloji
        News(id: 1,
             title: "Bilinen En Eski Memeli, 225 Yıl Önce Yaşamış",
             body: "Brasilodon’un fosil kayıtları, 225 milyon yıl öncesine, daha önce bilinen ilk memeli olan Morganucodon’dan yaklaşık 20 milyon yıl öncesine dayanıyor. Yeni araştırma, bilinen en eski memeli olan Brasilodon quadrangularis’in fosil diş kayıtlarını belirledi. Bu, yaklaşık 20 cm uzunluğunda ve iki takım dişi olan küçük kır faresi benzeri bir hayvandı.",
             imageName: "eskiMemeli",
             date: "29 Ağustos 2022",
             url: "https://www.bundle.app/bilim/bilinen-en-eski-memeli-225-yil-once-yasamis-c6ba25b1-70d4-4d4c-8f60-f774239faee8",
             categoryId: 3),
        News(id: 2,
             title: "OnePlus 11 Pro için gövde tasarımı erkenden sızdırıldı Bu sitede ve bağlantılı sayfalarında yer alan içerikler; tamamen veya kısmen LOG’un yazılı izni olmadıkça kaynak gösterilerek veya alıntı yapılarak dahi kullanılamaz, çoğaltılamaz ve değiştirilemez. Detaylı bilgi için http://www.log.com.tr/yasal-uyari-ve-kullanim-sartlari",
             body: "Türkiye’de yer alan ancak yeni nesil birçok modeli buraya getirmeyen OnePlus, bir sonraki amiral gemisinin tasarımını koruyamadı. OnLeaks tarafından OnePlus 11 Pro modelinin CAD dosyalarından bilgisayar ortamında hazırlanan tasarımı karşımıza çıkarıldı. Kavisli kenarlara sahip standart bir ön yüzü olan telefon, ön kamerayı bir ekran deliğinde taşıyor. Gücünü Snapdragon 8 Gen 2 işlemciden alacak modelin en çok dikkat çeken yanı ise arkada kendisini gösteriyor. Arkada oldukça büyük bir yuvarlak kamera modülü bizleri karşılıyor. Bu kamera modülü şık duruyor ancak gerçekten devasa görünüyor. Bu sitede ve bağlantılı sayfalarında yer alan içerikler; tamamen veya kısmen LOG’un yazılı izni olmadıkça kaynak gösterilerek veya alıntı yapılarak dahi kullanılamaz, çoğaltılamaz ve değiştirilemez. Detaylı bilgi için http://www.log.com.tr/yasal-uyari-ve-kullanim-sartlari",
             imageName: "onePlus",
             date: "27 Ağustos 2022",
             url: "https://www.log.com.tr/oneplus-11-pro-icin-govde-tasarimi-erkenden-sizdirildi/?utm_campaign=Bundle&utm_medium=referral&utm_source=Bundle",
             categoryId: 3),
        News(id: 3,
             title: "Xiaomi’nin elektrikli otomobili için tarih verildi!",
             body: "Akıllı telefon üreticilerinin elektrikli otomobil piyasasına giriş yapmaya hazırlandıklarına dair haberler son dönemde oldukça artmaya başladı. Google, Samsung, Apple gibi devler bu alanda çalışmalar yapmak için büyük yatırımlar ayırdı. Bunlardan birisi olan Xiaomi geçtiğimiz yılın Mart ayında bu alana adım atacaklarını duyurmuştu.",
             imageName: "xaomi",
             date: "26 Ağustos 2022",
             url: "https://shiftdelete.net/xiaomi-elektrikli-otomobil-icin-tarih-verildi",
             categoryId: 3),
        // dünya
        News(id: 4,
             title: "Norveç, AB’nin doğal gaz tavan fiyat önerisine ‘kuşkulu' yaklaşıyor",
             body: "Rusya’nın yerine Avrupa’ya en fazla doğal gaz tedarik eden ülke konumuna geçen Norveç’in Başbakanı Jonas Gahr Store, AB’nin doğal gaz fiyatlarına tavan fiyat getirme önerisine ülkesi adına “temkinli” yaklaştıklarını bildirdi.",
             imageName: "norvec",
             date: "12 Eylül 2022",
             url: "https://www.bundle.app/gundem/norvec-abnin-dogal-gaz-tavan-fiyat-onerisine-kuskulu-yaklasiyor-96f85abe-1a9f-49ed-8d91-97cc285156d6",
             categoryId: 1),
        // finans
        News(id: 5,
             title: "Uber, sürücüleri devreden çıkarıyor",
             body: "Pandemiden sonra, telefon üzerinden verilen yemek ve market siparişlerinin 30 dakika içinde kapıya gelmesi artık bir standart haline geldi. Hayat normale dönerken Uber Eats, sabır eşiği düşük olan müşterileri için bekleme sürelerini kısaltmak istiyor. Daha önce Walmart, Domino’s , FedEx gibi markalarla ortaklık yapan Nuro’nun beyaz otonom minibüsleri, Uber Eats’in teslimat adresindeki evin hemen önüne park edecek ve müşterinin siparişini alması için kapılarını açık bırakacak. Ancak, müşteriler için kuryeden teslim alma opsiyonu da bulunacak.",
             imageName: "uber",
             date: "10 Eylül 2022",
             url: "https://www.marketingturkiye.com.tr/haberler/uber-surucusuz-teslimat/",
             categoryId: 2),
        News(id: 6,
             title: "Putin: İstihdamla ilgili ciddi zorluklar yaşanıyor",
             body: "Rusya Devlet Başkanı Vladimir Putin, Rus hükümetinin istihdam sorunlarına ilişkin çözüm bulması gerektiğini belirterek, “Zorunlu izin ya da yarı zamanlı çalışan yaklaşık 234 bin kişi var. Bu rakam yıl başındaki seviyenin neredeyse iki katı. Ulusal ölçekte bunların küçük rakamlar olduğu açık, ancak belirli sektörler, şirketler ve topluluklar için ciddi zorluklar var.” dedi. Putin, hükümet yetkilileriyle video konferans yöntemiyle gerçekleştirdiği toplantıda, ülke ekonomisine ilişkin değerlendirmelerde bulundu.",
             imageName: "putin",
             date: "7 Eylül 2022",
             url: "https://www.bloomberght.com/putin-istihdamla-ilgili-ciddi-zorluklar-yasaniyor-2314551",
             categoryId: 2),
        News(id: 7,
             title: "Çin Halk Bankası, Dijital Yuan Kullanımını Artırmak İçin Çağrıda Bulundu",
             body: "Çin Halk Bankası (PBOC) , dijital para biriminin tüketiciler tarafından kullanımını daha rahat hale getirmek için dijital yuan (e-CNY) sistemi ile geleneksel e-ödeme teknolojileri arasında bağlantının sağlanması gerektiğini ve bu konuda çaba gösterilmesi gerektiğini belirtti. Pekin’de dijital bankacılık üzerine yakın zamanda düzenlenen bir etkinlikte konuşan Çin Halk Bankası başkan yardımcısı Fan Yifei , dijital yuan kullanımına yönelik senaryoları açıkladı. Ayrıca Yifei, dijital yuan kullanımını genişletmek için daha fazla çaba gösterilmesi gerektiğini ifade etti.",
             imageName: "cin",
             date: "5 Eylül 2022",
             url: "https://www.bundle.app/finans/cin-halk-bankasi-dijital-yuan-kullanimini-artirmak-i̇cin-cagrida-bulundu-e46d6172-c225-421f-8cda-e17ceb4ac0ed",
             categoryId: 2),
        // spor
        News(id: 8,
             title: "Carsen Edwards: 'Şu ana kadar en büyük antrenörüm babam oldu'",
             body: "Fenerbahçe Beko’nun yeni skoreri Carsen Edwards yeni sezona, takıma geliş sürecine ve gerçekleştirmeyi umduğu konular hakkında konuştu. Abisinin ve kendisine basketbol oynamayı öğreten babasının rol modeli olduğundan bahsetti. Fenerbahçe kariyerine sadece ilk çeyrekte 4/4 üçlük isabetiyle başlangıç yapan Edwards, oynadığı ilk maçta attığı 30 sayıyla izleyenlerin beğenisini toplamıştı.",
             imageName: "carsen",
             date: "11 Eylül 2022",
             url: "https://trendbasket.net/carsen-edwards-su-ana-kadar-en-buyuk-antrenorum-babam-oldu/?utm_campaign=Bundle&utm_medium=referral&utm_source=Bundle",
             categoryId: 4),
        News(id: 9,
             title: "Fenerbahçe'de Rennes maçı hazırlıkları sürüyor",
             body: "UEFA Avrupa Ligi B Grubu'nun ikinci haftasında 15 Eylül Perşembe günü Fransa temsilcisi Rennes 'e konuk olacak Fenerbahçe , hazırlıklarını sürdürdü. Sarı-lacivertli kulüpten yapılan açıklamaya göre, Fenerbahçe Can Bartu Tesisleri 'nde teknik direktör Jorge Jesus yönetiminde gerçekleştirilen antrenman, koşu, ısınma ve koordinasyon çalışmasıyla başladı. Pas organizasyonlarıyla devam eden idman, taktiksel ve bireysel çalışmalarla tamamlandı. Fenerbahçe, yarın yapacağı antrenmanla Rennes maçının hazırlıklarına devam edecek.",
             imageName: "fener",
             date: "10 Eylül 2022",
             url: "https://www.bundle.app/spor/fenerbahcede-rennes-maci-hazirliklari-suruyor-2c0d94af-e1aa-4846-a1d4-4a0baef8f0a6",
             categoryId: 4),
        News(id: 10,
             title: "Çağlar Söyüncü'nün yeni takımı belli oluyor!",
             body: "Adı Atletico Madrid ile anılan tacrübeli savunmacı Çağlar Söyüncü, kariyerinin en önemli imzasını atmaya hazırlanıyor. Milli yıldız Çağlar Söyüncü, İngiltere'de kötü günler geçirmeye devam ediyor. İngiliz devi Leicester City'nin 21 milyon Euro bonservi bedeliyle kadrosuna kattığı tecrübeli isim, takımdan ayrılmak istiyor. Menajer Brendan Rodgers, yıldız futbolcunun oynatılmamasının nedenini, 'Bizim seviyemize yakın bile değil' sözleriyle açıklamıştı. Ancak asıl sebebin, Çağlar'ın sezon sonunda bitecek sözleşmesini uzatmaya yanaşmaması olduğu öne sürüldü.",
             imageName: "caglar",
             date: "9 Eylül 2022",
             url: "https://www.fanatik.com.tr/caglar-soyuncunun-yeni-takimi-belli-oluyor-2300872?utm_campaign=bundle&utm_medium=referral&utm_source=bundle",
             categoryId: 4),
        News(id: 11,
             title: "'Bu şehrin DNA’sında voleybol var'",
             body: "İtalya’nın Napoli şehrinde düzenlenecek olan DHL Hazırlık Turnuvası öncesi Davide Mazzanti, İtalyan medyasına konuştu. İtalyan antrenör Mazzanti, “Bu yaz kademeli olarak en iyi fiziksel ve oyun durumuna ulaşabilecek şekilde hazırlık programı planladık. Dünya Kupası’ndan önce Napoli’deki bu son turnuva, form durumumuzu test etmek için mükemmel olacak. Potansiyelimizin farkındayız ama bu kamp bize şu an nerede olduğumuzu söyleyecek en doğru alan. Uluslararası seviyedeki takımlarla en üst düzey maçları oynamaya geri dönmek, kesinlikle dünya şampiyonluğuna daha iyi hazırlanmanın bir yolu olacaktır. Napoli’de oynamak ve Napolili taraftarların sıcak dolu kucaklamasını hissetmek güzel olacak. Napoli’nin milli takım için iyi bir yer olduğuna inanıyorum. Bu şehrin DNA’sında voleybol var.” dedi.",
             imageName: "voleybol",
             date: "7 Eylül 2022",
             url: "https://www.bundle.app/spor/“bu-sehrin-dnasinda-voleybol-var”-397f91f1-d0c9-4a77-ac7c-f466eec31fbb",
             categoryId: 4)
    ]
}
