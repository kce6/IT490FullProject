import { Component, OnInit } from '@angular/core';
import { Globals } from '../../ts/globals';
import { DataTableResource } from 'angular-4-data-table';
import { GetWeatherService } from '../../services/get-weather.service';
import { BsModalService, BsModalRef } from 'ngx-bootstrap/modal';
import { SearchComponent } from '../modals/search/search.component';
@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent {
  /**Storms Tracked */
  trackedStorms = [];
  /**Search Variables*/
  searchStorm: String = "";
  searchError: String = "";
  searchStormResultNone: boolean = true;
  searchModal: BsModalRef;

  constructor(private globals: Globals, private getWeatherService: GetWeatherService, private modalService: BsModalService) {
    this.GetTrackedStorms();
  }
  /**TrackedStorms*/
  /**Remove specified storm from track list */
  removeFromTracked(storm) {
    var index = this.trackedStorms.indexOf(storm);
    if (index !== -1) {
      this.trackedStorms.splice(index, 1);
    }
    /**TODO: Updated users tracked Storm*/
  }
  /**Make a call to backend to get list of tracked storms for current user */
  GetTrackedStorms() {
    this.trackedStorms.push("Ana");
    /*
    this.getWeatherService.GetTrackedStorms(this.globals.user.email).subscribe(res => {

    });
    */
  }
  /**Add specified storm to list of tracked storms */
  AddToTracked(storm) {
    var index = this.trackedStorms.indexOf(storm);
    if (index == -1) {
      this.trackedStorms.push(storm);
    }
    /**TODO: Updated users tracked Storm*/
  }
  /**Get Details of specified storm */
  TrackedGetDetails(storm) {
    this.getWeatherService.GetWeatherName(storm).subscribe(res => {
      this.globals.searchResponse = res;
      this.OpenSearchModal();
    });
  }
  /**Compare */
  /**Add storm to list of storms to compare */
  AddToCompare(storm) {
    var index = this.globals.compareList.indexOf(storm);
    if (index == -1) {
      this.globals.compareList.push(storm);
    }
  }
  /**Clear the list of storms to compare */
  ClearCompare() {
    this.globals.compareList = [];
  }
  /**Search */
  /**Make a call to backend to check if storm exists within the database */
  QueryStorm() {
    this.getWeatherService.GetWeatherName(this.searchStorm).subscribe(res => {
      if (res.success == false) {
        this.searchStormResultNone = true;
        this.globals.searchResponse = null;
      }
      else {
        this.globals.searchResponse = res;
        this.searchStormResultNone = false;
        //this.OpenSearchModal();
      }
    });
  }
  /**Opens the search modal to display storm data */
  OpenSearchModal() {
    //Make Call to Get Data  
    this.searchModal = this.modalService.show(SearchComponent, { class: 'modal-xl' });
    this.searchModal.content.title = "Storm Data For: " + this.globals.searchResponse.name;
  }
  /**Compare */
  CompareStorms() {
    console.log("CompareStorms Called");
  }

}