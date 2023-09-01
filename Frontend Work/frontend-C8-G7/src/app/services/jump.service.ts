import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class JumpService {

  category: string="";

  constructor() { }

  transferDate(getCategory: string) {
      this.category = getCategory;
      console.log(this.category);
  }
}
