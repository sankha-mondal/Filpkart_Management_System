import {AfterContentChecked, Component, OnInit} from '@angular/core';
import {ProductInfo} from "../../models/productInfo";
import {ProductService} from "../../services/product.service";
import {ActivatedRoute, Router} from "@angular/router";

@Component({
    selector: 'app-product-edit',
    templateUrl: './product-edit.component.html',
    styleUrls: ['./product-edit.component.css']
})
export class ProductEditComponent implements OnInit, AfterContentChecked {

    product = new ProductInfo();

    constructor(private productService: ProductService,
                private route: ActivatedRoute,
                private router: Router) {
    }

    productId: string;
    isEdit = false;

    ngOnInit() {
        this.productId = this.route.snapshot.paramMap.get('id');
        if (this.productId) {
            this.isEdit = true;
            this.productService.getDetail(this.productId).subscribe(prod => this.product = prod);
        }
    }

    update() {
        this.productService.update(this.product).subscribe(prod => {
                    // this.router.navigate(['/seller/product']);
                    console.log("Updated...") ;
            },
            error=> {
                this.router.navigate(['/seller/product']);
            },()=>{
                // this.router.navigate(['/seller/product']);
            });
    }

    onSubmit() {
        if (this.productId) {
            this.update();
            alert("Product is Updated Successfully...");
        } else {
            this.add();
        }
    }

    add() {
        this.productService.create(this.product).subscribe(prod => {
                if (!prod) throw new Error;
                this.router.navigate(['/']);
            },
            e => {
            });
    }

    ngAfterContentChecked(): void {
        console.log(this.product);
    }

    proDelete() {
        if(confirm("Are you sure to delete this product..!?")) {
            this.productService.proDelete(this.productId).subscribe(result=> {
                    alert(result);
                    this.router.navigate(['/seller/product']);
                    console.log("Product Deleted...");
            },error=>console.log(error),()=> {
            
                
            })
            }
        }
}
