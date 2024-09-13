```ts
//app.module.ts
import { NgModule } from '@angular/core';
import { MatSidenavModule } from '@angular/material/sidenav';
  
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ProdutosModule } from './produtos/produtos.module';

@NgModule({
  declarations: [
    AppComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }


//=========================================================================


//app.component.ts
import { Component } from '@angular/core';
  
@Component({
  selector: 'app-root',
  templateUrl: `
	<produtos></produtos>
	<router-outlet></router-outlet>
`,
  styleUrls: ['./app.component.scss']
})
export class AppComponent { }
```

```ts
//produtos.module.ts
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
  
import { ProdutosRoutingModule } from './produtos-routing.module';
import { ProdutosComponent } from './produtos.component';
import { ProdutosDetalheComponent } from './produtos-detalhe/produtos-detalhe.component';
  
@NgModule({
  //componentes do módulo
	declarations: [
    ProdutosComponent,
    ProdutosDetalheComponent //componente privado do módulo
  ],
  imports: [
    CommonModule,
    ProdutosRoutingModule
  ],
	//componentes públicos do módulos
  exports: [
    ProdutosComponent
  ]
})
export class ProdutosModule { }


//=========================================================================


//produtos.componente.ts
import { Component } from '@angular/core';
  
@Component({
  selector: 'produtos',
  templateUrl: `
	<h1>Produtos</h1>
	<ul>
	  <produtos-detalhe></produtos-detalhe>
	</ul>
	`,
  styleUrls: ['./produtos.component.scss']
})
export class ProdutosComponent { }


//=========================================================================


//produtos-detalhe.ts
import { Component } from '@angular/core';
  
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
  produtos: any = [
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
```