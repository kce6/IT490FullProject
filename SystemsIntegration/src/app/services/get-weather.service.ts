import { Injectable } from '@angular/core';
import { Http, Headers } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map';
@Injectable()
export class GetWeatherService {

  constructor(private http: Http) { }

  GetWeatherForCurrentZipCode(Zipcode: String) {
    let headers = new Headers();
    return this.http.get("http://api.openweathermap.org/data/2.5/weather?zip=" + Zipcode + ",us&APPID=0dc37dcb2a6e632aa96cc8f101909beb").map(res => res.json());
  }
  GetWeatherName(name: String) {
    var obj =
      {
        'name': name
      }
    let headers = new Headers();
    headers.append('Cache-Control', 'no-cache,private,no-store,must-revalidate,max-stale=0,post-check=0,pre-check=0');
    headers.append("Content-Type", "application/json");
    return this.http.post(location.protocol + "//" + location.hostname + ":" + "3112" + "/Users/GetWeatherDataByName", obj,
      { headers: headers }).map(res => res.json());
  }
  GetNearbyStorms(zipcode: String) {

  }
  GetTrackedStorms(email: String) {
    let headers = new Headers();
    headers.append('Cache-Control', 'no-cache,private,no-store,must-revalidate,max-stale=0,post-check=0,pre-check=0');
    headers.append("Content-Type", "application/json");
    return this.http.post(location.protocol + "//" + location.hostname + ":" + "3112" + "/Users/GetTrackedStorms", email,
      { headers: headers }).map(res => res.json());
  }
  GetStormInZipcode(zipcode:String)
  {
    let headers = new Headers();
    headers.append('Cache-Control', 'no-cache,private,no-store,must-revalidate,max-stale=0,post-check=0,pre-check=0');
    headers.append("Content-Type", "application/json");
    return this.http.post(location.protocol + "//" + location.hostname + ":" + "3112" + "/Users/GetStormInZipcode", zipcode,
      { headers: headers }).map(res => res.json());    
  }
  SaveTrackedStorms(storms:any[])
  {
    let headers = new Headers();
    headers.append('Cache-Control', 'no-cache,private,no-store,must-revalidate,max-stale=0,post-check=0,pre-check=0');
    headers.append("Content-Type", "application/json");
    return this.http.post(location.protocol + "//" + location.hostname + ":" + "3112" + "/Users/SaveTrackedStorms", storms,
      { headers: headers }).map(res => res.json());    
  }
  GetMultipleWeatherData(storms:any[])
  {
    let headers = new Headers();
    headers.append('Cache-Control', 'no-cache,private,no-store,must-revalidate,max-stale=0,post-check=0,pre-check=0');
    headers.append("Content-Type", "application/json");
    return this.http.post(location.protocol + "//" + location.hostname + ":" + "3112" + "/Users/GetMultipleWeatherData", storms,
      { headers: headers }).map(res => res.json());        
  }
}
