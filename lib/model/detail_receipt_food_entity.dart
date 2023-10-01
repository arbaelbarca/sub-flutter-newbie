import 'package:sub_newbie_dicoding/generated/json/base/json_field.dart';
import 'package:sub_newbie_dicoding/generated/json/detail_receipt_food_entity.g.dart';
import 'dart:convert';
export 'package:sub_newbie_dicoding/generated/json/detail_receipt_food_entity.g.dart';

@JsonSerializable()
class DetailReceiptFoodEntity {
	bool? vegetarian;
	bool? vegan;
	bool? glutenFree;
	bool? dairyFree;
	bool? veryHealthy;
	bool? cheap;
	bool? veryPopular;
	bool? sustainable;
	bool? lowFodmap;
	int? weightWatcherSmartPoints;
	String? gaps;
	int? preparationMinutes;
	int? cookingMinutes;
	int? aggregateLikes;
	int? healthScore;
	String? creditsText;
	String? license;
	String? sourceName;
	double? pricePerServing;
	List<DetailReceiptFoodExtendedIngredients>? extendedIngredients;
	int? id;
	String? title;
	int? readyInMinutes;
	int? servings;
	String? sourceUrl;
	String? image;
	String? imageType;
	String? summary;
	List<String>? cuisines;
	List<String>? dishTypes;
	List<String>? diets;
	List<dynamic>? occasions;
	DetailReceiptFoodWinePairing? winePairing;
	String? instructions;
	List<DetailReceiptFoodAnalyzedInstructions>? analyzedInstructions;
	dynamic originalId;
	String? spoonacularSourceUrl;

	DetailReceiptFoodEntity();

	factory DetailReceiptFoodEntity.fromJson(Map<String, dynamic> json) => $DetailReceiptFoodEntityFromJson(json);

	Map<String, dynamic> toJson() => $DetailReceiptFoodEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DetailReceiptFoodExtendedIngredients {
	int? id;
	String? aisle;
	String? image;
	String? consistency;
	String? name;
	String? nameClean;
	String? original;
	String? originalName;
	double? amount;
	String? unit;
	List<String>? meta;
	DetailReceiptFoodExtendedIngredientsMeasures? measures;

	DetailReceiptFoodExtendedIngredients();

	factory DetailReceiptFoodExtendedIngredients.fromJson(Map<String, dynamic> json) => $DetailReceiptFoodExtendedIngredientsFromJson(json);

	Map<String, dynamic> toJson() => $DetailReceiptFoodExtendedIngredientsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DetailReceiptFoodExtendedIngredientsMeasures {
	DetailReceiptFoodExtendedIngredientsMeasuresUs? us;
	DetailReceiptFoodExtendedIngredientsMeasuresMetric? metric;

	DetailReceiptFoodExtendedIngredientsMeasures();

	factory DetailReceiptFoodExtendedIngredientsMeasures.fromJson(Map<String, dynamic> json) => $DetailReceiptFoodExtendedIngredientsMeasuresFromJson(json);

	Map<String, dynamic> toJson() => $DetailReceiptFoodExtendedIngredientsMeasuresToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DetailReceiptFoodExtendedIngredientsMeasuresUs {
	double? amount;
	String? unitShort;
	String? unitLong;

	DetailReceiptFoodExtendedIngredientsMeasuresUs();

	factory DetailReceiptFoodExtendedIngredientsMeasuresUs.fromJson(Map<String, dynamic> json) => $DetailReceiptFoodExtendedIngredientsMeasuresUsFromJson(json);

	Map<String, dynamic> toJson() => $DetailReceiptFoodExtendedIngredientsMeasuresUsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DetailReceiptFoodExtendedIngredientsMeasuresMetric {
	double? amount;
	String? unitShort;
	String? unitLong;

	DetailReceiptFoodExtendedIngredientsMeasuresMetric();

	factory DetailReceiptFoodExtendedIngredientsMeasuresMetric.fromJson(Map<String, dynamic> json) => $DetailReceiptFoodExtendedIngredientsMeasuresMetricFromJson(json);

	Map<String, dynamic> toJson() => $DetailReceiptFoodExtendedIngredientsMeasuresMetricToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DetailReceiptFoodWinePairing {
	List<String>? pairedWines;
	String? pairingText;
	List<DetailReceiptFoodWinePairingProductMatches>? productMatches;

	DetailReceiptFoodWinePairing();

	factory DetailReceiptFoodWinePairing.fromJson(Map<String, dynamic> json) => $DetailReceiptFoodWinePairingFromJson(json);

	Map<String, dynamic> toJson() => $DetailReceiptFoodWinePairingToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DetailReceiptFoodWinePairingProductMatches {
	int? id;
	String? title;
	String? description;
	String? price;
	String? imageUrl;
	double? averageRating;
	double? ratingCount;
	double? score;
	String? link;

	DetailReceiptFoodWinePairingProductMatches();

	factory DetailReceiptFoodWinePairingProductMatches.fromJson(Map<String, dynamic> json) => $DetailReceiptFoodWinePairingProductMatchesFromJson(json);

	Map<String, dynamic> toJson() => $DetailReceiptFoodWinePairingProductMatchesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DetailReceiptFoodAnalyzedInstructions {
	String? name;
	List<DetailReceiptFoodAnalyzedInstructionsSteps>? steps;

	DetailReceiptFoodAnalyzedInstructions();

	factory DetailReceiptFoodAnalyzedInstructions.fromJson(Map<String, dynamic> json) => $DetailReceiptFoodAnalyzedInstructionsFromJson(json);

	Map<String, dynamic> toJson() => $DetailReceiptFoodAnalyzedInstructionsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DetailReceiptFoodAnalyzedInstructionsSteps {
	int? number;
	String? step;
	List<DetailReceiptFoodAnalyzedInstructionsStepsIngredients>? ingredients;
	List<DetailReceiptFoodAnalyzedInstructionsStepsEquipment>? equipment;
	DetailReceiptFoodAnalyzedInstructionsStepsLength? length;

	DetailReceiptFoodAnalyzedInstructionsSteps();

	factory DetailReceiptFoodAnalyzedInstructionsSteps.fromJson(Map<String, dynamic> json) => $DetailReceiptFoodAnalyzedInstructionsStepsFromJson(json);

	Map<String, dynamic> toJson() => $DetailReceiptFoodAnalyzedInstructionsStepsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DetailReceiptFoodAnalyzedInstructionsStepsIngredients {
	int? id;
	String? name;
	String? localizedName;
	String? image;

	DetailReceiptFoodAnalyzedInstructionsStepsIngredients();

	factory DetailReceiptFoodAnalyzedInstructionsStepsIngredients.fromJson(Map<String, dynamic> json) => $DetailReceiptFoodAnalyzedInstructionsStepsIngredientsFromJson(json);

	Map<String, dynamic> toJson() => $DetailReceiptFoodAnalyzedInstructionsStepsIngredientsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DetailReceiptFoodAnalyzedInstructionsStepsEquipment {
	int? id;
	String? name;
	String? localizedName;
	String? image;

	DetailReceiptFoodAnalyzedInstructionsStepsEquipment();

	factory DetailReceiptFoodAnalyzedInstructionsStepsEquipment.fromJson(Map<String, dynamic> json) => $DetailReceiptFoodAnalyzedInstructionsStepsEquipmentFromJson(json);

	Map<String, dynamic> toJson() => $DetailReceiptFoodAnalyzedInstructionsStepsEquipmentToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DetailReceiptFoodAnalyzedInstructionsStepsLength {
	int? number;
	String? unit;

	DetailReceiptFoodAnalyzedInstructionsStepsLength();

	factory DetailReceiptFoodAnalyzedInstructionsStepsLength.fromJson(Map<String, dynamic> json) => $DetailReceiptFoodAnalyzedInstructionsStepsLengthFromJson(json);

	Map<String, dynamic> toJson() => $DetailReceiptFoodAnalyzedInstructionsStepsLengthToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}