final kHistory = [
  HistoryNode(
    description: 'Parabéns! Você ganhou a libertadores, hora de decidir o que fazer durante a festa do título',
    actions: [
      HistoryAction(
        text: 'Vou beber todas até não lembrar mais nada',
        nextStep: 1,
      ),
      HistoryAction(
        text: 'Já vou começar a treinar para o mundial!',
        nextStep: 4,
      ),
    ],
  ),
  HistoryNode(
    description: 'Que noitada, acabou destruindo metade do hotel e virou notícia, imprensa está atrás de você',
    actions: [
      HistoryAction(
        text: 'Dar entrevistas para aumentar popularidade no tiktok',
        nextStep: 2,
      ),
      HistoryAction(
        text: 'Agredir o jornalista',
        nextStep: 3,
      ),
      HistoryAction(
        text: 'Se esconder do mundo e voltar a treinar',
        nextStep: 4,
      ),
    ],
  ),
  HistoryNode(
    description: 'Que legal, você alcançou 1 milhão de seguidores, mas acabou sendo expulso do time, boa sorte ano que vem...',
    actions: [
      HistoryAction(
        text: 'Começar de novo',
        nextStep: 0,
      ),
    ],
  ),
  HistoryNode(
    description: 'Ops, parece que você acabou sendo preso, agora é disputar a copa junto com o Ronaldinho',
    actions: [
      HistoryAction(
        text: 'Começar de novo',
        nextStep: 0,
      ),
    ],
  ),
  HistoryNode(
    description: 'Você treinou duro e está pronto para o mundial. O jogo começou e o zagueiro do Chelsea está te provocando',
    actions: [
      HistoryAction(
        text: 'Nada de levar desaforo pra casa...',
        nextStep: 2,
      ),
      HistoryAction(
        text: 'Manter cabeça fria e focar no jogo',
        nextStep: 5,
      ),
    ],
  ),
  HistoryNode(
    description: 'Você foi fantástico, jogou demais, fez gol, mas infelizmente o Chelsea fez mais e o Palmeiras continua sem mundial....',
    actions: [
      HistoryAction(
        text: 'Tentar de novo',
        nextStep: 0,
      ),
    ],
  ),
];

class HistoryNode {
  HistoryNode({
    required this.description,
    required this.actions,
  });

  String description;
  List<HistoryAction> actions;
}

class HistoryAction {
  HistoryAction({
    required this.text,
    required this.nextStep,
  });

  String text;
  int nextStep;
}
