import { Component, OnInit } from '@angular/core';
import { GetWeatherService } from '../../services/get-weather.service';
import { Globals } from '../../ts/globals';
import { MainComponent } from '../main/main.component';
@Component({
  selector: 'app-side-bar',
  templateUrl: './side-bar.component.html',
  styleUrls: ['./side-bar.component.css']
})
export class SideBarComponent implements OnInit {

  Tempeture: String;
  Town: String
  userName: String;
  constructor(private globals: Globals, private getWeatherService: GetWeatherService, private main: MainComponent) {
    this.userName = globals.user.name;
  }

  /**Get the current tempeture of area based on zipcode*/
  ngOnInit() {
    this.getWeatherService.GetWeatherForCurrentZipCode(this.globals.user.zipcode).subscribe(res => {
      var tempInK = res.main.temp;
      this.Town = res.name;
      this.Tempeture = (tempInK * 9 / 5 - 459.67).toPrecision(2);
      console.log(this.Town);
    });
  }

}
