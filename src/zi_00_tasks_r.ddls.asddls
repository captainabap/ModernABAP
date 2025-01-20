@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Tasks'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@UI: {
  headerInfo: {
    typeName: 'Aufgabe',
    typeNamePlural: 'Aufgaben',
    typeImageUrl: 'sap-icon: //activity-items',
    description.value: 'Summary',
    title.value: 'TaskKey'
    
  }
}
define root view entity zi_00_tasks_r
  as select from zbc_tasks
  composition [0..*] of ZI_00_Comments as _Comments
  association [1..1] to zi_00_users    as _Assignee on $projection.Assignee = _Assignee.UserId
{

  key task_key         as TaskKey,
      summary          as Summary,
      status           as Status,
      project          as Project,
      description      as Description,
      assignee         as Assignee,
      type             as Type,
      author           as Author,
      due_date         as DueDate,
      solution         as Solution,
      priority         as Priority,
      product          as Product,
      estimated_effort as EstimatedEffort,
      changed_by       as ChangedBy,
      changed_at       as ChangedAt,
      created_by       as CreatedBy,
      created_at       as CreatedAt,
      _Comments,
      _Assignee
}
