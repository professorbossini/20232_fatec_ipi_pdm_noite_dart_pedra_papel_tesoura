import 'dart:io';
import 'dart:math';

void main() {
  //capturar a opção do usuário
  stdout.writeln("1-Pedra\n2-Papel\n3-Tesoura");
  int opUsuario = int.parse(stdin.readLineSync()!);
  //gerar a opção do computador
  var gerador = Random();
  int opComputador = gerador.nextInt(3) + 1;
  var opUsuarioTextual = switch (opUsuario) {
    1 => 'Pedra',
    2 => 'Papel',
    3 => 'Tesoura',
    _ => 'nada'
  };
  var opComputadorTextual = switch (opComputador) {
    1 => 'Pedra',
    2 => 'Papel',
    3 => 'Tesoura',
    _ => 'nada'
  };
  //exibir o jogo: você (tesoura) vs (papel) computador
  stdout
      .writeln('Você ($opUsuarioTextual) vs ($opComputadorTextual) Computador');
  //exibir o vencedor: Você ganhou!
  if (opUsuario == opComputador) {
    stdout.writeln("Empate!");
  } else if (opUsuario == 1 && opComputador == 3 ||
      opUsuario == 2 && opComputador == 1 ||
      opUsuario == 3 && opComputador == 2) {
    stdout.writeln("Você ganhou!");
  } else {
    stdout.writeln("Computador ganhou!");
  }
}
