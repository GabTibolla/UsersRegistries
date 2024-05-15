import 'package:flutter/material.dart';

class AppbarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppbarWidget({
    super.key,
    this.centerTitle,
    this.automaticallyImplyLeading = true,
    required this.title,
  });

  final String title;
  final bool? centerTitle;
  final bool automaticallyImplyLeading;

  @override
  AppbarWidgetState createState() => AppbarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AppbarWidgetState extends State<AppbarWidget> {
  bool _isSearching = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: _isSearching ? _buildSearchField() : Text(widget.title),
      actions: _buildActions(),
      centerTitle: widget.centerTitle,
      automaticallyImplyLeading: widget.automaticallyImplyLeading,
      titleSpacing: 50,
    );
  }

  Widget _buildSearchField() {
    return TextFormField(
      autofocus: true,
      style: const TextStyle(color: Colors.white),
      decoration: const InputDecoration(
        hintText: "Insira Seu Texto Aqui",
        hintStyle: TextStyle(color: Colors.white),
      ),
    );
  }

  List<Widget> _buildActions() {
    return <Widget>[
      IconButton(
        icon: const Icon(Icons.search),
        onPressed: () {
          setState(() {
            _isSearching = !_isSearching;
          });
        },
      ),
    ];
  }
}
