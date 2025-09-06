import 'package:e_commerce/core/theme/styles.dart';
import 'package:e_commerce/features/home/data/models/product.dart';
import 'package:flutter/material.dart';

class QuantityWithPrice extends StatefulWidget {
  final Product product;
  final VoidCallback onQuantityChanged;

  const QuantityWithPrice({
    super.key,
    required this.product,
    required this.onQuantityChanged,
  });

  @override
  State<QuantityWithPrice> createState() => _QuantityWithPriceState();
}

class _QuantityWithPriceState extends State<QuantityWithPrice> {
  @override
  Widget build(BuildContext context) {
    double totalPrice = widget.product.price * widget.product.quantity;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                if (widget.product.quantity > 1) {
                  setState(() {
                    widget.product.quantity--;
                  });
                  widget.onQuantityChanged();
                }
              },
              icon: const Icon(Icons.remove_circle_outline),
            ),
            Text(widget.product.quantity.toString(), style: Styles.textStyle14),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  widget.product.quantity++;
                });
                widget.onQuantityChanged();
              },
              icon: const Icon(Icons.add_circle_outline),
            ),
          ],
        ),
        Text("\$${totalPrice.toStringAsFixed(2)}", style: Styles.textStyle14),
      ],
    );
  }
}
