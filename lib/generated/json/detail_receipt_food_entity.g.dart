import 'package:sub_newbie_dicoding/generated/json/base/json_convert_content.dart';
import 'package:sub_newbie_dicoding/model/detail_receipt_food_entity.dart';

DetailReceiptFoodEntity $DetailReceiptFoodEntityFromJson(
    Map<String, dynamic> json) {
  final DetailReceiptFoodEntity detailReceiptFoodEntity = DetailReceiptFoodEntity();
  final bool? vegetarian = jsonConvert.convert<bool>(json['vegetarian']);
  if (vegetarian != null) {
    detailReceiptFoodEntity.vegetarian = vegetarian;
  }
  final bool? vegan = jsonConvert.convert<bool>(json['vegan']);
  if (vegan != null) {
    detailReceiptFoodEntity.vegan = vegan;
  }
  final bool? glutenFree = jsonConvert.convert<bool>(json['glutenFree']);
  if (glutenFree != null) {
    detailReceiptFoodEntity.glutenFree = glutenFree;
  }
  final bool? dairyFree = jsonConvert.convert<bool>(json['dairyFree']);
  if (dairyFree != null) {
    detailReceiptFoodEntity.dairyFree = dairyFree;
  }
  final bool? veryHealthy = jsonConvert.convert<bool>(json['veryHealthy']);
  if (veryHealthy != null) {
    detailReceiptFoodEntity.veryHealthy = veryHealthy;
  }
  final bool? cheap = jsonConvert.convert<bool>(json['cheap']);
  if (cheap != null) {
    detailReceiptFoodEntity.cheap = cheap;
  }
  final bool? veryPopular = jsonConvert.convert<bool>(json['veryPopular']);
  if (veryPopular != null) {
    detailReceiptFoodEntity.veryPopular = veryPopular;
  }
  final bool? sustainable = jsonConvert.convert<bool>(json['sustainable']);
  if (sustainable != null) {
    detailReceiptFoodEntity.sustainable = sustainable;
  }
  final bool? lowFodmap = jsonConvert.convert<bool>(json['lowFodmap']);
  if (lowFodmap != null) {
    detailReceiptFoodEntity.lowFodmap = lowFodmap;
  }
  final int? weightWatcherSmartPoints = jsonConvert.convert<int>(
      json['weightWatcherSmartPoints']);
  if (weightWatcherSmartPoints != null) {
    detailReceiptFoodEntity.weightWatcherSmartPoints = weightWatcherSmartPoints;
  }
  final String? gaps = jsonConvert.convert<String>(json['gaps']);
  if (gaps != null) {
    detailReceiptFoodEntity.gaps = gaps;
  }
  final int? preparationMinutes = jsonConvert.convert<int>(
      json['preparationMinutes']);
  if (preparationMinutes != null) {
    detailReceiptFoodEntity.preparationMinutes = preparationMinutes;
  }
  final int? cookingMinutes = jsonConvert.convert<int>(json['cookingMinutes']);
  if (cookingMinutes != null) {
    detailReceiptFoodEntity.cookingMinutes = cookingMinutes;
  }
  final int? aggregateLikes = jsonConvert.convert<int>(json['aggregateLikes']);
  if (aggregateLikes != null) {
    detailReceiptFoodEntity.aggregateLikes = aggregateLikes;
  }
  final int? healthScore = jsonConvert.convert<int>(json['healthScore']);
  if (healthScore != null) {
    detailReceiptFoodEntity.healthScore = healthScore;
  }
  final String? creditsText = jsonConvert.convert<String>(json['creditsText']);
  if (creditsText != null) {
    detailReceiptFoodEntity.creditsText = creditsText;
  }
  final String? license = jsonConvert.convert<String>(json['license']);
  if (license != null) {
    detailReceiptFoodEntity.license = license;
  }
  final String? sourceName = jsonConvert.convert<String>(json['sourceName']);
  if (sourceName != null) {
    detailReceiptFoodEntity.sourceName = sourceName;
  }
  final double? pricePerServing = jsonConvert.convert<double>(
      json['pricePerServing']);
  if (pricePerServing != null) {
    detailReceiptFoodEntity.pricePerServing = pricePerServing;
  }
  final List<
      DetailReceiptFoodExtendedIngredients>? extendedIngredients = (json['extendedIngredients'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DetailReceiptFoodExtendedIngredients>(
          e) as DetailReceiptFoodExtendedIngredients).toList();
  if (extendedIngredients != null) {
    detailReceiptFoodEntity.extendedIngredients = extendedIngredients;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    detailReceiptFoodEntity.id = id;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    detailReceiptFoodEntity.title = title;
  }
  final int? readyInMinutes = jsonConvert.convert<int>(json['readyInMinutes']);
  if (readyInMinutes != null) {
    detailReceiptFoodEntity.readyInMinutes = readyInMinutes;
  }
  final int? servings = jsonConvert.convert<int>(json['servings']);
  if (servings != null) {
    detailReceiptFoodEntity.servings = servings;
  }
  final String? sourceUrl = jsonConvert.convert<String>(json['sourceUrl']);
  if (sourceUrl != null) {
    detailReceiptFoodEntity.sourceUrl = sourceUrl;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    detailReceiptFoodEntity.image = image;
  }
  final String? imageType = jsonConvert.convert<String>(json['imageType']);
  if (imageType != null) {
    detailReceiptFoodEntity.imageType = imageType;
  }
  final String? summary = jsonConvert.convert<String>(json['summary']);
  if (summary != null) {
    detailReceiptFoodEntity.summary = summary;
  }
  final List<String>? cuisines = (json['cuisines'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (cuisines != null) {
    detailReceiptFoodEntity.cuisines = cuisines;
  }
  final List<String>? dishTypes = (json['dishTypes'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (dishTypes != null) {
    detailReceiptFoodEntity.dishTypes = dishTypes;
  }
  final List<String>? diets = (json['diets'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (diets != null) {
    detailReceiptFoodEntity.diets = diets;
  }
  final List<dynamic>? occasions = (json['occasions'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (occasions != null) {
    detailReceiptFoodEntity.occasions = occasions;
  }
  final DetailReceiptFoodWinePairing? winePairing = jsonConvert.convert<
      DetailReceiptFoodWinePairing>(json['winePairing']);
  if (winePairing != null) {
    detailReceiptFoodEntity.winePairing = winePairing;
  }
  final String? instructions = jsonConvert.convert<String>(
      json['instructions']);
  if (instructions != null) {
    detailReceiptFoodEntity.instructions = instructions;
  }
  final List<
      DetailReceiptFoodAnalyzedInstructions>? analyzedInstructions = (json['analyzedInstructions'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DetailReceiptFoodAnalyzedInstructions>(
          e) as DetailReceiptFoodAnalyzedInstructions).toList();
  if (analyzedInstructions != null) {
    detailReceiptFoodEntity.analyzedInstructions = analyzedInstructions;
  }
  final dynamic originalId = json['originalId'];
  if (originalId != null) {
    detailReceiptFoodEntity.originalId = originalId;
  }
  final String? spoonacularSourceUrl = jsonConvert.convert<String>(
      json['spoonacularSourceUrl']);
  if (spoonacularSourceUrl != null) {
    detailReceiptFoodEntity.spoonacularSourceUrl = spoonacularSourceUrl;
  }
  return detailReceiptFoodEntity;
}

Map<String, dynamic> $DetailReceiptFoodEntityToJson(
    DetailReceiptFoodEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['vegetarian'] = entity.vegetarian;
  data['vegan'] = entity.vegan;
  data['glutenFree'] = entity.glutenFree;
  data['dairyFree'] = entity.dairyFree;
  data['veryHealthy'] = entity.veryHealthy;
  data['cheap'] = entity.cheap;
  data['veryPopular'] = entity.veryPopular;
  data['sustainable'] = entity.sustainable;
  data['lowFodmap'] = entity.lowFodmap;
  data['weightWatcherSmartPoints'] = entity.weightWatcherSmartPoints;
  data['gaps'] = entity.gaps;
  data['preparationMinutes'] = entity.preparationMinutes;
  data['cookingMinutes'] = entity.cookingMinutes;
  data['aggregateLikes'] = entity.aggregateLikes;
  data['healthScore'] = entity.healthScore;
  data['creditsText'] = entity.creditsText;
  data['license'] = entity.license;
  data['sourceName'] = entity.sourceName;
  data['pricePerServing'] = entity.pricePerServing;
  data['extendedIngredients'] =
      entity.extendedIngredients?.map((v) => v.toJson()).toList();
  data['id'] = entity.id;
  data['title'] = entity.title;
  data['readyInMinutes'] = entity.readyInMinutes;
  data['servings'] = entity.servings;
  data['sourceUrl'] = entity.sourceUrl;
  data['image'] = entity.image;
  data['imageType'] = entity.imageType;
  data['summary'] = entity.summary;
  data['cuisines'] = entity.cuisines;
  data['dishTypes'] = entity.dishTypes;
  data['diets'] = entity.diets;
  data['occasions'] = entity.occasions;
  data['winePairing'] = entity.winePairing?.toJson();
  data['instructions'] = entity.instructions;
  data['analyzedInstructions'] =
      entity.analyzedInstructions?.map((v) => v.toJson()).toList();
  data['originalId'] = entity.originalId;
  data['spoonacularSourceUrl'] = entity.spoonacularSourceUrl;
  return data;
}

extension DetailReceiptFoodEntityExtension on DetailReceiptFoodEntity {
  DetailReceiptFoodEntity copyWith({
    bool? vegetarian,
    bool? vegan,
    bool? glutenFree,
    bool? dairyFree,
    bool? veryHealthy,
    bool? cheap,
    bool? veryPopular,
    bool? sustainable,
    bool? lowFodmap,
    int? weightWatcherSmartPoints,
    String? gaps,
    int? preparationMinutes,
    int? cookingMinutes,
    int? aggregateLikes,
    int? healthScore,
    String? creditsText,
    String? license,
    String? sourceName,
    double? pricePerServing,
    List<DetailReceiptFoodExtendedIngredients>? extendedIngredients,
    int? id,
    String? title,
    int? readyInMinutes,
    int? servings,
    String? sourceUrl,
    String? image,
    String? imageType,
    String? summary,
    List<String>? cuisines,
    List<String>? dishTypes,
    List<String>? diets,
    List<dynamic>? occasions,
    DetailReceiptFoodWinePairing? winePairing,
    String? instructions,
    List<DetailReceiptFoodAnalyzedInstructions>? analyzedInstructions,
    dynamic originalId,
    String? spoonacularSourceUrl,
  }) {
    return DetailReceiptFoodEntity()
      ..vegetarian = vegetarian ?? this.vegetarian
      ..vegan = vegan ?? this.vegan
      ..glutenFree = glutenFree ?? this.glutenFree
      ..dairyFree = dairyFree ?? this.dairyFree
      ..veryHealthy = veryHealthy ?? this.veryHealthy
      ..cheap = cheap ?? this.cheap
      ..veryPopular = veryPopular ?? this.veryPopular
      ..sustainable = sustainable ?? this.sustainable
      ..lowFodmap = lowFodmap ?? this.lowFodmap
      ..weightWatcherSmartPoints = weightWatcherSmartPoints ??
          this.weightWatcherSmartPoints
      ..gaps = gaps ?? this.gaps
      ..preparationMinutes = preparationMinutes ?? this.preparationMinutes
      ..cookingMinutes = cookingMinutes ?? this.cookingMinutes
      ..aggregateLikes = aggregateLikes ?? this.aggregateLikes
      ..healthScore = healthScore ?? this.healthScore
      ..creditsText = creditsText ?? this.creditsText
      ..license = license ?? this.license
      ..sourceName = sourceName ?? this.sourceName
      ..pricePerServing = pricePerServing ?? this.pricePerServing
      ..extendedIngredients = extendedIngredients ?? this.extendedIngredients
      ..id = id ?? this.id
      ..title = title ?? this.title
      ..readyInMinutes = readyInMinutes ?? this.readyInMinutes
      ..servings = servings ?? this.servings
      ..sourceUrl = sourceUrl ?? this.sourceUrl
      ..image = image ?? this.image
      ..imageType = imageType ?? this.imageType
      ..summary = summary ?? this.summary
      ..cuisines = cuisines ?? this.cuisines
      ..dishTypes = dishTypes ?? this.dishTypes
      ..diets = diets ?? this.diets
      ..occasions = occasions ?? this.occasions
      ..winePairing = winePairing ?? this.winePairing
      ..instructions = instructions ?? this.instructions
      ..analyzedInstructions = analyzedInstructions ?? this.analyzedInstructions
      ..originalId = originalId ?? this.originalId
      ..spoonacularSourceUrl = spoonacularSourceUrl ??
          this.spoonacularSourceUrl;
  }
}

DetailReceiptFoodExtendedIngredients $DetailReceiptFoodExtendedIngredientsFromJson(
    Map<String, dynamic> json) {
  final DetailReceiptFoodExtendedIngredients detailReceiptFoodExtendedIngredients = DetailReceiptFoodExtendedIngredients();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    detailReceiptFoodExtendedIngredients.id = id;
  }
  final String? aisle = jsonConvert.convert<String>(json['aisle']);
  if (aisle != null) {
    detailReceiptFoodExtendedIngredients.aisle = aisle;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    detailReceiptFoodExtendedIngredients.image = image;
  }
  final String? consistency = jsonConvert.convert<String>(json['consistency']);
  if (consistency != null) {
    detailReceiptFoodExtendedIngredients.consistency = consistency;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    detailReceiptFoodExtendedIngredients.name = name;
  }
  final String? nameClean = jsonConvert.convert<String>(json['nameClean']);
  if (nameClean != null) {
    detailReceiptFoodExtendedIngredients.nameClean = nameClean;
  }
  final String? original = jsonConvert.convert<String>(json['original']);
  if (original != null) {
    detailReceiptFoodExtendedIngredients.original = original;
  }
  final String? originalName = jsonConvert.convert<String>(
      json['originalName']);
  if (originalName != null) {
    detailReceiptFoodExtendedIngredients.originalName = originalName;
  }
  final double? amount = jsonConvert.convert<double>(json['amount']);
  if (amount != null) {
    detailReceiptFoodExtendedIngredients.amount = amount;
  }
  final String? unit = jsonConvert.convert<String>(json['unit']);
  if (unit != null) {
    detailReceiptFoodExtendedIngredients.unit = unit;
  }
  final List<String>? meta = (json['meta'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (meta != null) {
    detailReceiptFoodExtendedIngredients.meta = meta;
  }
  final DetailReceiptFoodExtendedIngredientsMeasures? measures = jsonConvert
      .convert<DetailReceiptFoodExtendedIngredientsMeasures>(json['measures']);
  if (measures != null) {
    detailReceiptFoodExtendedIngredients.measures = measures;
  }
  return detailReceiptFoodExtendedIngredients;
}

Map<String, dynamic> $DetailReceiptFoodExtendedIngredientsToJson(
    DetailReceiptFoodExtendedIngredients entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['aisle'] = entity.aisle;
  data['image'] = entity.image;
  data['consistency'] = entity.consistency;
  data['name'] = entity.name;
  data['nameClean'] = entity.nameClean;
  data['original'] = entity.original;
  data['originalName'] = entity.originalName;
  data['amount'] = entity.amount;
  data['unit'] = entity.unit;
  data['meta'] = entity.meta;
  data['measures'] = entity.measures?.toJson();
  return data;
}

extension DetailReceiptFoodExtendedIngredientsExtension on DetailReceiptFoodExtendedIngredients {
  DetailReceiptFoodExtendedIngredients copyWith({
    int? id,
    String? aisle,
    String? image,
    String? consistency,
    String? name,
    String? nameClean,
    String? original,
    String? originalName,
    double? amount,
    String? unit,
    List<String>? meta,
    DetailReceiptFoodExtendedIngredientsMeasures? measures,
  }) {
    return DetailReceiptFoodExtendedIngredients()
      ..id = id ?? this.id
      ..aisle = aisle ?? this.aisle
      ..image = image ?? this.image
      ..consistency = consistency ?? this.consistency
      ..name = name ?? this.name
      ..nameClean = nameClean ?? this.nameClean
      ..original = original ?? this.original
      ..originalName = originalName ?? this.originalName
      ..amount = amount ?? this.amount
      ..unit = unit ?? this.unit
      ..meta = meta ?? this.meta
      ..measures = measures ?? this.measures;
  }
}

DetailReceiptFoodExtendedIngredientsMeasures $DetailReceiptFoodExtendedIngredientsMeasuresFromJson(
    Map<String, dynamic> json) {
  final DetailReceiptFoodExtendedIngredientsMeasures detailReceiptFoodExtendedIngredientsMeasures = DetailReceiptFoodExtendedIngredientsMeasures();
  final DetailReceiptFoodExtendedIngredientsMeasuresUs? us = jsonConvert
      .convert<DetailReceiptFoodExtendedIngredientsMeasuresUs>(json['us']);
  if (us != null) {
    detailReceiptFoodExtendedIngredientsMeasures.us = us;
  }
  final DetailReceiptFoodExtendedIngredientsMeasuresMetric? metric = jsonConvert
      .convert<DetailReceiptFoodExtendedIngredientsMeasuresMetric>(
      json['metric']);
  if (metric != null) {
    detailReceiptFoodExtendedIngredientsMeasures.metric = metric;
  }
  return detailReceiptFoodExtendedIngredientsMeasures;
}

Map<String, dynamic> $DetailReceiptFoodExtendedIngredientsMeasuresToJson(
    DetailReceiptFoodExtendedIngredientsMeasures entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['us'] = entity.us?.toJson();
  data['metric'] = entity.metric?.toJson();
  return data;
}

extension DetailReceiptFoodExtendedIngredientsMeasuresExtension on DetailReceiptFoodExtendedIngredientsMeasures {
  DetailReceiptFoodExtendedIngredientsMeasures copyWith({
    DetailReceiptFoodExtendedIngredientsMeasuresUs? us,
    DetailReceiptFoodExtendedIngredientsMeasuresMetric? metric,
  }) {
    return DetailReceiptFoodExtendedIngredientsMeasures()
      ..us = us ?? this.us
      ..metric = metric ?? this.metric;
  }
}

DetailReceiptFoodExtendedIngredientsMeasuresUs $DetailReceiptFoodExtendedIngredientsMeasuresUsFromJson(
    Map<String, dynamic> json) {
  final DetailReceiptFoodExtendedIngredientsMeasuresUs detailReceiptFoodExtendedIngredientsMeasuresUs = DetailReceiptFoodExtendedIngredientsMeasuresUs();
  final double? amount = jsonConvert.convert<double>(json['amount']);
  if (amount != null) {
    detailReceiptFoodExtendedIngredientsMeasuresUs.amount = amount;
  }
  final String? unitShort = jsonConvert.convert<String>(json['unitShort']);
  if (unitShort != null) {
    detailReceiptFoodExtendedIngredientsMeasuresUs.unitShort = unitShort;
  }
  final String? unitLong = jsonConvert.convert<String>(json['unitLong']);
  if (unitLong != null) {
    detailReceiptFoodExtendedIngredientsMeasuresUs.unitLong = unitLong;
  }
  return detailReceiptFoodExtendedIngredientsMeasuresUs;
}

Map<String, dynamic> $DetailReceiptFoodExtendedIngredientsMeasuresUsToJson(
    DetailReceiptFoodExtendedIngredientsMeasuresUs entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['amount'] = entity.amount;
  data['unitShort'] = entity.unitShort;
  data['unitLong'] = entity.unitLong;
  return data;
}

extension DetailReceiptFoodExtendedIngredientsMeasuresUsExtension on DetailReceiptFoodExtendedIngredientsMeasuresUs {
  DetailReceiptFoodExtendedIngredientsMeasuresUs copyWith({
    double? amount,
    String? unitShort,
    String? unitLong,
  }) {
    return DetailReceiptFoodExtendedIngredientsMeasuresUs()
      ..amount = amount ?? this.amount
      ..unitShort = unitShort ?? this.unitShort
      ..unitLong = unitLong ?? this.unitLong;
  }
}

DetailReceiptFoodExtendedIngredientsMeasuresMetric $DetailReceiptFoodExtendedIngredientsMeasuresMetricFromJson(
    Map<String, dynamic> json) {
  final DetailReceiptFoodExtendedIngredientsMeasuresMetric detailReceiptFoodExtendedIngredientsMeasuresMetric = DetailReceiptFoodExtendedIngredientsMeasuresMetric();
  final double? amount = jsonConvert.convert<double>(json['amount']);
  if (amount != null) {
    detailReceiptFoodExtendedIngredientsMeasuresMetric.amount = amount;
  }
  final String? unitShort = jsonConvert.convert<String>(json['unitShort']);
  if (unitShort != null) {
    detailReceiptFoodExtendedIngredientsMeasuresMetric.unitShort = unitShort;
  }
  final String? unitLong = jsonConvert.convert<String>(json['unitLong']);
  if (unitLong != null) {
    detailReceiptFoodExtendedIngredientsMeasuresMetric.unitLong = unitLong;
  }
  return detailReceiptFoodExtendedIngredientsMeasuresMetric;
}

Map<String, dynamic> $DetailReceiptFoodExtendedIngredientsMeasuresMetricToJson(
    DetailReceiptFoodExtendedIngredientsMeasuresMetric entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['amount'] = entity.amount;
  data['unitShort'] = entity.unitShort;
  data['unitLong'] = entity.unitLong;
  return data;
}

extension DetailReceiptFoodExtendedIngredientsMeasuresMetricExtension on DetailReceiptFoodExtendedIngredientsMeasuresMetric {
  DetailReceiptFoodExtendedIngredientsMeasuresMetric copyWith({
    double? amount,
    String? unitShort,
    String? unitLong,
  }) {
    return DetailReceiptFoodExtendedIngredientsMeasuresMetric()
      ..amount = amount ?? this.amount
      ..unitShort = unitShort ?? this.unitShort
      ..unitLong = unitLong ?? this.unitLong;
  }
}

DetailReceiptFoodWinePairing $DetailReceiptFoodWinePairingFromJson(
    Map<String, dynamic> json) {
  final DetailReceiptFoodWinePairing detailReceiptFoodWinePairing = DetailReceiptFoodWinePairing();
  final List<String>? pairedWines = (json['pairedWines'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<String>(e) as String)
      .toList();
  if (pairedWines != null) {
    detailReceiptFoodWinePairing.pairedWines = pairedWines;
  }
  final String? pairingText = jsonConvert.convert<String>(json['pairingText']);
  if (pairingText != null) {
    detailReceiptFoodWinePairing.pairingText = pairingText;
  }
  final List<
      DetailReceiptFoodWinePairingProductMatches>? productMatches = (json['productMatches'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DetailReceiptFoodWinePairingProductMatches>(
          e) as DetailReceiptFoodWinePairingProductMatches).toList();
  if (productMatches != null) {
    detailReceiptFoodWinePairing.productMatches = productMatches;
  }
  return detailReceiptFoodWinePairing;
}

Map<String, dynamic> $DetailReceiptFoodWinePairingToJson(
    DetailReceiptFoodWinePairing entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['pairedWines'] = entity.pairedWines;
  data['pairingText'] = entity.pairingText;
  data['productMatches'] =
      entity.productMatches?.map((v) => v.toJson()).toList();
  return data;
}

extension DetailReceiptFoodWinePairingExtension on DetailReceiptFoodWinePairing {
  DetailReceiptFoodWinePairing copyWith({
    List<String>? pairedWines,
    String? pairingText,
    List<DetailReceiptFoodWinePairingProductMatches>? productMatches,
  }) {
    return DetailReceiptFoodWinePairing()
      ..pairedWines = pairedWines ?? this.pairedWines
      ..pairingText = pairingText ?? this.pairingText
      ..productMatches = productMatches ?? this.productMatches;
  }
}

DetailReceiptFoodWinePairingProductMatches $DetailReceiptFoodWinePairingProductMatchesFromJson(
    Map<String, dynamic> json) {
  final DetailReceiptFoodWinePairingProductMatches detailReceiptFoodWinePairingProductMatches = DetailReceiptFoodWinePairingProductMatches();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    detailReceiptFoodWinePairingProductMatches.id = id;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    detailReceiptFoodWinePairingProductMatches.title = title;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    detailReceiptFoodWinePairingProductMatches.description = description;
  }
  final String? price = jsonConvert.convert<String>(json['price']);
  if (price != null) {
    detailReceiptFoodWinePairingProductMatches.price = price;
  }
  final String? imageUrl = jsonConvert.convert<String>(json['imageUrl']);
  if (imageUrl != null) {
    detailReceiptFoodWinePairingProductMatches.imageUrl = imageUrl;
  }
  final double? averageRating = jsonConvert.convert<double>(
      json['averageRating']);
  if (averageRating != null) {
    detailReceiptFoodWinePairingProductMatches.averageRating = averageRating;
  }
  final double? ratingCount = jsonConvert.convert<double>(json['ratingCount']);
  if (ratingCount != null) {
    detailReceiptFoodWinePairingProductMatches.ratingCount = ratingCount;
  }
  final double? score = jsonConvert.convert<double>(json['score']);
  if (score != null) {
    detailReceiptFoodWinePairingProductMatches.score = score;
  }
  final String? link = jsonConvert.convert<String>(json['link']);
  if (link != null) {
    detailReceiptFoodWinePairingProductMatches.link = link;
  }
  return detailReceiptFoodWinePairingProductMatches;
}

Map<String, dynamic> $DetailReceiptFoodWinePairingProductMatchesToJson(
    DetailReceiptFoodWinePairingProductMatches entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['title'] = entity.title;
  data['description'] = entity.description;
  data['price'] = entity.price;
  data['imageUrl'] = entity.imageUrl;
  data['averageRating'] = entity.averageRating;
  data['ratingCount'] = entity.ratingCount;
  data['score'] = entity.score;
  data['link'] = entity.link;
  return data;
}

extension DetailReceiptFoodWinePairingProductMatchesExtension on DetailReceiptFoodWinePairingProductMatches {
  DetailReceiptFoodWinePairingProductMatches copyWith({
    int? id,
    String? title,
    String? description,
    String? price,
    String? imageUrl,
    double? averageRating,
    double? ratingCount,
    double? score,
    String? link,
  }) {
    return DetailReceiptFoodWinePairingProductMatches()
      ..id = id ?? this.id
      ..title = title ?? this.title
      ..description = description ?? this.description
      ..price = price ?? this.price
      ..imageUrl = imageUrl ?? this.imageUrl
      ..averageRating = averageRating ?? this.averageRating
      ..ratingCount = ratingCount ?? this.ratingCount
      ..score = score ?? this.score
      ..link = link ?? this.link;
  }
}

DetailReceiptFoodAnalyzedInstructions $DetailReceiptFoodAnalyzedInstructionsFromJson(
    Map<String, dynamic> json) {
  final DetailReceiptFoodAnalyzedInstructions detailReceiptFoodAnalyzedInstructions = DetailReceiptFoodAnalyzedInstructions();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    detailReceiptFoodAnalyzedInstructions.name = name;
  }
  final List<
      DetailReceiptFoodAnalyzedInstructionsSteps>? steps = (json['steps'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DetailReceiptFoodAnalyzedInstructionsSteps>(
          e) as DetailReceiptFoodAnalyzedInstructionsSteps).toList();
  if (steps != null) {
    detailReceiptFoodAnalyzedInstructions.steps = steps;
  }
  return detailReceiptFoodAnalyzedInstructions;
}

Map<String, dynamic> $DetailReceiptFoodAnalyzedInstructionsToJson(
    DetailReceiptFoodAnalyzedInstructions entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['steps'] = entity.steps?.map((v) => v.toJson()).toList();
  return data;
}

extension DetailReceiptFoodAnalyzedInstructionsExtension on DetailReceiptFoodAnalyzedInstructions {
  DetailReceiptFoodAnalyzedInstructions copyWith({
    String? name,
    List<DetailReceiptFoodAnalyzedInstructionsSteps>? steps,
  }) {
    return DetailReceiptFoodAnalyzedInstructions()
      ..name = name ?? this.name
      ..steps = steps ?? this.steps;
  }
}

DetailReceiptFoodAnalyzedInstructionsSteps $DetailReceiptFoodAnalyzedInstructionsStepsFromJson(
    Map<String, dynamic> json) {
  final DetailReceiptFoodAnalyzedInstructionsSteps detailReceiptFoodAnalyzedInstructionsSteps = DetailReceiptFoodAnalyzedInstructionsSteps();
  final int? number = jsonConvert.convert<int>(json['number']);
  if (number != null) {
    detailReceiptFoodAnalyzedInstructionsSteps.number = number;
  }
  final String? step = jsonConvert.convert<String>(json['step']);
  if (step != null) {
    detailReceiptFoodAnalyzedInstructionsSteps.step = step;
  }
  final List<
      DetailReceiptFoodAnalyzedInstructionsStepsIngredients>? ingredients = (json['ingredients'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          DetailReceiptFoodAnalyzedInstructionsStepsIngredients>(
          e) as DetailReceiptFoodAnalyzedInstructionsStepsIngredients).toList();
  if (ingredients != null) {
    detailReceiptFoodAnalyzedInstructionsSteps.ingredients = ingredients;
  }
  final List<
      DetailReceiptFoodAnalyzedInstructionsStepsEquipment>? equipment = (json['equipment'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          DetailReceiptFoodAnalyzedInstructionsStepsEquipment>(
          e) as DetailReceiptFoodAnalyzedInstructionsStepsEquipment).toList();
  if (equipment != null) {
    detailReceiptFoodAnalyzedInstructionsSteps.equipment = equipment;
  }
  final DetailReceiptFoodAnalyzedInstructionsStepsLength? length = jsonConvert
      .convert<DetailReceiptFoodAnalyzedInstructionsStepsLength>(
      json['length']);
  if (length != null) {
    detailReceiptFoodAnalyzedInstructionsSteps.length = length;
  }
  return detailReceiptFoodAnalyzedInstructionsSteps;
}

Map<String, dynamic> $DetailReceiptFoodAnalyzedInstructionsStepsToJson(
    DetailReceiptFoodAnalyzedInstructionsSteps entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['number'] = entity.number;
  data['step'] = entity.step;
  data['ingredients'] = entity.ingredients?.map((v) => v.toJson()).toList();
  data['equipment'] = entity.equipment?.map((v) => v.toJson()).toList();
  data['length'] = entity.length?.toJson();
  return data;
}

extension DetailReceiptFoodAnalyzedInstructionsStepsExtension on DetailReceiptFoodAnalyzedInstructionsSteps {
  DetailReceiptFoodAnalyzedInstructionsSteps copyWith({
    int? number,
    String? step,
    List<DetailReceiptFoodAnalyzedInstructionsStepsIngredients>? ingredients,
    List<DetailReceiptFoodAnalyzedInstructionsStepsEquipment>? equipment,
    DetailReceiptFoodAnalyzedInstructionsStepsLength? length,
  }) {
    return DetailReceiptFoodAnalyzedInstructionsSteps()
      ..number = number ?? this.number
      ..step = step ?? this.step
      ..ingredients = ingredients ?? this.ingredients
      ..equipment = equipment ?? this.equipment
      ..length = length ?? this.length;
  }
}

DetailReceiptFoodAnalyzedInstructionsStepsIngredients $DetailReceiptFoodAnalyzedInstructionsStepsIngredientsFromJson(
    Map<String, dynamic> json) {
  final DetailReceiptFoodAnalyzedInstructionsStepsIngredients detailReceiptFoodAnalyzedInstructionsStepsIngredients = DetailReceiptFoodAnalyzedInstructionsStepsIngredients();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    detailReceiptFoodAnalyzedInstructionsStepsIngredients.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    detailReceiptFoodAnalyzedInstructionsStepsIngredients.name = name;
  }
  final String? localizedName = jsonConvert.convert<String>(
      json['localizedName']);
  if (localizedName != null) {
    detailReceiptFoodAnalyzedInstructionsStepsIngredients.localizedName =
        localizedName;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    detailReceiptFoodAnalyzedInstructionsStepsIngredients.image = image;
  }
  return detailReceiptFoodAnalyzedInstructionsStepsIngredients;
}

Map<String,
    dynamic> $DetailReceiptFoodAnalyzedInstructionsStepsIngredientsToJson(
    DetailReceiptFoodAnalyzedInstructionsStepsIngredients entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['localizedName'] = entity.localizedName;
  data['image'] = entity.image;
  return data;
}

extension DetailReceiptFoodAnalyzedInstructionsStepsIngredientsExtension on DetailReceiptFoodAnalyzedInstructionsStepsIngredients {
  DetailReceiptFoodAnalyzedInstructionsStepsIngredients copyWith({
    int? id,
    String? name,
    String? localizedName,
    String? image,
  }) {
    return DetailReceiptFoodAnalyzedInstructionsStepsIngredients()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..localizedName = localizedName ?? this.localizedName
      ..image = image ?? this.image;
  }
}

DetailReceiptFoodAnalyzedInstructionsStepsEquipment $DetailReceiptFoodAnalyzedInstructionsStepsEquipmentFromJson(
    Map<String, dynamic> json) {
  final DetailReceiptFoodAnalyzedInstructionsStepsEquipment detailReceiptFoodAnalyzedInstructionsStepsEquipment = DetailReceiptFoodAnalyzedInstructionsStepsEquipment();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    detailReceiptFoodAnalyzedInstructionsStepsEquipment.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    detailReceiptFoodAnalyzedInstructionsStepsEquipment.name = name;
  }
  final String? localizedName = jsonConvert.convert<String>(
      json['localizedName']);
  if (localizedName != null) {
    detailReceiptFoodAnalyzedInstructionsStepsEquipment.localizedName =
        localizedName;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    detailReceiptFoodAnalyzedInstructionsStepsEquipment.image = image;
  }
  return detailReceiptFoodAnalyzedInstructionsStepsEquipment;
}

Map<String, dynamic> $DetailReceiptFoodAnalyzedInstructionsStepsEquipmentToJson(
    DetailReceiptFoodAnalyzedInstructionsStepsEquipment entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['localizedName'] = entity.localizedName;
  data['image'] = entity.image;
  return data;
}

extension DetailReceiptFoodAnalyzedInstructionsStepsEquipmentExtension on DetailReceiptFoodAnalyzedInstructionsStepsEquipment {
  DetailReceiptFoodAnalyzedInstructionsStepsEquipment copyWith({
    int? id,
    String? name,
    String? localizedName,
    String? image,
  }) {
    return DetailReceiptFoodAnalyzedInstructionsStepsEquipment()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..localizedName = localizedName ?? this.localizedName
      ..image = image ?? this.image;
  }
}

DetailReceiptFoodAnalyzedInstructionsStepsLength $DetailReceiptFoodAnalyzedInstructionsStepsLengthFromJson(
    Map<String, dynamic> json) {
  final DetailReceiptFoodAnalyzedInstructionsStepsLength detailReceiptFoodAnalyzedInstructionsStepsLength = DetailReceiptFoodAnalyzedInstructionsStepsLength();
  final int? number = jsonConvert.convert<int>(json['number']);
  if (number != null) {
    detailReceiptFoodAnalyzedInstructionsStepsLength.number = number;
  }
  final String? unit = jsonConvert.convert<String>(json['unit']);
  if (unit != null) {
    detailReceiptFoodAnalyzedInstructionsStepsLength.unit = unit;
  }
  return detailReceiptFoodAnalyzedInstructionsStepsLength;
}

Map<String, dynamic> $DetailReceiptFoodAnalyzedInstructionsStepsLengthToJson(
    DetailReceiptFoodAnalyzedInstructionsStepsLength entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['number'] = entity.number;
  data['unit'] = entity.unit;
  return data;
}

extension DetailReceiptFoodAnalyzedInstructionsStepsLengthExtension on DetailReceiptFoodAnalyzedInstructionsStepsLength {
  DetailReceiptFoodAnalyzedInstructionsStepsLength copyWith({
    int? number,
    String? unit,
  }) {
    return DetailReceiptFoodAnalyzedInstructionsStepsLength()
      ..number = number ?? this.number
      ..unit = unit ?? this.unit;
  }
}