## ngFor
### angular 15 e 16
```ts
import { Component } from '@angular/core';
  
@Component({
  selector: 'app-root',
  templateUrl: `
	<div *ngFor="let produto of produtos">
	  <p><b>Nome: </b>{{produto.nome}}</p>
	  <p><b>departamento: </b>{{produto.departamento}}</p>
	</div>
<router-outlet></router-outlet>
`,
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  isCollapsed: boolean = false;
  
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