import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:testptc/core/utils/assets.dart';
import 'package:testptc/core/utils/consts.dart';
import 'package:testptc/core/widgets/button.dart';
import 'package:testptc/feature/cart/presintions/views/widgets/icons.dart';

class CardBever extends StatelessWidget {
  const CardBever({super.key});
  final String s = "\$";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // go ruoter to detils category
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color.fromARGB(255, 192, 190, 190),
            width: 2,
          ),
        ),
        width: 200,
        height: 600,
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: SizedBox(
                      height: 70, width: 100, child: Image.asset(Assets.cola))),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Coca Cola ",
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              const Text(
                "325ml, Price",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(fontSize: 10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$s 4.99",
                    style: Styles.textStyle16W400.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  CircularIcons(
                    height: 40,
                    width: 40,
                    size: 26,
                    color: Colors.white,
                    backgrounColor: Consts.kPraimaryColor,
                    icon: Iconsax.add,
                    onPreessed: () {
                      _showAddItemBottomSheet(context);
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showAddItemBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: AddItemForm(),
      );
    },
  );
}

class AddItemForm extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController imageController = TextEditingController();

  AddItemForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Add",
                style: TextStyle(fontSize: 25),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.close))
            ],
          ),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Name'),
          ),
          TextField(
            controller: descriptionController,
            decoration: const InputDecoration(labelText: 'Description'),
          ),
          TextField(
            controller: priceController,
            decoration: const InputDecoration(labelText: 'Price'),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: imageController,
            decoration: const InputDecoration(labelText: 'Image '),
          ),
          const SizedBox(height: 30),
          Button(title: "Add item", onTap: () {}),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
