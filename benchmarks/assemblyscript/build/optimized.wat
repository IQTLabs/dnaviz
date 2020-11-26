(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "(\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1100) "\1e\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 1164) "\1e\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1228) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1276) "&\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1340) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00A\00A")
 (data (i32.const 1372) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00A\00C")
 (data (i32.const 1404) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00G\00T")
 (data (i32.const 1436) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00A\00G")
 (data (i32.const 1468) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00C\00C")
 (data (i32.const 1500) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00C\00A")
 (data (i32.const 1532) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00C\00G")
 (data (i32.const 1564) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00T\00T")
 (data (i32.const 1596) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00G\00G")
 (data (i32.const 1628) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00G\00C")
 (data (i32.const 1660) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00A\00T")
 (data (i32.const 1692) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00G\00A")
 (data (i32.const 1724) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00T\00G")
 (data (i32.const 1756) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00T\00A")
 (data (i32.const 1788) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00T\00C")
 (data (i32.const 1820) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00C\00T")
 (data (i32.const 1852) "0\03\00\00\01\00\00\00\00\00\00\00\05\00\00\000\03\00\00\df\00S\00S\00\00\00I\01\bc\02N\00\00\00\f0\01J\00\0c\03\00\00\90\03\99\03\08\03\01\03\b0\03\a5\03\08\03\01\03\87\055\05R\05\00\00\96\1eH\001\03\00\00\97\1eT\00\08\03\00\00\98\1eW\00\n\03\00\00\99\1eY\00\n\03\00\00\9a\1eA\00\be\02\00\00P\1f\a5\03\13\03\00\00R\1f\a5\03\13\03\00\03T\1f\a5\03\13\03\01\03V\1f\a5\03\13\03B\03\80\1f\08\1f\99\03\00\00\81\1f\t\1f\99\03\00\00\82\1f\n\1f\99\03\00\00\83\1f\0b\1f\99\03\00\00\84\1f\0c\1f\99\03\00\00\85\1f\0d\1f\99\03\00\00\86\1f\0e\1f\99\03\00\00\87\1f\0f\1f\99\03\00\00\88\1f\08\1f\99\03\00\00\89\1f\t\1f\99\03\00\00\8a\1f\n\1f\99\03\00\00\8b\1f\0b\1f\99\03\00\00\8c\1f\0c\1f\99\03\00\00\8d\1f\0d\1f\99\03\00\00\8e\1f\0e\1f\99\03\00\00\8f\1f\0f\1f\99\03\00\00\90\1f(\1f\99\03\00\00\91\1f)\1f\99\03\00\00\92\1f*\1f\99\03\00\00\93\1f+\1f\99\03\00\00\94\1f,\1f\99\03\00\00\95\1f-\1f\99\03\00\00\96\1f.\1f\99\03\00\00\97\1f/\1f\99\03\00\00\98\1f(\1f\99\03\00\00\99\1f)\1f\99\03\00\00\9a\1f*\1f\99\03\00\00\9b\1f+\1f\99\03\00\00\9c\1f,\1f\99\03\00\00\9d\1f-\1f\99\03\00\00\9e\1f.\1f\99\03\00\00\9f\1f/\1f\99\03\00\00\a0\1fh\1f\99\03\00\00\a1\1fi\1f\99\03\00\00\a2\1fj\1f\99\03\00\00\a3\1fk\1f\99\03\00\00\a4\1fl\1f\99\03\00\00\a5\1fm\1f\99\03\00\00\a6\1fn\1f\99\03\00\00\a7\1fo\1f\99\03\00\00\a8\1fh\1f\99\03\00\00\a9\1fi\1f\99\03\00\00\aa\1fj\1f\99\03\00\00\ab\1fk\1f\99\03\00\00\ac\1fl\1f\99\03\00\00\ad\1fm\1f\99\03\00\00\ae\1fn\1f\99\03\00\00\af\1fo\1f\99\03\00\00\b2\1f\ba\1f\99\03\00\00\b3\1f\91\03\99\03\00\00\b4\1f\86\03\99\03\00\00\b6\1f\91\03B\03\00\00\b7\1f\91\03B\03\99\03\bc\1f\91\03\99\03\00\00\c2\1f\ca\1f\99\03\00\00\c3\1f\97\03\99\03\00\00\c4\1f\89\03\99\03\00\00\c6\1f\97\03B\03\00\00\c7\1f\97\03B\03\99\03\cc\1f\97\03\99\03\00\00\d2\1f\99\03\08\03\00\03\d3\1f\99\03\08\03\01\03\d6\1f\99\03B\03\00\00\d7\1f\99\03\08\03B\03\e2\1f\a5\03\08\03\00\03\e3\1f\a5\03\08\03\01\03\e4\1f\a1\03\13\03\00\00\e6\1f\a5\03B\03\00\00\e7\1f\a5\03\08\03B\03\f2\1f\fa\1f\99\03\00\00\f3\1f\a9\03\99\03\00\00\f4\1f\8f\03\99\03\00\00\f6\1f\a9\03B\03\00\00\f7\1f\a9\03B\03\99\03\fc\1f\a9\03\99\03\00\00\00\fbF\00F\00\00\00\01\fbF\00I\00\00\00\02\fbF\00L\00\00\00\03\fbF\00F\00I\00\04\fbF\00F\00L\00\05\fbS\00T\00\00\00\06\fbS\00T\00\00\00\13\fbD\05F\05\00\00\14\fbD\055\05\00\00\15\fbD\05;\05\00\00\16\fbN\05F\05\00\00\17\fbD\05=\05")
 (data (i32.const 2688) "\07\08\t\n\0b\0c\06\06\06\06\06\06\06\06\06\06\0d\06\06\0e\06\06\06\06\06\06\06\06\0f\10\11\12\06\13\06\06\06\06\06\06\06\06\06\06\14\15\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\16\17\06\06\06\18\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\19\06\06\06\06\1a\06\06\06\06\06\06\06\1b\06\06\06\06\06\06\06\06\06\06\06\1c\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\1d\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\1e\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06")
 (data (i32.const 3311) "$++++++++\01\00TVVVVVVVV")
 (data (i32.const 3350) "\18\00\00\00+++++++\07++[VVVVVVVJVV\051P1P1P1P1P1P1P1P$Py1P1P18P1P1P1P1P1P1P1PN1\02N\0d\0dN\03N\00$n\00N1&nQN$PN9\14\81\1b\1d\1dS1P1P\0d1P1P1P\1bS$P1\02\\{\\{\\{\\{\\{\14y\\{\\{\\-+I\03H\03x\\{\14\00\96\n\01+(\06\06\00*\06**+\07\bb\b5+\1e\00+\07+++\01++++++++++++++++++++++++++++++++\01+++++++++++++++++++++++*+++++++++++++\cdF\cd+\00%+\07\01\06\01UVVVVVUVV\02$\81\81\81\81\81\15\81\81\81\00\00+\00\b2\d1\b2\d1\b2\d1\b2\d1\00\00\cd\cc\01\00\d7\d7\d7\d7\d7\83\81\81\81\81\81\81\81\81\81\81\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\1c\00\00\00\00\001P1P1P1P1P1\02\00\001P1P1P1P1P1P1P1P1PN1P1PN1P1P1P1P1P1P1P1\02\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6*++++++++++++\00\00\00TVVVVVVVVVVVV")
 (data (i32.const 3859) "TVVVVVVVVVVVV\0c\00\0c*+++++++++++++\07*\01")
 (data (i32.const 3945) "*++++++++++++++++++++++++++VVl\81\15\00++++++++++++++++++++++++++++++++++++++++++\07l\03A++VVVVVVVVVVVVVV,V+++++++++++++++++++++\01")
 (data (i32.const 4104) "\0cl\00\00\00\00\00\06")
 (data (i32.const 4150) "\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%Vz\9e&\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06\01++OVV,+\7fVV9++UVV++OVV,+\7fVV\817u[{\\++OVV\02\ac\04\00\009++UVV++OVV,++VV2\13\81W\00o\81~\c9\d7~-\81\81\0e~9\7foW\00\81\81~\15\00~\03++++++++++++\07+$+\97+++++++++*+++++VVVVV\80\81\81\81\819\bb*++++++++++++++++++++++++++++++++++++++++\01\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\c9\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\d0\0d\00N1\02\b4\c1\c1\d7\d7$P1P1P1P1P1P1P1P1P1P1P1P1P1P1P1P1P\d7\d7S\c1G\d4\d7\d7\d7\05++++++++++++\07\01\00\01")
 (data (i32.const 4601) "N1P1P1P1P1P1P1P\0d\00\00\00\00\00$P1P1P1P1P")
 (data (i32.const 4666) "+++++++++++y\\{\\{O{\\{\\{\\{\\{\\{\\{\\{\\{\\{\\-++y\14\\{\\-y*\\\'\\{\\{\\{\a4\00\n\b4\\{\\{O\03x8+++++++++++++O-++\01")
 (data (i32.const 4779) "H")
 (data (i32.const 4789) "*++++++++++++++++++++++++++")
 (data (i32.const 4849) "++++++++\07\00HVVVVVVVV\02")
 (data (i32.const 4924) "+++++++++++++UVVVVVVVVVVVV\0e")
 (data (i32.const 4982) "$+++++++++++\07\00VVVVVVVVVVVV")
 (data (i32.const 5052) "$++++++++++++++++\07\00\00\00\00VVVVVVVVVVVVVVVVV")
 (data (i32.const 5149) "*++++++++++VVVVVVVVVV\0e")
 (data (i32.const 5203) "*++++++++++VVVVVVVVVV\0e")
 (data (i32.const 5268) "+++++++++++UVVVVVVVVVV\0e")
 (data (i32.const 5357) "\08\00\00V\01\00\009")
 (data (i32.const 5372) "\01 \00\00\00\e0\ff\ff\00\bf\1d\00\00\e7\02\00\00y\00\00\02$\00\00\01\01\00\00\00\ff\ff\ff\00\00\00\00\01\02\00\00\00\fe\ff\ff\019\ff\ff\00\18\ff\ff\01\87\ff\ff\00\d4\fe\ff\00\c3\00\00\01\d2\00\00\01\ce\00\00\01\cd\00\00\01O\00\00\01\ca\00\00\01\cb\00\00\01\cf\00\00\00a\00\00\01\d3\00\00\01\d1\00\00\00\a3\00\00\01\d5\00\00\00\82\00\00\01\d6\00\00\01\da\00\00\01\d9\00\00\01\db\00\00\008\00\00\03\00\00\00\00\b1\ff\ff\01\9f\ff\ff\01\c8\ff\ff\02($\00\00\00\00\00\01\01\00\00\00\ff\ff\ff\003\ff\ff\00&\ff\ff\01~\ff\ff\01+*\00\01]\ff\ff\01(*\00\00?*\00\01=\ff\ff\01E\00\00\01G\00\00\00\1f*\00\00\1c*\00\00\1e*\00\00.\ff\ff\002\ff\ff\006\ff\ff\005\ff\ff\00O\a5\00\00K\a5\00\001\ff\ff\00(\a5\00\00D\a5\00\00/\ff\ff\00-\ff\ff\00\f7)\00\00A\a5\00\00\fd)\00\00+\ff\ff\00*\ff\ff\00\e7)\00\00C\a5\00\00*\a5\00\00\bb\ff\ff\00\'\ff\ff\00\b9\ff\ff\00%\ff\ff\00\15\a5\00\00\12\a5\00\02$L\00\00\00\00\00\01 \00\00\00\e0\ff\ff\01\01\00\00\00\ff\ff\ff\00T\00\00\01t\00\00\01&\00\00\01%\00\00\01@\00\00\01?\00\00\00\da\ff\ff\00\db\ff\ff\00\e1\ff\ff\00\c0\ff\ff\00\c1\ff\ff\01\08\00\00\00\c2\ff\ff\00\c7\ff\ff\00\d1\ff\ff\00\ca\ff\ff\00\f8\ff\ff\00\aa\ff\ff\00\b0\ff\ff\00\07\00\00\00\8c\ff\ff\01\c4\ff\ff\00\a0\ff\ff\01\f9\ff\ff\02\1ap\00\01\01\00\00\00\ff\ff\ff\01 \00\00\00\e0\ff\ff\01P\00\00\01\0f\00\00\00\f1\ff\ff\00\00\00\00\010\00\00\00\d0\ff\ff\01\01\00\00\00\ff\ff\ff\00\00\00\00\00\c0\0b\00\01`\1c\00\00\00\00\00\01\d0\97\00\01\08\00\00\00\f8\ff\ff\02\05\8a\00\00\00\00\00\01@\f4\ff\00\9e\e7\ff\00\c2\89\00\00\db\e7\ff\00\92\e7\ff\00\93\e7\ff\00\9c\e7\ff\00\9d\e7\ff\00\a4\e7\ff\00\00\00\00\008\8a\00\00\04\8a\00\00\e6\0e\00\01\01\00\00\00\ff\ff\ff\00\00\00\00\00\c5\ff\ff\01A\e2\ff\02\1d\8f\00\00\08\00\00\01\f8\ff\ff\00\00\00\00\00V\00\00\01\aa\ff\ff\00J\00\00\00d\00\00\00\80\00\00\00p\00\00\00~\00\00\00\t\00\00\01\b6\ff\ff\01\f7\ff\ff\00\db\e3\ff\01\9c\ff\ff\01\90\ff\ff\01\80\ff\ff\01\82\ff\ff\02\05\ac\00\00\00\00\00\01\10\00\00\00\f0\ff\ff\01\1c\00\00\01\01\00\00\01\a3\e2\ff\01A\df\ff\01\ba\df\ff\00\e4\ff\ff\02\0b\b1\00\01\01\00\00\00\ff\ff\ff\010\00\00\00\d0\ff\ff\00\00\00\00\01\t\d6\ff\01\1a\f1\ff\01\19\d6\ff\00\d5\d5\ff\00\d8\d5\ff\01\e4\d5\ff\01\03\d6\ff\01\e1\d5\ff\01\e2\d5\ff\01\c1\d5\ff\00\00\00\00\00\a0\e3\ff\00\00\00\00\01\01\00\00\00\ff\ff\ff\02\0c\bc\00\00\00\00\00\01\01\00\00\00\ff\ff\ff\01\bcZ\ff\01\a0\03\00\01\fcu\ff\01\d8Z\ff\000\00\00\01\b1Z\ff\01\b5Z\ff\01\bfZ\ff\01\eeZ\ff\01\d6Z\ff\01\ebZ\ff\01\d0\ff\ff\01\bdZ\ff\01\c8u\ff\00\00\00\00\000h\ff\00`\fc\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01(\00\00\00\d8\ff\ff\00\00\00\00\01@\00\00\00\c0\ff\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01\"\00\00\00\de\ff\ff")
 (data (i32.const 6329) "\06\'Qow")
 (data (i32.const 6344) "|\00\00\7f\00\00\00\00\00\00\00\00\83\8e\92\97\00\aa")
 (data (i32.const 6372) "\b4\c4")
 (data (i32.const 6494) "\c6\c9\00\00\00\db")
 (data (i32.const 6583) "\de\00\00\00\00\e1\00\00\00\00\00\00\00\e4")
 (data (i32.const 6608) "\e7")
 (data (i32.const 6694) "\ea")
 (data (i32.const 6817) "\ed")
 (data (i32.const 6840) "0\0c1\0dx\0e\7f\0f\80\10\81\11\86\12\89\13\8a\13\8e\14\8f\15\90\16\93\13\94\17\95\18\96\19\97\1a\9a\1b\9c\19\9d\1c\9e\1d\9f\1e\a6\1f\a9\1f\ae\1f\b1 \b2 \b7!\bf\"\c5#\c8#\cb#\dd$\f2#\f6%\f7& -:.=/>0?1@1C2D3E4P5Q6R7S8T9Y:[;\\<a=c>e?f@hAiBj@kClDoBqErFuG}H\82I\87J\89K\8aL\8bL\8cM\92N\9dO\9ePEW{\1d|\1d}\1d\7fX\86Y\88Z\89Z\8aZ\8c[\8e\\\8f\\\ac]\ad^\ae^\af^\c2_\cc`\cda\cea\cfb\d0c\d1d\d5e\d6f\d7g\f0h\f1i\f2j\f3k\f4l\f5m\f9n\fd-\fe-\ff-PiQiRiSiTiUiViWiXiYiZi[i\\i]i^i_i\82\00\83\00\84\00\85\00\86\00\87\00\88\00\89\00\c0u\cfv\80\89\81\8a\82\8b\85\8c\86\8dp\9dq\9dv\9ew\9ex\9fy\9fz\a0{\a0|\a1}\a1\b3\a2\ba\a3\bb\a3\bc\a4\be\a5\c3\a2\cc\a4\da\a6\db\a6\e5j\ea\a7\eb\a7\ecn\f3\a2\f8\a8\f9\a8\fa\a9\fb\a9\fc\a4&\b0*\b1+\b2N\b3\84\08b\bac\bbd\bce\bdf\bem\bfn\c0o\c1p\c2~\c3\7f\c3}\cf\8d\d0\94\d1\ab\d2\ac\d3\ad\d4\b0\d5\b1\d6\b2\d7\c4\d8\c5\d9\c6\da")
 (data (i32.const 7244) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00n\00o\00n\00-\00a\00t\00g\00c\00u\00 \00b\00a\00s\00e")
 (data (i32.const 7292) "\"\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\"\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data (i32.const 7360) "\06\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\000\t\82\00\00\00\00\00!\1a\00\00\02\00\00\00\a4")
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $assembly/index/key (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 7360))
 (export "memory" (memory $0))
 (export "__new" (func $~lib/rt/pure/__new))
 (export "__renew" (func $~lib/rt/pure/__renew))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "x_squiggle" (func $assembly/index/x_squiggle))
 (export "y_squiggle" (func $assembly/index/y_squiggle))
 (export "squiggle" (func $assembly/index/squiggle))
 (export "gates" (func $assembly/index/gates))
 (export "key" (global $assembly/index/key))
 (export "y_qi" (func $assembly/index/y_qi))
 (export "x_qi" (func $assembly/index/x_qi))
 (export "x_yau_bp" (func $assembly/index/x_yau_bp))
 (export "y_yau_bp" (func $assembly/index/y_yau_bp))
 (export "yau" (func $assembly/index/yau))
 (export "y_randic" (func $assembly/index/y_randic))
 (export "x_randic" (func $assembly/index/x_randic))
 (start $~start)
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 272
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 1073741820
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 12
  i32.ge_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 274
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
   local.set $3
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 287
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $4
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=8
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $4
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $1
    local.get $4
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 200
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 202
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $5
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const -4
   i32.and
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.const 1073741820
   i32.lt_u
   if
    local.get $0
    local.get $5
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $3
    local.get $4
    i32.const 3
    i32.and
    i32.or
    local.tee $4
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $5
    i32.load
    local.set $2
   end
  end
  local.get $4
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $3
   i32.load
   local.tee $7
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1184
    i32.const 223
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const -4
   i32.and
   i32.const 4
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741820
   i32.lt_u
   if (result i32)
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/removeBlock
    local.get $3
    local.get $8
    local.get $7
    i32.const 3
    i32.and
    i32.or
    local.tee $4
    i32.store
    local.get $3
   else
    local.get $1
   end
   local.set $1
  end
  local.get $5
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $4
  i32.const -4
  i32.and
  local.tee $3
  i32.const 1073741820
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 12
  i32.ge_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 238
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.get $5
  i32.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 239
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 256
  i32.lt_u
  if
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $3
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $3
   local.get $4
   i32.const 7
   i32.sub
   local.set $6
  end
  local.get $3
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $6
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 255
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $4
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $4
  if
   local.get $4
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $3
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $6
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 1184
   i32.const 380
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const -16
  i32.and
  local.get $0
  i32.load offset=1568
  local.tee $2
  if
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1184
    i32.const 387
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
    i32.load
    local.set $4
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1184
    i32.const 400
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $0
  i32.const 1
  i32.lt_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 7424
  i32.const 0
  i32.store
  i32.const 8992
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $1
   i32.const 23
   i32.lt_u
   if
    local.get $1
    i32.const 2
    i32.shl
    i32.const 7424
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $0
    loop $for-loop|1
     local.get $0
     i32.const 16
     i32.lt_u
     if
      local.get $0
      local.get $1
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 7424
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|1
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 7424
  i32.const 8996
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 7424
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.ge_u
  if
   i32.const 1056
   i32.const 1184
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $0
  i32.const 12
  i32.le_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   i32.const 31
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.set $2
   local.get $1
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 333
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1184
     i32.const 346
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1184
   i32.const 360
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   local.get $1
   i32.const 4
   i32.add
   i32.add
   local.tee $1
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.tee $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $2
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   i32.const 4
   memory.size
   local.tee $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   local.get $0
   i32.load offset=1568
   i32.ne
   i32.shl
   local.get $2
   i32.const 1
   i32.const 27
   local.get $2
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.get $2
   local.get $2
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1184
    i32.const 498
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1184
   i32.const 500
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $1
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  local.get $1
 )
 (func $~lib/rt/pure/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 275
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  local.set $2
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $3
  i32.const 4
  i32.sub
  local.tee $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  if (result i32)
   local.get $1
   i32.load
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 563
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/moveBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 7412
  i32.ge_u
  if
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/freeBlock
  end
  local.get $2
 )
 (func $~lib/rt/pure/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 288
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $0
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  local.get $1
  i32.const 16
  i32.add
  local.set $2
  local.get $0
  i32.const 7412
  i32.lt_u
  if
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/checkUsedBlock
   local.get $2
   call $~lib/rt/tlsf/moveBlock
   local.set $0
  else
   block $__inlined_func$~lib/rt/tlsf/reallocateBlock
    global.get $~lib/rt/tlsf/ROOT
    local.set $3
    local.get $0
    call $~lib/rt/tlsf/checkUsedBlock
    local.set $0
    block $folding-inner0
     local.get $2
     call $~lib/rt/tlsf/prepareSize
     local.tee $5
     local.get $0
     i32.load
     local.tee $6
     i32.const -4
     i32.and
     local.tee $4
     i32.le_u
     br_if $folding-inner0
     local.get $0
     i32.const 4
     i32.add
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.add
     local.tee $7
     i32.load
     local.tee $8
     i32.const 1
     i32.and
     if
      local.get $5
      local.get $4
      i32.const 4
      i32.add
      local.get $8
      i32.const -4
      i32.and
      i32.add
      local.tee $4
      i32.le_u
      if
       local.get $3
       local.get $7
       call $~lib/rt/tlsf/removeBlock
       local.get $0
       local.get $4
       local.get $6
       i32.const 3
       i32.and
       i32.or
       i32.store
       br $folding-inner0
      end
     end
     local.get $3
     local.get $0
     local.get $2
     call $~lib/rt/tlsf/moveBlock
     local.set $0
     br $__inlined_func$~lib/rt/tlsf/reallocateBlock
    end
    local.get $3
    local.get $0
    local.get $5
    call $~lib/rt/tlsf/prepareBlock
   end
  end
  local.get $0
  i32.const 4
  i32.add
  local.tee $0
  i32.const 4
  i32.sub
  local.get $1
  i32.store offset=16
  local.get $0
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/__retain (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 7412
  i32.gt_u
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load offset=4
   local.tee $2
   i32.const -268435456
   i32.and
   local.get $2
   i32.const 1
   i32.add
   i32.const -268435456
   i32.and
   i32.ne
   if
    i32.const 0
    i32.const 1120
    i32.const 109
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $1
   i32.load
   i32.const 1
   i32.and
   if
    i32.const 0
    i32.const 1120
    i32.const 112
    i32.const 14
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (param $0 i32)
  local.get $0
  i32.const 7412
  i32.gt_u
  if
   local.get $0
   i32.const 20
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   local.tee $2
   i32.const 0
   i32.store8 offset=3
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=1
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   i32.const 28
   i32.sub
   local.tee $1
   i32.const 0
   i32.store offset=24
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1248
   i32.const 1296
   i32.const 49
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__new
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/hash/hashStr (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const -2128831035
  local.set $1
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $0
  if
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.set $3
   loop $for-loop|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     local.get $1
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.set $1
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  local.tee $3
  i32.const 7
  i32.and
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $5
  local.tee $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  i32.const 0
  local.get $2
  i32.const 4
  i32.ge_u
  select
  if
   loop $do-continue|0
    local.get $3
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $3
     i32.const 8
     i32.add
     local.set $3
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 4
     i32.sub
     local.tee $2
     i32.const 4
     i32.ge_u
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $2
   local.tee $0
   i32.const 1
   i32.sub
   local.set $2
   local.get $0
   if
    local.get $3
    i32.load16_u
    local.tee $0
    local.get $1
    i32.load16_u
    local.tee $6
    i32.ne
    if
     local.get $4
     call $~lib/rt/pure/__release
     local.get $5
     call $~lib/rt/pure/__release
     local.get $0
     local.get $6
     i32.sub
     return
    end
    local.get $3
    i32.const 2
    i32.add
    local.set $3
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|1
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,i32>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $3
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $7
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $4
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $8
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $8
   i32.ne
   if
    local.get $4
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $4
     i32.load
     i32.store
     local.get $2
     local.get $4
     i32.load offset=4
     i32.store offset=4
     local.get $4
     i32.load
     call $~lib/rt/pure/__retain
     local.tee $9
     call $~lib/util/hash/hashStr
     local.set $6
     local.get $9
     call $~lib/rt/pure/__release
     local.get $2
     local.get $5
     local.get $1
     local.get $6
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $6
     i32.load
     i32.store offset=8
     local.get $6
     local.get $2
     i32.store
     local.get $2
     i32.const 12
     i32.add
     local.set $2
    end
    local.get $4
    i32.const 12
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  local.get $5
  local.tee $4
  local.get $0
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $4
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $3
  local.tee $1
  local.get $0
  i32.load offset=8
  local.tee $4
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $7
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<~lib/string/String,i32>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $6
  call $~lib/rt/pure/__retain
  local.tee $1
  call $~lib/util/hash/hashStr
  local.set $8
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $0
  i32.load
  local.get $8
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $1
  block $__inlined_func$~lib/map/Map<~lib/string/String,i32>#find
   loop $while-continue|0
    local.get $1
    if
     local.get $1
     i32.load offset=8
     i32.const 1
     i32.and
     if
      i32.const 0
      local.set $3
     else
      block $__inlined_func$~lib/string/String.__eq
       local.get $1
       i32.load
       call $~lib/rt/pure/__retain
       local.tee $4
       local.get $7
       call $~lib/rt/pure/__retain
       local.tee $5
       i32.eq
       if
        local.get $4
        call $~lib/rt/pure/__release
        local.get $5
        call $~lib/rt/pure/__release
        i32.const 1
        local.set $3
        br $__inlined_func$~lib/string/String.__eq
       end
       block $folding-inner0
        local.get $5
        i32.eqz
        i32.const 1
        local.get $4
        select
        br_if $folding-inner0
        local.get $4
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
        local.tee $3
        local.get $5
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
        i32.ne
        br_if $folding-inner0
        local.get $4
        local.get $5
        local.get $3
        call $~lib/util/string/compareImpl
        i32.eqz
        local.set $3
        local.get $4
        call $~lib/rt/pure/__release
        local.get $5
        call $~lib/rt/pure/__release
        br $__inlined_func$~lib/string/String.__eq
       end
       local.get $4
       call $~lib/rt/pure/__release
       local.get $5
       call $~lib/rt/pure/__release
       i32.const 0
       local.set $3
      end
     end
     local.get $3
     if
      local.get $7
      call $~lib/rt/pure/__release
      br $__inlined_func$~lib/map/Map<~lib/string/String,i32>#find
     end
     local.get $1
     i32.load offset=8
     i32.const -2
     i32.and
     local.set $1
     br $while-continue|0
    end
   end
   local.get $7
   call $~lib/rt/pure/__release
   i32.const 0
   local.set $1
  end
  local.get $1
  if
   local.get $1
   local.get $2
   i32.store offset=4
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<~lib/string/String,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $1
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $3
   local.get $1
   i32.const 12
   i32.mul
   i32.add
   local.tee $1
   local.get $6
   call $~lib/rt/pure/__retain
   i32.store
   local.get $1
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $1
   local.get $0
   i32.load
   local.get $8
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $2
   i32.load
   i32.store offset=8
   local.get $2
   local.get $1
   i32.store
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/index
  (local $0 i32)
  i32.const 24
  i32.const 3
  call $~lib/rt/pure/__new
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  local.get $0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  global.set $assembly/index/key
  global.get $assembly/index/key
  i32.const 1360
  i32.const 12
  call $~lib/map/Map<~lib/string/String,i32>#set
  call $~lib/rt/pure/__release
  global.get $assembly/index/key
  i32.const 1392
  i32.const 4
  call $~lib/map/Map<~lib/string/String,i32>#set
  call $~lib/rt/pure/__release
  global.get $assembly/index/key
  i32.const 1424
  i32.const 6
  call $~lib/map/Map<~lib/string/String,i32>#set
  call $~lib/rt/pure/__release
  global.get $assembly/index/key
  i32.const 1456
  i32.const 0
  call $~lib/map/Map<~lib/string/String,i32>#set
  call $~lib/rt/pure/__release
  global.get $assembly/index/key
  i32.const 1488
  i32.const 13
  call $~lib/map/Map<~lib/string/String,i32>#set
  call $~lib/rt/pure/__release
  global.get $assembly/index/key
  i32.const 1520
  i32.const 5
  call $~lib/map/Map<~lib/string/String,i32>#set
  call $~lib/rt/pure/__release
  global.get $assembly/index/key
  i32.const 1552
  i32.const 10
  call $~lib/map/Map<~lib/string/String,i32>#set
  call $~lib/rt/pure/__release
  global.get $assembly/index/key
  i32.const 1584
  i32.const 15
  call $~lib/map/Map<~lib/string/String,i32>#set
  call $~lib/rt/pure/__release
  global.get $assembly/index/key
  i32.const 1616
  i32.const 14
  call $~lib/map/Map<~lib/string/String,i32>#set
  call $~lib/rt/pure/__release
  global.get $assembly/index/key
  i32.const 1648
  i32.const 11
  call $~lib/map/Map<~lib/string/String,i32>#set
  call $~lib/rt/pure/__release
  global.get $assembly/index/key
  i32.const 1680
  i32.const 8
  call $~lib/map/Map<~lib/string/String,i32>#set
  call $~lib/rt/pure/__release
  global.get $assembly/index/key
  i32.const 1712
  i32.const 1
  call $~lib/map/Map<~lib/string/String,i32>#set
  call $~lib/rt/pure/__release
  global.get $assembly/index/key
  i32.const 1744
  i32.const 7
  call $~lib/map/Map<~lib/string/String,i32>#set
  call $~lib/rt/pure/__release
  global.get $assembly/index/key
  i32.const 1776
  i32.const 9
  call $~lib/map/Map<~lib/string/String,i32>#set
  call $~lib/rt/pure/__release
  global.get $assembly/index/key
  i32.const 1808
  i32.const 3
  call $~lib/map/Map<~lib/string/String,i32>#set
  call $~lib/rt/pure/__release
  global.get $assembly/index/key
  i32.const 1840
  i32.const 2
  call $~lib/map/Map<~lib/string/String,i32>#set
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 12
  i32.const 4
  call $~lib/rt/pure/__new
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/pure/__new
   call $~lib/rt/pure/__retain
   local.set $1
  end
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 134217727
  i32.gt_u
  if
   i32.const 1248
   i32.const 1296
   i32.const 18
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/pure/__new
  local.tee $0
  local.get $3
  call $~lib/memory/memory.fill
  local.get $0
  local.set $2
  local.get $0
  local.get $1
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $1
 )
 (func $~lib/typedarray/Float64Array#__uset (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  f64.store
 )
 (func $assembly/index/x_squiggle (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 1
  i32.add
  call $~lib/typedarray/Float64Array#constructor
  local.set $2
  i32.const 1
  local.set $1
  local.get $0
  i32.const 1
  i32.shl
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.ge_s
   if
    local.get $2
    local.get $1
    local.get $3
    f64.const 0.5
    f64.add
    local.tee $3
    call $~lib/typedarray/Float64Array#__uset
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~lib/util/casemap/casemap (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 8
  i32.shr_u
  local.tee $1
  i32.const 6328
  i32.add
  i32.load8_u
  local.get $1
  i32.const 2688
  i32.add
  i32.load8_u
  i32.const 86
  i32.mul
  i32.const 2688
  i32.add
  local.get $0
  i32.const 255
  i32.and
  local.tee $4
  i32.const 3
  i32.div_u
  i32.add
  i32.load8_u
  local.get $4
  i32.const 3
  i32.rem_u
  i32.const 2
  i32.shl
  i32.const 5356
  i32.add
  i32.load
  i32.mul
  i32.const 11
  i32.shr_u
  i32.const 6
  i32.rem_u
  i32.add
  i32.const 2
  i32.shl
  i32.const 5368
  i32.add
  i32.load
  local.tee $1
  i32.const 8
  i32.shr_s
  local.set $2
  block $folding-inner0
   local.get $1
   i32.const 255
   i32.and
   local.tee $1
   i32.const 2
   i32.lt_u
   br_if $folding-inner0
   local.get $2
   i32.const 255
   i32.and
   local.set $1
   local.get $2
   i32.const 8
   i32.shr_u
   local.set $3
   loop $while-continue|0
    local.get $1
    if
     local.get $4
     local.get $3
     local.get $1
     i32.const 1
     i32.shr_u
     local.tee $2
     i32.add
     i32.const 1
     i32.shl
     i32.const 6840
     i32.add
     i32.load8_u
     local.tee $5
     i32.eq
     if (result i32)
      local.get $2
      local.get $3
      i32.add
      i32.const 1
      i32.shl
      i32.const 6840
      i32.add
      i32.load8_u offset=1
      i32.const 2
      i32.shl
      i32.const 5368
      i32.add
      i32.load
      local.tee $1
      i32.const 8
      i32.shr_s
      local.set $2
      local.get $1
      i32.const 255
      i32.and
      local.tee $1
      i32.const 2
      i32.lt_u
      br_if $folding-inner0
      local.get $0
      i32.const -1
      i32.add
      return
     else
      local.get $4
      local.get $5
      i32.lt_u
      if (result i32)
       local.get $2
      else
       local.get $2
       local.get $3
       i32.add
       local.set $3
       local.get $1
       local.get $2
       i32.sub
      end
     end
     local.set $1
     br $while-continue|0
    end
   end
   local.get $0
   return
  end
  local.get $0
  local.get $2
  i32.const 0
  local.get $1
  i32.const 1
  i32.xor
  i32.sub
  i32.and
  i32.add
 )
 (func $~lib/string/String#toUpperCase (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $8
  i32.eqz
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $8
  i32.const 6
  i32.mul
  i32.const 1
  call $~lib/rt/pure/__new
  local.set $6
  i32.const 1868
  i32.load
  i32.const 1
  i32.shr_u
  local.set $3
  loop $for-loop|0
   local.get $7
   local.get $8
   i32.lt_u
   if
    local.get $0
    local.get $7
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    local.tee $2
    i32.const 7
    i32.shr_u
    if
     block $for-continue|0
      local.get $7
      local.get $8
      i32.const 1
      i32.sub
      i32.lt_u
      i32.const 0
      local.get $2
      i32.const 55295
      i32.sub
      i32.const 1025
      i32.lt_u
      select
      if
       local.get $0
       local.get $7
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u offset=2
       local.tee $4
       i32.const 56319
       i32.sub
       i32.const 1025
       i32.lt_u
       if
        local.get $7
        i32.const 1
        i32.add
        local.set $7
        local.get $4
        i32.const 1023
        i32.and
        local.get $2
        local.tee $1
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.or
        i32.const 65536
        i32.add
        local.tee $2
        i32.const 131072
        i32.ge_u
        if
         local.get $6
         local.get $5
         i32.const 1
         i32.shl
         i32.add
         local.get $1
         local.get $4
         i32.const 16
         i32.shl
         i32.or
         i32.store
         local.get $5
         i32.const 1
         i32.add
         local.set $5
         br $for-continue|0
        end
       end
      end
      local.get $2
      i32.const 9424
      i32.sub
      i32.const 25
      i32.le_u
      if
       local.get $6
       local.get $5
       i32.const 1
       i32.shl
       i32.add
       local.get $2
       i32.const 26
       i32.sub
       i32.store16
      else
       local.get $2
       i32.const 223
       i32.sub
       i32.const 64056
       i32.le_u
       if (result i32)
        local.get $3
        local.set $1
        i32.const 0
        local.set $9
        block $~lib/util/casemap/bsearch|inlined.0
         loop $while-continue|1
          local.get $1
          local.get $9
          i32.ge_s
          if
           local.get $1
           local.get $9
           i32.add
           i32.const 3
           i32.shr_u
           i32.const 2
           i32.shl
           local.tee $4
           i32.const 1
           i32.shl
           i32.const 1872
           i32.add
           i32.load16_u
           local.get $2
           i32.sub
           local.tee $10
           i32.eqz
           br_if $~lib/util/casemap/bsearch|inlined.0
           local.get $10
           i32.const 31
           i32.shr_u
           if
            local.get $4
            i32.const 4
            i32.add
            local.set $9
           else
            local.get $4
            i32.const 4
            i32.sub
            local.set $1
           end
           br $while-continue|1
          end
         end
         i32.const -1
         local.set $4
        end
        local.get $4
       else
        i32.const -1
       end
       local.tee $1
       i32.const -1
       i32.xor
       if
        local.get $1
        i32.const 1
        i32.shl
        i32.const 1872
        i32.add
        local.tee $2
        i32.load16_u offset=6
        local.set $1
        local.get $6
        local.get $5
        i32.const 1
        i32.shl
        i32.add
        local.tee $4
        local.get $2
        i32.load offset=2
        i32.store
        local.get $4
        local.get $1
        i32.store16 offset=4
        local.get $5
        local.get $1
        i32.const 0
        i32.ne
        i32.const 1
        i32.add
        i32.add
        local.set $5
       else
        local.get $2
        call $~lib/util/casemap/casemap
        i32.const 2097151
        i32.and
        local.tee $1
        i32.const 65536
        i32.lt_u
        if
         local.get $6
         local.get $5
         i32.const 1
         i32.shl
         i32.add
         local.get $1
         i32.store16
        else
         local.get $6
         local.get $5
         i32.const 1
         i32.shl
         i32.add
         local.get $1
         i32.const 65536
         i32.sub
         local.tee $1
         i32.const 1023
         i32.and
         i32.const 56320
         i32.or
         i32.const 16
         i32.shl
         local.get $1
         i32.const 10
         i32.shr_u
         i32.const 55296
         i32.or
         i32.or
         i32.store
         local.get $5
         i32.const 1
         i32.add
         local.set $5
        end
       end
      end
     end
    else
     local.get $6
     local.get $5
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $2
     i32.const 97
     i32.sub
     i32.const 26
     i32.lt_u
     i32.const 5
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store16
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $6
  local.get $5
  i32.const 1
  i32.shl
  call $~lib/rt/pure/__renew
  call $~lib/rt/pure/__retain
 )
 (func $~lib/string/String#charCodeAt (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const -1
   return
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/typedarray/Float64Array#__uget (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $assembly/index/y_squiggle (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/string/String#toUpperCase
  local.set $0
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  i32.add
  call $~lib/typedarray/Float64Array#constructor
  local.set $2
  local.get $1
  i32.const 1
  i32.shl
  local.set $4
  loop $for-loop|0
   local.get $3
   local.get $4
   i32.lt_s
   if
    block $break|1
     block $case5|1
      block $case4|1
       block $case3|1
        block $case1|1
         local.get $0
         local.get $3
         i32.const 1
         i32.shr_u
         call $~lib/string/String#charCodeAt
         local.tee $1
         i32.const 65
         i32.ne
         if
          local.get $1
          i32.const 67
          i32.eq
          br_if $case1|1
          local.get $1
          i32.const 84
          i32.eq
          local.get $1
          i32.const 85
          i32.eq
          i32.or
          br_if $case3|1
          local.get $1
          i32.const 71
          i32.eq
          br_if $case4|1
          br $case5|1
         end
         local.get $2
         local.get $3
         i32.const 1
         i32.add
         local.get $2
         local.get $3
         call $~lib/typedarray/Float64Array#__uget
         f64.const 0.5
         f64.add
         call $~lib/typedarray/Float64Array#__uset
         local.get $2
         local.get $3
         i32.const 2
         i32.add
         local.get $2
         local.get $3
         call $~lib/typedarray/Float64Array#__uget
         call $~lib/typedarray/Float64Array#__uset
         br $break|1
        end
        local.get $2
        local.get $3
        i32.const 1
        i32.add
        local.get $2
        local.get $3
        call $~lib/typedarray/Float64Array#__uget
        f64.const 0.5
        f64.sub
        call $~lib/typedarray/Float64Array#__uset
        local.get $2
        local.get $3
        i32.const 2
        i32.add
        local.get $2
        local.get $3
        call $~lib/typedarray/Float64Array#__uget
        call $~lib/typedarray/Float64Array#__uset
        br $break|1
       end
       local.get $2
       local.get $3
       i32.const 1
       i32.add
       local.get $2
       local.get $3
       call $~lib/typedarray/Float64Array#__uget
       f64.const 0.5
       f64.sub
       call $~lib/typedarray/Float64Array#__uset
       local.get $2
       local.get $3
       i32.const 2
       i32.add
       local.get $2
       local.get $3
       call $~lib/typedarray/Float64Array#__uget
       f64.const 1
       f64.sub
       call $~lib/typedarray/Float64Array#__uset
       br $break|1
      end
      local.get $2
      local.get $3
      i32.const 1
      i32.add
      local.get $2
      local.get $3
      call $~lib/typedarray/Float64Array#__uget
      f64.const 0.5
      f64.add
      call $~lib/typedarray/Float64Array#__uset
      local.get $2
      local.get $3
      i32.const 2
      i32.add
      local.get $2
      local.get $3
      call $~lib/typedarray/Float64Array#__uget
      f64.const 1
      f64.add
      call $~lib/typedarray/Float64Array#__uset
      br $break|1
     end
     local.get $2
     local.get $3
     i32.const 1
     i32.add
     local.get $2
     local.get $3
     call $~lib/typedarray/Float64Array#__uget
     call $~lib/typedarray/Float64Array#__uset
     local.get $2
     local.get $3
     i32.const 2
     i32.add
     local.get $2
     local.get $3
     call $~lib/typedarray/Float64Array#__uget
     call $~lib/typedarray/Float64Array#__uset
    end
    local.get $3
    i32.const 2
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $assembly/index/squiggle (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/string/String#toUpperCase
  local.set $0
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 2
  i32.shl
  i32.const 2
  i32.add
  call $~lib/typedarray/Float64Array#constructor
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $5
   i32.gt_s
   if
    local.get $2
    local.get $5
    i32.const 1
    i32.shl
    local.tee $3
    i32.const 1
    i32.add
    local.get $6
    f64.const 0.5
    f64.add
    call $~lib/typedarray/Float64Array#__uset
    local.get $2
    local.get $3
    i32.const 2
    i32.add
    local.get $6
    f64.const 1
    f64.add
    local.tee $6
    call $~lib/typedarray/Float64Array#__uset
    block $break|1
     block $case4|1
      block $case3|1
       block $case2|1
        block $case1|1
         local.get $0
         local.get $5
         call $~lib/string/String#charCodeAt
         local.tee $3
         i32.const 65
         i32.ne
         if
          local.get $3
          i32.const 67
          i32.eq
          br_if $case1|1
          local.get $3
          i32.const 84
          i32.eq
          br_if $case2|1
          local.get $3
          i32.const 71
          i32.eq
          br_if $case3|1
          br $case4|1
         end
         local.get $2
         local.get $1
         local.get $5
         i32.add
         i32.const 1
         i32.shl
         local.tee $3
         i32.const 2
         i32.add
         local.get $4
         f64.const 0.5
         f64.add
         call $~lib/typedarray/Float64Array#__uset
         local.get $2
         local.get $3
         i32.const 3
         i32.add
         local.get $4
         call $~lib/typedarray/Float64Array#__uset
         br $break|1
        end
        local.get $2
        local.get $1
        local.get $5
        i32.add
        i32.const 1
        i32.shl
        local.tee $3
        i32.const 2
        i32.add
        local.get $4
        f64.const 0.5
        f64.sub
        call $~lib/typedarray/Float64Array#__uset
        local.get $2
        local.get $3
        i32.const 3
        i32.add
        local.get $4
        call $~lib/typedarray/Float64Array#__uset
        br $break|1
       end
       local.get $2
       local.get $1
       local.get $5
       i32.add
       i32.const 1
       i32.shl
       local.tee $3
       i32.const 2
       i32.add
       local.get $4
       f64.const 0.5
       f64.sub
       call $~lib/typedarray/Float64Array#__uset
       local.get $2
       local.get $3
       i32.const 3
       i32.add
       local.get $4
       f64.const 1
       f64.sub
       local.tee $4
       call $~lib/typedarray/Float64Array#__uset
       br $break|1
      end
      local.get $2
      local.get $1
      local.get $5
      i32.add
      i32.const 1
      i32.shl
      local.tee $3
      i32.const 2
      i32.add
      local.get $4
      f64.const 0.5
      f64.add
      call $~lib/typedarray/Float64Array#__uset
      local.get $2
      local.get $3
      i32.const 3
      i32.add
      local.get $4
      f64.const 1
      f64.add
      local.tee $4
      call $~lib/typedarray/Float64Array#__uset
      br $break|1
     end
     local.get $2
     local.get $1
     local.get $5
     i32.add
     i32.const 1
     i32.shl
     local.tee $3
     i32.const 2
     i32.add
     local.get $4
     call $~lib/typedarray/Float64Array#__uset
     local.get $2
     local.get $3
     i32.const 3
     i32.add
     local.get $4
     call $~lib/typedarray/Float64Array#__uset
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $assembly/index/gates (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/string/String#toUpperCase
  local.set $6
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 1
  i32.shl
  i32.const 2
  i32.add
  call $~lib/typedarray/Float64Array#constructor
  local.set $5
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.gt_s
   if
    block $break|1
     block $case5|1
      block $case4|1
       block $case3|1
        block $case1|1
         local.get $6
         local.get $2
         call $~lib/string/String#charCodeAt
         local.tee $0
         i32.const 65
         i32.ne
         if
          local.get $0
          i32.const 67
          i32.eq
          br_if $case1|1
          local.get $0
          i32.const 84
          i32.eq
          local.get $0
          i32.const 85
          i32.eq
          i32.or
          br_if $case3|1
          local.get $0
          i32.const 71
          i32.eq
          br_if $case4|1
          br $case5|1
         end
         local.get $3
         f64.const 1
         f64.sub
         local.set $3
         br $break|1
        end
        local.get $4
        f64.const 1
        f64.sub
        local.set $4
        br $break|1
       end
       local.get $3
       f64.const 1
       f64.add
       local.set $3
       br $break|1
      end
      local.get $4
      f64.const 1
      f64.add
      local.set $4
      br $break|1
     end
     i32.const 7264
     i32.const 7312
     i32.const 114
     i32.const 9
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    local.get $2
    i32.const 1
    i32.add
    local.tee $0
    local.get $4
    call $~lib/typedarray/Float64Array#__uset
    local.get $5
    local.get $1
    local.get $2
    i32.add
    i32.const 2
    i32.add
    local.get $3
    call $~lib/typedarray/Float64Array#__uset
    local.get $0
    local.set $2
    br $for-loop|0
   end
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $assembly/index/y_qi (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/string/String#toUpperCase
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.sub
  call $~lib/typedarray/Float64Array#constructor
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.sub
   i32.lt_s
   if
    local.get $3
    local.get $1
    call $~lib/string/String#charCodeAt
    local.set $4
    local.get $3
    local.get $1
    i32.const 1
    i32.add
    call $~lib/string/String#charCodeAt
    local.set $0
    block $break|1
     block $case4|1
      block $case3|1
       block $case1|1
        local.get $4
        i32.const 65
        i32.ne
        if
         local.get $4
         i32.const 67
         i32.eq
         br_if $case1|1
         local.get $4
         i32.const 84
         i32.eq
         local.get $4
         i32.const 85
         i32.eq
         i32.or
         br_if $case3|1
         local.get $4
         i32.const 71
         i32.eq
         br_if $case4|1
         br $break|1
        end
        block $break|2
         block $case4|2
          block $case3|2
           block $case1|2
            local.get $0
            i32.const 65
            i32.ne
            if
             local.get $0
             i32.const 67
             i32.eq
             br_if $case1|2
             local.get $0
             i32.const 84
             i32.eq
             local.get $0
             i32.const 85
             i32.eq
             i32.or
             br_if $case3|2
             local.get $0
             i32.const 71
             i32.eq
             br_if $case4|2
             br $break|2
            end
            local.get $2
            local.get $1
            f64.const 12
            call $~lib/typedarray/Float64Array#__uset
            br $break|2
           end
           local.get $2
           local.get $1
           f64.const 4
           call $~lib/typedarray/Float64Array#__uset
           br $break|2
          end
          local.get $2
          local.get $1
          f64.const 8
          call $~lib/typedarray/Float64Array#__uset
          br $break|2
         end
         local.get $2
         local.get $1
         f64.const 0
         call $~lib/typedarray/Float64Array#__uset
        end
        br $break|1
       end
       block $break|3
        block $case4|3
         block $case3|3
          block $case1|3
           local.get $0
           i32.const 65
           i32.ne
           if
            local.get $0
            i32.const 67
            i32.eq
            br_if $case1|3
            local.get $0
            i32.const 84
            i32.eq
            local.get $0
            i32.const 85
            i32.eq
            i32.or
            br_if $case3|3
            local.get $0
            i32.const 71
            i32.eq
            br_if $case4|3
            br $break|3
           end
           local.get $2
           local.get $1
           f64.const 5
           call $~lib/typedarray/Float64Array#__uset
           br $break|3
          end
          local.get $2
          local.get $1
          f64.const 13
          call $~lib/typedarray/Float64Array#__uset
          br $break|3
         end
         local.get $2
         local.get $1
         f64.const 2
         call $~lib/typedarray/Float64Array#__uset
         br $break|3
        end
        local.get $2
        local.get $1
        f64.const 10
        call $~lib/typedarray/Float64Array#__uset
       end
       br $break|1
      end
      block $break|4
       block $case4|4
        block $case3|4
         block $case1|4
          local.get $0
          i32.const 65
          i32.ne
          if
           local.get $0
           i32.const 67
           i32.eq
           br_if $case1|4
           local.get $0
           i32.const 84
           i32.eq
           local.get $0
           i32.const 85
           i32.eq
           i32.or
           br_if $case3|4
           local.get $0
           i32.const 71
           i32.eq
           br_if $case4|4
           br $break|4
          end
          local.get $2
          local.get $1
          f64.const 9
          call $~lib/typedarray/Float64Array#__uset
          br $break|4
         end
         local.get $2
         local.get $1
         f64.const 3
         call $~lib/typedarray/Float64Array#__uset
         br $break|4
        end
        local.get $2
        local.get $1
        f64.const 15
        call $~lib/typedarray/Float64Array#__uset
        br $break|4
       end
       local.get $2
       local.get $1
       f64.const 7
       call $~lib/typedarray/Float64Array#__uset
      end
      br $break|1
     end
     block $break|5
      block $case4|5
       block $case3|5
        block $case1|5
         local.get $0
         i32.const 65
         i32.ne
         if
          local.get $0
          i32.const 67
          i32.eq
          br_if $case1|5
          local.get $0
          i32.const 84
          i32.eq
          local.get $0
          i32.const 85
          i32.eq
          i32.or
          br_if $case3|5
          local.get $0
          i32.const 71
          i32.eq
          br_if $case4|5
          br $break|5
         end
         local.get $2
         local.get $1
         f64.const 1
         call $~lib/typedarray/Float64Array#__uset
         br $break|5
        end
        local.get $2
        local.get $1
        f64.const 11
        call $~lib/typedarray/Float64Array#__uset
        br $break|5
       end
       local.get $2
       local.get $1
       f64.const 6
       call $~lib/typedarray/Float64Array#__uset
       br $break|5
      end
      local.get $2
      local.get $1
      f64.const 14
      call $~lib/typedarray/Float64Array#__uset
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $assembly/index/x_qi (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  local.get $0
  i32.const 1
  i32.sub
  call $~lib/typedarray/Float64Array#constructor
  local.set $2
  local.get $0
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.gt_s
   if
    local.get $2
    local.get $1
    local.get $3
    call $~lib/typedarray/Float64Array#__uset
    local.get $3
    f64.const 1
    f64.add
    local.set $3
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $assembly/index/x_yau_bp (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  local.get $0
  i32.const 1
  i32.add
  call $~lib/typedarray/Float64Array#constructor
  local.set $3
  f64.const 1
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.ge_s
   if
    local.get $3
    local.get $1
    local.get $2
    call $~lib/typedarray/Float64Array#__uset
    local.get $2
    f64.const 1
    f64.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $assembly/index/y_yau_bp (param $0 i32) (result i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/string/String#toUpperCase
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.add
  call $~lib/typedarray/Float64Array#constructor
  local.set $2
  i32.const 1
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.le_s
   if
    block $break|1
     block $case5|1
      block $case4|1
       block $case3|1
        block $case1|1
         local.get $3
         local.get $0
         i32.const 1
         i32.sub
         call $~lib/string/String#charCodeAt
         local.tee $4
         i32.const 65
         i32.ne
         if
          local.get $4
          i32.const 67
          i32.eq
          br_if $case1|1
          local.get $4
          i32.const 84
          i32.eq
          local.get $4
          i32.const 85
          i32.eq
          i32.or
          br_if $case3|1
          local.get $4
          i32.const 71
          i32.eq
          br_if $case4|1
          br $case5|1
         end
         local.get $2
         local.get $0
         local.get $1
         f64.const 1
         f64.sub
         local.tee $1
         call $~lib/typedarray/Float64Array#__uset
         br $break|1
        end
        local.get $2
        local.get $0
        local.get $1
        f64.const 0.5
        f64.add
        local.tee $1
        call $~lib/typedarray/Float64Array#__uset
        br $break|1
       end
       local.get $2
       local.get $0
       local.get $1
       f64.const 1
       f64.add
       local.tee $1
       call $~lib/typedarray/Float64Array#__uset
       br $break|1
      end
      local.get $2
      local.get $0
      local.get $1
      f64.const 0.5
      f64.sub
      local.tee $1
      call $~lib/typedarray/Float64Array#__uset
      br $break|1
     end
     i32.const 7264
     i32.const 7312
     i32.const 272
     i32.const 9
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $assembly/index/yau (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/string/String#toUpperCase
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  i32.const 2
  i32.add
  call $~lib/typedarray/Float64Array#constructor
  local.set $1
  i32.const 1
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $2
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.le_s
   if
    block $break|1
     block $case5|1
      block $case4|1
       block $case3|1
        block $case1|1
         local.get $2
         local.get $0
         i32.const 1
         i32.sub
         call $~lib/string/String#charCodeAt
         local.tee $5
         i32.const 65
         i32.ne
         if
          local.get $5
          i32.const 67
          i32.eq
          br_if $case1|1
          local.get $5
          i32.const 84
          i32.eq
          local.get $5
          i32.const 85
          i32.eq
          i32.or
          br_if $case3|1
          local.get $5
          i32.const 71
          i32.eq
          br_if $case4|1
          br $case5|1
         end
         local.get $1
         local.get $0
         local.get $3
         f64.const 0.5
         f64.add
         local.tee $3
         call $~lib/typedarray/Float64Array#__uset
         local.get $1
         local.get $0
         local.get $2
         i32.const 20
         i32.sub
         i32.load offset=16
         i32.const 1
         i32.shr_u
         i32.add
         i32.const 1
         i32.add
         local.get $4
         f64.const 0.8660254037844386
         f64.sub
         local.tee $4
         call $~lib/typedarray/Float64Array#__uset
         br $break|1
        end
        local.get $1
        local.get $0
        local.get $3
        f64.const 0.8660254037844386
        f64.add
        local.tee $3
        call $~lib/typedarray/Float64Array#__uset
        local.get $1
        local.get $0
        local.get $2
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
        i32.add
        i32.const 1
        i32.add
        local.get $4
        f64.const 0.5
        f64.add
        local.tee $4
        call $~lib/typedarray/Float64Array#__uset
        br $break|1
       end
       local.get $1
       local.get $0
       local.get $3
       f64.const 0.5
       f64.add
       local.tee $3
       call $~lib/typedarray/Float64Array#__uset
       local.get $1
       local.get $0
       local.get $2
       i32.const 20
       i32.sub
       i32.load offset=16
       i32.const 1
       i32.shr_u
       i32.add
       i32.const 1
       i32.add
       local.get $4
       f64.const 0.8660254037844386
       f64.add
       local.tee $4
       call $~lib/typedarray/Float64Array#__uset
       br $break|1
      end
      local.get $1
      local.get $0
      local.get $3
      f64.const 0.8660254037844386
      f64.add
      local.tee $3
      call $~lib/typedarray/Float64Array#__uset
      local.get $1
      local.get $0
      local.get $2
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.add
      i32.const 1
      i32.add
      local.get $4
      f64.const 0.5
      f64.sub
      local.tee $4
      call $~lib/typedarray/Float64Array#__uset
      br $break|1
     end
     i32.const 7264
     i32.const 7312
     i32.const 318
     i32.const 9
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $assembly/index/y_randic (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/string/String#toUpperCase
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  call $~lib/typedarray/Float64Array#constructor
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.lt_s
   if
    block $break|1
     block $case5|1
      block $case4|1
       block $case3|1
        block $case1|1
         local.get $2
         local.get $1
         call $~lib/string/String#charCodeAt
         local.tee $3
         i32.const 65
         i32.ne
         if
          local.get $3
          i32.const 67
          i32.eq
          br_if $case1|1
          local.get $3
          i32.const 84
          i32.eq
          local.get $3
          i32.const 85
          i32.eq
          i32.or
          br_if $case3|1
          local.get $3
          i32.const 71
          i32.eq
          br_if $case4|1
          br $case5|1
         end
         local.get $0
         local.get $1
         f64.const 3
         call $~lib/typedarray/Float64Array#__uset
         br $break|1
        end
        local.get $0
        local.get $1
        f64.const 0
        call $~lib/typedarray/Float64Array#__uset
        br $break|1
       end
       local.get $0
       local.get $1
       f64.const 2
       call $~lib/typedarray/Float64Array#__uset
       br $break|1
      end
      local.get $0
      local.get $1
      f64.const 1
      call $~lib/typedarray/Float64Array#__uset
      br $break|1
     end
     i32.const 7264
     i32.const 7312
     i32.const 347
     i32.const 9
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/index/x_randic (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  local.get $0
  call $~lib/typedarray/Float64Array#constructor
  local.set $2
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.gt_s
   if
    local.get $2
    local.get $1
    local.get $3
    call $~lib/typedarray/Float64Array#__uset
    local.get $3
    f64.const 1
    f64.add
    local.set $3
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~start
  call $start:assembly/index
 )
 (func $~lib/rt/pure/decrement (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.const 268435455
  i32.and
  local.set $1
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 1120
   i32.const 122
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   block $__inlined_func$~lib/rt/__visit_members
    block $switch$1$default
     block $switch$1$case$5
      block $switch$1$case$4
       local.get $0
       i32.const 12
       i32.add
       i32.load
       br_table $__inlined_func$~lib/rt/__visit_members $__inlined_func$~lib/rt/__visit_members $switch$1$case$4 $switch$1$case$5 $switch$1$case$4 $__inlined_func$~lib/rt/__visit_members $switch$1$default
      end
      local.get $0
      i32.load offset=20
      local.tee $1
      if
       local.get $1
       call $~lib/rt/pure/__visit
      end
      br $__inlined_func$~lib/rt/__visit_members
     end
     local.get $0
     i32.load offset=20
     call $~lib/rt/pure/__visit
     local.get $0
     i32.load offset=28
     local.tee $4
     local.tee $1
     local.get $0
     i32.load offset=36
     i32.const 12
     i32.mul
     i32.add
     local.set $2
     loop $while-continue|0
      local.get $1
      local.get $2
      i32.lt_u
      if
       local.get $1
       i32.load offset=8
       i32.const 1
       i32.and
       i32.eqz
       if
        local.get $1
        i32.load
        call $~lib/rt/pure/__visit
       end
       local.get $1
       i32.const 12
       i32.add
       local.set $1
       br $while-continue|0
      end
     end
     local.get $4
     call $~lib/rt/pure/__visit
     br $__inlined_func$~lib/rt/__visit_members
    end
    unreachable
   end
   local.get $3
   i32.const -2147483648
   i32.and
   if
    i32.const 0
    i32.const 1120
    i32.const 126
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  else
   local.get $1
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 136
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.sub
   local.get $3
   i32.const -268435456
   i32.and
   i32.or
   i32.store offset=4
  end
 )
 (func $~lib/rt/pure/__visit (param $0 i32)
  local.get $0
  i32.const 7412
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  call $~lib/rt/pure/decrement
 )
)
