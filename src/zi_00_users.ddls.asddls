@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Users View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
@Metadata.allowExtensions: true
define view entity zi_00_users
  as select from zbc_users
  
  association [0..* ] to zi_00_tasks as _TasksToDo 
           on $projection.UserId = _TasksToDo.Assignee
{
  key user_id       as UserId,
      firstname     as Firstname,
      lastname      as Lastname, 
      @Semantics.eMail.address: true     
      email         as Email,      
      gender        as Gender,    
      date_of_birth as DateOfBirth,
      changed_by    as ChangedBy,
      changed_at    as ChangedAt,
      created_by    as CreatedBy,
      created_at    as CreatedAt,
      
      //Associations
      _TasksToDo
}
