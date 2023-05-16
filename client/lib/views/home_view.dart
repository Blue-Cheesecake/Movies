import 'dart:developer';

import 'package:client/core/color/app_color.dart';
import 'package:client/models/movie_model.dart';
import 'package:client/services/movie_service.dart';
import 'package:client/widgets/drawer_widget.dart';
import 'package:client/widgets/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    final MovieService movieService =
        Provider.of<MovieService>(context, listen: false);
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: NavBarWidget(),
      ),
      body: FutureBuilder(
        future: movieService.getAllMovie(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColor.darkGrey,
              ),
            );
          }

          log("[HomeView]: HasError ${snapshot.hasData}");
          List<MovieModel>? movieModels = snapshot.data;

          if (movieModels == null) {
            return const Center(
              child: Text("Null Data"),
            );
          }

          return const Text("Got it");
        },
      ),
    );
  }
}