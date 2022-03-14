import 'package:flutter/material.dart';


const _backgroundColor = Color(0xFFF6F9FA);

const _blueColor = Colors.blue;

const _greenColor = Color(0xFF2BBEBA);



class MainRappiConceptApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Theme(
			data: ThemeData.light(),

			child: _RappiConcept(),
		);
	}
}


class _RappiConcept extends StatefulWidget {
	@override
	_RappiConceptState createState() => _RappiConceptState();
}


class _RappiConceptState extends State<_RappiConcept> with SingleTickerProviderStateMixin {
	
	late TabController _tabController;

	@override
	void initState() {
		_tabController = TabController(vsync: this, length: 10);

		super.initState();
	}


	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: _backgroundColor,

			body: SafeArea(
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.stretch,

					children: [
						Container(
							color: Colors.white,

							height: 90,

							child: Padding(
								padding: const EdgeInsets.all(30.0),


								child: Row(
									mainAxisAlignment: MainAxisAlignment.spaceBetween,

									children: [
										Text(
											"Homepage",
											
										style: TextStyle(
												color: _blueColor,

												fontSize: 20,

												fontWeight: FontWeight.bold,
											),
										),

										// Spacer(),

										CircleAvatar(
											backgroundColor: _greenColor,

											radius: 17,

											child: ClipOval(
												child: Image.asset(
													"assets/logo.png",

													height: 30,
												),
											),
										),
									],
								),
							),
							
						),

						Container(
							// color: Colors.green,

							height: 60,

							child: TabBar(
								controller: _tabController,

								indicatorWeight: 0.1,

								isScrollable: true,
								
								tabs: List.generate(
									10, 
									
									(index) => _RappiTabWidget()
								),
							),
						),

						Expanded(
							child: Container(
								color: Colors.blue,
							),
						)

					],
				),
			),
		);
	}
}


class _RappiTabWidget extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Card(
			elevation: 6,

			child: Padding(
				padding: const EdgeInsets.all(8.0),
			
				child: Text(
					"Pizza",

					style: TextStyle(
						color: _blueColor,

						fontWeight: FontWeight.bold,

						fontSize: 13,
					),
				),
			),
		);
	}
}