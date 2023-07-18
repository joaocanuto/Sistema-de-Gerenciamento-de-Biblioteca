#Criando autores
autor1 = Autor.create(nome: "J. R. R. Tolkien", endereco: "Rua 1", telefone: "123456789")
autor2 = Autor.create(nome: "J. K. Rowling", endereco: "Rua 2", telefone: "123456789")
autor3 = Autor.create(nome: "George R. R. Martin", endereco: "Rua 3", telefone: "333333333")
autor4 = Autor.create(nome: "Stephen King", endereco: "Rua 4", telefone: "444444444")
autor5 = Autor.create(nome: "Isaac Asimov", endereco: "Rua 5", telefone: "555555555")
autor6 = Autor.create(nome: "Philip K. Dick", endereco: "Rua 6", telefone: "666666666")



#Criando livros:
livro1 = Livro.create(titulo: "O Senhor dos Anéis", editora: "Editora 1", exemplares: 5, isbn: "1234567890")
livro2 = Livro.create(titulo: "Harry Potter", editora: "Editora 2", exemplares: 3, isbn: "1234567890")
livro3 = Livro.create(titulo: "Game of Thrones", editora: "Editora 3", exemplares: 6, isbn: "3333333330")
livro4 = Livro.create(titulo: "It", editora: "Editora 4", exemplares: 4, isbn: "4444444440")
livro5 = Livro.create(titulo: "Foundation", editora: "Editora 5", exemplares: 5, isbn: "5555555550")
livro6 = Livro.create(titulo: "Do Androids Dream of Electric Sheep?", editora: "Editora 6", exemplares: 2, isbn: "6666666660")
livro7 = Livro.create(titulo: "Livro 7", editora: "Editora 7", exemplares: 7, isbn: "7777777770")
livro8 = Livro.create(titulo: "Livro 8", editora: "Editora 8", exemplares: 8, isbn: "8888888880")
livro9 = Livro.create(titulo: "Livro 9", editora: "Editora 9", exemplares: 9, isbn: "9999999990")
livro10 = Livro.create(titulo: "Livro 10", editora: "Editora 10", exemplares: 10, isbn: "1010101010")
livro11 = Livro.create(titulo: "Livro 11", editora: "Editora 11", exemplares: 11, isbn: "1111111110")
livro12 = Livro.create(titulo: "Livro 12", editora: "Editora 12", exemplares: 12, isbn: "1212121212")

#Associando livros a autores:
LivroAutor.create(livro_id: livro1.id, autor_id: autor1.id)
LivroAutor.create(livro_id: livro2.id, autor_id: autor2.id)
LivroAutor.create(livro_id: livro2.id, autor_id: autor1.id)
LivroAutor.create(livro_id: livro3.id, autor_id: autor3.id)
LivroAutor.create(livro_id: livro4.id, autor_id: autor4.id)
LivroAutor.create(livro_id: livro5.id, autor_id: autor5.id)
LivroAutor.create(livro_id: livro6.id, autor_id: autor6.id)
LivroAutor.create(livro_id: livro7.id, autor_id: autor1.id)
LivroAutor.create(livro_id: livro8.id, autor_id: autor2.id)
LivroAutor.create(livro_id: livro9.id, autor_id: autor3.id)
LivroAutor.create(livro_id: livro10.id, autor_id: autor4.id)
LivroAutor.create(livro_id: livro11.id, autor_id: autor5.id)
LivroAutor.create(livro_id: livro12.id, autor_id: autor6.id)


#Criando clientes:
cliente1 = Cliente.create!(nome: "Cliente 1", email: "cliente1@gmail.com", password: "123456", endereco: "Rua 1", telefone: "123456789")
cliente2 = Cliente.create!(nome: "Cliente 2", email: "cliente2@gmail.com", password: "123456", endereco: "Rua 2", telefone: "123456789")
cliente3 = Cliente.create!(nome: "Cliente 3", email: "cliente3@gmail.com", password: "123456", endereco: "Rua 3", telefone: "333333333")
cliente4 = Cliente.create!(nome: "Cliente 4", email: "cliente4@gmail.com", password: "123456", endereco: "Rua 4", telefone: "444444444")
cliente5 = Cliente.create!(nome: "Cliente 5", email: "cliente5@gmail.com", password: "123456", endereco: "Rua 5", telefone: "555555555")
cliente6 = Cliente.create!(nome: "Cliente 6", email: "cliente6@gmail.com", password: "123456", endereco: "Rua 6", telefone: "666666666")
cliente7 = Cliente.create!(nome: "Cliente 7", email: "cliente7@gmail.com", password: "123456", endereco: "Rua 7", telefone: "777777777")
cliente8 = Cliente.create!(nome: "Cliente 8", email: "cliente8@gmail.com", password: "123456", endereco: "Rua 8", telefone: "888888888")
cliente9 = Cliente.create!(nome: "Cliente 9", email: "cliente9@gmail.com", password: "123456", endereco: "Rua 9", telefone: "999999999")
cliente10 = Cliente.create!(nome: "Cliente 10", email: "cliente10@gmail.com", password: "123456", endereco: "Rua 10", telefone: "101010101")
cliente11 = Cliente.create!(nome: "Cliente 11", email: "cliente11@gmail.com", password: "123456", endereco: "Rua 11", telefone: "111111111")
cliente12 = Cliente.create!(nome: "Cliente 12", email: "cliente12@gmail.com", password: "123456", endereco: "Rua 12", telefone: "121212121")

#Criando admin:
admin = Admin.create!(email: 'admin@email.com', password: '123456', nome: 'admin')

#Criando empréstimos:
Emprestimo.create!(livro_id: livro1.id, cliente_id: cliente1.id, data_emprestimo: DateTime.now, data_devolucao: DateTime.now + 7.days)
Emprestimo.create!(livro_id: livro2.id, cliente_id: cliente2.id, data_emprestimo: DateTime.now, data_devolucao: DateTime.now + 7.days)
Emprestimo.create!(livro_id: livro1.id, cliente_id: cliente2.id, data_emprestimo: DateTime.now, data_devolucao: DateTime.now + 7.days)
Emprestimo.create!(livro_id: livro1.id, cliente_id: cliente3.id, data_emprestimo: DateTime.now, data_devolucao: DateTime.now + 7.days)
Emprestimo.create!(livro_id: livro1.id, cliente_id: cliente4.id, data_emprestimo: DateTime.now, data_devolucao: DateTime.now + 7.days)
Emprestimo.create!(livro_id: livro1.id, cliente_id: cliente5.id, data_emprestimo: DateTime.now, data_devolucao: DateTime.now + 7.days)
Emprestimo.create!(livro_id: livro2.id, cliente_id: cliente6.id, data_emprestimo: DateTime.now, data_devolucao: DateTime.now + 7.days)
Emprestimo.create!(livro_id: livro2.id, cliente_id: cliente7.id, data_emprestimo: DateTime.now, data_devolucao: DateTime.now + 7.days)
Emprestimo.create!(livro_id: livro2.id, cliente_id: cliente8.id, data_emprestimo: DateTime.now, data_devolucao: DateTime.now + 7.days)
Emprestimo.create!(livro_id: livro3.id, cliente_id: cliente9.id, data_emprestimo: DateTime.now, data_devolucao: DateTime.now + 7.days)
Emprestimo.create!(livro_id: livro3.id, cliente_id: cliente10.id, data_emprestimo: DateTime.now, data_devolucao: DateTime.now + 7.days)
Emprestimo.create!(livro_id: livro4.id, cliente_id: cliente11.id, data_emprestimo: DateTime.now, data_devolucao: DateTime.now + 7.days)
Emprestimo.create!(livro_id: livro4.id, cliente_id: cliente12.id, data_emprestimo: DateTime.now, data_devolucao: DateTime.now + 7.days)