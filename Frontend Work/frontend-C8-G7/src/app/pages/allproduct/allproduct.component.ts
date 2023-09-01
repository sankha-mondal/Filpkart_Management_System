import {Component, OnDestroy, OnInit} from '@angular/core';
// import {prod, products} from '../shared/mockData';
import {ProductService} from '../../services/product.service';
import {ActivatedRoute} from '@angular/router';
import {Subscription} from "rxjs";
import { WishListService } from '../../services/wish-list.service';
import {JwtResponse} from '../../response/JwtResponse';
import {UserService} from '../../services/user.service';
import { CartService } from 'src/app/services/cart.service';

@Component({
  selector: 'app-allproduct',
  templateUrl: './allproduct.component.html',
  styleUrls: ['./allproduct.component.css']
})
export class AllproductComponent implements OnInit, OnDestroy {

  title: string;
  page: any;
  searchText: string="";
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
              private cartService: CartService,) {
                this.userSubscription = this.userService.currentUser.subscribe(user => this.currentUser = user);
  }

  currentUser: JwtResponse;
  userSubscription: Subscription;


  ngOnInit() {
    this.querySub = this.route.queryParams.subscribe(() => {
      this.update();
    });
    this.paramSub = this.route.params.subscribe(() => {
      this.update();
    });
    this.category_name = sessionStorage.getItem("search");

  }

  ngOnDestroy(): void {
    this.querySub.unsubscribe();
    this.paramSub.unsubscribe();
  }

  SortOn_OrderBy() {
    if (this.sortOrderBy === 'desc') {
      this.sortOrderBy = 'asc';
    } else {
      this.sortOrderBy = 'desc';
    }
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
  
  getProds(page: number = 1, size: number = 12) {
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

  update_new(c_id:number) {
    const currentPage = +this.route.snapshot.queryParamMap.get('page');
    const size = +this.route.snapshot.queryParamMap.get('size');
    this.getProdsByCategoryId(currentPage, size, c_id);
  }

  getProdsByCategoryId(page: number = 1, size: number = 8, c_id: number) {
    const type = this.route.snapshot.url[c_id].path;
      this.productService.getCategoryInPage(+type, page, size)
        .subscribe(categoryPage => {
          this.title = categoryPage.category;
          this.page = categoryPage.page;
        });
    }
  

}



