import { Component, OnInit } from '@angular/core';
import { FetchDataService } from '../fetch-data.service';
import { Chores, FamMemb } from '../classes';
@Component({
  selector: 'app-add',
  templateUrl: './add.component.html',
  styleUrls: ['./add.component.scss']
})
export class AddComponent implements OnInit {

  error: boolean;
  success: boolean;
  ChoresList: Chores[] = [];
  FamMemList: FamMemb[] = [];

  constructor(private fetchData: FetchDataService) { }

  nameConvert(id) {
    return this.FamMemList.find(res => res.ID === id);
  }

  addChore(id, desc) {
    if (!id) {
      alert('Please select a family member.');
      return;
    }
    if (!desc) {
      alert('Please enter a chore description.');
      return;
    }
    this.fetchData.addChore(id, desc)
      .subscribe((res: any) => {
        if (res.msg === 'error') {
          this.error = true;
          console.log(res.res);
          return;
        }
        this.success = true;

      })
  }

  ngOnInit() {
    this.fetchData.getChores() //.pipe(skipWhile(v => !v), take(1))
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
