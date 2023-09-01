package shop.gL.G7.controller;


import java.security.Principal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import shop.gL.G7.entity.OrderMain;
import shop.gL.G7.entity.ProductInOrder;
import shop.gL.G7.entity.ProductInfo;
import shop.gL.G7.entity.User;
import shop.gL.G7.entity.WishList;
import shop.gL.G7.service.ProductService;
import shop.gL.G7.service.UserService;
import shop.gL.G7.service.impl.WishListService;

@RestController
@RequestMapping("/wishlist")
@CrossOrigin
public class WishListController {

        @Autowired
        private WishListService wishListService;

        @Autowired
        private UserService userService;
        
        @Autowired
        private ProductService productService;

        @GetMapping("/list")
        public Page<WishList> getWishList(@RequestParam(value = "page", defaultValue = "1") Integer page,
                @RequestParam(value = "size", defaultValue = "10") Integer size,Principal principal) {
        	
        	PageRequest request = PageRequest.of(page - 1, size);
            Page<WishList> wishListPage;
            User user = userService.findOne(principal.getName());
            wishListPage = wishListService.findByBuyerEmail(user.getId(), request);

            return wishListPage;
        }

        @PostMapping("/add/{productId}")
        public ResponseEntity<WishList> addWishList(@PathVariable String productId, Principal principal) {
                
        		ProductInfo product=productService.findOne(productId);
                User user = userService.findOne(principal.getName());
                WishList wishList = new WishList(user, product);
                WishList wishListCreated = wishListService.createWishlist(wishList);
                return new ResponseEntity<WishList>(wishListCreated, HttpStatus.CREATED);

        }

        
        @PostMapping("/delete/{productId}")
        public ResponseEntity<Boolean> deletWishList(@PathVariable String productId,Principal principal){
        		
        	User user = userService.findOne(principal.getName());
            
            Boolean wishListDeleted = wishListService.deleteWishlist(user,productId);
            return new ResponseEntity<Boolean>(wishListDeleted, HttpStatus.CREATED);
        }

}
