//o modelo de dados é utilizado para estruturar as informações do App na forma de objetos 

class Tarefa{
  
  
  String livro;
  String autor;
  String urlImage;
  
  
  

  Tarefa(this.livro, this.autor, this.urlImage );

  //gerar tarefas aleatorias
  static List<Tarefa> gerarTarefas(){
    List<Tarefa> lista = [];
    //for(int i = 1; i <= 50; i++){
      lista.add(
        Tarefa(
       
          'A educação física como área de investigação científica 3.',
          'Autor: Lucio Marques Vieira Souza ',
          'assets/images/EducaFisica.jpg'
        ),
      );
      lista.add(
        Tarefa(
            
          'Bases científicas do treinamento de hipertrofia',
          'Autor: Paulo Gentil ',
          'assets/images/hipertrofia.jpg'
        ),
      );
      lista.add(
        Tarefa(
          
          'Mecânica dos Músculos.',
          'Autor: Everett Alberg ',
          'assets/images/mecanica.jpg'
        ),
      );
    //}
    return lista;
  }
}