CLASS zcl_demo_data DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PRIVATE SECTION.
    DATA: gv_timestamp TYPE timestamp.
    METHODS fill_user_table.
    METHODS fill_task_table.
    METHODS fill_status_table.
    METHODS fill_comments_table.
    METHODS clear_old.
ENDCLASS.


CLASS zcl_demo_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    GET TIME STAMP FIELD gv_timestamp.
    clear_old( ).
    fill_user_table( ).
    fill_task_table( ).
    fill_status_table( ).
    fill_comments_table( ).
  ENDMETHOD.

  METHOD fill_user_table.
    DATA lt_demo_data TYPE STANDARD TABLE OF zbc_users.

    lt_demo_data = VALUE #(
        (  user_id = '0000000101' firstname = 'Jörg' lastname = 'Brandeis' email = 'joerg@brandeis.de' gender = 'M' date_of_birth = '19740930'  )
        (  user_id = '0000000001' firstname = 'Emmye' lastname = 'Alywen' email = 'ealywen0@alexa.com' gender = 'F' date_of_birth = '19760516'  )
        (  user_id = '0000000002' firstname = 'Yolande' lastname = 'Gullick' email = 'ygullick1@biglobe.ne.jp' gender = 'F' date_of_birth = '19680218'  )
        ( user_id       = '0000000003'
          firstname     = 'Stavro'
          lastname      = 'Antonopoulos'
          email         = 'santonopoulos2@histats.com'
          gender        = 'M'
          date_of_birth = '20000916'  )
        ( user_id       = '0000000004'
          firstname     = 'Peyter'
          lastname      = 'Grisenthwaite'
          email         = 'pgrisenthwaite3@bizjournals.com'
          gender        = 'M'
          date_of_birth = '19661029'  )
        (  user_id = '0000000005' firstname = 'Heidi' lastname = 'Wardington' email = 'hwardington4@myspace.com' gender = 'F' date_of_birth = '19970630'  )
        (  user_id = '0000000006' firstname = 'Constantina' lastname = 'Atton' email = 'catton5@taobao.com' gender = 'F' date_of_birth = '19730317'  )
        (  user_id = '0000000007' firstname = 'Gonzalo' lastname = 'Pitkeathley' email = 'gpitkeathley6@ft.com' gender = 'M' date_of_birth = '19621025'  )
        (  user_id = '0000000008' firstname = 'Thibaut' lastname = 'Groven' email = 'tgroven7@europa.eu' gender = 'M' date_of_birth = '19870829'  )
        (  user_id = '0000000009' firstname = 'Martica' lastname = 'Elkins' email = 'melkins8@pen.io' gender = 'F' date_of_birth = '19960102'  )
        (  user_id = '0000000010' firstname = 'Hewitt' lastname = 'Sickert' email = 'hsickert9@patch.com' gender = 'M' date_of_birth = '19820219'  )
        (  user_id = '0000000011' firstname = 'Gus' lastname = 'Gallaccio' email = 'ggallaccioa@patch.com' gender = 'M' date_of_birth = '19910302'  )
        (  user_id = '0000000012' firstname = 'Casie' lastname = 'Bentham' email = 'cbenthamb@irs.gov' gender = 'F' date_of_birth = '19740621'  )
        (  user_id = '0000000013' firstname = 'Miriam' lastname = 'Dehm' email = 'mdehmc@mediafire.com' gender = 'F' date_of_birth = '19940328'  )
        (  user_id = '0000000014' firstname = 'Clemente' lastname = 'Bishell' email = 'cbishelld@jiathis.com' gender = 'M' date_of_birth = '19930808'  )
        (  user_id = '0000000015' firstname = 'Ettie' lastname = 'Biasioli' email = 'ebiasiolie@ustream.tv' gender = 'F' date_of_birth = '19860319'  )
        (  user_id = '0000000016' firstname = 'Prince' lastname = 'Coling' email = 'pcolingf@arizona.edu' gender = 'M' date_of_birth = '19840623'  )
        (  user_id = '0000000017' firstname = 'Eve' lastname = 'Donaghy' email = 'edonaghyg@naver.com' gender = 'F' date_of_birth = '19790817'  )
        (  user_id = '0000000018' firstname = 'Diane' lastname = 'Splevins' email = 'dsplevinsh@accuweather.com' gender = 'F' date_of_birth = '19820723'  )
        (  user_id = '0000000019' firstname = 'Oswald' lastname = 'Meneghi' email = 'omeneghii@dot.gov' gender = 'M' date_of_birth = '19830101'  )
        (  user_id = '0000000020' firstname = 'Massimiliano' lastname = 'D''Aguanno' email = 'mdaguannoj@gnu.org' gender = 'M' date_of_birth = '19680508'  )
        (  user_id = '0000000021' firstname = 'Freeman' lastname = 'Deshon' email = 'fdeshonk@angelfire.com' gender = 'M' date_of_birth = '19980712'  )
        (  user_id = '0000000022' firstname = 'Moll' lastname = 'Lanmeid' email = 'mlanmeidl@addthis.com' gender = 'F' date_of_birth = '19700228'  )
        (  user_id = '0000000023' firstname = 'Daven' lastname = 'Peteri' email = 'dpeterim@prnewswire.com' gender = 'M' date_of_birth = '19830615'  )
        (  user_id = '0000000024' firstname = 'Julee' lastname = 'Ealles' email = 'jeallesn@a8.net' gender = 'F' date_of_birth = '19821003'  )
        (  user_id = '0000000025' firstname = 'Flin' lastname = 'Mowsdell' email = 'fmowsdello@acquirethisname.com' gender = 'M' date_of_birth = '19700609'  )
        (  user_id = '0000000026' firstname = 'Romola' lastname = 'Hunting' email = 'rhuntingp@rakuten.co.jp' gender = 'F' date_of_birth = '19970111'  )
        (  user_id = '0000000027' firstname = 'Olivier' lastname = 'McGraffin' email = 'omcgraffinq@tiny.cc' gender = 'M' date_of_birth = '19880423'  )
        (  user_id = '0000000028' firstname = 'Bud' lastname = 'Bakesef' email = 'bbakesefr@omniture.com' gender = 'M' date_of_birth = '19630403'  )
        (  user_id = '0000000029' firstname = 'Beverly' lastname = 'Gueny' email = 'bguenys@hc360.com' gender = 'F' date_of_birth = '19950423'  )
        (  user_id = '0000000030' firstname = 'Dredi' lastname = 'Kift' email = 'dkiftt@forbes.com' gender = 'F' date_of_birth = '19840111'  )
        (  user_id = '0000000031' firstname = 'Marla' lastname = 'Noton' email = 'mnotonu@yelp.com' gender = 'F' date_of_birth = '19950412'  )
        (  user_id = '0000000032' firstname = 'Matti' lastname = 'Glasheen' email = 'mglasheenv@360.cn' gender = 'F' date_of_birth = '19601231'  )
        (  user_id = '0000000033' firstname = 'Percy' lastname = 'Ogilvie' email = 'pogilview@amazon.co.uk' gender = 'M' date_of_birth = '20010501'  )
        (  user_id = '0000000034' firstname = 'Lilyan' lastname = 'Croan' email = 'lcroanx@engadget.com' gender = 'F' date_of_birth = '19710401'  )
        ( user_id       = '0000000035'
          firstname     = 'Suzie'
          lastname      = 'Ivanyutin'
          email         = 'sivanyutiny@merriam-webster.com'
          gender        = 'F'
          date_of_birth = '19720729'  )
        (  user_id = '0000000036' firstname = 'Chelsie' lastname = 'Odgers' email = 'codgersz@comsenz.com' gender = 'F' date_of_birth = '19821119'  )
        (  user_id = '0000000037' firstname = 'Orland' lastname = 'Alebrooke' email = 'oalebrooke10@github.io' gender = 'M' date_of_birth = '19840213'  )
        (  user_id = '0000000038' firstname = 'Maire' lastname = 'Spritt' email = 'mspritt11@washington.edu' gender = 'F' date_of_birth = '19761010'  )
        (  user_id = '0000000039' firstname = 'Demetris' lastname = 'Bramich' email = 'dbramich12@marriott.com' gender = 'M' date_of_birth = '19730416'  )
        (  user_id = '0000000040' firstname = 'Gertrud' lastname = 'Carlone' email = 'gcarlone13@va.gov' gender = 'F' date_of_birth = '19610520'  )
        (  user_id = '0000000041' firstname = 'Fanchette' lastname = 'Patifield' email = 'fpatifield14@cornell.edu' gender = 'F' date_of_birth = '19980920'  )
        ( user_id       = '0000000042'
          firstname     = 'Consuelo'
          lastname      = 'O''Hallagan'
          email         = 'cohallagan15@aboutads.info'
          gender        = 'F'
          date_of_birth = '19650531'  )
        (  user_id = '0000000043' firstname = 'Hermann' lastname = 'Vel' email = 'hvel16@studiopress.com' gender = 'M' date_of_birth = '19870407'  )
        (  user_id = '0000000044' firstname = 'Cletis' lastname = 'Cromley' email = 'ccromley17@ucla.edu' gender = 'M' date_of_birth = '19901021'  )
        (  user_id = '0000000045' firstname = 'Troy' lastname = 'Jerromes' email = 'tjerromes18@usgs.gov' gender = 'M' date_of_birth = '19700306'  )
        (  user_id = '0000000046' firstname = 'Kiersten' lastname = 'Soall' email = 'ksoall19@amazonaws.com' gender = 'F' date_of_birth = '19940317'  )
        (  user_id = '0000000047' firstname = 'Faustina' lastname = 'Lemerle' email = 'flemerle1a@go.com' gender = 'F' date_of_birth = '19940523'  )
        (  user_id = '0000000048' firstname = 'Avigdor' lastname = 'Hulmes' email = 'ahulmes1b@sogou.com' gender = 'M' date_of_birth = '19661103'  )
        (  user_id = '0000000049' firstname = 'Lucas' lastname = 'Mixture' email = 'lmixture1c@clickbank.net' gender = 'M' date_of_birth = '19770116'  )
        (  user_id = '0000000050' firstname = 'Kylen' lastname = 'Dumbrill' email = 'kdumbrill1d@istockphoto.com' gender = 'F' date_of_birth = '19691113'  )
        ( user_id       = '0000000051'
          firstname     = 'Forester'
          lastname      = 'Peachment'
          email         = 'fpeachment1e@theatlantic.com'
          gender        = 'M'
          date_of_birth = '19980901'  )
        (  user_id = '0000000052' firstname = 'Ruddie' lastname = 'Gebhardt' email = 'rgebhardt1f@dagondesign.com' gender = 'M' date_of_birth = '19980511'  )
        (  user_id = '0000000053' firstname = 'Robenia' lastname = 'Sage' email = 'rsage1g@webnode.com' gender = 'F' date_of_birth = '19650225'  )
        (  user_id = '0000000054' firstname = 'Abie' lastname = 'Wherry' email = 'awherry1h@salon.com' gender = 'M' date_of_birth = '19911105'  )
        (  user_id = '0000000055' firstname = 'Edie' lastname = 'Godmar' email = 'egodmar1i@bbc.co.uk' gender = 'F' date_of_birth = '19870529'  )
        (  user_id = '0000000056' firstname = 'Cross' lastname = 'Proback' email = 'cproback1j@xing.com' gender = 'M' date_of_birth = '19980601'  )
        (  user_id = '0000000057' firstname = 'Sheila' lastname = 'Prenty' email = 'sprenty1k@go.com' gender = 'F' date_of_birth = '19951023'  )
        (  user_id = '0000000058' firstname = 'Pet' lastname = 'O''Looney' email = 'polooney1l@senate.gov' gender = 'F' date_of_birth = '19850608'  )
        (  user_id = '0000000059' firstname = 'Rae' lastname = 'Franzotto' email = 'rfranzotto1m@mac.com' gender = 'F' date_of_birth = '19660508'  )
        (  user_id = '0000000060' firstname = 'Barbra' lastname = 'Brearley' email = 'bbrearley1n@hc360.com' gender = 'F' date_of_birth = '19960725'  )
        ( user_id       = '0000000061'
          firstname     = 'Cornell'
          lastname      = 'Tremathack'
          email         = 'ctremathack1o@biblegateway.com'
          gender        = 'M'
          date_of_birth = '19941110'  )
        (  user_id = '0000000062' firstname = 'Dickie' lastname = 'Howden' email = 'dhowden1p@mapy.cz' gender = 'M' date_of_birth = '19811103'  )
        (  user_id = '0000000063' firstname = 'Sella' lastname = 'Shanahan' email = 'sshanahan1q@123-reg.co.uk' gender = 'F' date_of_birth = '19920920'  )
        (  user_id = '0000000064' firstname = 'Celestia' lastname = 'Hallows' email = 'challows1r@sciencedaily.com' gender = 'F' date_of_birth = '19750322'  )
        (  user_id = '0000000065' firstname = 'Jaymie' lastname = 'Daal' email = 'jdaal1s@google.pl' gender = 'M' date_of_birth = '19801116'  )
        (  user_id = '0000000066' firstname = 'Karola' lastname = 'Robjohns' email = 'krobjohns1t@fc2.com' gender = 'F' date_of_birth = '19691112'  )
        (  user_id = '0000000067' firstname = 'Jacobo' lastname = 'Karadzas' email = 'jkaradzas1u@wp.com' gender = 'M' date_of_birth = '19800819'  )
        (  user_id = '0000000068' firstname = 'Binky' lastname = 'Lamanby' email = 'blamanby1v@spotify.com' gender = 'M' date_of_birth = '19801202'  )
        (  user_id = '0000000069' firstname = 'Terrie' lastname = 'Geistbeck' email = 'tgeistbeck1w@imageshack.us' gender = 'F' date_of_birth = '19621005'  )
        (  user_id = '0000000070' firstname = 'Sid' lastname = 'Sage' email = 'ssage1x@cbsnews.com' gender = 'M' date_of_birth = '19700513'  )
        (  user_id = '0000000071' firstname = 'Gard' lastname = 'Kiwitz' email = 'gkiwitz1y@boston.com' gender = 'M' date_of_birth = '20010903'  )
        (  user_id = '0000000072' firstname = 'Lil' lastname = 'Drummond' email = 'ldrummond1z@soup.io' gender = 'F' date_of_birth = '19760627'  )
        (  user_id = '0000000073' firstname = 'Theodor' lastname = 'Seman' email = 'tseman20@indiatimes.com' gender = 'M' date_of_birth = '19851016'  )
        (  user_id = '0000000074' firstname = 'Katerine' lastname = 'Prevost' email = 'kprevost21@g.co' gender = 'F' date_of_birth = '20000606'  )
        ( user_id       = '0000000075'
          firstname     = 'Mohammed'
          lastname      = 'Emanuelov'
          email         = 'memanuelov22@cargocollective.com'
          gender        = 'M'
          date_of_birth = '19770426'  )
        ( user_id       = '0000000076'
          firstname     = 'Coleman'
          lastname      = 'Hoolaghan'
          email         = 'choolaghan23@huffingtonpost.com'
          gender        = 'M'
          date_of_birth = '19641005'  )
        (  user_id = '0000000077' firstname = 'Thorny' lastname = 'Gergely' email = 'tgergely24@nydailynews.com' gender = 'M' date_of_birth = '19970421'  )
        (  user_id = '0000000078' firstname = 'Zacherie' lastname = 'Meaders' email = 'zmeaders25@cbsnews.com' gender = 'M' date_of_birth = '19720312'  )
        ( user_id       = '0000000079'
          firstname     = 'Goddard'
          lastname      = 'Hickinbottom'
          email         = 'ghickinbottom26@topsy.com'
          gender        = 'M'
          date_of_birth = '19801031'  )
        (  user_id = '0000000080' firstname = 'Moritz' lastname = 'Kay' email = 'mkay27@tmall.com' gender = 'M' date_of_birth = '19740506'  )
        (  user_id = '0000000081' firstname = 'Darrick' lastname = 'Blunt' email = 'dblunt28@360.cn' gender = 'M' date_of_birth = '19910901'  )
        (  user_id = '0000000082' firstname = 'Paloma' lastname = 'Maine' email = 'pmaine29@uiuc.edu' gender = 'F' date_of_birth = '19690417'  )
        (  user_id = '0000000083' firstname = 'Hymie' lastname = 'Gallear' email = 'hgallear2a@marriott.com' gender = 'M' date_of_birth = '19760521'  )
        (  user_id = '0000000084' firstname = 'Zebedee' lastname = 'Ferrers' email = 'zferrers2b@addthis.com' gender = 'M' date_of_birth = '19880305'  )
        (  user_id = '0000000085' firstname = 'Retha' lastname = 'Doyle' email = 'rdoyle2c@photobucket.com' gender = 'F' date_of_birth = '19970828'  )
        (  user_id = '0000000086' firstname = 'Nickie' lastname = 'Pesselt' email = 'npesselt2d@discuz.net' gender = 'M' date_of_birth = '19701103'  )
        (  user_id = '0000000087' firstname = 'Veronike' lastname = 'Twyford' email = 'vtwyford2e@cornell.edu' gender = 'F' date_of_birth = '19850728'  )
        (  user_id = '0000000088' firstname = 'Abby' lastname = 'Gergus' email = 'agergus2f@jiathis.com' gender = 'M' date_of_birth = '19980424'  )
        ( user_id       = '0000000089'
          firstname     = 'Cindra'
          lastname      = 'Featherstone'
          email         = 'cfeatherstone2g@fotki.com'
          gender        = 'F'
          date_of_birth = '19650814'  )
        (  user_id = '0000000090' firstname = 'Wilone' lastname = 'Monard' email = 'wmonard2h@wufoo.com' gender = 'F' date_of_birth = '19980412'  )
        (  user_id = '0000000091' firstname = 'Joellyn' lastname = 'Byfield' email = 'jbyfield2i@reuters.com' gender = 'F' date_of_birth = '19990528'  )
        (  user_id = '0000000092' firstname = 'Elenore' lastname = 'Laraway' email = 'elaraway2j@washington.edu' gender = 'F' date_of_birth = '19920905'  )
        (  user_id = '0000000093' firstname = 'Lorry' lastname = 'Millett' email = 'lmillett2k@time.com' gender = 'M' date_of_birth = '19710108'  )
        (  user_id = '0000000094' firstname = 'Stern' lastname = 'Ridges' email = 'sridges2l@technorati.com' gender = 'M' date_of_birth = '19610906'  )
        (  user_id = '0000000095' firstname = 'Arabela' lastname = 'Roose' email = 'aroose2m@phpbb.com' gender = 'F' date_of_birth = '19630403'  )
        (  user_id = '0000000096' firstname = 'Adelheid' lastname = 'Jarmaine' email = 'ajarmaine2n@tinyurl.com' gender = 'F' date_of_birth = '19931105'  )
        (  user_id = '0000000097' firstname = 'Loni' lastname = 'Edgler' email = 'ledgler2o@tmall.com' gender = 'F' date_of_birth = '19810130'  )
        (  user_id = '0000000098' firstname = 'Wake' lastname = 'Gyrgorwicx' email = 'wgyrgorwicx2p@go.com' gender = 'M' date_of_birth = '19820119'  )
        (  user_id = '0000000099' firstname = 'Lou' lastname = 'Pepper' email = 'lpepper2q@webeden.co.uk' gender = 'F' date_of_birth = '19811108'  ) ).

    INSERT zbc_users FROM TABLE @lt_demo_data.
  ENDMETHOD.

  METHOD fill_task_table.
    DATA lt_demo_data TYPE STANDARD TABLE OF zbc_tasks.

    lt_demo_data =
VALUE #(
    description = ''
    changed_at  = gv_timestamp
    created_at  = gv_timestamp
    ( task_key = 'INT_2'
      summary  = 'Nunc purus.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000021'
      type     = 'USERSTORY'
      author   = '0000000096'
      due_date = '20230224'
      solution = 'UNRESOLVED'
      priority = '76'
      product  = '0241852440'  )
    ( task_key = 'MIG_3'
      summary  = 'Vivamus in felis eu sapien cursus vestibulum.'
      status   = 'FIXED'
      project  = '0000000000'
      assignee = '0000000008'
      type     = 'USERSTORY'
      author   = '0000000046'
      due_date = '20220601'
      solution = 'DONE'
      priority = '86'
      product  = '0486756270'  )
    ( task_key = 'BW4_4'
      summary  = 'Etiam vel augue.'
      status   = 'NEW'
      project  = '0000000004'
      assignee = '0000000094'
      type     = 'TASK'
      author   = '0000000038'
      due_date = '20220518'
      solution = 'UNRESOLVED'
      priority = '83'
      product  = '0729215637'  )
    ( task_key = 'BW4_5'
      summary  = 'Nulla tellus.'
      status   = 'NEW'
      project  = '0000000004'
      assignee = '0000000011'
      type     = 'USERSTORY'
      author   = '0000000055'
      due_date = '20230111'
      solution = 'UNRESOLVED'
      priority = '31'
      product  = '0042656309'  )
    ( task_key = 'SUP_6'
      summary  = 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000083'
      type     = 'TASK'
      author   = '0000000067'
      due_date = '20211025'
      solution = 'UNRESOLVED'
      priority = '37'
      product  = '0184122275'  )
    ( task_key = 'BW_7'
      summary  = 'Praesent blandit.'
      status   = 'POSTPONE'
      project  = '0000000000'
      assignee = '0000000052'
      type     = 'BUG'
      author   = '0000000082'
      due_date = '20210928'
      solution = 'UNRESOLVED'
      priority = '5'
      product  = '0053743613'  )
    ( task_key = 'SUP_8'
      summary  = 'Sed accumsan felis.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000095'
      type     = 'EPIC'
      author   = '0000000029'
      due_date = '20211220'
      solution = 'UNRESOLVED'
      priority = '95'
      product  = '0620372377'  )
    ( task_key = 'SUP_9'
      summary  = 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000084'
      type     = 'BUG'
      author   = '0000000043'
      due_date = '20220501'
      solution = 'UNRESOLVED'
      priority = '76'
      product  = '0342390183'  )
    ( task_key = 'MIG_10'
      summary  = 'Aenean fermentum.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000076'
      type     = 'TASK'
      author   = '0000000076'
      due_date = '20221202'
      solution = 'UNRESOLVED'
      priority = '93'
      product  = '0573504591'  )
    ( task_key = 'BW4_11'
      summary  = 'Quisque ut erat.'
      status   = 'NEW'
      project  = '0000000004'
      assignee = '0000000097'
      type     = 'EPIC'
      author   = '0000000040'
      due_date = '20211124'
      solution = 'UNRESOLVED'
      priority = '93'
      product  = '0328294458'  )
    ( task_key = 'MIG_12'
      summary  = 'Etiam vel augue.'
      status   = 'FIXED'
      project  = '0000000000'
      assignee = '0000000073'
      type     = 'EPIC'
      author   = '0000000039'
      due_date = '20220301'
      solution = 'DONE'
      priority = '12'
      product  = '0079108453'  )
    ( task_key = 'SUP_13'
      summary  = 'Duis aliquam convallis nunc.'
      status   = 'FIXED'
      project  = '0000000000'
      assignee = '0000000047'
      type     = 'SUBTASK'
      author   = '0000000036'
      due_date = '20220329'
      solution = 'DONE'
      priority = '11'
      product  = '0919450998'  )
    ( task_key = 'INT_14'
      summary  = 'Morbi vel lectus in quam fringilla rhoncus.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000031'
      type     = 'EPIC'
      author   = '0000000042'
      due_date = '20220122'
      solution = 'UNRESOLVED'
      priority = '20'
      product  = '0476355680'  )
    ( task_key = 'BW_15'
      summary  = 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000080'
      type     = 'USERSTORY'
      author   = '0000000055'
      due_date = '20220503'
      solution = 'UNRESOLVED'
      priority = '63'
      product  = '0704305949'  )
    ( task_key = 'BW_16'
      summary  = 'Cras in purus eu magna vulputate luctus.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000053'
      type     = 'USERSTORY'
      author   = '0000000043'
      due_date = '20220103'
      solution = 'UNRESOLVED'
      priority = '62'
      product  = '0634408481'  )
    ( task_key = 'BW_17'
      summary  = 'Sed ante.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000039'
      type     = 'USERSTORY'
      author   = '0000000059'
      due_date = '20220506'
      solution = 'UNRESOLVED'
      priority = '89'
      product  = '0484508054'  )
    ( task_key = 'BW_18'
      summary  = 'Phasellus sit amet erat.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000100'
      type     = 'TASK'
      author   = '0000000079'
      due_date = '20220619'
      solution = 'UNRESOLVED'
      priority = '74'
      product  = '0926165798'  )
    ( task_key = 'MIG_19'
      summary  = 'Proin risus.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000038'
      type     = 'FEATURE'
      author   = '0000000020'
      due_date = '20230202'
      solution = 'UNRESOLVED'
      priority = '88'
      product  = '0992039185'  )
    ( task_key = 'INT_20'
      summary  = 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000053'
      type     = 'EPIC'
      author   = '0000000084'
      due_date = '20221001'
      solution = 'UNRESOLVED'
      priority = '61'
      product  = '0008130905'  )
    ( task_key = 'INT_21'
      summary  = 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000070'
      type     = 'BUG'
      author   = '0000000017'
      due_date = '20220215'
      solution = 'UNRESOLVED'
      priority = '21'
      product  = '0750939647'  )
    ( task_key = 'BW_22'
      summary  = 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000057'
      type     = 'EPIC'
      author   = '0000000096'
      due_date = '20211213'
      solution = 'UNRESOLVED'
      priority = '68'
      product  = '0213995050'  )
    ( task_key = 'MIG_23'
      summary  = 'Aliquam sit amet diam in magna bibendum imperdiet.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000057'
      type     = 'FEATURE'
      author   = '0000000067'
      due_date = '20230120'
      solution = 'UNRESOLVED'
      priority = '72'
      product  = '0146961392'  )
    ( task_key = 'SUP_24'
      summary  = 'Donec vitae nisi.'
      status   = 'FIXED'
      project  = '0000000000'
      assignee = '0000000031'
      type     = 'USERSTORY'
      author   = '0000000048'
      due_date = '20211109'
      solution = 'CANTREPOR'
      priority = '65'
      product  = '0426549837'  )
    ( task_key = 'BW_25'
      summary  = 'Aenean auctor gravida sem.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000030'
      type     = 'USERSTORY'
      author   = '0000000013'
      due_date = '20211220'
      solution = 'UNRESOLVED'
      priority = '67'
      product  = '0344405119'  )
    ( task_key = 'INT_26'
      summary  = 'Cras in purus eu magna vulputate luctus.'
      status   = 'RETEST'
      project  = '0000000000'
      assignee = '0000000092'
      type     = 'USERSTORY'
      author   = '0000000100'
      due_date = '20211225'
      solution = 'DONE'
      priority = '87'
      product  = '0351053862'  )
    ( task_key = 'SUP_27'
      summary  = 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000091'
      type     = 'USERSTORY'
      author   = '0000000040'
      due_date = '20220808'
      solution = 'UNRESOLVED'
      priority = '52'
      product  = '0121109742'  )
    ( task_key = 'SUP_28'
      summary  = 'Quisque ut erat.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000058'
      type     = 'TASK'
      author   = '0000000067'
      due_date = '20230109'
      solution = 'UNRESOLVED'
      priority = '93'
      product  = '0278647057'  )
    ( task_key = 'BW_29'
      summary  = 'Suspendisse potenti.'
      status   = 'TEST'
      project  = '0000000000'
      assignee = '0000000055'
      type     = 'SUBTASK'
      author   = '0000000035'
      due_date = '20221009'
      solution = 'DONE'
      priority = '5'
      product  = '0887529302'  )
    ( task_key = 'SUP_30'
      summary  = 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.'
      status   = 'INPROGRE'
      project  = '0000000000'
      assignee = '0000000043'
      type     = 'FEATURE'
      author   = '0000000076'
      due_date = '20220115'
      solution = 'UNRESOLVED'
      priority = '48'
      product  = '0458365469'  )
    ( task_key = 'BW4_31'
      summary  = 'Proin eu mi.'
      status   = 'NEW'
      project  = '0000000004'
      assignee = '0000000050'
      type     = 'FEATURE'
      author   = '0000000015'
      due_date = '20221101'
      solution = 'UNRESOLVED'
      priority = '66'
      product  = '0746084841'  )
    ( task_key = 'BW4_32'
      summary  = 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.'
      status   = 'INPROGRE'
      project  = '0000000004'
      assignee = '0000000084'
      type     = 'TASK'
      author   = '0000000081'
      due_date = '20220423'
      solution = 'UNRESOLVED'
      priority = '53'
      product  = '0294705482'  )
    ( task_key = 'BW4_33'
      summary  = 'Nam tristique tortor eu pede.'
      status   = 'POSTPONE'
      project  = '0000000004'
      assignee = '0000000047'
      type     = 'USERSTORY'
      author   = '0000000078'
      due_date = '20220905'
      solution = 'UNRESOLVED'
      priority = '71'
      product  = '0705400704'  )
    ( task_key = 'MIG_34'
      summary  = 'Mauris lacinia sapien quis libero.'
      status   = 'POSTPONE'
      project  = '0000000000'
      assignee = '0000000029'
      type     = 'EPIC'
      author   = '0000000098'
      due_date = '20211219'
      solution = 'UNRESOLVED'
      priority = '49'
      product  = '0234229492'  )
    ( task_key = 'MIG_35'
      summary  = 'Vestibulum sed magna at nunc commodo placerat.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000100'
      type     = 'BUG'
      author   = '0000000022'
      due_date = '20230208'
      solution = 'UNRESOLVED'
      priority = '9'
      product  = '0450893020'  )
    ( task_key = 'MIG_36'
      summary  = 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000039'
      type     = 'FEATURE'
      author   = '0000000077'
      due_date = '20211210'
      solution = 'UNRESOLVED'
      priority = '96'
      product  = '0840223056'  )
    ( task_key = 'BW_37'
      summary  = 'Aliquam non mauris.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000081'
      type     = 'EPIC'
      author   = '0000000081'
      due_date = '20220110'
      solution = 'UNRESOLVED'
      priority = '35'
      product  = '0307190109'  )
    ( task_key = 'MIG_38'
      summary  = 'Nulla facilisi.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000013'
      type     = 'EPIC'
      author   = '0000000091'
      due_date = '20220402'
      solution = 'UNRESOLVED'
      priority = '32'
      product  = '0037634082'  )
    ( task_key = 'MIG_39'
      summary  = 'Morbi quis tortor id nulla ultrices aliquet.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000056'
      type     = 'FEATURE'
      author   = '0000000067'
      due_date = '20220613'
      solution = 'UNRESOLVED'
      priority = '94'
      product  = '0853821166'  )
    ( task_key = 'BW_40'
      summary  = 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000092'
      type     = 'BUG'
      author   = '0000000031'
      due_date = '20211212'
      solution = 'UNRESOLVED'
      priority = '31'
      product  = '0610975438'  )
    ( task_key = 'SUP_41'
      summary  = 'Nulla suscipit ligula in lacus.'
      status   = 'INPROGRE'
      project  = '0000000000'
      assignee = '0000000078'
      type     = 'USERSTORY'
      author   = '0000000041'
      due_date = '20221005'
      solution = 'UNRESOLVED'
      priority = '62'
      product  = '0216045400'  )
    ( task_key = 'INT_42'
      summary  = 'In hac habitasse platea dictumst.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000004'
      type     = 'EPIC'
      author   = '0000000049'
      due_date = '20230308'
      solution = 'UNRESOLVED'
      priority = '69'
      product  = '0016210570'  )
    ( task_key = 'INT_43'
      summary  = 'Aenean fermentum.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000031'
      type     = 'USERSTORY'
      author   = '0000000053'
      due_date = '20211209'
      solution = 'UNRESOLVED'
      priority = '83'
      product  = '0089490109'  )
    ( task_key = 'SUP_44'
      summary  = 'Morbi quis tortor id nulla ultrices aliquet.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000068'
      type     = 'BUG'
      author   = '0000000005'
      due_date = '20220628'
      solution = 'UNRESOLVED'
      priority = '93'
      product  = '0300415649'  )
    ( task_key = 'INT_45'
      summary  = 'Proin eu mi.'
      status   = 'RETEST'
      project  = '0000000000'
      assignee = '0000000018'
      type     = 'SUBTASK'
      author   = '0000000062'
      due_date = '20220829'
      solution = 'DONE'
      priority = '93'
      product  = '0661282475'  )
    ( task_key = 'MIG_46'
      summary  = 'Maecenas pulvinar lobortis est.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000015'
      type     = 'TASK'
      author   = '0000000007'
      due_date = '20221212'
      solution = 'UNRESOLVED'
      priority = '16'
      product  = '0637157132'  )
    ( task_key = 'BW4_47'
      summary  = 'Nam tristique tortor eu pede.'
      status   = 'POSTPONE'
      project  = '0000000004'
      assignee = '0000000079'
      type     = 'SUBTASK'
      author   = '0000000031'
      due_date = '20220319'
      solution = 'UNRESOLVED'
      priority = '18'
      product  = '0158831210'  )
    ( task_key = 'BW4_48'
      summary  = 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.'
      status   = 'FIXED'
      project  = '0000000004'
      assignee = '0000000042'
      type     = 'USERSTORY'
      author   = '0000000019'
      due_date = '20220524'
      solution = 'DONE'
      priority = '30'
      product  = '0281786745'  )
    ( task_key = 'INT_49'
      summary  = 'In hac habitasse platea dictumst.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000084'
      type     = 'SUBTASK'
      author   = '0000000093'
      due_date = '20220314'
      solution = 'UNRESOLVED'
      priority = '41'
      product  = '0585129904'  )
    ( task_key = 'INT_50'
      summary  = 'Integer tincidunt ante vel ipsum.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000033'
      type     = 'BUG'
      author   = '0000000052'
      due_date = '20230210'
      solution = 'UNRESOLVED'
      priority = '9'
      product  = '0527857683'  )
    ( task_key = 'INT_51'
      summary  = 'Duis aliquam convallis nunc.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000013'
      type     = 'USERSTORY'
      author   = '0000000009'
      due_date = '20221119'
      solution = 'UNRESOLVED'
      priority = '17'
      product  = '0693873417'  )
    ( task_key = 'SUP_52'
      summary  = 'Nulla tellus.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000078'
      type     = 'EPIC'
      author   = '0000000050'
      due_date = '20220519'
      solution = 'UNRESOLVED'
      priority = '40'
      product  = '0490930716'  )
    ( task_key = 'SUP_53'
      summary  = 'Nullam varius.'
      status   = 'INPROGRE'
      project  = '0000000000'
      assignee = '0000000043'
      type     = 'USERSTORY'
      author   = '0000000016'
      due_date = '20220810'
      solution = 'UNRESOLVED'
      priority = '69'
      product  = '0859973615'  )
    ( task_key = 'BW_54'
      summary  = 'Phasellus id sapien in sapien iaculis congue.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000098'
      type     = 'TASK'
      author   = '0000000050'
      due_date = '20220616'
      solution = 'UNRESOLVED'
      priority = '17'
      product  = '0518654464'  )
    ( task_key = 'BW_55'
      summary  = 'Maecenas pulvinar lobortis est.'
      status   = 'FIXED'
      project  = '0000000000'
      assignee = '0000000009'
      type     = 'USERSTORY'
      author   = '0000000042'
      due_date = '20220914'
      solution = 'DUPLICATE'
      priority = '15'
      product  = '0407470407'  )
    ( task_key = 'MIG_56'
      summary  = 'Pellentesque ultrices mattis odio.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000066'
      type     = 'EPIC'
      author   = '0000000020'
      due_date = '20220817'
      solution = 'UNRESOLVED'
      priority = '5'
      product  = '0801297159'  )
    ( task_key = 'MIG_57'
      summary  = 'Etiam justo.'
      status   = 'INPROGRE'
      project  = '0000000000'
      assignee = '0000000071'
      type     = 'EPIC'
      author   = '0000000024'
      due_date = '20220620'
      solution = 'UNRESOLVED'
      priority = '47'
      product  = '0689716658'  )
    ( task_key = 'SUP_58'
      summary  = 'Aliquam erat volutpat.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000039'
      type     = 'SUBTASK'
      author   = '0000000074'
      due_date = '20220826'
      solution = 'UNRESOLVED'
      priority = '24'
      product  = '0798407570'  )
    ( task_key = 'BW_59'
      summary  = 'Vestibulum sed magna at nunc commodo placerat.'
      status   = 'CANCELED'
      project  = '0000000000'
      assignee = '0000000070'
      type     = 'EPIC'
      author   = '0000000034'
      due_date = '20211014'
      solution = 'WONTFIX'
      priority = '74'
      product  = '0943586868'  )
    ( task_key = 'INT_60'
      summary  = 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.'
      status   = 'CANCELED'
      project  = '0000000000'
      assignee = '0000000031'
      type     = 'EPIC'
      author   = '0000000068'
      due_date = '20220313'
      solution = 'WONTFIX'
      priority = '53'
      product  = '0638626256'  )
    ( task_key = 'BW_61'
      summary  = 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.'
      status   = 'POSTPONE'
      project  = '0000000000'
      assignee = '0000000093'
      type     = 'FEATURE'
      author   = '0000000048'
      due_date = '20211231'
      solution = 'UNRESOLVED'
      priority = '94'
      product  = '0558532082'  )
    ( task_key = 'INT_62'
      summary  = 'Morbi quis tortor id nulla ultrices aliquet.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000004'
      type     = 'USERSTORY'
      author   = '0000000083'
      due_date = '20220806'
      solution = 'UNRESOLVED'
      priority = '95'
      product  = '0907390890'  )
    ( task_key = 'BW4_63'
      summary  = 'Nullam porttitor lacus at turpis.'
      status   = 'INPROGRE'
      project  = '0000000004'
      assignee = '0000000024'
      type     = 'BUG'
      author   = '0000000021'
      due_date = '20220307'
      solution = 'UNRESOLVED'
      priority = '84'
      product  = '0743839215'  )
    ( task_key = 'BW4_64'
      summary  = 'Ut tellus.'
      status   = 'INPROGRE'
      project  = '0000000004'
      assignee = '0000000055'
      type     = 'EPIC'
      author   = '0000000079'
      due_date = '20220108'
      solution = 'UNRESOLVED'
      priority = '53'
      product  = '0353340072'  )
    ( task_key = 'BW_65'
      summary  = 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.'
      status   = 'INPROGRE'
      project  = '0000000000'
      assignee = '0000000056'
      type     = 'USERSTORY'
      author   = '0000000042'
      due_date = '20230104'
      solution = 'UNRESOLVED'
      priority = '35'
      product  = '0571312669'  )
    ( task_key = 'INT_66'
      summary  = 'Nulla justo.'
      status   = 'FIXED'
      project  = '0000000000'
      assignee = '0000000019'
      type     = 'BUG'
      author   = '0000000059'
      due_date = '20221103'
      solution = 'RTFM'
      priority = '75'
      product  = '0967959293'  )
    ( task_key = 'INT_67'
      summary  = 'Curabitur at ipsum ac tellus semper interdum.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000026'
      type     = 'TASK'
      author   = '0000000024'
      due_date = '20221228'
      solution = 'UNRESOLVED'
      priority = '35'
      product  = '0808935460'  )
    ( task_key = 'BW4_68'
      summary  = 'Nulla nisl.'
      status   = 'CANCELED'
      project  = '0000000004'
      assignee = '0000000084'
      type     = 'BUG'
      author   = '0000000067'
      due_date = '20221006'
      solution = 'RTFM'
      priority = '44'
      product  = '0814211826'  )
    ( task_key = 'BW_69'
      summary  = 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.'
      status   = 'RETEST'
      project  = '0000000000'
      assignee = '0000000038'
      type     = 'USERSTORY'
      author   = '0000000048'
      due_date = '20220308'
      solution = 'DONE'
      priority = '80'
      product  = '0580228167'  )
    ( task_key = 'BW4_70'
      summary  = 'Donec ut dolor.'
      status   = 'NEW'
      project  = '0000000004'
      assignee = '0000000061'
      type     = 'FEATURE'
      author   = '0000000046'
      due_date = '20230317'
      solution = 'UNRESOLVED'
      priority = '2'
      product  = '0481633016'  )
    ( task_key = 'INT_71'
      summary  = 'Proin at turpis a pede posuere nonummy.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000053'
      type     = 'TASK'
      author   = '0000000040'
      due_date = '20220519'
      solution = 'UNRESOLVED'
      priority = '84'
      product  = '0907600660'  )
    ( task_key = 'MIG_72'
      summary  = 'Nam tristique tortor eu pede.'
      status   = 'FIXED'
      project  = '0000000000'
      assignee = '0000000072'
      type     = 'FEATURE'
      author   = '0000000014'
      due_date = '20221018'
      solution = 'WONTFIX'
      priority = '94'
      product  = '0775741248'  )
    ( task_key = 'MIG_73'
      summary  = 'Mauris sit amet eros.'
      status   = 'INPROGRE'
      project  = '0000000000'
      assignee = '0000000090'
      type     = 'EPIC'
      author   = '0000000044'
      due_date = '20220423'
      solution = 'UNRESOLVED'
      priority = '1'
      product  = '0647155955'  )
    ( task_key = 'BW4_74'
      summary  = 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.'
      status   = 'NEW'
      project  = '0000000004'
      assignee = '0000000020'
      type     = 'EPIC'
      author   = '0000000084'
      due_date = '20220208'
      solution = 'UNRESOLVED'
      priority = '29'
      product  = '0577394656'  )
    ( task_key = 'MIG_75'
      summary  = 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000065'
      type     = 'SUBTASK'
      author   = '0000000097'
      due_date = '20220708'
      solution = 'UNRESOLVED'
      priority = '45'
      product  = '0051078191'  )
    ( task_key = 'SUP_76'
      summary  = 'Curabitur in libero ut massa volutpat convallis.'
      status   = 'FIXED'
      project  = '0000000000'
      assignee = '0000000039'
      type     = 'FEATURE'
      author   = '0000000051'
      due_date = '20230223'
      solution = 'WONTFIX'
      priority = '83'
      product  = '0965242482'  )
    ( task_key = 'MIG_77'
      summary  = 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000062'
      type     = 'SUBTASK'
      author   = '0000000020'
      due_date = '20230323'
      solution = 'UNRESOLVED'
      priority = '62'
      product  = '0025135384'  )
    ( task_key = 'SUP_78'
      summary  = 'Morbi vel lectus in quam fringilla rhoncus.'
      status   = 'POSTPONE'
      project  = '0000000000'
      assignee = '0000000001'
      type     = 'BUG'
      author   = '0000000037'
      due_date = '20221224'
      solution = 'UNRESOLVED'
      priority = '85'
      product  = '0254130802'  )
    ( task_key = 'SUP_79'
      summary  = 'Integer non velit.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000065'
      type     = 'USERSTORY'
      author   = '0000000024'
      due_date = '20221116'
      solution = 'UNRESOLVED'
      priority = '29'
      product  = '0602222099'  )
    ( task_key = 'MIG_80'
      summary  = 'Nunc purus.'
      status   = 'POSTPONE'
      project  = '0000000000'
      assignee = '0000000049'
      type     = 'USERSTORY'
      author   = '0000000075'
      due_date = '20230209'
      solution = 'UNRESOLVED'
      priority = '89'
      product  = '0190458820'  )
    ( task_key = 'MIG_81'
      summary  = 'Pellentesque at nulla.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000062'
      type     = 'USERSTORY'
      author   = '0000000060'
      due_date = '20220529'
      solution = 'UNRESOLVED'
      priority = '46'
      product  = '0182382246'  )
    ( task_key = 'BW4_82'
      summary  = 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.'
      status   = 'NEW'
      project  = '0000000004'
      assignee = '0000000011'
      type     = 'EPIC'
      author   = '0000000055'
      due_date = '20220809'
      solution = 'UNRESOLVED'
      priority = '45'
      product  = '0999524989'  )
    ( task_key = 'INT_83'
      summary  = 'Etiam pretium iaculis justo.'
      status   = 'FIXED'
      project  = '0000000000'
      assignee = '0000000071'
      type     = 'SUBTASK'
      author   = '0000000026'
      due_date = '20220603'
      solution = 'DONE'
      priority = '85'
      product  = '0625067925'  )
    ( task_key = 'MIG_84'
      summary  = 'Maecenas tincidunt lacus at velit.'
      status   = 'FIXED'
      project  = '0000000000'
      assignee = '0000000041'
      type     = 'TASK'
      author   = '0000000064'
      due_date = '20221028'
      solution = 'CANTREPOR'
      priority = '80'
      product  = '0304875341'  )
    ( task_key = 'SUP_85'
      summary  = 'Donec ut dolor.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000072'
      type     = 'TASK'
      author   = '0000000078'
      due_date = '20230302'
      solution = 'UNRESOLVED'
      priority = '9'
      product  = '0961572130'  )
    ( task_key = 'INT_86'
      summary  = 'Maecenas pulvinar lobortis est.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000099'
      type     = 'BUG'
      author   = '0000000023'
      due_date = '20220521'
      solution = 'UNRESOLVED'
      priority = '84'
      product  = '0549601677'  )
    ( task_key = 'BW_87'
      summary  = 'Phasellus in felis.'
      status   = 'FIXED'
      project  = '0000000000'
      assignee = '0000000052'
      type     = 'EPIC'
      author   = '0000000085'
      due_date = '20220314'
      solution = 'DONE'
      priority = '3'
      product  = '0450810613'  )
    ( task_key = 'BW_88'
      summary  = 'Nulla ac enim.'
      status   = 'FIXED'
      project  = '0000000000'
      assignee = '0000000030'
      type     = 'FEATURE'
      author   = '0000000003'
      due_date = '20220222'
      solution = 'DONE'
      priority = '26'
      product  = '0100428216'  )
    ( task_key = 'SUP_89'
      summary  = 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae, Donec pharetra, magna vestibulum'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000060'
      type     = 'SUBTASK'
      author   = '0000000039'
      due_date = '20211030'
      solution = 'UNRESOLVED'
      priority = '51'
      product  = '0543696648'  )
    ( task_key = 'BW4_90'
      summary  = 'Vestibulum rutrum rutrum neque.'
      status   = 'NEW'
      project  = '0000000004'
      assignee = '0000000068'
      type     = 'BUG'
      author   = '0000000003'
      due_date = '20230305'
      solution = 'UNRESOLVED'
      priority = '92'
      product  = '0493897615'  )
    ( task_key = 'MIG_91'
      summary  = 'Mauris ullamcorper purus sit amet nulla.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000073'
      type     = 'FEATURE'
      author   = '0000000098'
      due_date = '20230201'
      solution = 'UNRESOLVED'
      priority = '98'
      product  = '0167048552'  )
    ( task_key = 'BW_92'
      summary  = 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000025'
      type     = 'USERSTORY'
      author   = '0000000093'
      due_date = '20220603'
      solution = 'UNRESOLVED'
      priority = '50'
      product  = '0668857912'  )
    ( task_key = 'BW4_93'
      summary  = 'Morbi porttitor lorem id ligula.'
      status   = 'NEW'
      project  = '0000000004'
      assignee = '0000000057'
      type     = 'TASK'
      author   = '0000000007'
      due_date = '20220707'
      solution = 'UNRESOLVED'
      priority = '21'
      product  = '0164270386'  )
    ( task_key = 'INT_94'
      summary  = 'Pellentesque at nulla.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000017'
      type     = 'FEATURE'
      author   = '0000000054'
      due_date = '20220716'
      solution = 'UNRESOLVED'
      priority = '77'
      product  = '0472593389'  )
    ( task_key = 'BW_95'
      summary  = 'Maecenas ut massa quis augue luctus tincidunt.'
      status   = 'POSTPONE'
      project  = '0000000000'
      assignee = '0000000098'
      type     = 'EPIC'
      author   = '0000000087'
      due_date = '20220704'
      solution = 'UNRESOLVED'
      priority = '27'
      product  = '0705739672'  )
    ( task_key = 'BW_96'
      summary  = 'Pellentesque viverra pede ac diam.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000039'
      type     = 'BUG'
      author   = '0000000080'
      due_date = '20220426'
      solution = 'UNRESOLVED'
      priority = '86'
      product  = '0858523099'  )
    ( task_key = 'MIG_97'
      summary  = 'Vivamus vestibulum sagittis sapien.'
      status   = 'FIXED'
      project  = '0000000000'
      assignee = '0000000096'
      type     = 'TASK'
      author   = '0000000077'
      due_date = '20220707'
      solution = 'DUPLICATE'
      priority = '74'
      product  = '0293855653'  )
    ( task_key = 'INT_98'
      summary  = 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'
      status   = 'FIXED'
      project  = '0000000000'
      assignee = '0000000066'
      type     = 'EPIC'
      author   = '0000000063'
      due_date = '20221224'
      solution = 'DONE'
      priority = '25'
      product  = '0206129762'  )
    ( task_key = 'SUP_99'
      summary  = 'Phasellus in felis.'
      status   = 'NEW'
      project  = '0000000000'
      assignee = '0000000031'
      type     = 'SUBTASK'
      author   = '0000000045'
      due_date = '20211101'
      solution = 'UNRESOLVED'
      priority = '96'
      product  = '0428115887'  )
    ( task_key = 'BW4_100'
      summary  = 'Nulla suscipit ligula in lacus.'
      status   = 'NEW'
      project  = '0000000004'
      assignee = '0000000074'
      type     = 'USERSTORY'
      author   = '0000000053'
      due_date = '20211107'
      solution = 'UNRESOLVED'
      priority = '94'
      product  = '0410358611'  ) ).

    INSERT zbc_tasks FROM TABLE @lt_demo_data.
  ENDMETHOD.

  METHOD fill_status_table.
    DATA lt_demo_data TYPE STANDARD TABLE OF zbc_statust.

    lt_demo_data = VALUE #( (  status = 'NEW' )
                            (  status = 'FIXED' )
                            (  status = 'CANCELD' )
                            (  status = 'DELETED' )
                            (  status = 'RETEST' )
                            (  status = 'POSTPONE' )
                            (  status = 'INPROGRE' )
                            (  status = 'TEST' ) ).
    INSERT zbc_statust FROM TABLE @lt_demo_data.
  ENDMETHOD.

  METHOD fill_comments_table.
    DATA lt_demo_data TYPE STANDARD TABLE OF zbc_comments.

    DATA(system_uuid) = cl_uuid_factory=>create_system_uuid( ).
    lt_demo_data = VALUE #(
        created_at = gv_timestamp
        changed_at = gv_timestamp
        (  uuid =  system_uuid->create_uuid_x16( ) task_key = 'INT_2' comment_text = 'Random comment 1' )
        (  uuid =  system_uuid->create_uuid_x16( ) task_key = 'MIG_3' comment_text = 'Another comment' )
        (  uuid =  system_uuid->create_uuid_x16( ) task_key = 'BW4_4' comment_text = 'Hello world' )
        (  uuid =  system_uuid->create_uuid_x16( ) task_key = 'SUP_6' comment_text = 'Test comment' )
        (  uuid =  system_uuid->create_uuid_x16( ) task_key = 'BW4_5' comment_text = 'Dummy data here' )
        (  uuid =  system_uuid->create_uuid_x16( ) task_key = 'INT_2' comment_text = 'Sample text' )
        (  uuid =  system_uuid->create_uuid_x16( ) task_key = 'MIG_3' comment_text = 'Lorem ipsum' )
        (  uuid =  system_uuid->create_uuid_x16( ) task_key = 'BW4_4' comment_text = 'SAP comment' )
        (  uuid =  system_uuid->create_uuid_x16( ) task_key = 'SUP_6' comment_text = 'Another dummy' )
        (  uuid =  system_uuid->create_uuid_x16( ) task_key = 'BW4_5' comment_text = 'Final comment' ) ).
    INSERT zbc_comments FROM TABLE @lt_demo_data.
  ENDMETHOD.

  METHOD clear_old.
    DELETE FROM zbc_comments WHERE uuid IS NOT INITIAL.
    DELETE FROM zbc_statust WHERE status IS NOT INITIAL.
    DELETE FROM zbc_statust WHERE status IS INITIAL.
    DELETE FROM zbc_users WHERE user_id IS NOT INITIAL.
    DELETE FROM zbc_tasks WHERE task_key IS NOT INITIAL.
    DELETE FROM zbc_tasks WHERE task_key IS INITIAL.
  ENDMETHOD.
ENDCLASS.
