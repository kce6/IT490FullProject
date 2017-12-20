import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.css']
})
export class MainComponent implements OnInit {

  tabs:number;
  constructor() {
    this.tabs = 1;
   }

  ngOnInit() {
  }
  SwitchTabs(tab:number)
  {
    this.tabs = tab;
  }

}
