class Welcome {
  // Definir constantes para las claves del JSON
  static const String dbCode = "code";
  static const String dbStatus = "status";
  static const String dbCopyright = "copyright";
  static const String dbAttributionText = "attributionText";
  static const String dbAttributionHtml = "attributionHTML";
  static const String dbEtag = "etag";
  static const String dbData = "data";

  final int code;
  final String status;
  final String copyright;
  final String attributionText;
  final String attributionHtml;
  final String etag;
  final Data data;

  Welcome({
    required this.code,
    required this.status,
    required this.copyright,
    required this.attributionText,
    required this.attributionHtml,
    required this.etag,
    required this.data,
  });

  // Método para convertir una lista de JSON en una lista de objetos Welcome
  static List<Welcome> toList({required List<dynamic> json}) =>
      json.map((it) => Welcome.fromJson(json: it)).toList();

  // Método factory para crear un objeto Welcome a partir de un JSON
  factory Welcome.fromJson({required Map<String, dynamic> json}) => Welcome(
        code: json[dbCode] ?? 0,
        status: json[dbStatus] ?? "",
        copyright: json[dbCopyright] ?? "",
        attributionText: json[dbAttributionText] ?? "",
        attributionHtml: json[dbAttributionHtml] ?? "",
        etag: json[dbEtag] ?? "",
        data: Data.fromJson(json[dbData]),
      );

  // Método para convertir un objeto Welcome en un JSON
  Map<String, dynamic> toJson() => {
        dbCode: code,
        dbStatus: status,
        dbCopyright: copyright,
        dbAttributionText: attributionText,
        dbAttributionHtml: attributionHtml,
        dbEtag: etag,
        dbData: data,
      };
}


class Data {
  // Definir constantes para las claves del JSON
  static const String dbOffset = "offset";
  static const String dbLimit = "limit";
  static const String dbTotal = "total";
  static const String dbCount = "count";
  static const String dbResults = "results";

  final int offset;
  final int limit;
  final int total;
  final int count;
  final List<Result> results;

  Data({
    required this.offset,
    required this.limit,
    required this.total,
    required this.count,
    required this.results,
  });

  // Método para convertir una lista de JSON en una lista de objetos Data
  static List<Data> toList({required List<dynamic> json}) =>
      json.map((it) => Data.fromJson(it)).toList();

  // Método factory para crear un objeto Data a partir de un JSON
  factory Data.fromJson(Map<String, dynamic> json) => Data(
        offset: json[dbOffset] ?? 0,
        limit: json[dbLimit] ?? 0,
        total: json[dbTotal] ?? 0,
        count: json[dbCount] ?? 0,
        results: (json[dbResults] == null)
            ? []
            : Result.toList(json: json[dbResults]),
      );

  // Método para convertir un objeto Data en un JSON
  Map<String, dynamic> toJson() => {
        dbOffset: offset,
        dbLimit: limit,
        dbTotal: total,
        dbCount: count,
        dbResults: results,
      };
}


class Result {
  // Definir constantes para las claves del JSON
  static const String dbId = "id";
  static const String dbDigitalId = "digitalId";
  static const String dbTitle = "title";
  static const String dbIssueNumber = "issueNumber";
  static const String dbVariantDescription = "variantDescription";
  static const String dbDescription = "description";
  static const String dbModified = "modified";
  static const String dbIsbn = "isbn";
  static const String dbUpc = "upc";
  static const String dbDiamondCode = "diamondCode";
  static const String dbEan = "ean";
  static const String dbIssn = "issn";
  static const String dbFormat = "format";
  static const String dbPageCount = "pageCount";
  static const String dbTextObjects = "textObjects";
  static const String dbResourceUri = "resourceURI";
  static const String dbUrls = "urls";
  static const String dbSeries = "series";
  static const String dbVariants = "variants";
  static const String dbCollections = "collections";
  static const String dbCollectedIssues = "collectedIssues";
  static const String dbDates = "dates";
  static const String dbPrices = "prices";
  static const String dbThumbnail = "thumbnail";
  static const String dbImages = "images";
  static const String dbCreators = "creators";
  static const String dbCharacters = "characters";
  static const String dbStories = "stories";
  static const String dbEvents = "events";

  final int id;
  final int digitalId;
  final String title;
  final int issueNumber;
  final String variantDescription;
  final String description;
  final String modified;
  final String isbn;
  final String upc;
  final String diamondCode;
  final String ean;
  final String issn;
  final String format;
  final int pageCount;
  final List<TextObject> textObjects;
  final String resourceUri;
  final List<Url> urls;
  final Series series;
  final List<Series> variants;
  final List<Series> collections;
  final List<Series> collectedIssues;
  final List<Date> dates;
  final List<Price> prices;
  final Thumbnail thumbnail;
  final List<Thumbnail> images;
  final Creators creators;
  final Characters characters;
  final Stories stories;
  final Characters events;

  Result({
    required this.id,
    required this.digitalId,
    required this.title,
    required this.issueNumber,
    required this.variantDescription,
    required this.description,
    required this.modified,
    required this.isbn,
    required this.upc,
    required this.diamondCode,
    required this.ean,
    required this.issn,
    required this.format,
    required this.pageCount,
    required this.textObjects,
    required this.resourceUri,
    required this.urls,
    required this.series,
    required this.variants,
    required this.collections,
    required this.collectedIssues,
    required this.dates,
    required this.prices,
    required this.thumbnail,
    required this.images,
    required this.creators,
    required this.characters,
    required this.stories,
    required this.events,
  });

  // Método para convertir una lista de JSON en una lista de objetos Result
  static List<Result> toList({required List<dynamic> json}) =>
      json.map((it) => Result.fromJson(it)).toList();

  // Método factory para crear un objeto Result a partir de un JSON
  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json[dbId],
        digitalId: json[dbDigitalId],
        title: json[dbTitle],
        issueNumber: json[dbIssueNumber],
        variantDescription: json[dbVariantDescription],
        description: json[dbDescription],
        modified: json[dbModified],
        isbn: json[dbIsbn],
        upc: json[dbUpc],
        diamondCode: json[dbDiamondCode],
        ean: json[dbEan],
        issn: json[dbIssn],
        format: json[dbFormat],
        pageCount: json[dbPageCount],
        textObjects: (json[dbTextObjects] == null)
            ? []
            : TextObject.toList(json: json[dbTextObjects]),
        resourceUri: json[dbResourceUri],
        urls: (json[dbUrls] == null) ? [] : Url.toList(json: json[dbUrls]),
        series: Series.fromJson(json[dbSeries]),
        variants: (json[dbVariants] == null)
            ? []
            : Series.toList(json: json[dbVariants]),
        collections: (json[dbCollections] == null)
            ? []
            : Series.toList(json: json[dbCollections]),
        collectedIssues: (json[dbCollectedIssues] == null)
            ? []
            : Series.toList(json: json[dbCollectedIssues]),
        dates: (json[dbDates] == null) ? [] : Date.toList(json: json[dbDates]),
        prices:
            (json[dbPrices] == null) ? [] : Price.toList(json: json[dbPrices]),
        thumbnail: Thumbnail.fromJson(json[dbThumbnail]),
        images: (json[dbImages] == null)
            ? []
            : Thumbnail.toList(json: json[dbImages]),
        creators: Creators.fromJson(json[dbCreators]),
        characters: Characters.fromJson(json[dbCharacters]),
        stories: Stories.fromJson(json[dbStories]),
        events: Characters.fromJson(json[dbEvents]),
      );

  // Método para convertir un objeto Result en un JSON
  Map<String, dynamic> toJson() => {
        dbId: id,
        dbDigitalId: digitalId,
        dbTitle: title,
        dbIssueNumber: issueNumber,
        dbVariantDescription: variantDescription,
        dbDescription: description,
        dbModified: modified,
        dbIsbn: isbn,
        dbUpc: upc,
        dbDiamondCode: diamondCode,
        dbEan: ean,
        dbIssn: issn,
        dbFormat: format,
        dbPageCount: pageCount,
        dbTextObjects: textObjects,
        dbResourceUri: resourceUri,
        dbUrls: urls,
        dbSeries: series,
        dbVariants: variants,
        dbCollections: collections,
        dbCollectedIssues: collectedIssues,
        dbDates: dates,
        dbPrices: prices,
        dbThumbnail: thumbnail,
        dbImages: images,
        dbCreators: creators,
        dbCharacters: characters,
        dbStories: stories,
        dbEvents: events,
      };
}

class Characters {
  // Definir constantes para las claves del JSON
  static const String dbAvailable = "available";
  static const String dbCollectionUri = "collectionURI";
  static const String dbItems = "items";
  static const String dbReturned = "returned";

  final int available;
  final String collectionUri;
  final List<Series> items;
  final int returned;

  Characters({
    required this.available,
    required this.collectionUri,
    required this.items,
    required this.returned,
  });

  // Método para convertir una lista de JSON en una lista de objetos Characters
  static List<Characters> toList({required List<dynamic> json}) =>
      json.map((it) => Characters.fromJson(it)).toList();

  // Método factory para crear un objeto Characters a partir de un JSON
  factory Characters.fromJson(Map<String, dynamic> json) => Characters(
        available: json[dbAvailable] ?? 0,
        collectionUri: json[dbCollectionUri] ?? "",
        items:
            (json[dbItems] == null) ? [] : Series.toList(json: json[dbItems]),
        returned: json[dbReturned] ?? 0,
      );

  // Método para convertir un objeto Characters en un JSON
  Map<String, dynamic> toJson() => {
        dbAvailable: available,
        dbCollectionUri: collectionUri,
        dbItems: items,
        dbReturned: returned,
      };
}

class Series {
  // Definir constantes para las claves del JSON
  static const String dbResourceUri = "resourceURI";
  static const String dbName = "name";

  final String resourceUri;
  final String name;

  Series({
    required this.resourceUri,
    required this.name,
  });

  // Método para convertir una lista de JSON en una lista de objetos Series
  static List<Series> toList({required List<dynamic> json}) =>
      json.map((it) => Series.fromJson(it)).toList();

  // Método factory para crear un objeto Series a partir de un JSON
  factory Series.fromJson(Map<String, dynamic> json) => Series(
        resourceUri: json[dbResourceUri] ?? "",
        name: json[dbName] ?? "",
      );

  // Método para convertir un objeto Series en un JSON
  Map<String, dynamic> toJson() => {
        dbResourceUri: resourceUri,
        dbName: name,
      };
}

class Creators {
  // Definir constantes para las claves del JSON
  static const String dbAvailable = "available";
  static const String dbCollectionUri = "collectionURI";
  static const String dbItems = "items";
  static const String dbReturned = "returned";

  final int available;
  final String collectionUri;
  final List<CreatorsItem> items;
  final int returned;

  Creators({
    required this.available,
    required this.collectionUri,
    required this.items,
    required this.returned,
  });

  // Método para convertir una lista de JSON en una lista de objetos Creators
  static List<Creators> toList({required List<dynamic> json}) =>
      json.map((it) => Creators.fromJson(it)).toList();

  // Método factory para crear un objeto Creators a partir de un JSON
  factory Creators.fromJson(Map<String, dynamic> json) => Creators(
        available: json[dbAvailable] ?? 0,
        collectionUri: json[dbCollectionUri] ?? "",
        items: (json[dbItems] == null)
            ? []
            : CreatorsItem.toList(
                json: json[dbItems],
              ),
        returned: json[dbReturned] ?? 0,
      );

  // Método para convertir un objeto Creators en un JSON
  Map<String, dynamic> toJson() => {
        dbAvailable: available,
        dbCollectionUri: collectionUri,
        dbItems: items,
        dbReturned: returned,
      };
}

class CreatorsItem {
  // Definir constantes para las claves del JSON
  static const String dbResourceUri = "resourceURI";
  static const String dbName = "name";
  static const String dbRole = "role";

  final String resourceUri;
  final String name;
  final String role;

  CreatorsItem({
    required this.resourceUri,
    required this.name,
    required this.role,
  });

  // Método para convertir una lista de JSON en una lista de objetos CreatorsItem
  static List<CreatorsItem> toList({required List<dynamic> json}) =>
      json.map((it) => CreatorsItem.fromJson(it)).toList();

  // Método factory para crear un objeto CreatorsItem a partir de un JSON
  factory CreatorsItem.fromJson(Map<String, dynamic> json) => CreatorsItem(
        resourceUri: json[dbResourceUri] ?? "",
        name: json[dbName] ?? "",
        role: json[dbRole] ?? "",
      );

  // Método para convertir un objeto CreatorsItem en un JSON
  Map<String, dynamic> toJson() => {
        dbResourceUri: resourceUri,
        dbName: name,
        dbRole: role,
      };
}

class Date {
  // Definir constantes para las claves del JSON
  static const String dbType = "type";
  static const String dbDate = "date";

  final String type;
  final String date;

  Date({
    required this.type,
    required this.date,
  });

  // Método para convertir una lista de JSON en una lista de objetos Date
  static List<Date> toList({required List<dynamic> json}) =>
      json.map((it) => Date.fromJson(it)).toList();

  // Método factory para crear un objeto Date a partir de un JSON
  factory Date.fromJson(Map<String, dynamic> json) => Date(
        type: json[dbType] ?? "",
        date: json[dbDate] ?? "",
      );

  // Método para convertir un objeto Date en un JSON
  Map<String, dynamic> toJson() => {
        dbType: type,
        dbDate: date,
      };
}

class Thumbnail {
  // Definir constantes para las claves del JSON
  static const String dbPath = "path";
  static const String dbExtension = "extension";

  final String path;
  final String extension;

  Thumbnail({
    required this.path,
    required this.extension,
  });

  // Método para convertir una lista de JSON en una lista de objetos Thumbnail
  static List<Thumbnail> toList({required List<dynamic> json}) =>
      json.map((it) => Thumbnail.fromJson(it)).toList();

  // Método factory para crear un objeto Thumbnail a partir de un JSON
  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        path: json[dbPath] ?? "",
        extension: json[dbExtension] ?? "",
      );

  // Método para convertir un objeto Thumbnail en un JSON
  Map<String, dynamic> toJson() => {
        dbPath: path,
        dbExtension: extension,
      };
}

class Price {
  // Definir constantes para las claves del JSON
  static const String dbType = "type";
  static const String dbPrice = "price";

  final String type;
  final double price;

  Price({
    required this.type,
    required this.price,
  });

  // Método para convertir una lista de JSON en una lista de objetos Price
  static List<Price> toList({required List<dynamic> json}) =>
      json.map((it) => Price.fromJson(it)).toList();

  // Método factory para crear un objeto Price a partir de un JSON
  factory Price.fromJson(Map<String, dynamic> json) => Price(
        type: json[dbType] ?? "",
        price: json[dbPrice] ?? 0.0,
      );

  // Método para convertir un objeto Price en un JSON
  Map<String, dynamic> toJson() => {
        dbType: type,
        dbPrice: price,
      };
}

class Stories {
  // Definir constantes para las claves del JSON
  static const String dbAvailable = "available";
  static const String dbCollectionUri = "collectionURI";
  static const String dbItems = "items";
  static const String dbReturned = "returned";

  final int available;
  final String collectionUri;
  final List<StoriesItem> items;
  final int returned;

  Stories({
    required this.available,
    required this.collectionUri,
    required this.items,
    required this.returned,
  });

  // Método para convertir una lista de JSON en una lista de objetos Stories
  static List<Stories> toList({required List<dynamic> json}) =>
      json.map((it) => Stories.fromJson(it)).toList();

  // Método factory para crear un objeto Stories a partir de un JSON
  factory Stories.fromJson(Map<String, dynamic> json) => Stories(
        available: json[dbAvailable] ?? 0,
        collectionUri: json[dbCollectionUri] ?? "",
        items: (json[dbItems] == null)
            ? []
            : StoriesItem.toList(
                json: json[dbItems],
              ),
        returned: json[dbReturned] ?? 0,
      );

  // Método para convertir un objeto Stories en un JSON
  Map<String, dynamic> toJson() => {
        dbAvailable: available,
        dbCollectionUri: collectionUri,
        dbItems: items.map((x) => x.toJson()).toList(),
        dbReturned: returned,
      };
}

class StoriesItem {
  // Definir constantes para las claves del JSON
  static const String dbResourceUri = "resourceURI";
  static const String dbName = "name";
  static const String dbType = "type";

  final String resourceUri;
  final String name;
  final String type;

  StoriesItem({
    required this.resourceUri,
    required this.name,
    required this.type,
  });

  // Método para convertir una lista de JSON en una lista de objetos StoriesItem
  static List<StoriesItem> toList({required List<dynamic> json}) =>
      json.map((it) => StoriesItem.fromJson(it)).toList();

  // Método factory para crear un objeto StoriesItem a partir de un JSON
  factory StoriesItem.fromJson(Map<String, dynamic> json) => StoriesItem(
        resourceUri: json[dbResourceUri] ?? "",
        name: json[dbName] ?? "",
        type: json[dbType] ?? "",
      );

  // Método para convertir un objeto StoriesItem en un JSON
  Map<String, dynamic> toJson() => {
        dbResourceUri: resourceUri,
        dbName: name,
        dbType: type,
      };
}

class TextObject {
  // Definir constantes para las claves del JSON
  static const String dbType = "type";
  static const String dbLanguage = "language";
  static const String dbText = "text";

  final String type;
  final String language;
  final String text;

  TextObject({
    required this.type,
    required this.language,
    required this.text,
  });

  // Método para convertir una lista de JSON en una lista de objetos TextObject
  static List<TextObject> toList({required List<dynamic> json}) =>
      json.map((it) => TextObject.fromJson(it)).toList();

  // Método factory para crear un objeto TextObject a partir de un JSON
  factory TextObject.fromJson(Map<String, dynamic> json) => TextObject(
        type: json[dbType] ?? "",
        language: json[dbLanguage] ?? "",
        text: json[dbText] ?? "",
      );

  // Método para convertir un objeto TextObject en un JSON
  Map<String, dynamic> toJson() => {
        dbType: type,
        dbLanguage: language,
        dbText: text,
      };
}

class Url {
  static const String dbType = "type";
  static const String dbUrl = "url";

  final String type;
  final String url;

  Url({
    required this.type,
    required this.url,
  });

  // Método para convertir una lista de JSON en una lista de objetos Url
  static List<Url> toList({required List<dynamic> json}) =>
      json.map((it) => Url.fromJson(it)).toList();

  // Método factory para crear un objeto Url a partir de un JSON
  factory Url.fromJson(Map<String, dynamic> json) => Url(
        type: json[dbType] ?? "",
        url: json[dbUrl] ?? "",
      );

  // Método para convertir un objeto Url en un JSON
  Map<String, dynamic> toJson() => {
        dbType: type,
        dbUrl: url,
      };
}
