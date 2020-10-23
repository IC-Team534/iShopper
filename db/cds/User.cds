namespace user;

entity Details {
     email    : String(100);
    key   ID       : UUID;
        password : String(100);
        fullName    : String(100);
        dateOfBirth : Date;
}


entity RelationshipDetails {
    key userId               : UUID; //must be taken from login table
    key personId             : UUID;
    key remainderID          : UUID; //need this to link to reminder model
        personFullName       : String(100);
        lifeEventDate        : Date;
        lifeEventDescription : String(100);
        remindBeforeInDays   : Integer;
}

//view addGiftForReminderinShoppingList as select from RelationshipDetails where 
  //     lifeEventDate between (CURRENT_DATE ,(TO_DATE (CURRENT_DATE, 'YYYY-MM-DD'), 15));

         view addGiftForReminderinShoppingList as select from RelationshipDetails where lifeEventDate 
         between CURRENT_DATE  AND (TO_DATE(CURRENT_DATE,15));
