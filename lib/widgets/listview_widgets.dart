import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sub_newbie_dicoding/providers/all_product_tourism_providers.dart';
import 'package:sub_newbie_dicoding/widgets/tourism_grid_item.dart';
import 'package:sub_newbie_dicoding/widgets/tourism_list_item.dart';
import '../utils/circular_progress_dialog.dart';

class ListViewWidgets extends StatelessWidget {
  const ListViewWidgets({
    super.key,
    required this.IsLoading,
    required this.isTypeList,
  });

  final bool IsLoading;
  final bool isTypeList;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IsLoading
            ? CircularProgress()
            : !isTypeList
                ? ListViewBuilder()
                : ListGridView(),
      ),
    ]);
  }
}

class ListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final getTourism = Provider.of<ProductTourismItem>(context);
    final getListTourism = getTourism.tourismList;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => ChangeNotifierProvider.value(
              value: getListTourism[index], child: TourismItemList()),
          itemCount: getListTourism.length,
        )
      ],
    );
  }
}

class ListGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final getTourism = Provider.of<ProductTourismItem>(context);
    final getListTourism = getTourism.tourismList;

    return SingleChildScrollView(
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 2, crossAxisSpacing: 5),
        itemBuilder: (BuildContext context, int index) =>
            ChangeNotifierProvider.value(
                value: getListTourism[index], child: TourismItemGrid()),
        itemCount: getListTourism.length,
      ),
    );
  }
}
