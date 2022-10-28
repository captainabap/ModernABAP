CLASS zbc_create_demo_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    "! <p class="shorttext synchronized" lang="en">Generate some data for ZBC_TASKS</p>
    "! Generate some data for the table ZBC_TASKS

  PRIVATE SECTION.
    METHODS select_tasks IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
    METHODS delete_data.
    methods fill_status_text.
    METHODS generate_tasks.
ENDCLASS.



CLASS ZBC_CREATE_DEMO_DATA IMPLEMENTATION.


  METHOD generate_tasks.
    TYPES tt_zbc_tasks TYPE STANDARD TABLE OF zbc_tasks WITH DEFAULT KEY.
data(tasks) = VALUE tt_zbc_tasks( ( CLIENT ='100' TASK_ID ='0000000001' TASK_KEY ='MIG_1' SUMMARY ='Integer tincidunt ante vel ipsum.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum'
ASSIGNEE ='0000000065' TYPE ='TASK' AUTHOR ='0000000073' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220203' SOLUTION ='ASDESIGNED' PRIORITY ='69' PRODUCT ='0885707203'  )
 ( CLIENT ='100' TASK_ID ='0000000002' TASK_KEY ='INT_2' SUMMARY ='Nunc purus.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.'
ASSIGNEE ='0000000021' TYPE ='USERSTORY' AUTHOR ='0000000096' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230224' SOLUTION ='UNRESOLVED' PRIORITY ='76' PRODUCT ='0241852440'  )
 ( CLIENT ='100' TASK_ID ='0000000003' TASK_KEY ='MIG_3' SUMMARY ='Vivamus in felis eu sapien cursus vestibulum.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh l'
ASSIGNEE ='0000000008' TYPE ='USERSTORY' AUTHOR ='0000000046' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220601' SOLUTION ='DONE' PRIORITY ='86' PRODUCT ='0486756270'  )
 ( CLIENT ='100' TASK_ID ='0000000004' TASK_KEY ='BW4_4' SUMMARY ='Etiam vel augue.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='In congue. Etiam justo. Etiam pretium iaculis justo.'
ASSIGNEE ='0000000094' TYPE ='TASK' AUTHOR ='0000000038' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220518' SOLUTION ='UNRESOLVED' PRIORITY ='83' PRODUCT ='0729215637'  )
 ( CLIENT ='100' TASK_ID ='0000000005' TASK_KEY ='BW4_5' SUMMARY ='Nulla tellus.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'
ASSIGNEE ='0000000011' TYPE ='USERSTORY' AUTHOR ='0000000055' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230111' SOLUTION ='UNRESOLVED' PRIORITY ='31' PRODUCT ='0042656309'  )
 ( CLIENT ='100' TASK_ID ='0000000006' TASK_KEY ='SUP_6' SUMMARY ='Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.Praesen'
ASSIGNEE ='0000000083' TYPE ='TASK' AUTHOR ='0000000067' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211025' SOLUTION ='UNRESOLVED' PRIORITY ='37' PRODUCT ='0184122275'  )
 ( CLIENT ='100' TASK_ID ='0000000007' TASK_KEY ='BW_7' SUMMARY ='Praesent blandit.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.Nam ultrices, libero non mattis pulvinar, nulla pe'
ASSIGNEE ='0000000052' TYPE ='BUG' AUTHOR ='0000000082' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20210928' SOLUTION ='UNRESOLVED' PRIORITY ='5' PRODUCT ='0053743613'  )
 ( CLIENT ='100' TASK_ID ='0000000008' TASK_KEY ='SUP_8' SUMMARY ='Sed accumsan felis.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu'
ASSIGNEE ='0000000095' TYPE ='EPIC' AUTHOR ='0000000029' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211220' SOLUTION ='UNRESOLVED' PRIORITY ='95' PRODUCT ='0620372377'  )
 ( CLIENT ='100' TASK_ID ='0000000009' TASK_KEY ='SUP_9' SUMMARY ='Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh l'
ASSIGNEE ='0000000084' TYPE ='BUG' AUTHOR ='0000000043' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220501' SOLUTION ='UNRESOLVED' PRIORITY ='76' PRODUCT ='0342390183'  )
 ( CLIENT ='100' TASK_ID ='0000000010' TASK_KEY ='MIG_10' SUMMARY ='Aenean fermentum.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu'
ASSIGNEE ='0000000076' TYPE ='TASK' AUTHOR ='0000000076' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221202' SOLUTION ='UNRESOLVED' PRIORITY ='93' PRODUCT ='0573504591'  )
 ( CLIENT ='100' TASK_ID ='0000000011' TASK_KEY ='BW4_11' SUMMARY ='Quisque ut erat.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum'
ASSIGNEE ='0000000097' TYPE ='EPIC' AUTHOR ='0000000040' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211124' SOLUTION ='UNRESOLVED' PRIORITY ='93' PRODUCT ='0328294458'  )
 ( CLIENT ='100' TASK_ID ='0000000012' TASK_KEY ='MIG_12' SUMMARY ='Etiam vel augue.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.'
ASSIGNEE ='0000000073' TYPE ='EPIC' AUTHOR ='0000000039' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220301' SOLUTION ='DONE' PRIORITY ='12' PRODUCT ='0079108453'  )
 ( CLIENT ='100' TASK_ID ='0000000013' TASK_KEY ='SUP_13' SUMMARY ='Duis aliquam convallis nunc.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.Morbi non lectus. Aliquam sit am'
ASSIGNEE ='0000000047' TYPE ='SUBTASK' AUTHOR ='0000000036' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220329' SOLUTION ='DONE' PRIORITY ='11' PRODUCT ='0919450998'  )
 ( CLIENT ='100' TASK_ID ='0000000014' TASK_KEY ='INT_14' SUMMARY ='Morbi vel lectus in quam fringilla rhoncus.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.In sagittis dui vel nisl. Duis ac nibh. Fusce lacus'
ASSIGNEE ='0000000031' TYPE ='EPIC' AUTHOR ='0000000042' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220122' SOLUTION ='UNRESOLVED' PRIORITY ='20' PRODUCT ='0476355680'  )
 ( CLIENT ='100' TASK_ID ='0000000015' TASK_KEY ='BW_15' SUMMARY ='Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer e'
ASSIGNEE ='0000000080' TYPE ='USERSTORY' AUTHOR ='0000000055' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220503' SOLUTION ='UNRESOLVED' PRIORITY ='63' PRODUCT ='0704305949'  )
 ( CLIENT ='100' TASK_ID ='0000000016' TASK_KEY ='BW_16' SUMMARY ='Cras in purus eu magna vulputate luctus.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.'
ASSIGNEE ='0000000053' TYPE ='USERSTORY' AUTHOR ='0000000043' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220103' SOLUTION ='UNRESOLVED' PRIORITY ='62' PRODUCT ='0634408481'  )
 ( CLIENT ='100' TASK_ID ='0000000017' TASK_KEY ='BW_17' SUMMARY ='Sed ante.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.Morbi porttitor lorem'
ASSIGNEE ='0000000039' TYPE ='USERSTORY' AUTHOR ='0000000059' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220506' SOLUTION ='UNRESOLVED' PRIORITY ='89' PRODUCT ='0484508054'  )
 ( CLIENT ='100' TASK_ID ='0000000018' TASK_KEY ='BW_18' SUMMARY ='Phasellus sit amet erat.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='In congue. Etiam justo. Etiam pretium iaculis justo.'
ASSIGNEE ='0000000100' TYPE ='TASK' AUTHOR ='0000000079' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220619' SOLUTION ='UNRESOLVED' PRIORITY ='74' PRODUCT ='0926165798'  )
 ( CLIENT ='100' TASK_ID ='0000000019' TASK_KEY ='MIG_19' SUMMARY ='Proin risus.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.'
ASSIGNEE ='0000000038' TYPE ='FEATURE' AUTHOR ='0000000020' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230202' SOLUTION ='UNRESOLVED' PRIORITY ='88' PRODUCT ='0992039185'  )
 ( CLIENT ='100' TASK_ID ='0000000020' TASK_KEY ='INT_20' SUMMARY ='Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'
ASSIGNEE ='0000000053' TYPE ='EPIC' AUTHOR ='0000000084' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221001' SOLUTION ='UNRESOLVED' PRIORITY ='61' PRODUCT ='0008130905'  )
 ( CLIENT ='100' TASK_ID ='0000000021' TASK_KEY ='INT_21' SUMMARY ='Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Sed ante. Vivamus tortor. Duis mattis egestas metus.'
ASSIGNEE ='0000000070' TYPE ='BUG' AUTHOR ='0000000017' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220215' SOLUTION ='UNRESOLVED' PRIORITY ='21' PRODUCT ='0750939647'  )
 ( CLIENT ='100' TASK_ID ='0000000022' TASK_KEY ='BW_22' SUMMARY ='Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet'
ASSIGNEE ='0000000057' TYPE ='EPIC' AUTHOR ='0000000096' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211213' SOLUTION ='UNRESOLVED' PRIORITY ='68' PRODUCT ='0213995050'  )
 ( CLIENT ='100' TASK_ID ='0000000023' TASK_KEY ='MIG_23' SUMMARY ='Aliquam sit amet diam in magna bibendum imperdiet.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.Morbi porttitor lorem'
ASSIGNEE ='0000000057' TYPE ='FEATURE' AUTHOR ='0000000067' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230120' SOLUTION ='UNRESOLVED' PRIORITY ='72' PRODUCT ='0146961392'  )
 ( CLIENT ='100' TASK_ID ='0000000024' TASK_KEY ='SUP_24' SUMMARY ='Donec vitae nisi.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.Cras non velit nec nisi vulputate nonummy.'
ASSIGNEE ='0000000031' TYPE ='USERSTORY' AUTHOR ='0000000048' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211109' SOLUTION ='CANTREPOR' PRIORITY ='65' PRODUCT ='0426549837'  )
 ( CLIENT ='100' TASK_ID ='0000000025' TASK_KEY ='BW_25' SUMMARY ='Aenean auctor gravida sem.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.Phasellus'
ASSIGNEE ='0000000030' TYPE ='USERSTORY' AUTHOR ='0000000013' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211220' SOLUTION ='UNRESOLVED' PRIORITY ='67' PRODUCT ='0344405119'  )
 ( CLIENT ='100' TASK_ID ='0000000026' TASK_KEY ='INT_26' SUMMARY ='Cras in purus eu magna vulputate luctus.' STATUS ='RETEST' PROJECT ='0000000000'
DESCRIPTION ='Phasellus in felis. Donec semper sapien a libero. Nam dui.'
ASSIGNEE ='0000000092' TYPE ='USERSTORY' AUTHOR ='0000000100' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211225' SOLUTION ='DONE' PRIORITY ='87' PRODUCT ='0351053862'  )
 ( CLIENT ='100' TASK_ID ='0000000027' TASK_KEY ='SUP_27' SUMMARY ='Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pell'
ASSIGNEE ='0000000091' TYPE ='USERSTORY' AUTHOR ='0000000040' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220808' SOLUTION ='UNRESOLVED' PRIORITY ='52' PRODUCT ='0121109742'  )
 ( CLIENT ='100' TASK_ID ='0000000028' TASK_KEY ='SUP_28' SUMMARY ='Quisque ut erat.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Phasellus in felis. Donec semper sapien a libero. Nam dui.Proin leo odio, porttitor id, consequat in, consequat ut, nu'
ASSIGNEE ='0000000058' TYPE ='TASK' AUTHOR ='0000000067' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230109' SOLUTION ='UNRESOLVED' PRIORITY ='93' PRODUCT ='0278647057'  )
 ( CLIENT ='100' TASK_ID ='0000000029' TASK_KEY ='BW_29' SUMMARY ='Suspendisse potenti.' STATUS ='TEST' PROJECT ='0000000000'
DESCRIPTION ='Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu'
ASSIGNEE ='0000000055' TYPE ='SUBTASK' AUTHOR ='0000000035' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221009' SOLUTION ='DONE' PRIORITY ='5' PRODUCT ='0887529302'  )
 ( CLIENT ='100' TASK_ID ='0000000030' TASK_KEY ='SUP_30' SUMMARY ='Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.' STATUS ='INPROGRE' PROJECT ='0000000000'
DESCRIPTION ='Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.Curabitur gravida nisi at'
ASSIGNEE ='0000000043' TYPE ='FEATURE' AUTHOR ='0000000076' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220115' SOLUTION ='UNRESOLVED' PRIORITY ='48' PRODUCT ='0458365469'  )
 ( CLIENT ='100' TASK_ID ='0000000031' TASK_KEY ='BW4_31' SUMMARY ='Proin eu mi.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat var'
ASSIGNEE ='0000000050' TYPE ='FEATURE' AUTHOR ='0000000015' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221101' SOLUTION ='UNRESOLVED' PRIORITY ='66' PRODUCT ='0746084841'  )
 ( CLIENT ='100' TASK_ID ='0000000032' TASK_KEY ='BW4_32' SUMMARY ='Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.' STATUS ='INPROGRE' PROJECT ='0000000004'
DESCRIPTION ='Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer e'
ASSIGNEE ='0000000084' TYPE ='TASK' AUTHOR ='0000000081' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220423' SOLUTION ='UNRESOLVED' PRIORITY ='53' PRODUCT ='0294705482'  )
 ( CLIENT ='100' TASK_ID ='0000000033' TASK_KEY ='BW4_33' SUMMARY ='Nam tristique tortor eu pede.' STATUS ='POSTPONE' PROJECT ='0000000004'
DESCRIPTION ='Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultr'
ASSIGNEE ='0000000047' TYPE ='USERSTORY' AUTHOR ='0000000078' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220905' SOLUTION ='UNRESOLVED' PRIORITY ='71' PRODUCT ='0705400704'  )
 ( CLIENT ='100' TASK_ID ='0000000034' TASK_KEY ='MIG_34' SUMMARY ='Mauris lacinia sapien quis libero.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus'
ASSIGNEE ='0000000029' TYPE ='EPIC' AUTHOR ='0000000098' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211219' SOLUTION ='UNRESOLVED' PRIORITY ='49' PRODUCT ='0234229492'  )
 ( CLIENT ='100' TASK_ID ='0000000035' TASK_KEY ='MIG_35' SUMMARY ='Vestibulum sed magna at nunc commodo placerat.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.Morbi porttitor lorem'
ASSIGNEE ='0000000100' TYPE ='BUG' AUTHOR ='0000000022' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230208' SOLUTION ='UNRESOLVED' PRIORITY ='9' PRODUCT ='0450893020'  )
 ( CLIENT ='100' TASK_ID ='0000000036' TASK_KEY ='MIG_36' SUMMARY ='Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.Sed a'
ASSIGNEE ='0000000039' TYPE ='FEATURE' AUTHOR ='0000000077' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211210' SOLUTION ='UNRESOLVED' PRIORITY ='96' PRODUCT ='0840223056'  )
 ( CLIENT ='100' TASK_ID ='0000000037' TASK_KEY ='BW_37' SUMMARY ='Aliquam non mauris.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.Maecenas ut massa quis augue luctus tin'
ASSIGNEE ='0000000081' TYPE ='EPIC' AUTHOR ='0000000081' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220110' SOLUTION ='UNRESOLVED' PRIORITY ='35' PRODUCT ='0307190109'  )
 ( CLIENT ='100' TASK_ID ='0000000038' TASK_KEY ='MIG_38' SUMMARY ='Nulla facilisi.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet'
ASSIGNEE ='0000000013' TYPE ='EPIC' AUTHOR ='0000000091' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220402' SOLUTION ='UNRESOLVED' PRIORITY ='32' PRODUCT ='0037634082'  )
 ( CLIENT ='100' TASK_ID ='0000000039' TASK_KEY ='MIG_39' SUMMARY ='Morbi quis tortor id nulla ultrices aliquet.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.In sagittis dui vel nisl. Duis ac nibh. Fusce lacus'
ASSIGNEE ='0000000056' TYPE ='FEATURE' AUTHOR ='0000000067' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220613' SOLUTION ='UNRESOLVED' PRIORITY ='94' PRODUCT ='0853821166'  )
 ( CLIENT ='100' TASK_ID ='0000000040' TASK_KEY ='BW_40' SUMMARY ='Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.'
ASSIGNEE ='0000000092' TYPE ='BUG' AUTHOR ='0000000031' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211212' SOLUTION ='UNRESOLVED' PRIORITY ='31' PRODUCT ='0610975438'  )
 ( CLIENT ='100' TASK_ID ='0000000041' TASK_KEY ='SUP_41' SUMMARY ='Nulla suscipit ligula in lacus.' STATUS ='INPROGRE' PROJECT ='0000000000'
DESCRIPTION ='Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.In sagittis dui vel nisl. Duis ac nibh. Fusce lacus'
ASSIGNEE ='0000000078' TYPE ='USERSTORY' AUTHOR ='0000000041' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221005' SOLUTION ='UNRESOLVED' PRIORITY ='62' PRODUCT ='0216045400'  )
 ( CLIENT ='100' TASK_ID ='0000000042' TASK_KEY ='INT_42' SUMMARY ='In hac habitasse platea dictumst.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.Praesen'
ASSIGNEE ='0000000004' TYPE ='EPIC' AUTHOR ='0000000049' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230308' SOLUTION ='UNRESOLVED' PRIORITY ='69' PRODUCT ='0016210570'  )
 ( CLIENT ='100' TASK_ID ='0000000043' TASK_KEY ='INT_43' SUMMARY ='Aenean fermentum.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pell'
ASSIGNEE ='0000000031' TYPE ='USERSTORY' AUTHOR ='0000000053' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211209' SOLUTION ='UNRESOLVED' PRIORITY ='83' PRODUCT ='0089490109'  )
 ( CLIENT ='100' TASK_ID ='0000000044' TASK_KEY ='SUP_44' SUMMARY ='Morbi quis tortor id nulla ultrices aliquet.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.Praesen'
ASSIGNEE ='0000000068' TYPE ='BUG' AUTHOR ='0000000005' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220628' SOLUTION ='UNRESOLVED' PRIORITY ='93' PRODUCT ='0300415649'  )
 ( CLIENT ='100' TASK_ID ='0000000045' TASK_KEY ='INT_45' SUMMARY ='Proin eu mi.' STATUS ='RETEST' PROJECT ='0000000000'
DESCRIPTION ='Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.Proin eu mi. Nulla ac enim. In tem'
ASSIGNEE ='0000000018' TYPE ='SUBTASK' AUTHOR ='0000000062' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220829' SOLUTION ='DONE' PRIORITY ='93' PRODUCT ='0661282475'  )
 ( CLIENT ='100' TASK_ID ='0000000046' TASK_KEY ='MIG_46' SUMMARY ='Maecenas pulvinar lobortis est.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.'
ASSIGNEE ='0000000015' TYPE ='TASK' AUTHOR ='0000000007' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221212' SOLUTION ='UNRESOLVED' PRIORITY ='16' PRODUCT ='0637157132'  )
 ( CLIENT ='100' TASK_ID ='0000000047' TASK_KEY ='BW4_47' SUMMARY ='Nam tristique tortor eu pede.' STATUS ='POSTPONE' PROJECT ='0000000004'
DESCRIPTION ='Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.In sagittis dui vel nisl. Duis ac nibh. Fusce lacus'
ASSIGNEE ='0000000079' TYPE ='SUBTASK' AUTHOR ='0000000031' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220319' SOLUTION ='UNRESOLVED' PRIORITY ='18' PRODUCT ='0158831210'  )
 ( CLIENT ='100' TASK_ID ='0000000048' TASK_KEY ='BW4_48' SUMMARY ='Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.' STATUS ='FIXED' PROJECT ='0000000004'
DESCRIPTION ='Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orc'
ASSIGNEE ='0000000042' TYPE ='USERSTORY' AUTHOR ='0000000019' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220524' SOLUTION ='DONE' PRIORITY ='30' PRODUCT ='0281786745'  )
 ( CLIENT ='100' TASK_ID ='0000000049' TASK_KEY ='INT_49' SUMMARY ='In hac habitasse platea dictumst.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer e'
ASSIGNEE ='0000000084' TYPE ='SUBTASK' AUTHOR ='0000000093' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220314' SOLUTION ='UNRESOLVED' PRIORITY ='41' PRODUCT ='0585129904'  )
 ( CLIENT ='100' TASK_ID ='0000000050' TASK_KEY ='INT_50' SUMMARY ='Integer tincidunt ante vel ipsum.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='In congue. Etiam justo. Etiam pretium iaculis justo.In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut t'
ASSIGNEE ='0000000033' TYPE ='BUG' AUTHOR ='0000000052' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230210' SOLUTION ='UNRESOLVED' PRIORITY ='9' PRODUCT ='0527857683'  )
 ( CLIENT ='100' TASK_ID ='0000000051' TASK_KEY ='INT_51' SUMMARY ='Duis aliquam convallis nunc.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien'
ASSIGNEE ='0000000013' TYPE ='USERSTORY' AUTHOR ='0000000009' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221119' SOLUTION ='UNRESOLVED' PRIORITY ='17' PRODUCT ='0693873417'  )
 ( CLIENT ='100' TASK_ID ='0000000052' TASK_KEY ='SUP_52' SUMMARY ='Nulla tellus.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet'
ASSIGNEE ='0000000078' TYPE ='EPIC' AUTHOR ='0000000050' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220519' SOLUTION ='UNRESOLVED' PRIORITY ='40' PRODUCT ='0490930716'  )
 ( CLIENT ='100' TASK_ID ='0000000053' TASK_KEY ='SUP_53' SUMMARY ='Nullam varius.' STATUS ='INPROGRE' PROJECT ='0000000000'
DESCRIPTION ='Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orc'
ASSIGNEE ='0000000043' TYPE ='USERSTORY' AUTHOR ='0000000016' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220810' SOLUTION ='UNRESOLVED' PRIORITY ='69' PRODUCT ='0859973615'  )
 ( CLIENT ='100' TASK_ID ='0000000054' TASK_KEY ='BW_54' SUMMARY ='Phasellus id sapien in sapien iaculis congue.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luct'
ASSIGNEE ='0000000098' TYPE ='TASK' AUTHOR ='0000000050' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220616' SOLUTION ='UNRESOLVED' PRIORITY ='17' PRODUCT ='0518654464'  )
 ( CLIENT ='100' TASK_ID ='0000000055' TASK_KEY ='BW_55' SUMMARY ='Maecenas pulvinar lobortis est.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.Nulla ut erat id mauris vulputate elementum. N'
ASSIGNEE ='0000000009' TYPE ='USERSTORY' AUTHOR ='0000000042' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220914' SOLUTION ='DUPLICATE' PRIORITY ='15' PRODUCT ='0407470407'  )
 ( CLIENT ='100' TASK_ID ='0000000056' TASK_KEY ='MIG_56' SUMMARY ='Pellentesque ultrices mattis odio.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Phasellus in felis. Donec semper sapien a libero. Nam dui.Proin leo odio, porttitor id, consequat in, consequat ut, nu'
ASSIGNEE ='0000000066' TYPE ='EPIC' AUTHOR ='0000000020' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220817' SOLUTION ='UNRESOLVED' PRIORITY ='5' PRODUCT ='0801297159'  )
 ( CLIENT ='100' TASK_ID ='0000000057' TASK_KEY ='MIG_57' SUMMARY ='Etiam justo.' STATUS ='INPROGRE' PROJECT ='0000000000'
DESCRIPTION ='Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.In quis justo. Maecenas rhon'
ASSIGNEE ='0000000071' TYPE ='EPIC' AUTHOR ='0000000024' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220620' SOLUTION ='UNRESOLVED' PRIORITY ='47' PRODUCT ='0689716658'  )
 ( CLIENT ='100' TASK_ID ='0000000058' TASK_KEY ='SUP_58' SUMMARY ='Aliquam erat volutpat.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel s'
ASSIGNEE ='0000000039' TYPE ='SUBTASK' AUTHOR ='0000000074' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220826' SOLUTION ='UNRESOLVED' PRIORITY ='24' PRODUCT ='0798407570'  )
 ( CLIENT ='100' TASK_ID ='0000000059' TASK_KEY ='BW_59' SUMMARY ='Vestibulum sed magna at nunc commodo placerat.' STATUS ='CANCELED' PROJECT ='0000000000'
DESCRIPTION ='Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat var'
ASSIGNEE ='0000000070' TYPE ='EPIC' AUTHOR ='0000000034' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211014' SOLUTION ='WONTFIX' PRIORITY ='74' PRODUCT ='0943586868'  )
 ( CLIENT ='100' TASK_ID ='0000000060' TASK_KEY ='INT_60' SUMMARY ='Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.' STATUS ='CANCELED' PROJECT ='0000000000'
DESCRIPTION ='Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.Morbi porttitor lorem'
ASSIGNEE ='0000000031' TYPE ='EPIC' AUTHOR ='0000000068' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220313' SOLUTION ='WONTFIX' PRIORITY ='53' PRODUCT ='0638626256'  )
 ( CLIENT ='100' TASK_ID ='0000000061' TASK_KEY ='BW_61' SUMMARY ='Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tort'
ASSIGNEE ='0000000093' TYPE ='FEATURE' AUTHOR ='0000000048' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211231' SOLUTION ='UNRESOLVED' PRIORITY ='94' PRODUCT ='0558532082'  )
 ( CLIENT ='100' TASK_ID ='0000000062' TASK_KEY ='INT_62' SUMMARY ='Morbi quis tortor id nulla ultrices aliquet.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luct'
ASSIGNEE ='0000000004' TYPE ='USERSTORY' AUTHOR ='0000000083' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220806' SOLUTION ='UNRESOLVED' PRIORITY ='95' PRODUCT ='0907390890'  )
 ( CLIENT ='100' TASK_ID ='0000000063' TASK_KEY ='BW4_63' SUMMARY ='Nullam porttitor lacus at turpis.' STATUS ='INPROGRE' PROJECT ='0000000004'
DESCRIPTION ='Fusce consequat. Nulla nisl. Nunc nisl.'
ASSIGNEE ='0000000024' TYPE ='BUG' AUTHOR ='0000000021' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220307' SOLUTION ='UNRESOLVED' PRIORITY ='84' PRODUCT ='0743839215'  )
 ( CLIENT ='100' TASK_ID ='0000000064' TASK_KEY ='BW4_64' SUMMARY ='Ut tellus.' STATUS ='INPROGRE' PROJECT ='0000000004'
DESCRIPTION ='Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer e'
ASSIGNEE ='0000000055' TYPE ='EPIC' AUTHOR ='0000000079' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220108' SOLUTION ='UNRESOLVED' PRIORITY ='53' PRODUCT ='0353340072'  )
 ( CLIENT ='100' TASK_ID ='0000000065' TASK_KEY ='BW_65' SUMMARY ='Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.' STATUS ='INPROGRE' PROJECT ='0000000000'
DESCRIPTION ='Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.Sed a'
ASSIGNEE ='0000000056' TYPE ='USERSTORY' AUTHOR ='0000000042' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230104' SOLUTION ='UNRESOLVED' PRIORITY ='35' PRODUCT ='0571312669'  )
 ( CLIENT ='100' TASK_ID ='0000000066' TASK_KEY ='INT_66' SUMMARY ='Nulla justo.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas'
ASSIGNEE ='0000000019' TYPE ='BUG' AUTHOR ='0000000059' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221103' SOLUTION ='RTFM' PRIORITY ='75' PRODUCT ='0967959293'  )
 ( CLIENT ='100' TASK_ID ='0000000067' TASK_KEY ='INT_67' SUMMARY ='Curabitur at ipsum ac tellus semper interdum.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum'
ASSIGNEE ='0000000026' TYPE ='TASK' AUTHOR ='0000000024' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221228' SOLUTION ='UNRESOLVED' PRIORITY ='35' PRODUCT ='0808935460'  )
 ( CLIENT ='100' TASK_ID ='0000000068' TASK_KEY ='BW4_68' SUMMARY ='Nulla nisl.' STATUS ='CANCELED' PROJECT ='0000000004'
DESCRIPTION ='Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.Morbi porttitor lorem'
ASSIGNEE ='0000000084' TYPE ='BUG' AUTHOR ='0000000067' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221006' SOLUTION ='RTFM' PRIORITY ='44' PRODUCT ='0814211826'  )
 ( CLIENT ='100' TASK_ID ='0000000069' TASK_KEY ='BW_69' SUMMARY ='Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.' STATUS ='RETEST' PROJECT ='0000000000'
DESCRIPTION ='Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit'
ASSIGNEE ='0000000038' TYPE ='USERSTORY' AUTHOR ='0000000048' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220308' SOLUTION ='DONE' PRIORITY ='80' PRODUCT ='0580228167'  )
 ( CLIENT ='100' TASK_ID ='0000000070' TASK_KEY ='BW4_70' SUMMARY ='Donec ut dolor.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.'
ASSIGNEE ='0000000061' TYPE ='FEATURE' AUTHOR ='0000000046' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230317' SOLUTION ='UNRESOLVED' PRIORITY ='2' PRODUCT ='0481633016'  )
 ( CLIENT ='100' TASK_ID ='0000000071' TASK_KEY ='INT_71' SUMMARY ='Proin at turpis a pede posuere nonummy.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tinci'
ASSIGNEE ='0000000053' TYPE ='TASK' AUTHOR ='0000000040' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220519' SOLUTION ='UNRESOLVED' PRIORITY ='84' PRODUCT ='0907600660'  )
 ( CLIENT ='100' TASK_ID ='0000000072' TASK_KEY ='MIG_72' SUMMARY ='Nam tristique tortor eu pede.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.Nulla ut erat id mauris vulputate elementum. N'
ASSIGNEE ='0000000072' TYPE ='FEATURE' AUTHOR ='0000000014' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221018' SOLUTION ='WONTFIX' PRIORITY ='94' PRODUCT ='0775741248'  )
 ( CLIENT ='100' TASK_ID ='0000000073' TASK_KEY ='MIG_73' SUMMARY ='Mauris sit amet eros.' STATUS ='INPROGRE' PROJECT ='0000000000'
DESCRIPTION ='Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut'
ASSIGNEE ='0000000090' TYPE ='EPIC' AUTHOR ='0000000044' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220423' SOLUTION ='UNRESOLVED' PRIORITY ='1' PRODUCT ='0647155955'  )
 ( CLIENT ='100' TASK_ID ='0000000074' TASK_KEY ='BW4_74' SUMMARY ='Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Du'
ASSIGNEE ='0000000020' TYPE ='EPIC' AUTHOR ='0000000084' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220208' SOLUTION ='UNRESOLVED' PRIORITY ='29' PRODUCT ='0577394656'  )
 ( CLIENT ='100' TASK_ID ='0000000075' TASK_KEY ='MIG_75' SUMMARY ='Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus'
ASSIGNEE ='0000000065' TYPE ='SUBTASK' AUTHOR ='0000000097' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220708' SOLUTION ='UNRESOLVED' PRIORITY ='45' PRODUCT ='0051078191'  )
 ( CLIENT ='100' TASK_ID ='0000000076' TASK_KEY ='SUP_76' SUMMARY ='Curabitur in libero ut massa volutpat convallis.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.Maecenas ut massa quis augue luctus tin'
ASSIGNEE ='0000000039' TYPE ='FEATURE' AUTHOR ='0000000051' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230223' SOLUTION ='WONTFIX' PRIORITY ='83' PRODUCT ='0965242482'  )
 ( CLIENT ='100' TASK_ID ='0000000077' TASK_KEY ='MIG_77' SUMMARY ='Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.Cras mi pede, malesuada in, imperdie'
ASSIGNEE ='0000000062' TYPE ='SUBTASK' AUTHOR ='0000000020' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230323' SOLUTION ='UNRESOLVED' PRIORITY ='62' PRODUCT ='0025135384'  )
 ( CLIENT ='100' TASK_ID ='0000000078' TASK_KEY ='SUP_78' SUMMARY ='Morbi vel lectus in quam fringilla rhoncus.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.'
ASSIGNEE ='0000000001' TYPE ='BUG' AUTHOR ='0000000037' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221224' SOLUTION ='UNRESOLVED' PRIORITY ='85' PRODUCT ='0254130802'  )
 ( CLIENT ='100' TASK_ID ='0000000079' TASK_KEY ='SUP_79' SUMMARY ='Integer non velit.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.'
ASSIGNEE ='0000000065' TYPE ='USERSTORY' AUTHOR ='0000000024' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221116' SOLUTION ='UNRESOLVED' PRIORITY ='29' PRODUCT ='0602222099'  )
 ( CLIENT ='100' TASK_ID ='0000000080' TASK_KEY ='MIG_80' SUMMARY ='Nunc purus.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.Vestibulum quam sapien, varius'
ASSIGNEE ='0000000049' TYPE ='USERSTORY' AUTHOR ='0000000075' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230209' SOLUTION ='UNRESOLVED' PRIORITY ='89' PRODUCT ='0190458820'  )
 ( CLIENT ='100' TASK_ID ='0000000081' TASK_KEY ='MIG_81' SUMMARY ='Pellentesque at nulla.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tort'
ASSIGNEE ='0000000062' TYPE ='USERSTORY' AUTHOR ='0000000060' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220529' SOLUTION ='UNRESOLVED' PRIORITY ='46' PRODUCT ='0182382246'  )
 ( CLIENT ='100' TASK_ID ='0000000082' TASK_KEY ='BW4_82' SUMMARY ='Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit'
ASSIGNEE ='0000000011' TYPE ='EPIC' AUTHOR ='0000000055' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220809' SOLUTION ='UNRESOLVED' PRIORITY ='45' PRODUCT ='0999524989'  )
 ( CLIENT ='100' TASK_ID ='0000000083' TASK_KEY ='INT_83' SUMMARY ='Etiam pretium iaculis justo.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'
ASSIGNEE ='0000000071' TYPE ='SUBTASK' AUTHOR ='0000000026' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220603' SOLUTION ='DONE' PRIORITY ='85' PRODUCT ='0625067925'  )
 ( CLIENT ='100' TASK_ID ='0000000084' TASK_KEY ='MIG_84' SUMMARY ='Maecenas tincidunt lacus at velit.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'
ASSIGNEE ='0000000041' TYPE ='TASK' AUTHOR ='0000000064' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221028' SOLUTION ='CANTREPOR' PRIORITY ='80' PRODUCT ='0304875341'  )
 ( CLIENT ='100' TASK_ID ='0000000085' TASK_KEY ='SUP_85' SUMMARY ='Donec ut dolor.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.Cras non velit nec nisi vulputate nonummy.'
ASSIGNEE ='0000000072' TYPE ='TASK' AUTHOR ='0000000078' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230302' SOLUTION ='UNRESOLVED' PRIORITY ='9' PRODUCT ='0961572130'  )
 ( CLIENT ='100' TASK_ID ='0000000086' TASK_KEY ='INT_86' SUMMARY ='Maecenas pulvinar lobortis est.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices'
ASSIGNEE ='0000000099' TYPE ='BUG' AUTHOR ='0000000023' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220521' SOLUTION ='UNRESOLVED' PRIORITY ='84' PRODUCT ='0549601677'  )
 ( CLIENT ='100' TASK_ID ='0000000087' TASK_KEY ='BW_87' SUMMARY ='Phasellus in felis.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien'
ASSIGNEE ='0000000052' TYPE ='EPIC' AUTHOR ='0000000085' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220314' SOLUTION ='DONE' PRIORITY ='3' PRODUCT ='0450810613'  )
 ( CLIENT ='100' TASK_ID ='0000000088' TASK_KEY ='BW_88' SUMMARY ='Nulla ac enim.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.Mauris enim'
ASSIGNEE ='0000000030' TYPE ='FEATURE' AUTHOR ='0000000003' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220222' SOLUTION ='DONE' PRIORITY ='26' PRODUCT ='0100428216'  )
 ( CLIENT ='100' TASK_ID ='0000000089' TASK_KEY ='SUP_89' SUMMARY ='Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus'
ASSIGNEE ='0000000060' TYPE ='SUBTASK' AUTHOR ='0000000039' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211030' SOLUTION ='UNRESOLVED' PRIORITY ='51' PRODUCT ='0543696648'  )
 ( CLIENT ='100' TASK_ID ='0000000090' TASK_KEY ='BW4_90' SUMMARY ='Vestibulum rutrum rutrum neque.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Du'
ASSIGNEE ='0000000068' TYPE ='BUG' AUTHOR ='0000000003' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230305' SOLUTION ='UNRESOLVED' PRIORITY ='92' PRODUCT ='0493897615'  )
 ( CLIENT ='100' TASK_ID ='0000000091' TASK_KEY ='MIG_91' SUMMARY ='Mauris ullamcorper purus sit amet nulla.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu'
ASSIGNEE ='0000000073' TYPE ='FEATURE' AUTHOR ='0000000098' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230201' SOLUTION ='UNRESOLVED' PRIORITY ='98' PRODUCT ='0167048552'  )
 ( CLIENT ='100' TASK_ID ='0000000092' TASK_KEY ='BW_92' SUMMARY ='Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.'
ASSIGNEE ='0000000025' TYPE ='USERSTORY' AUTHOR ='0000000093' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220603' SOLUTION ='UNRESOLVED' PRIORITY ='50' PRODUCT ='0668857912'  )
 ( CLIENT ='100' TASK_ID ='0000000093' TASK_KEY ='BW4_93' SUMMARY ='Morbi porttitor lorem id ligula.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Phasellus in felis. Donec semper sapien a libero. Nam dui.Proin leo odio, porttitor id, consequat in, consequat ut, nu'
ASSIGNEE ='0000000057' TYPE ='TASK' AUTHOR ='0000000007' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220707' SOLUTION ='UNRESOLVED' PRIORITY ='21' PRODUCT ='0164270386'  )
 ( CLIENT ='100' TASK_ID ='0000000094' TASK_KEY ='INT_94' SUMMARY ='Pellentesque at nulla.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.Curabitur gravida nisi at'
ASSIGNEE ='0000000017' TYPE ='FEATURE' AUTHOR ='0000000054' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220716' SOLUTION ='UNRESOLVED' PRIORITY ='77' PRODUCT ='0472593389'  )
 ( CLIENT ='100' TASK_ID ='0000000095' TASK_KEY ='BW_95' SUMMARY ='Maecenas ut massa quis augue luctus tincidunt.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer e'
ASSIGNEE ='0000000098' TYPE ='EPIC' AUTHOR ='0000000087' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220704' SOLUTION ='UNRESOLVED' PRIORITY ='27' PRODUCT ='0705739672'  )
 ( CLIENT ='100' TASK_ID ='0000000096' TASK_KEY ='BW_96' SUMMARY ='Pellentesque viverra pede ac diam.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.Praesen'
ASSIGNEE ='0000000039' TYPE ='BUG' AUTHOR ='0000000080' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220426' SOLUTION ='UNRESOLVED' PRIORITY ='86' PRODUCT ='0858523099'  )
 ( CLIENT ='100' TASK_ID ='0000000097' TASK_KEY ='MIG_97' SUMMARY ='Vivamus vestibulum sagittis sapien.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.'
ASSIGNEE ='0000000096' TYPE ='TASK' AUTHOR ='0000000077' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220707' SOLUTION ='DUPLICATE' PRIORITY ='74' PRODUCT ='0293855653'  )
 ( CLIENT ='100' TASK_ID ='0000000098' TASK_KEY ='INT_98' SUMMARY ='Lorem ipsum dolor sit amet, consectetuer adipiscing elit.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien'
ASSIGNEE ='0000000066' TYPE ='EPIC' AUTHOR ='0000000063' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221224' SOLUTION ='DONE' PRIORITY ='25' PRODUCT ='0206129762'  )
 ( CLIENT ='100' TASK_ID ='0000000099' TASK_KEY ='SUP_99' SUMMARY ='Phasellus in felis.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.'
ASSIGNEE ='0000000031' TYPE ='SUBTASK' AUTHOR ='0000000045' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211101' SOLUTION ='UNRESOLVED' PRIORITY ='96' PRODUCT ='0428115887'  )
 ( CLIENT ='100' TASK_ID ='0000000100' TASK_KEY ='BW4_100' SUMMARY ='Nulla suscipit ligula in lacus.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu'
ASSIGNEE ='0000000074' TYPE ='USERSTORY' AUTHOR ='0000000053' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211107' SOLUTION ='UNRESOLVED' PRIORITY ='94' PRODUCT ='0410358611'  )
 ( CLIENT ='100' TASK_ID ='0000000101' TASK_KEY ='SUP_101' SUMMARY ='Duis aliquam convallis nunc.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.Cum sociis natoque penatibus et ma'
ASSIGNEE ='0000000018' TYPE ='BUG' AUTHOR ='0000000097' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211118' SOLUTION ='UNRESOLVED' PRIORITY ='62' PRODUCT ='0864120813'  )
 ( CLIENT ='100' TASK_ID ='0000000102' TASK_KEY ='MIG_102' SUMMARY ='Etiam pretium iaculis justo.' STATUS ='RETEST' PROJECT ='0000000000'
DESCRIPTION ='Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit'
ASSIGNEE ='0000000007' TYPE ='FEATURE' AUTHOR ='0000000076' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211125' SOLUTION ='DONE' PRIORITY ='65' PRODUCT ='0516048693'  )
 ( CLIENT ='100' TASK_ID ='0000000103' TASK_KEY ='BW_103' SUMMARY ='Pellentesque viverra pede ac diam.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.'
ASSIGNEE ='0000000045' TYPE ='TASK' AUTHOR ='0000000046' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230103' SOLUTION ='UNRESOLVED' PRIORITY ='23' PRODUCT ='0952009146'  )
 ( CLIENT ='100' TASK_ID ='0000000104' TASK_KEY ='MIG_104' SUMMARY ='Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.In sagittis dui vel nisl. Duis ac nibh. Fusce lacus'
ASSIGNEE ='0000000050' TYPE ='EPIC' AUTHOR ='0000000091' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221222' SOLUTION ='UNRESOLVED' PRIORITY ='8' PRODUCT ='0026781073'  )
 ( CLIENT ='100' TASK_ID ='0000000105' TASK_KEY ='MIG_105' SUMMARY ='Morbi ut odio.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.Donec diam neque, vestibulum eg'
ASSIGNEE ='0000000080' TYPE ='TASK' AUTHOR ='0000000051' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221109' SOLUTION ='UNRESOLVED' PRIORITY ='10' PRODUCT ='0190289008'  )
 ( CLIENT ='100' TASK_ID ='0000000106' TASK_KEY ='SUP_106' SUMMARY ='Sed accumsan felis.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel s'
ASSIGNEE ='0000000038' TYPE ='EPIC' AUTHOR ='0000000072' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211118' SOLUTION ='UNRESOLVED' PRIORITY ='51' PRODUCT ='0634381134'  )
 ( CLIENT ='100' TASK_ID ='0000000107' TASK_KEY ='BW4_107' SUMMARY ='Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.Cum sociis natoque penatibus et ma'
ASSIGNEE ='0000000094' TYPE ='FEATURE' AUTHOR ='0000000010' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220309' SOLUTION ='UNRESOLVED' PRIORITY ='8' PRODUCT ='0876140266'  )
 ( CLIENT ='100' TASK_ID ='0000000108' TASK_KEY ='MIG_108' SUMMARY ='Nulla ac enim.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Phasellus in felis. Donec semper sapien a libero. Nam dui.'
ASSIGNEE ='0000000003' TYPE ='FEATURE' AUTHOR ='0000000035' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230323' SOLUTION ='UNRESOLVED' PRIORITY ='1' PRODUCT ='0435966009'  )
 ( CLIENT ='100' TASK_ID ='0000000109' TASK_KEY ='SUP_109' SUMMARY ='Nullam sit amet turpis elementum ligula vehicula consequat.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh l'
ASSIGNEE ='0000000014' TYPE ='TASK' AUTHOR ='0000000063' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211204' SOLUTION ='UNRESOLVED' PRIORITY ='48' PRODUCT ='0153387097'  )
 ( CLIENT ='100' TASK_ID ='0000000110' TASK_KEY ='BW4_110' SUMMARY ='Curabitur gravida nisi at nibh.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luct'
ASSIGNEE ='0000000041' TYPE ='TASK' AUTHOR ='0000000053' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220109' SOLUTION ='UNRESOLVED' PRIORITY ='19' PRODUCT ='0974304657'  )
 ( CLIENT ='100' TASK_ID ='0000000111' TASK_KEY ='MIG_111' SUMMARY ='Nullam porttitor lacus at turpis.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Sed ante. Vivamus tortor. Duis mattis egestas metus.Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nul'
ASSIGNEE ='0000000083' TYPE ='BUG' AUTHOR ='0000000088' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230127' SOLUTION ='UNRESOLVED' PRIORITY ='88' PRODUCT ='0547546521'  )
 ( CLIENT ='100' TASK_ID ='0000000112' TASK_KEY ='INT_112' SUMMARY ='Vestibulum sed magna at nunc commodo placerat.' STATUS ='CANCELED' PROJECT ='0000000000'
DESCRIPTION ='Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Du'
ASSIGNEE ='0000000067' TYPE ='TASK' AUTHOR ='0000000045' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220220' SOLUTION ='WONTFIX' PRIORITY ='64' PRODUCT ='0922363978'  )
 ( CLIENT ='100' TASK_ID ='0000000113' TASK_KEY ='BW4_113' SUMMARY ='Quisque ut erat.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pell'
ASSIGNEE ='0000000002' TYPE ='BUG' AUTHOR ='0000000007' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221223' SOLUTION ='UNRESOLVED' PRIORITY ='95' PRODUCT ='0631765695'  )
 ( CLIENT ='100' TASK_ID ='0000000114' TASK_KEY ='SUP_114' SUMMARY ='Phasellus in felis.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.'
ASSIGNEE ='0000000028' TYPE ='FEATURE' AUTHOR ='0000000078' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220529' SOLUTION ='UNRESOLVED' PRIORITY ='42' PRODUCT ='0597263976'  )
 ( CLIENT ='100' TASK_ID ='0000000115' TASK_KEY ='INT_115' SUMMARY ='Quisque id justo sit amet sapien dignissim vestibulum.' STATUS ='CANCELED' PROJECT ='0000000000'
DESCRIPTION ='Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.Morbi porttitor lorem'
ASSIGNEE ='0000000011' TYPE ='SUBTASK' AUTHOR ='0000000059' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220307' SOLUTION ='DUPLICATE' PRIORITY ='89' PRODUCT ='0969496693'  )
 ( CLIENT ='100' TASK_ID ='0000000116' TASK_KEY ='SUP_116' SUMMARY ='Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'
ASSIGNEE ='0000000006' TYPE ='USERSTORY' AUTHOR ='0000000031' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211212' SOLUTION ='UNRESOLVED' PRIORITY ='21' PRODUCT ='0560525011'  )
 ( CLIENT ='100' TASK_ID ='0000000117' TASK_KEY ='BW4_117' SUMMARY ='Cras non velit nec nisi vulputate nonummy.' STATUS ='POSTPONE' PROJECT ='0000000004'
DESCRIPTION ='Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pell'
ASSIGNEE ='0000000016' TYPE ='BUG' AUTHOR ='0000000071' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220122' SOLUTION ='UNRESOLVED' PRIORITY ='33' PRODUCT ='0288947123'  )
 ( CLIENT ='100' TASK_ID ='0000000118' TASK_KEY ='BW4_118' SUMMARY ='Cras in purus eu magna vulputate luctus.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.'
ASSIGNEE ='0000000017' TYPE ='FEATURE' AUTHOR ='0000000045' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230218' SOLUTION ='UNRESOLVED' PRIORITY ='63' PRODUCT ='0629467475'  )
 ( CLIENT ='100' TASK_ID ='0000000119' TASK_KEY ='BW_119' SUMMARY ='Aliquam erat volutpat.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pell'
ASSIGNEE ='0000000025' TYPE ='USERSTORY' AUTHOR ='0000000083' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220417' SOLUTION ='UNRESOLVED' PRIORITY ='89' PRODUCT ='0990145258'  )
 ( CLIENT ='100' TASK_ID ='0000000120' TASK_KEY ='INT_120' SUMMARY ='Ut tellus.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.Cras non velit nec nisi vulputate nonummy.'
ASSIGNEE ='0000000070' TYPE ='EPIC' AUTHOR ='0000000086' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220313' SOLUTION ='UNRESOLVED' PRIORITY ='14' PRODUCT ='0727849227'  )
 ( CLIENT ='100' TASK_ID ='0000000121' TASK_KEY ='INT_121' SUMMARY ='Morbi non lectus.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Du'
ASSIGNEE ='0000000055' TYPE ='BUG' AUTHOR ='0000000040' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211129' SOLUTION ='DUPLICATE' PRIORITY ='58' PRODUCT ='0249346473'  )
 ( CLIENT ='100' TASK_ID ='0000000122' TASK_KEY ='MIG_122' SUMMARY ='Suspendisse ornare consequat lectus.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices'
ASSIGNEE ='0000000022' TYPE ='SUBTASK' AUTHOR ='0000000070' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211012' SOLUTION ='RTFM' PRIORITY ='20' PRODUCT ='0317576014'  )
 ( CLIENT ='100' TASK_ID ='0000000123' TASK_KEY ='BW4_123' SUMMARY ='Aenean fermentum.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.Donec diam neque, vestibulum eg'
ASSIGNEE ='0000000053' TYPE ='BUG' AUTHOR ='0000000019' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230111' SOLUTION ='UNRESOLVED' PRIORITY ='13' PRODUCT ='0133374411'  )
 ( CLIENT ='100' TASK_ID ='0000000124' TASK_KEY ='MIG_124' SUMMARY ='Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.Cras mi pede, malesuada in, imperdie'
ASSIGNEE ='0000000030' TYPE ='SUBTASK' AUTHOR ='0000000065' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230202' SOLUTION ='UNRESOLVED' PRIORITY ='59' PRODUCT ='0186369360'  )
 ( CLIENT ='100' TASK_ID ='0000000125' TASK_KEY ='BW4_125' SUMMARY ='Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Phasellus in felis. Donec semper sapien a libero. Nam dui.'
ASSIGNEE ='0000000008' TYPE ='USERSTORY' AUTHOR ='0000000033' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220901' SOLUTION ='UNRESOLVED' PRIORITY ='50' PRODUCT ='0616578842'  )
 ( CLIENT ='100' TASK_ID ='0000000126' TASK_KEY ='SUP_126' SUMMARY ='Vivamus vestibulum sagittis sapien.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.Phasellus'
ASSIGNEE ='0000000005' TYPE ='USERSTORY' AUTHOR ='0000000098' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221110' SOLUTION ='UNRESOLVED' PRIORITY ='60' PRODUCT ='0914437378'  )
 ( CLIENT ='100' TASK_ID ='0000000127' TASK_KEY ='INT_127' SUMMARY ='Mauris lacinia sapien quis libero.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.Praesen'
ASSIGNEE ='0000000007' TYPE ='TASK' AUTHOR ='0000000023' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220524' SOLUTION ='CANTREPOR' PRIORITY ='59' PRODUCT ='0785195757'  )
 ( CLIENT ='100' TASK_ID ='0000000128' TASK_KEY ='MIG_128' SUMMARY ='Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.Cum sociis natoque penatibus et ma'
ASSIGNEE ='0000000088' TYPE ='BUG' AUTHOR ='0000000042' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211203' SOLUTION ='UNRESOLVED' PRIORITY ='24' PRODUCT ='0459091098'  )
 ( CLIENT ='100' TASK_ID ='0000000129' TASK_KEY ='SUP_129' SUMMARY ='Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.Nam ultrices, libero non mattis pulvinar, nulla pe'
ASSIGNEE ='0000000001' TYPE ='SUBTASK' AUTHOR ='0000000067' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220814' SOLUTION ='DUPLICATE' PRIORITY ='92' PRODUCT ='0909777599'  )
 ( CLIENT ='100' TASK_ID ='0000000130' TASK_KEY ='SUP_130' SUMMARY ='Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.Maecenas ut massa quis augue luctus tin'
ASSIGNEE ='0000000066' TYPE ='USERSTORY' AUTHOR ='0000000077' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220924' SOLUTION ='UNRESOLVED' PRIORITY ='2' PRODUCT ='0432268835'  )
 ( CLIENT ='100' TASK_ID ='0000000131' TASK_KEY ='BW4_131' SUMMARY ='Donec ut mauris eget massa tempor convallis.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu'
ASSIGNEE ='0000000084' TYPE ='EPIC' AUTHOR ='0000000090' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230305' SOLUTION ='UNRESOLVED' PRIORITY ='60' PRODUCT ='0209746827'  )
 ( CLIENT ='100' TASK_ID ='0000000132' TASK_KEY ='SUP_132' SUMMARY ='Donec semper sapien a libero.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.Curabitur in libero ut massa vol'
ASSIGNEE ='0000000086' TYPE ='USERSTORY' AUTHOR ='0000000080' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220604' SOLUTION ='UNRESOLVED' PRIORITY ='97' PRODUCT ='0673877328'  )
 ( CLIENT ='100' TASK_ID ='0000000133' TASK_KEY ='BW4_133' SUMMARY ='Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.Praesen'
ASSIGNEE ='0000000052' TYPE ='BUG' AUTHOR ='0000000043' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221003' SOLUTION ='UNRESOLVED' PRIORITY ='60' PRODUCT ='0534013312'  )
 ( CLIENT ='100' TASK_ID ='0000000134' TASK_KEY ='BW_134' SUMMARY ='In quis justo.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus'
ASSIGNEE ='0000000062' TYPE ='TASK' AUTHOR ='0000000066' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221208' SOLUTION ='UNRESOLVED' PRIORITY ='59' PRODUCT ='0968126575'  )
 ( CLIENT ='100' TASK_ID ='0000000135' TASK_KEY ='INT_135' SUMMARY ='Phasellus in felis.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.Cras mi pede, malesuada in, imperdie'
ASSIGNEE ='0000000025' TYPE ='TASK' AUTHOR ='0000000031' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221107' SOLUTION ='UNRESOLVED' PRIORITY ='35' PRODUCT ='0532268155'  )
 ( CLIENT ='100' TASK_ID ='0000000136' TASK_KEY ='SUP_136' SUMMARY ='Maecenas tincidunt lacus at velit.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='In congue. Etiam justo. Etiam pretium iaculis justo.'
ASSIGNEE ='0000000068' TYPE ='BUG' AUTHOR ='0000000063' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220806' SOLUTION ='UNRESOLVED' PRIORITY ='25' PRODUCT ='0160531161'  )
 ( CLIENT ='100' TASK_ID ='0000000137' TASK_KEY ='INT_137' SUMMARY ='Duis at velit eu est congue elementum.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut'
ASSIGNEE ='0000000028' TYPE ='BUG' AUTHOR ='0000000040' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230217' SOLUTION ='UNRESOLVED' PRIORITY ='41' PRODUCT ='0441008003'  )
 ( CLIENT ='100' TASK_ID ='0000000138' TASK_KEY ='INT_138' SUMMARY ='In hac habitasse platea dictumst.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='In congue. Etiam justo. Etiam pretium iaculis justo.'
ASSIGNEE ='0000000029' TYPE ='FEATURE' AUTHOR ='0000000100' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221114' SOLUTION ='UNRESOLVED' PRIORITY ='74' PRODUCT ='0583490425'  )
 ( CLIENT ='100' TASK_ID ='0000000139' TASK_KEY ='BW_139' SUMMARY ='Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.Curabitur gravida nisi at'
ASSIGNEE ='0000000081' TYPE ='SUBTASK' AUTHOR ='0000000048' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221108' SOLUTION ='UNRESOLVED' PRIORITY ='48' PRODUCT ='0090979178'  )
 ( CLIENT ='100' TASK_ID ='0000000140' TASK_KEY ='SUP_140' SUMMARY ='Etiam vel augue.' STATUS ='INPROGRE' PROJECT ='0000000000'
DESCRIPTION ='Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.Curabitur gravida nisi at'
ASSIGNEE ='0000000026' TYPE ='FEATURE' AUTHOR ='0000000016' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220406' SOLUTION ='UNRESOLVED' PRIORITY ='77' PRODUCT ='0026085005'  )
 ( CLIENT ='100' TASK_ID ='0000000141' TASK_KEY ='BW_141' SUMMARY ='Vivamus tortor.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque'
ASSIGNEE ='0000000036' TYPE ='USERSTORY' AUTHOR ='0000000048' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20210927' SOLUTION ='RTFM' PRIORITY ='11' PRODUCT ='0380283059'  )
 ( CLIENT ='100' TASK_ID ='0000000142' TASK_KEY ='SUP_142' SUMMARY ='Duis bibendum.' STATUS ='INPROGRE' PROJECT ='0000000000'
DESCRIPTION ='Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.Cras mi pede, malesuada in, imperdie'
ASSIGNEE ='0000000098' TYPE ='BUG' AUTHOR ='0000000037' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211017' SOLUTION ='UNRESOLVED' PRIORITY ='83' PRODUCT ='0397016970'  )
 ( CLIENT ='100' TASK_ID ='0000000143' TASK_KEY ='BW4_143' SUMMARY ='Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum'
ASSIGNEE ='0000000014' TYPE ='EPIC' AUTHOR ='0000000014' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221225' SOLUTION ='UNRESOLVED' PRIORITY ='31' PRODUCT ='0637817432'  )
 ( CLIENT ='100' TASK_ID ='0000000144' TASK_KEY ='SUP_144' SUMMARY ='Vestibulum ac est lacinia nisi venenatis tristique.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel s'
ASSIGNEE ='0000000048' TYPE ='BUG' AUTHOR ='0000000072' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221113' SOLUTION ='UNRESOLVED' PRIORITY ='49' PRODUCT ='0076177275'  )
 ( CLIENT ='100' TASK_ID ='0000000145' TASK_KEY ='INT_145' SUMMARY ='Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.In sagittis dui vel nisl. Duis ac nibh. Fusce lacus'
ASSIGNEE ='0000000026' TYPE ='EPIC' AUTHOR ='0000000037' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220629' SOLUTION ='UNRESOLVED' PRIORITY ='91' PRODUCT ='0780874798'  )
 ( CLIENT ='100' TASK_ID ='0000000146' TASK_KEY ='SUP_146' SUMMARY ='Nullam varius.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.Donec diam neque, vestibulum eg'
ASSIGNEE ='0000000028' TYPE ='EPIC' AUTHOR ='0000000048' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220126' SOLUTION ='UNRESOLVED' PRIORITY ='11' PRODUCT ='0269112738'  )
 ( CLIENT ='100' TASK_ID ='0000000147' TASK_KEY ='INT_147' SUMMARY ='In est risus, auctor sed, tristique in, tempus sit amet, sem.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.Morbi non lectus. Aliquam sit am'
ASSIGNEE ='0000000052' TYPE ='SUBTASK' AUTHOR ='0000000063' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211104' SOLUTION ='UNRESOLVED' PRIORITY ='85' PRODUCT ='0889995622'  )
 ( CLIENT ='100' TASK_ID ='0000000148' TASK_KEY ='MIG_148' SUMMARY ='Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu'
ASSIGNEE ='0000000035' TYPE ='EPIC' AUTHOR ='0000000047' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221127' SOLUTION ='UNRESOLVED' PRIORITY ='5' PRODUCT ='0816353109'  )
 ( CLIENT ='100' TASK_ID ='0000000149' TASK_KEY ='MIG_149' SUMMARY ='Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.'
ASSIGNEE ='0000000001' TYPE ='FEATURE' AUTHOR ='0000000054' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220420' SOLUTION ='UNRESOLVED' PRIORITY ='49' PRODUCT ='0177024211'  )
 ( CLIENT ='100' TASK_ID ='0000000150' TASK_KEY ='INT_150' SUMMARY ='Duis mattis egestas metus.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ip'
ASSIGNEE ='0000000067' TYPE ='EPIC' AUTHOR ='0000000084' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221023' SOLUTION ='UNRESOLVED' PRIORITY ='61' PRODUCT ='0620315386'  )
 ( CLIENT ='100' TASK_ID ='0000000151' TASK_KEY ='BW_151' SUMMARY ='Nullam sit amet turpis elementum ligula vehicula consequat.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus'
ASSIGNEE ='0000000080' TYPE ='TASK' AUTHOR ='0000000046' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220308' SOLUTION ='UNRESOLVED' PRIORITY ='31' PRODUCT ='0267155402'  )
 ( CLIENT ='100' TASK_ID ='0000000152' TASK_KEY ='BW4_152' SUMMARY ='Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.' STATUS ='CANCELED' PROJECT ='0000000004'
DESCRIPTION ='Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer e'
ASSIGNEE ='0000000067' TYPE ='BUG' AUTHOR ='0000000071' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230310' SOLUTION ='WONTFIX' PRIORITY ='44' PRODUCT ='0438629699'  )
 ( CLIENT ='100' TASK_ID ='0000000153' TASK_KEY ='INT_153' SUMMARY ='Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu'
ASSIGNEE ='0000000034' TYPE ='BUG' AUTHOR ='0000000028' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220805' SOLUTION ='UNRESOLVED' PRIORITY ='25' PRODUCT ='0018371036'  )
 ( CLIENT ='100' TASK_ID ='0000000154' TASK_KEY ='INT_154' SUMMARY ='Donec quis orci eget orci vehicula condimentum.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, l'
ASSIGNEE ='0000000012' TYPE ='EPIC' AUTHOR ='0000000038' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220927' SOLUTION ='DONE' PRIORITY ='15' PRODUCT ='0856057872'  )
 ( CLIENT ='100' TASK_ID ='0000000155' TASK_KEY ='MIG_155' SUMMARY ='Aenean sit amet justo.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.'
ASSIGNEE ='0000000050' TYPE ='BUG' AUTHOR ='0000000050' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221229' SOLUTION ='UNRESOLVED' PRIORITY ='10' PRODUCT ='0063326892'  )
 ( CLIENT ='100' TASK_ID ='0000000156' TASK_KEY ='BW4_156' SUMMARY ='Maecenas rhoncus aliquam lacus.' STATUS ='RETEST' PROJECT ='0000000004'
DESCRIPTION ='Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh l'
ASSIGNEE ='0000000058' TYPE ='USERSTORY' AUTHOR ='0000000068' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211218' SOLUTION ='DONE' PRIORITY ='37' PRODUCT ='0222067243'  )
 ( CLIENT ='100' TASK_ID ='0000000157' TASK_KEY ='SUP_157' SUMMARY ='Praesent blandit.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.'
ASSIGNEE ='0000000040' TYPE ='EPIC' AUTHOR ='0000000099' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220915' SOLUTION ='DONE' PRIORITY ='54' PRODUCT ='0759117891'  )
 ( CLIENT ='100' TASK_ID ='0000000158' TASK_KEY ='BW_158' SUMMARY ='In sagittis dui vel nisl.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.'
ASSIGNEE ='0000000084' TYPE ='USERSTORY' AUTHOR ='0000000076' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211217' SOLUTION ='UNRESOLVED' PRIORITY ='42' PRODUCT ='0826928118'  )
 ( CLIENT ='100' TASK_ID ='0000000159' TASK_KEY ='SUP_159' SUMMARY ='Duis at velit eu est congue elementum.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit'
ASSIGNEE ='0000000048' TYPE ='EPIC' AUTHOR ='0000000061' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220404' SOLUTION ='UNRESOLVED' PRIORITY ='68' PRODUCT ='0667020637'  )
 ( CLIENT ='100' TASK_ID ='0000000160' TASK_KEY ='SUP_160' SUMMARY ='Integer non velit.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.Cras mi pede, malesuada in, imperdie'
ASSIGNEE ='0000000096' TYPE ='FEATURE' AUTHOR ='0000000083' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220120' SOLUTION ='UNRESOLVED' PRIORITY ='73' PRODUCT ='0442049237'  )
 ( CLIENT ='100' TASK_ID ='0000000161' TASK_KEY ='MIG_161' SUMMARY ='Nam tristique tortor eu pede.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.Donec diam neque, vestibulum eg'
ASSIGNEE ='0000000048' TYPE ='SUBTASK' AUTHOR ='0000000078' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220408' SOLUTION ='UNRESOLVED' PRIORITY ='90' PRODUCT ='0838157318'  )
 ( CLIENT ='100' TASK_ID ='0000000162' TASK_KEY ='INT_162' SUMMARY ='Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.' STATUS ='RETEST' PROJECT ='0000000000'
DESCRIPTION ='Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.Curabitur gravida nisi at'
ASSIGNEE ='0000000021' TYPE ='TASK' AUTHOR ='0000000047' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220318' SOLUTION ='DONE' PRIORITY ='8' PRODUCT ='0500966220'  )
 ( CLIENT ='100' TASK_ID ='0000000163' TASK_KEY ='BW4_163' SUMMARY ='Nulla nisl.' STATUS ='FIXED' PROJECT ='0000000004'
DESCRIPTION ='Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tinci'
ASSIGNEE ='0000000054' TYPE ='SUBTASK' AUTHOR ='0000000097' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220213' SOLUTION ='DUPLICATE' PRIORITY ='91' PRODUCT ='0372940778'  )
 ( CLIENT ='100' TASK_ID ='0000000164' TASK_KEY ='BW4_164' SUMMARY ='Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultr'
ASSIGNEE ='0000000037' TYPE ='USERSTORY' AUTHOR ='0000000047' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211117' SOLUTION ='UNRESOLVED' PRIORITY ='46' PRODUCT ='0223302241'  )
 ( CLIENT ='100' TASK_ID ='0000000165' TASK_KEY ='BW_165' SUMMARY ='Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.Proin eu mi. Nulla ac enim. In tem'
ASSIGNEE ='0000000056' TYPE ='USERSTORY' AUTHOR ='0000000041' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211003' SOLUTION ='UNRESOLVED' PRIORITY ='17' PRODUCT ='0729621464'  )
 ( CLIENT ='100' TASK_ID ='0000000166' TASK_KEY ='BW4_166' SUMMARY ='Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.Morbi porttitor lorem'
ASSIGNEE ='0000000078' TYPE ='SUBTASK' AUTHOR ='0000000050' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220605' SOLUTION ='UNRESOLVED' PRIORITY ='7' PRODUCT ='0820166246'  )
 ( CLIENT ='100' TASK_ID ='0000000167' TASK_KEY ='BW4_167' SUMMARY ='Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.' STATUS ='NEW' PROJECT ='0000000004'
DESCRIPTION ='Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.Curabitur in libero ut massa vol'
ASSIGNEE ='0000000093' TYPE ='BUG' AUTHOR ='0000000004' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211224' SOLUTION ='UNRESOLVED' PRIORITY ='27' PRODUCT ='0790813413'  )
 ( CLIENT ='100' TASK_ID ='0000000168' TASK_KEY ='MIG_168' SUMMARY ='Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien'
ASSIGNEE ='0000000098' TYPE ='BUG' AUTHOR ='0000000072' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211006' SOLUTION ='CANTREPOR' PRIORITY ='52' PRODUCT ='0247027231'  )
 ( CLIENT ='100' TASK_ID ='0000000169' TASK_KEY ='BW4_169' SUMMARY ='Pellentesque viverra pede ac diam.' STATUS ='FIXED' PROJECT ='0000000004'
DESCRIPTION ='Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pell'
ASSIGNEE ='0000000045' TYPE ='EPIC' AUTHOR ='0000000092' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211224' SOLUTION ='ASDESIGNED' PRIORITY ='46' PRODUCT ='0136309994'  )
 ( CLIENT ='100' TASK_ID ='0000000170' TASK_KEY ='SUP_170' SUMMARY ='Morbi non lectus.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.'
ASSIGNEE ='0000000041' TYPE ='USERSTORY' AUTHOR ='0000000068' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220214' SOLUTION ='UNRESOLVED' PRIORITY ='8' PRODUCT ='0155853785'  )
 ( CLIENT ='100' TASK_ID ='0000000171' TASK_KEY ='SUP_171' SUMMARY ='Proin at turpis a pede posuere nonummy.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Phasellus in felis. Donec semper sapien a libero. Nam dui.Proin leo odio, porttitor id, consequat in, consequat ut, nu'
ASSIGNEE ='0000000066' TYPE ='USERSTORY' AUTHOR ='0000000019' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220606' SOLUTION ='UNRESOLVED' PRIORITY ='21' PRODUCT ='0393918602'  )
 ( CLIENT ='100' TASK_ID ='0000000172' TASK_KEY ='SUP_172' SUMMARY ='Donec ut mauris eget massa tempor convallis.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.Cras non velit nec nisi vulputate nonummy.'
ASSIGNEE ='0000000037' TYPE ='FEATURE' AUTHOR ='0000000064' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230306' SOLUTION ='UNRESOLVED' PRIORITY ='41' PRODUCT ='0596080153'  )
 ( CLIENT ='100' TASK_ID ='0000000173' TASK_KEY ='MIG_173' SUMMARY ='Phasellus id sapien in sapien iaculis congue.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.'
ASSIGNEE ='0000000099' TYPE ='FEATURE' AUTHOR ='0000000069' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230308' SOLUTION ='UNRESOLVED' PRIORITY ='5' PRODUCT ='0132725634'  )
 ( CLIENT ='100' TASK_ID ='0000000174' TASK_KEY ='BW_174' SUMMARY ='Integer tincidunt ante vel ipsum.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ip'
ASSIGNEE ='0000000073' TYPE ='USERSTORY' AUTHOR ='0000000040' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220428' SOLUTION ='UNRESOLVED' PRIORITY ='58' PRODUCT ='0310216969'  )
 ( CLIENT ='100' TASK_ID ='0000000175' TASK_KEY ='BW_175' SUMMARY ='Nulla ut erat id mauris vulputate elementum.' STATUS ='INPROGRE' PROJECT ='0000000000'
DESCRIPTION ='Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orc'
ASSIGNEE ='0000000016' TYPE ='FEATURE' AUTHOR ='0000000016' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221220' SOLUTION ='UNRESOLVED' PRIORITY ='20' PRODUCT ='0285536048'  )
 ( CLIENT ='100' TASK_ID ='0000000176' TASK_KEY ='INT_176' SUMMARY ='Sed sagittis.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pell'
ASSIGNEE ='0000000060' TYPE ='USERSTORY' AUTHOR ='0000000020' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220310' SOLUTION ='UNRESOLVED' PRIORITY ='51' PRODUCT ='0186158433'  )
 ( CLIENT ='100' TASK_ID ='0000000177' TASK_KEY ='BW4_177' SUMMARY ='Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.' STATUS ='FIXED' PROJECT ='0000000004'
DESCRIPTION ='Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.Cras mi pede, malesuada in, imperdie'
ASSIGNEE ='0000000066' TYPE ='FEATURE' AUTHOR ='0000000013' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221222' SOLUTION ='DUPLICATE' PRIORITY ='30' PRODUCT ='0546949860'  )
 ( CLIENT ='100' TASK_ID ='0000000178' TASK_KEY ='SUP_178' SUMMARY ='Aliquam sit amet diam in magna bibendum imperdiet.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tort'
ASSIGNEE ='0000000011' TYPE ='BUG' AUTHOR ='0000000081' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230311' SOLUTION ='UNRESOLVED' PRIORITY ='24' PRODUCT ='0860094740'  )
 ( CLIENT ='100' TASK_ID ='0000000179' TASK_KEY ='INT_179' SUMMARY ='Suspendisse accumsan tortor quis turpis.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.Cras non velit nec nisi vulputate nonummy.'
ASSIGNEE ='0000000035' TYPE ='FEATURE' AUTHOR ='0000000085' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220323' SOLUTION ='DONE' PRIORITY ='96' PRODUCT ='0642241092'  )
 ( CLIENT ='100' TASK_ID ='0000000180' TASK_KEY ='BW_180' SUMMARY ='Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.' STATUS ='POSTPONE' PROJECT ='0000000000'
DESCRIPTION ='Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Du'
ASSIGNEE ='0000000088' TYPE ='BUG' AUTHOR ='0000000092' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220901' SOLUTION ='UNRESOLVED' PRIORITY ='12' PRODUCT ='0253794647'  )
 ( CLIENT ='100' TASK_ID ='0000000181' TASK_KEY ='SUP_181' SUMMARY ='Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.'
ASSIGNEE ='0000000017' TYPE ='EPIC' AUTHOR ='0000000083' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220903' SOLUTION ='UNRESOLVED' PRIORITY ='47' PRODUCT ='0647908490'  )
 ( CLIENT ='100' TASK_ID ='0000000182' TASK_KEY ='BW_182' SUMMARY ='Nullam molestie nibh in lectus.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.Maecenas ut massa quis augue luctus tin'
ASSIGNEE ='0000000087' TYPE ='TASK' AUTHOR ='0000000087' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220405' SOLUTION ='UNRESOLVED' PRIORITY ='64' PRODUCT ='0690245070'  )
 ( CLIENT ='100' TASK_ID ='0000000183' TASK_KEY ='BW_183' SUMMARY ='Aliquam erat volutpat.' STATUS ='RETEST' PROJECT ='0000000000'
DESCRIPTION ='Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.In sagittis dui vel nisl. Duis ac nibh. Fusce lacus'
ASSIGNEE ='0000000093' TYPE ='EPIC' AUTHOR ='0000000054' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220118' SOLUTION ='DONE' PRIORITY ='79' PRODUCT ='0024675861'  )
 ( CLIENT ='100' TASK_ID ='0000000184' TASK_KEY ='INT_184' SUMMARY ='Morbi quis tortor id nulla ultrices aliquet.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.'
ASSIGNEE ='0000000035' TYPE ='SUBTASK' AUTHOR ='0000000087' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20221103' SOLUTION ='UNRESOLVED' PRIORITY ='55' PRODUCT ='0131992831'  )
 ( CLIENT ='100' TASK_ID ='0000000185' TASK_KEY ='MIG_185' SUMMARY ='Nullam sit amet turpis elementum ligula vehicula consequat.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Fusce consequat. Nulla nisl. Nunc nisl.'
ASSIGNEE ='0000000058' TYPE ='TASK' AUTHOR ='0000000082' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230320' SOLUTION ='UNRESOLVED' PRIORITY ='30' PRODUCT ='0329738194'  )
 ( CLIENT ='100' TASK_ID ='0000000186' TASK_KEY ='SUP_186' SUMMARY ='Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque'
ASSIGNEE ='0000000063' TYPE ='SUBTASK' AUTHOR ='0000000081' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220221' SOLUTION ='UNRESOLVED' PRIORITY ='99' PRODUCT ='0344654719'  )
 ( CLIENT ='100' TASK_ID ='0000000187' TASK_KEY ='BW_187' SUMMARY ='Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ip'
ASSIGNEE ='0000000048' TYPE ='USERSTORY' AUTHOR ='0000000047' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220203' SOLUTION ='UNRESOLVED' PRIORITY ='30' PRODUCT ='0996519913'  )
 ( CLIENT ='100' TASK_ID ='0000000188' TASK_KEY ='BW4_188' SUMMARY ='Fusce posuere felis sed lacus.' STATUS ='POSTPONE' PROJECT ='0000000004'
DESCRIPTION ='Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut'
ASSIGNEE ='0000000095' TYPE ='BUG' AUTHOR ='0000000097' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220709' SOLUTION ='UNRESOLVED' PRIORITY ='4' PRODUCT ='0194815302'  )
 ( CLIENT ='100' TASK_ID ='0000000189' TASK_KEY ='SUP_189' SUMMARY ='Sed sagittis.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh l'
ASSIGNEE ='0000000021' TYPE ='BUG' AUTHOR ='0000000032' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220526' SOLUTION ='UNRESOLVED' PRIORITY ='42' PRODUCT ='0625471689'  )
 ( CLIENT ='100' TASK_ID ='0000000190' TASK_KEY ='BW_190' SUMMARY ='Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.Mauris enim'
ASSIGNEE ='0000000026' TYPE ='EPIC' AUTHOR ='0000000046' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20230212' SOLUTION ='ASDESIGNED' PRIORITY ='21' PRODUCT ='0352902214'  )
 ( CLIENT ='100' TASK_ID ='0000000191' TASK_KEY ='SUP_191' SUMMARY ='Curabitur in libero ut massa volutpat convallis.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.'
ASSIGNEE ='0000000049' TYPE ='FEATURE' AUTHOR ='0000000017' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220519' SOLUTION ='UNRESOLVED' PRIORITY ='93' PRODUCT ='0090599864'  )
 ( CLIENT ='100' TASK_ID ='0000000192' TASK_KEY ='BW4_192' SUMMARY ='Aenean lectus.' STATUS ='POSTPONE' PROJECT ='0000000004'
DESCRIPTION ='Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.Phasellus'
ASSIGNEE ='0000000019' TYPE ='BUG' AUTHOR ='0000000040' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220426' SOLUTION ='UNRESOLVED' PRIORITY ='19' PRODUCT ='0602507592'  )
 ( CLIENT ='100' TASK_ID ='0000000193' TASK_KEY ='BW_193' SUMMARY ='Donec dapibus.' STATUS ='FIXED' PROJECT ='0000000000'
DESCRIPTION ='Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat var'
ASSIGNEE ='0000000086' TYPE ='SUBTASK' AUTHOR ='0000000077' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20211104' SOLUTION ='DUPLICATE' PRIORITY ='89' PRODUCT ='0769934740'  )
 ( CLIENT ='100' TASK_ID ='0000000194' TASK_KEY ='INT_194' SUMMARY ='Morbi porttitor lorem id ligula.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.Curabitur in libero ut massa vol'
ASSIGNEE ='0000000047' TYPE ='BUG' AUTHOR ='0000000059' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220925' SOLUTION ='UNRESOLVED' PRIORITY ='67' PRODUCT ='0532966664'  )
 ( CLIENT ='100' TASK_ID ='0000000195' TASK_KEY ='SUP_195' SUMMARY ='Proin interdum mauris non ligula pellentesque ultrices.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer e'
ASSIGNEE ='0000000042' TYPE ='SUBTASK' AUTHOR ='0000000009' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220404' SOLUTION ='UNRESOLVED' PRIORITY ='54' PRODUCT ='0223750318'  )
 ( CLIENT ='100' TASK_ID ='0000000196' TASK_KEY ='MIG_196' SUMMARY ='Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.'
ASSIGNEE ='0000000090' TYPE ='TASK' AUTHOR ='0000000053' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220817' SOLUTION ='UNRESOLVED' PRIORITY ='39' PRODUCT ='0447224062'  )
 ( CLIENT ='100' TASK_ID ='0000000197' TASK_KEY ='BW_197' SUMMARY ='Aliquam sit amet diam in magna bibendum imperdiet.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.Praesent id massa id nisl venenatis lacinia'
ASSIGNEE ='0000000037' TYPE ='BUG' AUTHOR ='0000000070' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220531' SOLUTION ='UNRESOLVED' PRIORITY ='60' PRODUCT ='0450045158'  )
 ( CLIENT ='100' TASK_ID ='0000000198' TASK_KEY ='INT_198' SUMMARY ='In hac habitasse platea dictumst.' STATUS ='NEW' PROJECT ='0000000000'
DESCRIPTION ='Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit'
ASSIGNEE ='0000000032' TYPE ='SUBTASK' AUTHOR ='0000000041' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220403' SOLUTION ='UNRESOLVED' PRIORITY ='65' PRODUCT ='0234390962'  )
 ( CLIENT ='100' TASK_ID ='0000000199' TASK_KEY ='INT_199' SUMMARY ='Nulla tempus.' STATUS ='FIXED' PROJECT ='0000000000'

DESCRIPTION ='Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.Phasellus'
ASSIGNEE ='0000000016' TYPE ='FEATURE' AUTHOR ='0000000070' CHANGED_AT ='0.0000000 ' CREATED_AT ='0.0000000 ' DUE_DATE ='20220923' SOLUTION ='RTFM' PRIORITY ='33' PRODUCT ='0560768634'  )
).
     insert  zbc_tasks from table @tasks.

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
   "delete_data( ).
    "generate_tasks( ).
    "select_tasks( out ).
  fill_status_text( ).
  ENDMETHOD.


  METHOD select_tasks.
    SELECT task_id,
           status,
           solution
      FROM zbc_tasks
      INTO TABLE @DATA(tasks).

    out->write( tasks ).

  ENDMETHOD.


  METHOD delete_data.


    DELETE FROM zbc_tasks.
    delete from zbc_users.

  ENDMETHOD.


  METHOD fill_status_text.
    types tt_status type STANDARD TABLE OF zbc_status_text WITH DEFAULT KEY.

    data(texts) = value tt_status( language = 'E' ( status = 'NEW'      text = 'New' )
                                                  ( status = 'FIXED'    text = 'Fixed' )
                                                  ( status = 'INPROGES' text = 'In Progress' )
                                                  ( status = 'CANCELED' text = 'Canceled' )
                                                  ( status = 'TEST'     text = 'In Test' )
                                                  ( status = 'RETEST'   text = 'In Retest' )
                                                  ( status = 'POSTPONE' text = 'Postponed' )
                                   language = 'D' ( status = 'NEW'      text = 'Neu' )
                                                  ( status = 'FIXED'    text = 'Behoben' )
                                                  ( status = 'INPROGES' text = 'In Bearbeitung' )
                                                  ( status = 'CANCELED' text = 'Verworfen' )
                                                  ( status = 'TEST'     text = 'Im Test' )
                                                  ( status = 'RETEST'   text = 'Im Nachtest' )
                                                  ( status = 'POSTPONE' text = 'Verschoben' ) ).
    DELETE from zbc_status_text.
    insert zbc_status_text from table @texts.
  ENDMETHOD.
ENDCLASS.
