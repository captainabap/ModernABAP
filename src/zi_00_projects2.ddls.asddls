@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projects with Draft'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: [ 'ProjectKey' ]
define root view entity zi_00_projects2
  as select from zbc_projects2
{
  key project_guid    as ProjectGUID,
      project_key     as ProjectKey,
      name            as Name,
      project_manager as ProjectManager,

      @Semantics.user.lastChangedBy: true
      changed_by      as ChangedBy,

      @Semantics.systemDateTime.lastChangedAt: true
      changed_at      as ChangedAt,

      @Semantics.user.createdBy: true
      created_by      as CreatedBy,

      @Semantics.systemDateTime.createdAt: true
      created_at      as CreatedAt
}
