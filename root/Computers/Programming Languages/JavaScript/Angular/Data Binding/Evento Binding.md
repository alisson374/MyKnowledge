```html
<section class="event-binding">

  <article>
    <h3>Event binding</h3>
    <div>
      <button (click)="botaoClicado()"
      class="btn btn-primary">
        Me clique!
      </button>

      <br><br>

      <input type="text"
        (keyup)="onKeyUp($event)"
        (keyup.enter)="salvarValor(campoInput.value)"
        (blur)="salvarValor(campoInput.value)"
        #campoInput />

       <p>Valor atual: {{ valorAtual }}</p>
       <p>Valor salvo: {{ valorSalvo }}</p>

       <br>
       <span
        (mouseover)="onMouseOverOut()"
        (mouseout)="onMouseOverOut()"
        [class.highlight]="isMouseOver"
        >
         Passe o mouse sobre mim
      </span>
    </div>
  </article>

</section>
```
