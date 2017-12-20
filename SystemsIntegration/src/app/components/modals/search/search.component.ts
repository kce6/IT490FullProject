import { Component, OnInit } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { Globals } from '../../../ts/globals';
import { BsModalService, BsModalRef } from 'ngx-bootstrap/modal';
@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})
export class SearchComponent implements OnInit {
  title: string;
  searchResponse: any;

  showLatitude: boolean;
  showLongitude: boolean;
  showWindSpeed: boolean;
  showPercepitation: boolean;
  showStat: boolean;

  ADV: any[] = [];
  LAT: any[] = [];
  LON: any[] = [];
  WIND: any[] = [];
  PR: any[] = [];
  STAT: any[] = [];

  view: any[] = [700, 400];

  // options
  showXAxis = true;
  showYAxis = true;
  gradient = false;
  showLegend = true;
  showXAxisLabel = true;
  showYAxisLabel = true;

  colorScheme = {
    domain: ['#5AA454', '#A10A28', '#C7B42C', '#AAAAAA']
  };

  // line, area
  autoScale = true;

  constructor(private globals: Globals) {
    var ob =
      this.LAT.push(
        {
          name: globals.searchResponse.name,
          series: []
        }
      );
    this.LON.push(
      {
        name: globals.searchResponse.name,
        series: []
      }
    );
    this.WIND.push(
      {
        name: globals.searchResponse.name,
        series: []
      }
    );
    this.PR.push(
      {
        name: globals.searchResponse.name,
        series: []
      }
    );
    this.STAT.push(
      {
        name: globals.searchResponse.name,
        series: []
      }
    );
    this.globals.searchResponse.series.forEach(element => {
      {
        this.LAT[0].series.push({
          name: element.YEAR,
          value: element.LAT
        });
        this.LON[0].series.push({
          name: element.YEAR,
          value: element.LON
        });
        this.PR[0].series.push({
          name: element.YEAR,
          value: element.PR
        });
        this.WIND[0].series.push({
          name: element.YEAR,
          value: element.WIND
        });
        this.STAT[0].series.push({
          name: element.YEAR,
          value: element.STAT
        });
      }
    });
  }

  onSelect(event) {
    console.log(event);
  }

  ngOnInit() {

  }

}
