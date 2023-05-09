import 'package:expense_tracker_fiap/models/tipo_transacao.dart';
import 'package:flutter/material.dart';

class Categoria {
  String id;
  TipoTransacao tipoTransacao;
  String nome;
  Color cor;
  IconData icone;

  Categoria({
    required this.id,
    required this.tipoTransacao,
    required this.nome,
    required this.cor,
    required this.icone,
  });
}
