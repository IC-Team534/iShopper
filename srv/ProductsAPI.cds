using {products} from '../db/cds/Products';


service UserProductsService {
        
   view UserPurchasedProducts as select from products.itemsPurchased;
  

}
