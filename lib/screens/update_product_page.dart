import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_Product.dart';
import 'package:store_app/wedgits/Custom_Text_Field.dart';
import 'package:store_app/wedgits/Custom_button.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage();

  static String id = 'update Product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, image, price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as ProductModel;

    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Update Product'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(height: 10),
                customTextfield.customTextField(
                  onChanged: (data) => productName = data,
                  hintText: 'Product Name',
                ),
                const SizedBox(height: 15),
                customTextfield.customTextField(
                  onChanged: (data) => desc = data,
                  hintText: 'Description',
                ),
                const SizedBox(height: 15),
                customTextfield.customTextField(
                  inputType: TextInputType.number,
                  onChanged: (data) => price = data,
                  hintText: 'Price',
                ),
                const SizedBox(height: 15),
                customTextfield.customTextField(
                  onChanged: (data) => image = data,
                  hintText: 'Image',
                ),
                const SizedBox(height: 70),
                CustomButtom(
                  text: 'Update',
                  ontap: () async {
                    setState(() {
                      isLoading = true;
                    });

                    try {
                      await updateProductData(product);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Product updated successfully')),
                      );
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Error updating product: $e')),
                      );
                    } finally {
                      setState(() {
                        isLoading = false;
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProductData(ProductModel product) async {
    await UpdateProduct().updateProduct(
      title: productName ?? product.title,
      price: price ?? product.price.toString(),
      desc: desc ?? product.description,
      category: product.category,
      image: image ?? product.image,
    );
  }
}
