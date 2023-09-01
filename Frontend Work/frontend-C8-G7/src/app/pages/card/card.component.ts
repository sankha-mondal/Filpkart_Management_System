import {Component, OnDestroy, OnInit} from '@angular/core';
// import {prod, products} from '../shared/mockData';
import {ProductService} from '../../services/product.service';
import {ActivatedRoute, Router} from '@angular/router';
import {Subscription} from "rxjs";
import { WishListService } from '../../services/wish-list.service';
import {JwtResponse} from '../../response/JwtResponse';
import {UserService} from '../../services/user.service';
import { CartService } from 'src/app/services/cart.service';
import { User } from 'src/app/models/User';
import {Role} from "../../enum/Role";


@Component({
  selector: 'app-card',
  templateUrl: './card.component.html',
  styleUrls: ['./card.component.css']
})
export class CardComponent implements OnInit, OnDestroy {


  title: string;
  page: any;
  searchText: string="";
  user: User;
  Role = Role;
  private paramSub: Subscription;
  private querySub: Subscription;
  addedToWishlist: boolean = false;
  category_name: string = "";
  searchTerm:String = "";
  sortOfParamt: string = '';
  sortOrderBy: string = 'asc';


  constructor(private productService: ProductService,
              private route: ActivatedRoute,
              private wishListService: WishListService,
              private userService:UserService,
              private cartService: CartService,
              ) {
                this.user = new User();
                this.userSubscription = this.userService.currentUser.subscribe(user => this.currentUser = user);
  }

  currentUser: JwtResponse;
  userSubscription: Subscription;
  flag2: boolean = false;
  time: string = "10:48:36";
  hr: any = 12;
  min: any = 47;
  sec: any = 60; 
  // category_name: string="testing category";  


  ngOnInit() {
    this.querySub = this.route.queryParams.subscribe(() => {
      this.update();
    });
    this.paramSub = this.route.params.subscribe(() => {
      this.update();
    });
    this.countdownsec();
    this.countdownmin();
    this.countdownhr();
    this.category_name = sessionStorage.getItem("search");

  }


  ngOnDestroy(): void {
    this.querySub.unsubscribe();
    this.paramSub.unsubscribe();
  }

  onSubmit() {
    this.userService.signUp(this.user).subscribe(u => {
      alert("Registration Successfully Done...👍🏻")
    },
        e => {});
  }


  SortOn_OrderBy() {
    if (this.sortOrderBy === 'desc') {
      this.sortOrderBy = 'asc';
    } else {
      this.sortOrderBy = 'desc';
    }
  }


  countdownsec() {
    setInterval(() => {
      if (this.sec > 1) {
        this.sec--;
        this.sec = this.sec<10 ? '0'+this.sec : this.sec;
      } else {
        this.sec = 60;
      }
    }, 1000);
  }

  countdownmin() {
    setInterval(() => {
      if (this.min > 1) {
        this.min--;
        this.min = this.min<10 ? '0'+this.min : this.min;
      } else {
        this.min = 60;
      }
    }, 60000);
  }

  countdownhr() {
    setInterval(() => {
      if (this.hr > 1) {
        this.hr--;
        this.hr = this.hr<10 ? '0'+this.hr : this.hr;
      } else {
        this.hr = 60;
      }
    }, 3600000);
  }

  update() {
    if (this.route.snapshot.queryParamMap.get('page')) {
      const currentPage = +this.route.snapshot.queryParamMap.get('page');
      const size = +this.route.snapshot.queryParamMap.get('size');
      this.getProds(currentPage, size);
    } else {
      this.getProds();
    }
  }
  getProds(page: number = 1, size: number = 8) {
    if (this.route.snapshot.url.length == 1) {
      this.productService.getAllInPage(+page, +size)
        .subscribe(page => {
          this.page = page;
          this.title = 'You are in the right place';
        });
    } else { //  /category/:id
      const type = this.route.snapshot.url[1].path;
      this.productService.getCategoryInPage(+type, page, size)
        .subscribe(categoryPage => {
          this.title = categoryPage.category;
          this.page = categoryPage.page;
        });
    }

  }

  handleAddToWishList( productId){
    console.log("started");
    this.cartService.addToWishList(productId).subscribe(() => {
      this.addedToWishlist=true;
    }
    );
    console.log(this.addedToWishlist);
  }

  handleRemoveFromWishList(productId){
    this.wishListService.removeFromWishList(productId).subscribe(() => {
      this.addedToWishlist=false;
    }
    );
  }



}
