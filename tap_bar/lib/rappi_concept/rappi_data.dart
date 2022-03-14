import 'package:meta/meta.dart';

class RappiCategory {
	const RappiCategory(
		{
			@required this.name,
			@required this.products,
		}
	);

	final String name;
	final List<RappiProduct> products;
}

class RappiProduct {
	const RappiProduct({
		@required this.name,
		@required this.price,
		// @required this.image,
	});

	final String name;
	final double price;
	// final String image;

}


cont rappiCategories = [
	RappiCategories(
		name: "Popular",
		products: [
			RappiProduct(
				name: "Shirts (without handger)",
				price: "N300"
			), 

			RappiProduct(
				name: "Shirts (without handger)",
				price: "N300"
			), 

			RappiProduct(
				name: "Shirts (without handger)",
				price: "N300"
			), 
		],
	),

	RappiCategories(
		name: "Unpopular",
		products: [
			RappiProduct(
				name: "Shirts (without handger)",
				price: "N300"
			), 

			RappiProduct(
				name: "Shirts (without handger)",
				price: "N300"
			), 

			RappiProduct(
				name: "Shirts (without handger)",
				price: "N300"
			), 

			RappiProduct(
				name: "Shirts (without handger)",
				price: "N300"
			), 
		],
	),
];