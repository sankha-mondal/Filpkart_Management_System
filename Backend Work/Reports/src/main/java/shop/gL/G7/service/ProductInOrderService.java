package shop.gL.G7.service;

import shop.gL.G7.entity.ProductInOrder;
import shop.gL.G7.entity.User;


public interface ProductInOrderService {
    void update(String itemId, Integer quantity, User user);
    ProductInOrder findOne(String itemId, User user);
}
