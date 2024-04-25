@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Tasks'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
 
@UI.headerInfo:{ typeName: '🦓Task',
                 typeNamePlural: '🦓Tasks',
                 title.value: 'Summary' }
//@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity zi3_jb_tasks
  as select from zbc_tasks
  
composition [0..*] of zi_efforts  as _Efforts
 
{      
        @UI.facet: [  { id: 'Tasks',
                  purpose:  #STANDARD,
                  type:     #IDENTIFICATION_REFERENCE,
                  label:    'Task!',
                  position: 10      } ,

                 { id: 'Efforts',
                   position: 40,
                   purpose: #STANDARD,
                   type: #LINEITEM_REFERENCE,
                   targetElement: '_Efforts' } ]
       @UI: { lineItem: [{ position: 10 }],
         identification: [{ position: 10 }] }
         
  key task_key    as TaskKey,
       @UI: { lineItem: [{ position: 20 }],
         identification: [{ position: 20 }] }
      summary     as Summary,
       @UI: { lineItem: [{ position: 30 }],
         identification: [{ position: 30 }] }      
      status      as Status,      
      project     as Project,     
      description as Description,      
      assignee    as Assignee,      
      type        as Type,      
      author      as Author,      
      changed_at  as ChangedAt,      
      created_at  as CreatedAt,      
      due_date    as DueDate,      
      solution    as Solution,     
      priority    as Priority,      
      product     as Product,
      
      _Efforts
}
