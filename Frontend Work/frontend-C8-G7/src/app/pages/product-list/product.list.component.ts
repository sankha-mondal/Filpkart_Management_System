import {Component, Injectable, OnDestroy, OnInit} from '@angular/core';
import {UserService} from "../../services/user.service";
import {ProductService} from "../../services/product.service";
import {JwtResponse} from "../../response/JwtResponse";
import {Subscription} from "rxjs";
import {ActivatedRoute} from "@angular/router";
import {CategoryType} from "../../enum/CategoryType";
import {ProductStatus} from "../../enum/ProductStatus";
import {ProductInfo} from "../../models/productInfo";
import {Role} from "../../enum/Role";
import {ExcelService} from "../../services/ExcelService"
import { HttpClient, JsonpClientBackend } from '@angular/common/http';
import { Router } from '@angular/router';
import { NgForm } from '@angular/forms';
@Injectable({
    providedIn: 'root'
})
@Component({
    selector: 'app-product.list',
    templateUrl: './product.list.component.html',
    styleUrls: ['./product.list.component.css']
})
export class ProductListComponent implements OnInit, OnDestroy {

    constructor(private userService: UserService,
                private productService: ProductService,
                private route: ActivatedRoute,
                private excelService: ExcelService,
                private router:Router) {
    }

    Role = Role;
    currentUser: JwtResponse;
    page: any;
    CategoryType = CategoryType;
    ProductStatus = ProductStatus;
    private querySub: Subscription;
    response:any;
    productInfo = [];
    searchText: string="";
   // private router: Router;
    
    data : any[] ;  
    // Variable to store shortLink from api response
    shortLink: string = "";
    loading: boolean = false; // Flag variable

    ngOnInit() {
        this.querySub = this.route.queryParams.subscribe(() => {
            this.update();
        });
    }

    ngOnDestroy(): void {
      
    }
//------------------------------------------------------------------------------------------------

logout() {
    this.userService.logout();
    // this.router.navigate(['/login'], {queryParams: {logout: 'true'}} );
    // this.router.navigate(["login"]);
}

// logout() {
//     this.userService.logout().subscribe(result=> {
//         this.router.navigate(["login"]);
//     }, error=> console.log(error), ()=> {

//     })

//------------------------------------------------------------------------------------------------    

    update() {
        if (this.route.snapshot.queryParamMap.get('page')) {
            const currentPage = +this.route.snapshot.queryParamMap.get('page');
            const size = +this.route.snapshot.queryParamMap.get('size');
            this.getProds(currentPage, size);
        } else {
            this.getProds();
        }
    }

//-------------------------------------------------------------------------------------------------

    getProds(page: number = 1, size: number = 5) {
        this.productService.getAllInPage(+page, +size)
            .subscribe(page => {
                this.page = page;
            });

    }

//--------------------------------------------------------------------------------------------------

    remove(productInfos: ProductInfo[], productInfo) {
        this.productService.delelte(productInfo).subscribe(_ => {
                productInfos = productInfos.filter(e => e.productId != productInfo);
            },
            err => {
            });
    }

    exportAsXLSX():void{
            this.productService.getAll().subscribe(response => this.productInfo = response);
            console.log(this.data);
            this.excelService.exportAsExcelFile(this.productInfo,"Report");
    }

//----------------------------------------------------------------------------------------------


  //  Store Product Operation: 

  storeProductDb(productRef:NgForm): void {
    let product = productRef.value;
    console.log(product);
    this.productService.storeProduct(product).subscribe(result=> {
      alert(result);
    },error=>console.log(error),()=> {
        const currentPage = +this.route.snapshot.queryParamMap.get('page');
        const size = +this.route.snapshot.queryParamMap.get('size');
        this.getProds(currentPage, size);
    })
    productRef.reset();
  }
    


//----------------------------------------------------------------------------------------------

file: any;
flag: boolean = true;
// fileUploadURL = "http://localhost:8080/api/csv/upload";


  // On file Select
  selectFile(event: any) {
    console.log(event);
    this.file = event.target.files[0];
    console.log(this.file);
}

  // OnClick of button Upload
//   uploadFile() {
//     let formData = new FormData();
//     formData.append("file",this.file);  //  here "file" is equal to backend @RequestParam("file")

//     this.flag = false;
//     this.http.post(this.fileUploadURL,formData).subscribe(
//       (datas: any)=>{
//         // success
//         console.log(datas);
//         this.flag = true;
//         alert(datas.message);
//       },
//       (error)=>{
//         // error
//         this.flag = true;
//         console.log(error);
//         alert("Error: File not uploaded")
//       }
//     );
//   }

        // OnClick of button Upload
        uploadFile() {
            this.loading = !this.loading;
            this.flag = false;
            console.log(this.file);
            this.productService.upload(this.file).subscribe(
                (datas: any) => {
                                                                    // if (typeof (datas) === 'object') {
                                                                    //     // Short link via api response
                                                                    //     this.shortLink = datas.link;
                                                                    //     this.loading = false; // Flag variable 
                                                                    // }
                    // success
                        console.log(datas);
                        this.flag = true;
                        
                },(error)=>{
                    // error
                    this.flag = true;
                    console.log(error);
                    alert("Error: File not uploaded")
                }, ()=> {
                    this.flag = true; 
                }
            );
        }
















    

    onSubmit(){
        this.router.navigate(['/email']);
    }

}
