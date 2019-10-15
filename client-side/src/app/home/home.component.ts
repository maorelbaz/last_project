import { Component, OnInit } from '@angular/core';
import { FetchDataService } from '../fetch-data.service';
import { Chores, FamMemb } from '../classes';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})

export class HomeComponent implements OnInit {

  constructor(private fetchData: FetchDataService) { }
  ChoresList: Chores[] = [];
  FamMemList: FamMemb[] = [];

  nameConvert(id) {
    return this.FamMemList.find(res => res.ID === id);
  }

  ngOnInit() {
    this.fetchData.getChores()
      .subscribe((res: any) => {
        if (res.msg === 'error') {
          console.log(res.res)
          return;
        }
        res.res.map(v => {
          this.ChoresList.push({ ID: v.ID, date: v.date, memid: v.memid, descr: v.descr })
        });
      });

    this.fetchData.getFamMemb()
      .subscribe((res: any) => {
        if (res.msg === 'error') {
          console.log(res.res)
          return;
        }
        res.res.map(v => {
          this.FamMemList.push({ ID: v.ID, name: v.name, nick: v.nick, descr: v.descr });
        });
      });
  }
}
