```ts
//produtos.service.ts
import { Injectable } from '@angular/core';
  
@Injectable({
  providedIn: 'root'
})

export class ProdutosService {
  
  constructor() { }

  getProdutos() {
    return [
      {
        nome: 'teclado',
        departamento: 'ti'
      },
      {
        nome: 'bobina',
        departamento: 'manutenção'
      },
      {
        nome: 'pasta',
        departamento: 'rh'
      },
    ]
  }
}

//produtos-detalhe.ts
import { Component } from '@angular/core';
import { ProdutosService } from '../produtos.service';

@Component({
  selector: 'produtos-detalhe',
  templateUrl: `
	<li *ngFor="let produto of produtos">
	  <p><b>Nome: </b>{{produto.nome}}</p>
	  <p><b>departamento: </b>{{produto.departamento}}</p>
	</li>
	`,
  styleUrls: ['./produtos-detalhe.component.scss']
})
export class ProdutosDetalheComponent {
  produtos = this.produtoService.getProdutos();

  constructor(private produtoService: ProdutosService) { }
}
```