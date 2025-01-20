@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Tasks List'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_00_tasks
  as select from zbc_tasks
{
  @UI.facet: [  { id: 'details',
                  purpose:  #STANDARD,
                  type:     #IDENTIFICATION_REFERENCE,
                  label:    'Tasks Details',
                  position: 10 }  ]
                  
  @UI: { lineItem:       [ { position: 10 } ],
         identification: [ { position: 10 } ] }
  key task_key         as TaskKey,
  @UI: { lineItem:       [ { position: 20 } ],
         identification: [ { position: 20 } ] }
      summary          as Summary,
      status           as Status,
      project          as Project,
      description      as Description,
      assignee         as Assignee,
      type             as Type,
  @UI: { lineItem:       [ { position: 30 } ],
         identification: [ { position: 30 } ] }
      author           as Author,
  @UI: { lineItem:       [ { position: 40 } ],
         identification: [ { position: 40 } ] }
      due_date         as DueDate,
      solution         as Solution,
      priority         as Priority,
      product          as Product,
      estimated_effort as EstimatedEffort,
      changed_by       as ChangedBy,
      changed_at       as ChangedAt,
      created_by       as CreatedBy,
      created_at       as CreatedAt
}
