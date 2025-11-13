import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myapp/provider/slider_provider.dart';

class SliderProvider extends StatefulWidget {
  const SliderProvider({super.key});
  @override
  State<SliderProvider> createState() => _SliderProviderState();
}

class _SliderProviderState extends State<SliderProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Silder")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SliderValueProvider>(
              builder: (context, value, child) {
                final provider = Provider.of<SliderValueProvider>(
                  context,
                  listen: false,
                );
                return Slider(
                  value: provider.value,
                  min: 0,
                  max: 1,
                  onChanged: (val) {
                    provider.setvalue(val);
                  },
                );
              },
            ),

            Consumer<SliderValueProvider>(
              builder: (context, value, child) {
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.green.withValues(alpha: value.value),
                        ),
                        child: Center(child: Text("box 1")),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.amber.withValues(alpha: value.value),
                        ),
                        child: Center(child: Text("box 2")),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
