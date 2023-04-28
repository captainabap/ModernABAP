@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Efforts'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

@UI.headerInfo:{ typeName: 'Efforts',
                 typeNamePlural: 'Efforts',
                 title.value: 'Summary' }
                 
@Metadata.allowExtensions: true
define view entity zi_efforts as select from zbc_efforts
association to parent zi3_jb_tasks as _Task
on $projection.TaskKey = _Task.TaskKey {
        @UI.facet: [  { id: 'Effort',
                  purpose:  #HEADER,
                  type:     #IDENTIFICATION_REFERENCE,
                  label:    'Effort Booking',
                  position: 10      },
                  
               {   id: 'idDetails',
                   purpose: #STANDARD ,
                   type:     #FIELDGROUP_REFERENCE,
                   label: 'Details',
                   position: 20 ,
                   targetQualifier: 'tqDetails'} ]
       key task_key as TaskKey,
       key effort_guid as EffortGuid,
       @UI: { lineItem: [{ position: 10 }],
         fieldGroup: [{ position: 10, 
                        qualifier: 'tqDetails'}] }
       summary as Summary,
       @UI: { 
         fieldGroup: [{ position: 30, 
                        qualifier: 'tqDetails'}] }
       task_comment as TaskComment,
       @UI: { lineItem: [{ position: 40 }],
         fieldGroup: [{ position: 40, 
                        qualifier: 'tqDetails'}] }
       effort as Effort,
       
       _Task
}
