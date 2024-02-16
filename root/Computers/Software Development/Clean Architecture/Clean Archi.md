# LIVE: Arquitetura Limpa com Java

### Aprenda Arquitetura Limpa com o melhor - Livro Uncle Bob

[Arquitetura limpa: O guia do artesão para estrutura e design de software](https://amzn.to/3ReIzNk)

# Revisão

# O que é arquitetura limpa?

É um padrão de arquitetura de software, ou seja, define formas de como a gente vai implementar o código da nossa aplicação.

*Mas não se refere diretamente à tecnologias*, a arquitetura limpa pode ser aplicada em todas linguagens e frameworks. Assim como os princípios SOLID por exemplo.

Para entender arquitetura limpa, precisamos entender os seguintes conceitos:

## Inversão de Dependência

**A Inversão de Dependência corresponde a letra D, do padrão SOLID, que traz a ideia que nossos módulos devem depender de abstrações e não implementações**, ou seja, nossas classes não deveriam ser diretamente acopladas a outras classes e sim trabalhar em cima de uma interface ou classe abstrata, dessa forma nossa classe conhece apenas a abstração, que define os métodos e atributos necessários para ela precisa atinja seu propósito.

![[Pasted image 20240201204238.png]]

### Para saber mais

[Fernanda Kipper | Dev on Instagram: "Você conheço o último princípio do SOLID? • • • A Inversão de Dependência corresponde a letra D, do padrão SOLID, que traz a ideia que nossos módulos devem depender de abstrações e não implementações, ou seja, nossas classes não deveriam ser diretamente acopladas a outras classes e sim trabalhar em cima de uma interface ou classe abstrata, dessa forma nossa classe conhece apenas a abstração, que define os métodos e atributos necessários para ela precisa atinja seu propósito. Já a Injeção de Dependência é um Design Pattern, uma forma colocar em prática a Inversão de Dependência. Nela, existe um terceiro objeto, quem utiliza nosso módulo por exemplo, que será responsável por injetar uma instância de uma classe que implemente a interface esperada no nosso modulo, essa injeção pode ser através do construtor, porém existem outras formas, como através de setter injection. Se quiser se aprofundar no assunto, recomendo a leitura do artigo sobre Inversion Control Container and the Dependency Injection pattern do Martin Fowler.](https://www.instagram.com/reel/Cjf7jGTrVmd/) [https://martinfowler.com/articles/injection.html](https://martinfowler.com/articles/injection.html) • • • #computacao #tecnologia #programagão #solid #programadores #desenvolvedores #computação #código #dependencyinversion"

## Desacoplamento - Regra da Dependência

A regra de dependência e o princípio do desacoplamento são conceitos centrais na arquitetura limpa.

No livro, Uncle Bob enfatiza a importância de manter as dependências na direção correta, o que significa que as camadas internas da aplicação (como as regras de negócios) não devem depender das camadas externas (como frameworks e detalhes técnicos). Isso é essencial para alcançar o desacoplamento e garantir que as mudanças nas camadas externas não afetem as camadas internas.

![[Pasted image 20240201204534.png]]
→ Os círculos representam as camadas da nossa aplicação.

> As camadas mais internas não devem conhecer implementações das camadas mais externas a elas

**O que isso quer dizer?**

→ O usuário/cliente se comunica com a camada mais externa

- Essa camada normalmente é chamada de infra
- Banco de dados, UI, Serviços Terceiros…

→ interface adapters

- Essa camada faz a adaptação da camada mais externa para uma **interface** a qual a camada de casos de uso conhece
- A camada de casos de uso _**não deve conhecer a implementação da camada de infra**_
    - Essa camada da aplicação não depende diretamente da implementação de outra camada, ela apenas conhece uma abstração (um contrato) e faz uso desse contrato.

→ use cases

- Camada de casos de uso, contém as regras de negócio da nossa aplicação
- Não conhece detalhes das camadas mais externas, **só usa abstrações**
- Esses casos de uso orquestram o fluxo dos dados de/para as entidades e direcionam essas entidades para usar suas regras de negócios
- Exemplo: Aplicativo de transferência de remessa internacional
    - (Remessa Online ou Paypal)
    - Exemplo: O cliente deve poder transferir um valor de seu saldo para outro cliente da plataforma

→ entities

- As **entidades são os objetos de negócios**
- São as regras mais gerais e de mais alto nível do negócio
- Elas são os menos propensos a mudar quando algo externo muda
- Exemplo: Aplicativo de transferência de remessa internacional
    - (Remessa Online ou Paypal)
    - O cliente deve conter um CNPJ, um número de conta no Brasil, e um saldo, sendo o CNPJ um identificador único de cada cliente

> **À medida que você avança as camadas, de fora pra dentro, o software se torna mais abstrato e encapsula políticas de nível superior. O círculo mais interno é o mais geral, que conhece menos detalhes de implementações.**

# Core da aplicação

Core ou camada central é camada mais interna.
Esta camada deve conter as regras de negócios e os casos de uso da nossa aplicação, como vimos anteriormente.
**O caso de uso define o que nosso app faz, mas não como ele faz.**
É agnóstico em relação a quaisquer estruturas ou tecnologias externas.
O caso de uso deve consistir em uma interface (contrato) que defina o comportamento que sua aplicação espera. Esta interface representa a funcionalidade de alto nível.

## Exemplo:

**Regra de Negócio:** "Os clientes têm direito a um desconto de 10% em seus pedidos se o valor total do pedido for superior a R$ 500,00."

```java
package com.kipper.fooddelivery.core;

public interface CriarPedidoUseCase {
    void criarPedido(Pedido pedido);
    boolean deveAplicarDesconto(double valorDaCompra);
}
```

# Camada de aplicação

Esta camada contém a implementação dos nossos casos de uso. Então ela vai conhecer o núcleo da nossa aplicação (core, mas não conhece sistemas externos ou mecanismos de entrega.
A camada de aplicação conecta o núcleo ao mundo externo e atua como uma ponte entre a lógica de negócios central e a infraestrutura.

```java
package com.example.fooddelivery.application.usecases;

import com.example.fooddelivery.domain.model.Pedido;
import com.example.fooddelivery.adapters.persistence.PedidoRepository;

@Service
public class CriarPedidoService implements CriarPedidoUseCase {
    private final PedidoRepository pedidoRepository;

    public CriarPedidoUseCase(PedidoRepository pedidoRepository) {
        this.pedidoRepository = pedidoRepository;
    }

		public boolean deveAplicarDesconto(double valorDaCompra) {
        return valorDaCompra > 500;
		}

    public Pedido criarPedido(Pedido pedido) {
        double valorTotal = pedido.calcularValorTotal();

        if (this.deveAplicarDesconto(valorTotal)) {
            valorTotal *= 0.9; // Aplicar desconto de 10%
        }

        Pedido pedidoCriado = pedidoRepository.salvar(pedido);

        return pedidoCriado;
    }
}
```

# Camada de Interface Adapters

A camada de interface adapters é uma camada intermediária entre a camada de aplicação/core e a camada de frameworks e drivers externos (infra).
Ela é responsável por adaptar os detalhes técnicos e externos da aplicação para que eles possam ser usados pelas **camadas de aplicação.**
A camada de interface adapters inclui adaptadores para bancos de dados, frameworks web (como o JPA), serviços externos (como o Sendgrid ou Twillio) e outros componentes externos.
### Exemplo:

A definição da interface do **`PedidoRepository`** pode fazer parte da camada de interface adapters, mais especificamente, na subcamada de persistência. Essa interface é responsável por definir um contrato que será implementado pelos detalhes técnicos de persistência, como um banco de dados ou uma camada de acesso a dados.

```java
package com.kipper.fooddelivery.adapters;

public interface PedidoRepository {
    Pedido salvar(Pedido pedido);
		Optional<Pedido> buscarPedido(String id);
}
```

# Camada de infraestrutura

Esta camada é responsável por interagir com sistemas, serviços e estruturas externas.
No nosso caso, é onde vamos implementar a comunicação com outros serviços, como o banco de dados… Os componentes da camada de infraestrutura devem implementar as interfaces definidas nas camadas anteriores.
Então essa é a camada mais externa
A implementação dos repositories costumam ficar nessa camada

```java
package com.kipper.fooddelivery.adapters;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import javax.persistence.EntityManager;
import java.util.Optional;

@Repository
public class PedidoRepositoryImpl implements PedidoRepository {

    private final EntityManager entityManager;

    @Autowired
    public PedidoRepositoryImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Override
    public Pedido salvar(Pedido pedido) {
        entityManager.persist(pedido);
        return pedido;
    }

    @Override
    public Optional<Pedido> buscarPedido(String id) {
        Pedido pedido = entityManager.find(Pedido.class, id);
        return Optional.ofNullable(pedido);
    }
}
```

## Repositórios de exemplo

[GitHub - soyjuanmalopez/clean-architecture: A example of clean architecture in Java 8 and Spring Boot 2.0](https://github.com/soyjuanmalopez/clean-architecture/tree/master)
[GitHub - grant-burgess/clean-architecture-example-java-spring-boot: My interpretation of Clean Architecture with Spring Boot](https://github.com/grant-burgess/clean-architecture-example-java-spring-boot)
[GitHub - eliostvs/clean-architecture-delivery-example: A example of clean architecture in Java 8 and Spring Boot 2.0](https://github.com/eliostvs/clean-architecture-delivery-example/tree/master)