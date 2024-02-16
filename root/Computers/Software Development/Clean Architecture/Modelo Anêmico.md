# Modelo Anêmico

O modelo de domínio anêmico é um _modelo de domínio_ onde os objetos que representam as entidades do domínio contêm pouca ou nenhuma lógica de negócios (validações, cálculos, regras de negócios etc.). (Martin Fowler).

Um modelo de domínio anêmico é um modelo sem comportamento onde temos _diversas propriedades_ com _get_ e _set_ públicas definidas sem lógica alguma e onde o _cliente_ do _domínio_ tem controle sobre como instanciar e modificar o domínio.

## Exemplo

```csharp
//Exemplo de classe no modelo Anêmico
public class Pedido
{
	public int Id { get; set; }
	public string Nome { get; set; }
	public string Endereco { get; set;}
}

//Exemplo de classe de serviço que interage com esse modelo

public class ClienteService{
	public void AddCliente() {...}
	public void AtualizaCliente() {...} 
	public void RemoveCliente() {...}
}
```

## Características

- Contém somente propriedades com _get_ e _set_ públicos;
- Não possuem validações nem comportamentos;
- A lógica e manipulação da classe é colocada em outra classe ([[Modelo Anêmico#Exemplo|serviço]]);
- Não possuem gerenciamento de estado, permitindo que objetos com estado inconsistente sejam criados
- Permitem que outros objetos criem instâncias e modifiquem o domínio.

## Problemas com esse modelo

- O cliente precisa interpretar o objetivo e o uso da classe e a lógica é enviada para outras classes, denominadas serviços de classe de domínio;
- Violação do encapsulamento;
- Dificuldade na manutenção;
- Lógica de negócios duplicada;
- Não é possível garantir que as entidades no modelo estejam em um estado consistente;
- Baixa coesão.

## Enriquecendo o Modelo Anêmico

Para evitar os problemas do modelo anêmico podes enriquecê-lo utilizando alguns recursos:
- Usa r propriedades com *setters* privados (e classes *sealed*); 
- Validar estado da entidade;
- Evitar construtores sem parâmetros;
- Definir invariantes;
- Trazer regras de comportamentos dos serviços para o modelo de domínio;
- Usar os conceitos de programação orientada a objetos;
- Cuidado ao utilizar frameworks ORM, como Entity Framework Core.
### Exemplo de Enriquecimento

```C#
//Exemplo de classe no modelo Anêmico
public class Cliente
{
	public int Id { get; set; }
	public string Nome { get; set; }
	public string Endereco { get; set;}
}

//Exemplo de classe no modelo Anêmico Enriquecida
public class Cliente
{
	public int Id { get; private set; }
	public string Nome { get; private set; }
	public string Endereco { get; private set;}

	public Cliente(int id, string nome, string endereco) 
	{
		Validar(id, nome, endereco);
		Id = id;
		Nome = nome;
		Endereco = endereco;
	}

	public void Update(int id, string nome, string endereco)
	{
		Validar(id, nome, endereco);
		Nome = nome;
		Endereco = endereco;
	}

	private static void Validar(id, nome, endereco) {...}

}
```