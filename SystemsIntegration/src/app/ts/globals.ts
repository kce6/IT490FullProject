import {Injectable} from '@angular/core';

@Injectable()
export class Globals {
    currentUser: string = "";
    user:any;
    compareList = [];
    stormsInVicinity=["Katrina","Kale"];
    searchResponse:any;
    constructor()
    {
        
    }
}