## Fundamentos do xUnit

1- os métodos de teste sem parâmetros são decorados com o atributo *Fact*:
```Csharp
[Fact]
public void Somar_dois_valores_resultado_correto()
{
}
```

2- Os métodos de teste com parâmetros são decorados com o atributo *Theory*. Os valores são fornecidos pelo atributo *InlineData*:
```Csharp
[Theory]
[InlineData(-10)]
public void Nao_pode_criar_valor_negativo(decimal valor)
{
}
```

3- Podemos desativar um teste usando a propriedade *Skip* e indicar o motivo:
```Csharp
[Fact(Skip = "Teste ainda não disponível")]
public void Teste()
{
}
```

4- Podemos organizar os testes em grupos com o atributo *Trait* e criar nomes de categorias:
```Csharp
[Fact(DisplayName = "Teste Numero 2")]
[Trait("Calculo", "Somar")]
public void Somar_DoisNumeros_RetornaNumero()
{
}
```
