import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(//màn hình có thể cuộn
        child: Column(
          children: [
            TPrimaryHeaderContainer(//custom header xanh
              child: Column(
                children: [
                  ///--AppBar
                  THomeAppBar(),
                  ///--SearchBar
                  ///Categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




