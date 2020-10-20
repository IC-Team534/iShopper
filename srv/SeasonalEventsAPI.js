module.exports = srv => {

    srv.on('READ', 'CountriesList', () => console.log('Countires API Called'));
    srv.on('READ', 'RegionsList', () => console.log('Regions API Called'));
    srv.on('READ', 'CitiesList', () => console.log('Cities API Called'));
    srv.on('READ', 'SeasonsList', () => console.log('SeasonsList API Called'));
    srv.on('READ', 'SeasonProducts', () => console.log('SeasonProducts API Called'));
}

// Reference : https://cap.cloud.sap/docs/node.js/api#cds-event-handlers