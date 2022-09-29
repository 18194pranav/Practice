trigger contactTgrs on Contact (before delete){
    for(Contact contact: trigger.old){
        if(contact.accountId == null){
            contact.addError(' You are not authorized to perform this action');
            }
        }
    }