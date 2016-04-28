set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_default_workspace_id=>26545429766424166257
);
end;
/
-- Oracle Application Express 5.0.3.00.03 SQL Script Export file
-- Exported 19:29 Thursday April 28, 2016 by: ZACHCW2279@GMAIL.COM
-- Scripts included:
--      ZACHCW2279@GMAIL.COM
 
begin wwv_flow.g_user := nvl(wwv_flow.g_user,'ZACHCW2279@GMAIL.COM'); end;
/
--application/sql/scripts
prompt ...exporting script file
--
begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '2D2D2047656E657261746564206279204F7261636C652053514C20446576656C6F7065722044617461204D6F64656C657220342E312E332E3930310A2D2D20202061743A2020202020202020323031362D30342D30372031373A31303A3335204344540A';
    wwv_flow_api.g_varchar2_table(2) := '2D2D202020736974653A2020202020204F7261636C65204461746162617365203131670A2D2D202020747970653A2020202020204F7261636C65204461746162617365203131670A0A0A0A0A44524F50205441424C452043535F4368696C645F50617265';
    wwv_flow_api.g_varchar2_table(3) := '6E74204341534341444520434F4E53545241494E5453203B0A0A44524F50205441424C452043535F44657074204341534341444520434F4E53545241494E5453203B0A0A44524F50205441424C452043535F506572736F6E204341534341444520434F4E';
    wwv_flow_api.g_varchar2_table(4) := '53545241494E5453203B0A0A44524F50205441424C452043535F50726F6A204341534341444520434F4E53545241494E5453203B0A0A44524F50205441424C452043535F50726F6A5F4D616E204341534341444520434F4E53545241494E5453203B0A0A';
    wwv_flow_api.g_varchar2_table(5) := '435245415445205441424C452043535F4368696C645F506172656E740A2020280A2020202043535F506572736F6E5F506572736F6E5F49443120494E5445474552202C0A2020202043535F506572736F6E5F506572736F6E5F49442020494E5445474552';
    wwv_flow_api.g_varchar2_table(6) := '204E4F54204E554C4C0A202029203B0A0A0A435245415445205441424C452043535F446570740A2020280A20202020446570745F4E6F202020494E5445474552204E4F54204E554C4C202C0A20202020446570745F4E616D652056415243484152322028';
    wwv_flow_api.g_varchar2_table(7) := '323029204E4F54204E554C4C0A202029203B0A414C544552205441424C452043535F446570742041444420434F4E53545241494E542043535F446570745F504B205052494D415259204B4559202820446570745F4E6F2029203B0A0A0A43524541544520';
    wwv_flow_api.g_varchar2_table(8) := '5441424C452043535F506572736F6E0A2020280A20202020506572736F6E5F49442020202020202020202020494E5445474552204E4F54204E554C4C202C0A2020202046697273745F4E616D652020202020202020202056415243484152322028323530';
    wwv_flow_api.g_varchar2_table(9) := '29204E4F54204E554C4C202C0A202020204C6173745F4E616D6520202020202020202020205641524348415232202832353029204E4F54204E554C4C202C0A20202020486F6D655F41646472657373202020202020202056415243484152322028323530';
    wwv_flow_api.g_varchar2_table(10) := '29202C0A202020205A69705F436F6465202020202020202020202020494E5445474552202C0A20202020486F6D655F50686F6E6520202020202020202020494E5445474552202C0A2020202055535F436974697A656E2020202020202020202043484152';
    wwv_flow_api.g_varchar2_table(11) := '20283129204E4F54204E554C4C202C0A20202020456D706C6F7965655F4944202020202020202020494E5445474552202C0A2020202053616C6172792020202020202020202020202020494E5445474552202C0A2020202053616C6172795F4578636570';
    wwv_flow_api.g_varchar2_table(12) := '74696F6E202020204348415220283129202C0A20202020426F6E7573202020202020202020202020202020494E5445474552202C0A2020202049735F46697265642020202020202020202020204348415220283129202C0A2020202043535F506572736F';
    wwv_flow_api.g_varchar2_table(13) := '6E5F506572736F6E5F494420494E5445474552202C0A2020202054797065202020202020202020202020202020205641524348415232202832353529204E4F54204E554C4C202C0A2020202043535F446570745F446570745F4E6F2020202020494E5445';
    wwv_flow_api.g_varchar2_table(14) := '474552202C0A2020202043535F50726F6A5F50726F6A6563745F4E6F2020494E54454745520A202029203B0A43524541544520554E4951554520494E4445582043535F506572736F6E5F5F494458204F4E2043535F506572736F6E0A2020280A20202020';
    wwv_flow_api.g_varchar2_table(15) := '43535F506572736F6E5F506572736F6E5F4944204153430A2020290A20203B0A414C544552205441424C452043535F506572736F6E2041444420434F4E53545241494E542043535F506572736F6E5F504B205052494D415259204B455920282050657273';
    wwv_flow_api.g_varchar2_table(16) := '6F6E5F49442029203B0A0A0A435245415445205441424C452043535F50726F6A0A2020280A2020202050726F6A6563745F4E6F2020202020202020202020494E5445474552204E4F54204E554C4C202C0A2020202050726F6A6563745F5469746C652020';
    wwv_flow_api.g_varchar2_table(17) := '20202020202056415243484152322028323029204E4F54204E554C4C202C0A2020202050726F6A6563745F416374697665202020202020204348415220283129204E4F54204E554C4C202C0A20202020456E645F446174655F4D6F6E7468202020202020';
    wwv_flow_api.g_varchar2_table(18) := '20494E5445474552202C0A20202020456E645F446174655F446179202020202020202020494E5445474552202C0A20202020456E645F446174655F596561722020202020202020494E5445474552202C0A202020204573745F506572736F6E5F486F7572';
    wwv_flow_api.g_varchar2_table(19) := '732020202020494E5445474552202C0A202020205479706520202020202020202020202020202020205641524348415232202832353529204E4F54204E554C4C202C0A2020202043535F50726F6A5F50726F6A6563745F4E6F202020494E544547455220';
    wwv_flow_api.g_varchar2_table(20) := '2C0A2020202043535F446570745F446570745F4E6F202020202020494E5445474552202C0A2020202043535F506572736F6E5F506572736F6E5F49442020494E5445474552202C202D2D20617070726F76650A2020202043535F506572736F6E5F506572';
    wwv_flow_api.g_varchar2_table(21) := '736F6E5F49443120494E5445474552204E4F54204E554C4C202D2D206372656174650A202029203B0A414C544552205441424C452043535F50726F6A2041444420434F4E53545241494E542043535F50726F6A5F504B205052494D415259204B45592028';
    wwv_flow_api.g_varchar2_table(22) := '2050726F6A6563745F4E6F2029203B0A0A0A435245415445205441424C452043535F50726F6A5F4D616E0A2020280A2020202043535F506572736F6E5F506572736F6E5F494420494E5445474552202C0A2020202043535F50726F6A5F50726F6A656374';
    wwv_flow_api.g_varchar2_table(23) := '5F4E6F2020494E54454745520A202029203B0A0A0A414C544552205441424C452043535F4368696C645F506172656E742041444420434F4E53545241494E542043535F4368696C645F506172656E745F43535F506572736F6E5F464B20464F524549474E';
    wwv_flow_api.g_varchar2_table(24) := '204B455920282043535F506572736F6E5F506572736F6E5F49442029205245464552454E4345532043535F506572736F6E202820506572736F6E5F49442029203B0A0A414C544552205441424C452043535F4368696C645F506172656E74204144442043';
    wwv_flow_api.g_varchar2_table(25) := '4F4E53545241494E542043535F4368696C645F506172656E745F43535F506572736F6E5F464B763120464F524549474E204B455920282043535F506572736F6E5F506572736F6E5F4944312029205245464552454E4345532043535F506572736F6E2028';
    wwv_flow_api.g_varchar2_table(26) := '20506572736F6E5F49442029203B0A0A414C544552205441424C452043535F506572736F6E2041444420434F4E53545241494E542043535F506572736F6E5F43535F446570745F464B20464F524549474E204B455920282043535F446570745F44657074';
    wwv_flow_api.g_varchar2_table(27) := '5F4E6F2029205245464552454E4345532043535F44657074202820446570745F4E6F2029203B0A0A414C544552205441424C452043535F506572736F6E2041444420434F4E53545241494E542043535F506572736F6E5F43535F506572736F6E5F464B20';
    wwv_flow_api.g_varchar2_table(28) := '464F524549474E204B455920282043535F506572736F6E5F506572736F6E5F49442029205245464552454E4345532043535F506572736F6E202820506572736F6E5F49442029203B0A0A414C544552205441424C452043535F506572736F6E2041444420';
    wwv_flow_api.g_varchar2_table(29) := '434F4E53545241494E542043535F506572736F6E5F43535F50726F6A5F464B20464F524549474E204B455920282043535F50726F6A5F50726F6A6563745F4E6F2029205245464552454E4345532043535F50726F6A20282050726F6A6563745F4E6F2029';
    wwv_flow_api.g_varchar2_table(30) := '203B0A0A414C544552205441424C452043535F50726F6A2041444420434F4E53545241494E542043535F50726F6A5F43535F446570745F464B20464F524549474E204B455920282043535F446570745F446570745F4E6F2029205245464552454E434553';
    wwv_flow_api.g_varchar2_table(31) := '2043535F44657074202820446570745F4E6F2029203B0A0A414C544552205441424C452043535F50726F6A2041444420434F4E53545241494E542043535F50726F6A5F43535F506572736F6E5F464B20464F524549474E204B455920282043535F506572';
    wwv_flow_api.g_varchar2_table(32) := '736F6E5F506572736F6E5F49442029205245464552454E4345532043535F506572736F6E202820456D706C6F7965655F494429203B0A0A414C544552205441424C452043535F50726F6A2041444420434F4E53545241494E542043535F50726F6A5F4353';
    wwv_flow_api.g_varchar2_table(33) := '5F506572736F6E5F464B763120464F524549474E204B455920282043535F506572736F6E5F506572736F6E5F4944312029205245464552454E4345532043535F506572736F6E202820456D706C6F7965655F49442029203B0A0A414C544552205441424C';
    wwv_flow_api.g_varchar2_table(34) := '452043535F50726F6A2041444420434F4E53545241494E542043535F50726F6A5F43535F50726F6A5F464B20464F524549474E204B455920282043535F50726F6A5F50726F6A6563745F4E6F2029205245464552454E4345532043535F50726F6A202820';
    wwv_flow_api.g_varchar2_table(35) := '50726F6A6563745F4E6F2029203B0A0A414C544552205441424C452043535F50726F6A5F4D616E2041444420434F4E53545241494E542043535F50726F6A5F4D616E5F43535F506572736F6E5F464B20464F524549474E204B455920282043535F506572';
    wwv_flow_api.g_varchar2_table(36) := '736F6E5F506572736F6E5F49442029205245464552454E4345532043535F506572736F6E202820456D706C6F7965655F49442029203B0A0A414C544552205441424C452043535F50726F6A5F4D616E2041444420434F4E53545241494E542043535F5072';
    wwv_flow_api.g_varchar2_table(37) := '6F6A5F4D616E5F43535F50726F6A5F464B20464F524549474E204B455920282043535F50726F6A5F50726F6A6563745F4E6F2029205245464552454E4345532043535F50726F6A20282050726F6A6563745F4E6F2029203B0A0A0A2D2D204F7261636C65';
    wwv_flow_api.g_varchar2_table(38) := '2053514C20446576656C6F7065722044617461204D6F64656C65722053756D6D617279205265706F72743A200A2D2D200A2D2D20435245415445205441424C452020202020202020202020202020202020202020202020202020202020350A2D2D204352';
    wwv_flow_api.g_varchar2_table(39) := '4541544520494E4445582020202020202020202020202020202020202020202020202020202020310A2D2D20414C544552205441424C45202020202020202020202020202020202020202020202020202020202031340A2D2D2043524541544520564945';
    wwv_flow_api.g_varchar2_table(40) := '57202020202020202020202020202020202020202020202020202020202020300A2D2D20414C544552205649455720202020202020202020202020202020202020202020202020202020202020300A2D2D20435245415445205041434B41474520202020';
    wwv_flow_api.g_varchar2_table(41) := '2020202020202020202020202020202020202020202020300A2D2D20435245415445205041434B41474520424F445920202020202020202020202020202020202020202020300A2D2D204352454154452050524F43454455524520202020202020202020';
    wwv_flow_api.g_varchar2_table(42) := '202020202020202020202020202020300A2D2D204352454154452046554E4354494F4E2020202020202020202020202020202020202020202020202020300A2D2D2043524541544520545249474745522020202020202020202020202020202020202020';
    wwv_flow_api.g_varchar2_table(43) := '20202020202020300A2D2D20414C544552205452494747455220202020202020202020202020202020202020202020202020202020300A2D2D2043524541544520434F4C4C454354494F4E20545950452020202020202020202020202020202020202030';
    wwv_flow_api.g_varchar2_table(44) := '0A2D2D204352454154452053545255435455524544205459504520202020202020202020202020202020202020300A2D2D204352454154452053545255435455524544205459504520424F44592020202020202020202020202020300A2D2D2043524541';
    wwv_flow_api.g_varchar2_table(45) := '544520434C5553544552202020202020202020202020202020202020202020202020202020300A2D2D2043524541544520434F4E54455854202020202020202020202020202020202020202020202020202020300A2D2D20435245415445204441544142';
    wwv_flow_api.g_varchar2_table(46) := '4153452020202020202020202020202020202020202020202020202020300A2D2D204352454154452044494D454E53494F4E20202020202020202020202020202020202020202020202020300A2D2D20435245415445204449524543544F525920202020';
    wwv_flow_api.g_varchar2_table(47) := '202020202020202020202020202020202020202020300A2D2D20435245415445204449534B2047524F5550202020202020202020202020202020202020202020202020300A2D2D2043524541544520524F4C452020202020202020202020202020202020';
    wwv_flow_api.g_varchar2_table(48) := '20202020202020202020202020300A2D2D2043524541544520524F4C4C4241434B205345474D454E54202020202020202020202020202020202020300A2D2D204352454154452053455155454E4345202020202020202020202020202020202020202020';
    wwv_flow_api.g_varchar2_table(49) := '2020202020300A2D2D20435245415445204D4154455249414C495A454420564945572020202020202020202020202020202020300A2D2D204352454154452053594E4F4E594D202020202020202020202020202020202020202020202020202020300A2D';
    wwv_flow_api.g_varchar2_table(50) := '2D20435245415445205441424C455350414345202020202020202020202020202020202020202020202020300A2D2D204352454154452055534552202020202020202020202020202020202020202020202020202020202020300A2D2D200A2D2D204452';
    wwv_flow_api.g_varchar2_table(51) := '4F50205441424C4553504143452020202020202020202020202020202020202020202020202020300A2D2D2044524F5020444154414241534520202020202020202020202020202020202020202020202020202020300A2D2D200A2D2D20524544414354';
    wwv_flow_api.g_varchar2_table(52) := '494F4E20504F4C49435920202020202020202020202020202020202020202020202020300A2D2D200A2D2D204F5244532044524F5020534348454D4120202020202020202020202020202020202020202020202020300A2D2D204F52445320454E41424C';
    wwv_flow_api.g_varchar2_table(53) := '4520534348454D412020202020202020202020202020202020202020202020300A2D2D204F52445320454E41424C45204F424A4543542020202020202020202020202020202020202020202020300A2D2D200A2D2D204552524F52532020202020202020';
    wwv_flow_api.g_varchar2_table(54) := '202020202020202020202020202020202020202020202020202020300A2D2D205741524E494E4753202020202020202020202020202020202020202020202020202020202020202020300A';
end;
/
 
declare
  l_name   varchar2(255);
begin
  l_name   := '29904900396158987676/DDL1';
  wwv_flow_api.import_script(
    p_name          => l_name,
    p_varchar2_table=> wwv_flow_api.g_varchar2_table,
    p_pathid=> null,
    p_filename=> 'DDL1',
    p_title=> 'DDL1',
    p_mime_type=> 'application/octet-stream',
    p_dad_charset=> 'UTF-8',
    p_deleted_as_of=> to_date('00010101000000','YYYYMMDDHH24MISS'),
    p_content_type=> 'BLOB',
    p_language=> '',
    p_description=> '',
    p_file_type=> 'SCRIPT',
    p_file_charset=> 'utf-8');
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
--commit;
end;
/
set verify on feedback on define on
prompt  ...done