namespace seasonevents;
using {products} from './Products';


entity Countries {
    key CountryId        : UUID;
        code    : String(2);    //IN 
        Name    : String(100);  // India
        descr   : String(1111); // Republic of Inida
               
}

entity Regions {
    key RegionId        : UUID;
    key CountryId : UUID;
        code    : String(1);    // S 
        Name    : String(100);  // South
                      
}

entity Cities {
    key CityId        : UUID;
    key RegionId     : UUID;
        code    : String(3);    // HYD
        Name    : String(100);  // Hyderabad
                      
}

entity Seasons {
    key SeasonId  : UUID;
    key CityId        : UUID;
    key RegionId     : UUID;
    key CountryId : UUID;
        code    : String(3);    // WIN
        Name    : String(100);  // Winter
                      
}

entity SeasonProducts {
    key SPId  : UUID;
    key SeasonId : UUID;
    key ProductId : UUID;
        
                      
}


view suggestsesasonproducts as select from ( ( ( ( (
( SeasonProducts left join products.products on SeasonProducts.ProductId = products.productID ) left outer join
  Seasons on SeasonProducts.SeasonId = Seasons.SeasonId ) left outer join
  Cities on Seasons.CityId = Cities.CityId ) left outer join 
  Regions on Cities.RegionId = Regions.RegionId ) left outer join
  Countries on Regions.CountryId = Countries.CountryId
)
)
                                   
                                            
                                            
     {

     key   Countries.Name,
     key    Regions.Name as RegionName, 
     key    Cities.Name as CityName,
     key   Seasons.Name as SeasonName,
     key   products.productID,
        //products.productType,
        products.productName,
        products.expiryDate,
        products.remindOnDate,
        products.shoppingID,
        products.shelfLifeInDays,
        products.purchasedOn,
        products.productConsumed,
        products.isPurchased,
        
};
