using {seasonevents} from '../db/cds/SesasonalEvents';


service seasonEventsService {

    entity CountriesList as select from seasonevents.Countries;
    entity RegionsList as select from seasonevents.Regions;
    entity CitiesList as select from seasonevents.Cities;
    entity SeasonsList as select from seasonevents.Seasons;
    view SeasonProducts as select from seasonevents.suggestsesasonproducts;
    
}
