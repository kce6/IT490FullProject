import { Injectable } from '@angular/core';
import { Http, Headers} from '@angular/http';
import {Observable} from 'rxjs/Observable';
import 'rxjs/add/operator/map';
@Injectable()
export class AuthenticationService {
  constructor(private http:Http) { }

  Authenticate(user)
  {
    let headers = new Headers();
    headers.append('Cache-Control','no-cache,private,no-store,must-revalidate,max-stale=0,post-check=0,pre-check=0');
    headers.append("Content-Type","application/json");
    return this.http.post(location.protocol + "//" + location.hostname + ":" + "3112" + "/users/authenticate",user,
    {headers:headers}).map(res => res.json());
  }
}
