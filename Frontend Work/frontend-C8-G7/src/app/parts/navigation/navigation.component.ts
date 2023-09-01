import {Component, OnDestroy, OnInit} from '@angular/core';
import {UserService} from "../../services/user.service";
import {JumpService} from "../../services/jump.service";
import {Subscription} from "rxjs";
import {JwtResponse} from "../../response/JwtResponse";
import {Router} from "@angular/router";
import {Role} from "../../enum/Role";
import { User } from 'src/app/models/User';
import { products } from 'src/app/mockData';


@Component({
    selector: 'app-navigation',
    templateUrl: './navigation.component.html',
    styleUrls: ['./navigation.component.css']
})
export class NavigationComponent implements OnInit, OnDestroy {


    currentUserSubscription: Subscription;
    name$;
    name: string;
    currentUser: JwtResponse;
    root = '/';
    Role = Role;
    userList : User[];
    b_name: string = "Show Less";
    flag1: boolean = true;
    flag2: boolean = true;
    page: any;
    searchText: string="";
    get_category: string="";
    root_name: string = "product";


    categories = [
        { id: '0', n1:'tables and chairs',n2:'table', n3:'tables', n4:'chair', n5:'chairs', n6:'laptop table', n7:'study table', n8:'meeting table',n9:'dining table'},
        { id: '1', n1: 'beds',n2:'bed', n3:'bedsheet', n4:'bedsheets', n5:'single bed', n6:'double bed', n7:'wooden bed', n8:'rod iron bed', n9:'round bed'},
        { id: '2', n1: 'sofas',n2:'sofa', n3:'sofa set', n4:'sofa cover', n5:'sofa cover 3 seater', n6:'sofa cover 2 seater', n7:'sofa 3 seater', n8:'sofa 2 seater', n9:'sofa with pillow'},
        { id: '3', n1: 'lighting',n2:'lamp', n3:'study lamp', n4:'table lamp', n5:'led', n6:'light', n7:'lamp for room', n8:'night lamp', n9:'led lamp'},
        { id: '4', n1: 'dinnerwares',n2:'dinner set', n3:'dinnerware', n4:'dinner set full', n5:'dish', n6:'dishes', n7:'dinner set glass', n8:'dinner set steel set full', n9:'dinner set bone china'},
        { id: '5', n1: 'wardrobes',n2:'wardrobe', n3:'showcase', n4:'showcase wardrobe', n5:'almirah', n6:'almirahs', n7:'almirah for clothes', n8:'wood almirah', n9:'iron almirah'},
        { id: '6', n1: 'planters',n2:'planter', n3:'pot', n4:'pots', n5:'planter for small tree', n6:'planter for large tree', n7:'tree pot', n8:'coloured pot almirah', n9:'grass pot'},
        { id: '7', n1: 'decorations',n2:'decoration', n3:'decoration items', n4:'decoration items for house', n5:'home decor', n6:'home decoration', n7:'garden decoration', n8:'home decoration items for living room', n9:'design'},
        { id: '8', n1: 'cooktops',n2:'cooktop', n3:'philips cooktop', n4:'oven', n5:'ovens', n6:'crompton cooktop', n7:'prestige cooktop', n8:'bajaj cooktop',n9:'hanells cooktop'},
        { id: '9', n1: 'mirrors',n2:'mirror', n3:'mirror for room', n4:'mirror for bath room', n5:'long mirror', n6:'round mirror', n7:'hand mirror', n8:'pocket mirror', n9:'wall mirror'},
        { id: '10', n1: 'televisions',n2:'television', n3:'tv', n4:'tvs', n5:'lg tv', n6:'sony tv', n7:'tv old', n8:'smart tv', n9:'tv old model'},
        { id: '11', n1: 'kids and teens',n2:'kid and teen', n3:'kids car', n4:'kids', n5:'kid toy', n6:'kid', n7:'kids cycle', n8:'kids house', n9:'kids table'},
        { id: '12', n1: 'clocks',n2:'clock', n3:'wall clock', n4:'design clock', n5:'clock watch', n6:'digital clock', n7:'clock watch home', n8:'analog clock', n9:'railway clock'}
      ];

    constructor(private userService: UserService,private router: Router, private jump: JumpService) { }

    equalToNum() {
      sessionStorage.setItem("search",this.searchText);
      for (let i=0; i<this.categories.length; i++) {
        console.log ("Block statement execution no." + i);
        let item = this.searchText.toLowerCase();
        let a = this.categories[i].n1;
        let b = this.categories[i].n2;
        let c = this.categories[i].n3;
        let d = this.categories[i].n4; 
        let e = this.categories[i].n5;
        let f = this.categories[i].n6;
        let g = this.categories[i].n7;
        let h = this.categories[i].n8;
        let j = this.categories[i].n9;

        if(item == a || item == b || item == c  || item == d || item == e || item == f || item == g || item == h || item == j) {

              this.get_category = this.categories[i].id;
              this.searchText = "";
        }
      }
    }

    toggle1() {
        if(this.flag1) {
          this.flag1 = false;
          this.b_name = "Show More";
        } else {
          this.flag1 = true;
          this.b_name = "Show Less";
        }
      }


      transfer(get: string) {
        console.log("It is:")
          this.jump.transferDate(get);
      }

    // toggle2() {
    //     if(this.flag2) {
    //       this.flag2 = false;
    //       console.log("flag2: "+this.flag2);
    //     } else {
    //       this.flag2 = true;
    //     }
    //   }


    ngOnInit() {
        this.name$ = this.userService.name$.subscribe(aName => this.name = aName);
        this.currentUserSubscription = this.userService.currentUser.subscribe(user => {
            this.currentUser = user;
            if (!user || user.role == Role.Customer) {
                this.root = '/';
            } else {
                this.root = '/seller';
            }
        });
    }

    ngOnDestroy(): void {
        this.currentUserSubscription.unsubscribe();
        // this.name$.unsubscribe();
    }

    logout() {
        this.userService.logout();
        // this.router.navigate(['/login'], {queryParams: {logout: 'true'}} );
    }


    getUsers(){
        this.userService.getUsers().subscribe(response => this.userList= response);
      }
    

}
