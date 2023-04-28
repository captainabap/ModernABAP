@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Text for users'
define view entity zi3_jb6_user_text as select from zbc_users
 {

    key user_id as UserId,
    
    @Semantics.text: true
    concat_with_space(  firstname ,
                        lastname,
                        1)  as Name
}
