import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import {HttpParams} from "@angular/common/http";
@Injectable({
  providedIn: 'root'
})
export class FetchDataService {

  constructor(
    private httpClient: HttpClient
  ) { }

  getChores() {
    return this.httpClient.get('http://localhost:3030/api/getchores');
  }
  getFamMemb() {
    return this.httpClient.get('http://localhost:3030/api/getfammem');
  }
  addChore(id: number, descr: string) {
    const body = {id: id, descr: descr};
    return this.httpClient.post('http://localhost:3030/api/addchore', body );
  }
}
