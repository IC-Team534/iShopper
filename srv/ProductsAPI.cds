using {products} from '../db/cds/Products';


service UserProductsService {
        
    entity ProductList as select from products.products;
   //view UserPurchasedProducts as select from products.itemsPurchased;
   

}
