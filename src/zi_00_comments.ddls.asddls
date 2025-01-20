@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Comments'
@Metadata.ignorePropagatedAnnotations: true
@UI: {
  headerInfo: {
    typeName: 'Kommentar',
    typeNamePlural: 'Kommentare',
    typeImageUrl: 'sap-icon://comment',
    description.value: 'CommentText',
    title.value: 'TaskKey'
  }
}
define view entity ZI_00_Comments
  as select from zbc_comments
  association to parent zi_00_tasks_r as _Tasks on $projection.TaskKey = _Tasks.TaskKey
{
      @UI.facet: [ {  id: 'Comment',
                      purpose: #HEADER ,
                      type:     #IDENTIFICATION_REFERENCE,
                      label: 'Kommmentar',
                      position: 10 },


              {    id: 'Details',
                   purpose: #STANDARD ,
                   type:     #FIELDGROUP_REFERENCE,
                   label: 'Kommentar',
                   position: 20 ,
                   targetQualifier: 'Details'}  ]

  key uuid         as Uuid,

      task_key     as TaskKey,
      @UI: { lineItem: [ { position: 20 } ] ,
             fieldGroup:     [ { qualifier: 'Details',
                                 position: 20 }]  }
      @UI.multiLineText: true
      comment_text as CommentText,

      @UI: { identification: [ { position: 20 } ],
             lineItem: [ { position: 30 } ]  }
      @Semantics.user.createdBy: true
      author       as Author,

      @UI: { identification: [ { position: 20 } ] }
      @Semantics.systemDateTime.lastChangedAt: true
      changed_at   as ChangedAt,

      @UI: { identification: [ { position: 20 } ],
             lineItem: [ { position: 40 } ]  }
      @Semantics.systemDateTime.createdAt: true
      created_at   as CreatedAt,

      _Tasks
}
