import 'package:expense_tracker_fiap/repository/categoria_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CategoriasPage extends StatefulWidget {
  const CategoriasPage();

  @override
  State<CategoriasPage> createState() => _CategoriasPageState();
}

class _CategoriasPageState extends State<CategoriasPage> {
  final categorias = CategoriaRepository().obterCategorias();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'),
      ),
      body: ListView.builder(
          itemCount: categorias.length,
          itemBuilder: (BuildContext contex, int index) {
            return ListTile(
              leading: Icon(categorias[index].icone),
              title: Text(categorias[index].nome),
              trailing: Text(categorias[index].tipoTransacao.name),
            );
          }),
    );
  }
}
