import { Component } from '@angular/core';
//import { Globals } from 'globals';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  state:number = 1;
  constructor()
  {
    
  }
  SwitchState(state:number)
  {
    this.state = state;
  }
}
