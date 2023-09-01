package shop.gL.G7.service;

import java.util.Collection;

import shop.gL.G7.entity.Cart;
import shop.gL.G7.entity.ProductInOrder;
import shop.gL.G7.entity.User;

public interface CartService {
    Cart getCart(User user);

    void mergeLocalCart(Collection<ProductInOrder> productInOrders, User user);

    void delete(String itemId, User user);

    void checkout(User user);
}
