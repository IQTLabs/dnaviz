(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 1024) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1088) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1136) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1184) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1248) "0\03\00\00\01\00\00\00\04\00\00\000\03\00\00\df\00S\00S\00\00\00I\01\bc\02N\00\00\00\f0\01J\00\0c\03\00\00\90\03\99\03\08\03\01\03\b0\03\a5\03\08\03\01\03\87\055\05R\05\00\00\96\1eH\001\03\00\00\97\1eT\00\08\03\00\00\98\1eW\00\n\03\00\00\99\1eY\00\n\03\00\00\9a\1eA\00\be\02\00\00P\1f\a5\03\13\03\00\00R\1f\a5\03\13\03\00\03T\1f\a5\03\13\03\01\03V\1f\a5\03\13\03B\03\80\1f\08\1f\99\03\00\00\81\1f\t\1f\99\03\00\00\82\1f\n\1f\99\03\00\00\83\1f\0b\1f\99\03\00\00\84\1f\0c\1f\99\03\00\00\85\1f\0d\1f\99\03\00\00\86\1f\0e\1f\99\03\00\00\87\1f\0f\1f\99\03\00\00\88\1f\08\1f\99\03\00\00\89\1f\t\1f\99\03\00\00\8a\1f\n\1f\99\03\00\00\8b\1f\0b\1f\99\03\00\00\8c\1f\0c\1f\99\03\00\00\8d\1f\0d\1f\99\03\00\00\8e\1f\0e\1f\99\03\00\00\8f\1f\0f\1f\99\03\00\00\90\1f(\1f\99\03\00\00\91\1f)\1f\99\03\00\00\92\1f*\1f\99\03\00\00\93\1f+\1f\99\03\00\00\94\1f,\1f\99\03\00\00\95\1f-\1f\99\03\00\00\96\1f.\1f\99\03\00\00\97\1f/\1f\99\03\00\00\98\1f(\1f\99\03\00\00\99\1f)\1f\99\03\00\00\9a\1f*\1f\99\03\00\00\9b\1f+\1f\99\03\00\00\9c\1f,\1f\99\03\00\00\9d\1f-\1f\99\03\00\00\9e\1f.\1f\99\03\00\00\9f\1f/\1f\99\03\00\00\a0\1fh\1f\99\03\00\00\a1\1fi\1f\99\03\00\00\a2\1fj\1f\99\03\00\00\a3\1fk\1f\99\03\00\00\a4\1fl\1f\99\03\00\00\a5\1fm\1f\99\03\00\00\a6\1fn\1f\99\03\00\00\a7\1fo\1f\99\03\00\00\a8\1fh\1f\99\03\00\00\a9\1fi\1f\99\03\00\00\aa\1fj\1f\99\03\00\00\ab\1fk\1f\99\03\00\00\ac\1fl\1f\99\03\00\00\ad\1fm\1f\99\03\00\00\ae\1fn\1f\99\03\00\00\af\1fo\1f\99\03\00\00\b2\1f\ba\1f\99\03\00\00\b3\1f\91\03\99\03\00\00\b4\1f\86\03\99\03\00\00\b6\1f\91\03B\03\00\00\b7\1f\91\03B\03\99\03\bc\1f\91\03\99\03\00\00\c2\1f\ca\1f\99\03\00\00\c3\1f\97\03\99\03\00\00\c4\1f\89\03\99\03\00\00\c6\1f\97\03B\03\00\00\c7\1f\97\03B\03\99\03\cc\1f\97\03\99\03\00\00\d2\1f\99\03\08\03\00\03\d3\1f\99\03\08\03\01\03\d6\1f\99\03B\03\00\00\d7\1f\99\03\08\03B\03\e2\1f\a5\03\08\03\00\03\e3\1f\a5\03\08\03\01\03\e4\1f\a1\03\13\03\00\00\e6\1f\a5\03B\03\00\00\e7\1f\a5\03\08\03B\03\f2\1f\fa\1f\99\03\00\00\f3\1f\a9\03\99\03\00\00\f4\1f\8f\03\99\03\00\00\f6\1f\a9\03B\03\00\00\f7\1f\a9\03B\03\99\03\fc\1f\a9\03\99\03\00\00\00\fbF\00F\00\00\00\01\fbF\00I\00\00\00\02\fbF\00L\00\00\00\03\fbF\00F\00I\00\04\fbF\00F\00L\00\05\fbS\00T\00\00\00\06\fbS\00T\00\00\00\13\fbD\05F\05\00\00\14\fbD\055\05\00\00\15\fbD\05;\05\00\00\16\fbN\05F\05\00\00\17\fbD\05=\05")
 (data (i32.const 2081) "\01\02\03\04\05\06\07\08\t\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7f")
 (data (i32.const 2208) "\07\08\t\n\0b\0c\06\06\06\06\06\06\06\06\06\06\0d\06\06\0e\06\06\06\06\06\06\06\06\0f\10\11\12\06\13\06\06\06\06\06\06\06\06\06\06\14\15\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\16\17\06\06\06\18\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\19\06\06\06\06\1a\06\06\06\06\06\06\06\1b\06\06\06\06\06\06\06\06\06\06\06\1c\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\1d\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\1e\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06")
 (data (i32.const 2831) "$++++++++\01\00TVVVVVVVV")
 (data (i32.const 2870) "\18\00\00\00+++++++\07++[VVVVVVVJVV\051P1P1P1P1P1P1P1P$Py1P1P18P1P1P1P1P1P1P1PN1\02N\0d\0dN\03N\00$n\00N1&nQN$PN9\14\81\1b\1d\1dS1P1P\0d1P1P1P\1bS$P1\02\\{\\{\\{\\{\\{\14y\\{\\{\\-+I\03H\03x\\{\14\00\96\n\01+(\06\06\00*\06**+\07\bb\b5+\1e\00+\07+++\01++++++++++++++++++++++++++++++++\01+++++++++++++++++++++++*+++++++++++++\cdF\cd+\00%+\07\01\06\01UVVVVVUVV\02$\81\81\81\81\81\15\81\81\81\00\00+\00\b2\d1\b2\d1\b2\d1\b2\d1\00\00\cd\cc\01\00\d7\d7\d7\d7\d7\83\81\81\81\81\81\81\81\81\81\81\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\1c\00\00\00\00\001P1P1P1P1P1\02\00\001P1P1P1P1P1P1P1P1PN1P1PN1P1P1P1P1P1P1P1\02\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6*++++++++++++\00\00\00TVVVVVVVVVVVV")
 (data (i32.const 3379) "TVVVVVVVVVVVV\0c\00\0c*+++++++++++++\07*\01")
 (data (i32.const 3465) "*++++++++++++++++++++++++++VVl\81\15\00++++++++++++++++++++++++++++++++++++++++++\07l\03A++VVVVVVVVVVVVVV,V+++++++++++++++++++++\01")
 (data (i32.const 3624) "\0cl\00\00\00\00\00\06")
 (data (i32.const 3670) "\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%Vz\9e&\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06\01++OVV,+\7fVV9++UVV++OVV,+\7fVV\817u[{\\++OVV\02\ac\04\00\009++UVV++OVV,++VV2\13\81W\00o\81~\c9\d7~-\81\81\0e~9\7foW\00\81\81~\15\00~\03++++++++++++\07+$+\97+++++++++*+++++VVVVV\80\81\81\81\819\bb*++++++++++++++++++++++++++++++++++++++++\01\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\c9\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\d0\0d\00N1\02\b4\c1\c1\d7\d7$P1P1P1P1P1P1P1P1P1P1P1P1P1P1P1P1P\d7\d7S\c1G\d4\d7\d7\d7\05++++++++++++\07\01\00\01")
 (data (i32.const 4121) "N1P1P1P1P1P1P1P\0d\00\00\00\00\00$P1P1P1P1P")
 (data (i32.const 4186) "+++++++++++y\\{\\{O{\\{\\{\\{\\{\\{\\{\\{\\{\\{\\-++y\14\\{\\-y*\\\'\\{\\{\\{\a4\00\n\b4\\{\\{O\03x8+++++++++++++O-++\01")
 (data (i32.const 4299) "H")
 (data (i32.const 4309) "*++++++++++++++++++++++++++")
 (data (i32.const 4369) "++++++++\07\00HVVVVVVVV\02")
 (data (i32.const 4444) "+++++++++++++UVVVVVVVVVVVV\0e")
 (data (i32.const 4502) "$+++++++++++\07\00VVVVVVVVVVVV")
 (data (i32.const 4572) "$++++++++++++++++\07\00\00\00\00VVVVVVVVVVVVVVVVV")
 (data (i32.const 4669) "*++++++++++VVVVVVVVVV\0e")
 (data (i32.const 4723) "*++++++++++VVVVVVVVVV\0e")
 (data (i32.const 4788) "+++++++++++UVVVVVVVVVV\0e")
 (data (i32.const 4877) "\08\00\00V\01\00\009")
 (data (i32.const 4892) "\01 \00\00\00\e0\ff\ff\00\bf\1d\00\00\e7\02\00\00y\00\00\02$\00\00\01\01\00\00\00\ff\ff\ff\00\00\00\00\01\02\00\00\00\fe\ff\ff\019\ff\ff\00\18\ff\ff\01\87\ff\ff\00\d4\fe\ff\00\c3\00\00\01\d2\00\00\01\ce\00\00\01\cd\00\00\01O\00\00\01\ca\00\00\01\cb\00\00\01\cf\00\00\00a\00\00\01\d3\00\00\01\d1\00\00\00\a3\00\00\01\d5\00\00\00\82\00\00\01\d6\00\00\01\da\00\00\01\d9\00\00\01\db\00\00\008\00\00\03\00\00\00\00\b1\ff\ff\01\9f\ff\ff\01\c8\ff\ff\02($\00\00\00\00\00\01\01\00\00\00\ff\ff\ff\003\ff\ff\00&\ff\ff\01~\ff\ff\01+*\00\01]\ff\ff\01(*\00\00?*\00\01=\ff\ff\01E\00\00\01G\00\00\00\1f*\00\00\1c*\00\00\1e*\00\00.\ff\ff\002\ff\ff\006\ff\ff\005\ff\ff\00O\a5\00\00K\a5\00\001\ff\ff\00(\a5\00\00D\a5\00\00/\ff\ff\00-\ff\ff\00\f7)\00\00A\a5\00\00\fd)\00\00+\ff\ff\00*\ff\ff\00\e7)\00\00C\a5\00\00*\a5\00\00\bb\ff\ff\00\'\ff\ff\00\b9\ff\ff\00%\ff\ff\00\15\a5\00\00\12\a5\00\02$L\00\00\00\00\00\01 \00\00\00\e0\ff\ff\01\01\00\00\00\ff\ff\ff\00T\00\00\01t\00\00\01&\00\00\01%\00\00\01@\00\00\01?\00\00\00\da\ff\ff\00\db\ff\ff\00\e1\ff\ff\00\c0\ff\ff\00\c1\ff\ff\01\08\00\00\00\c2\ff\ff\00\c7\ff\ff\00\d1\ff\ff\00\ca\ff\ff\00\f8\ff\ff\00\aa\ff\ff\00\b0\ff\ff\00\07\00\00\00\8c\ff\ff\01\c4\ff\ff\00\a0\ff\ff\01\f9\ff\ff\02\1ap\00\01\01\00\00\00\ff\ff\ff\01 \00\00\00\e0\ff\ff\01P\00\00\01\0f\00\00\00\f1\ff\ff\00\00\00\00\010\00\00\00\d0\ff\ff\01\01\00\00\00\ff\ff\ff\00\00\00\00\00\c0\0b\00\01`\1c\00\00\00\00\00\01\d0\97\00\01\08\00\00\00\f8\ff\ff\02\05\8a\00\00\00\00\00\01@\f4\ff\00\9e\e7\ff\00\c2\89\00\00\db\e7\ff\00\92\e7\ff\00\93\e7\ff\00\9c\e7\ff\00\9d\e7\ff\00\a4\e7\ff\00\00\00\00\008\8a\00\00\04\8a\00\00\e6\0e\00\01\01\00\00\00\ff\ff\ff\00\00\00\00\00\c5\ff\ff\01A\e2\ff\02\1d\8f\00\00\08\00\00\01\f8\ff\ff\00\00\00\00\00V\00\00\01\aa\ff\ff\00J\00\00\00d\00\00\00\80\00\00\00p\00\00\00~\00\00\00\t\00\00\01\b6\ff\ff\01\f7\ff\ff\00\db\e3\ff\01\9c\ff\ff\01\90\ff\ff\01\80\ff\ff\01\82\ff\ff\02\05\ac\00\00\00\00\00\01\10\00\00\00\f0\ff\ff\01\1c\00\00\01\01\00\00\01\a3\e2\ff\01A\df\ff\01\ba\df\ff\00\e4\ff\ff\02\0b\b1\00\01\01\00\00\00\ff\ff\ff\010\00\00\00\d0\ff\ff\00\00\00\00\01\t\d6\ff\01\1a\f1\ff\01\19\d6\ff\00\d5\d5\ff\00\d8\d5\ff\01\e4\d5\ff\01\03\d6\ff\01\e1\d5\ff\01\e2\d5\ff\01\c1\d5\ff\00\00\00\00\00\a0\e3\ff\00\00\00\00\01\01\00\00\00\ff\ff\ff\02\0c\bc\00\00\00\00\00\01\01\00\00\00\ff\ff\ff\01\bcZ\ff\01\a0\03\00\01\fcu\ff\01\d8Z\ff\000\00\00\01\b1Z\ff\01\b5Z\ff\01\bfZ\ff\01\eeZ\ff\01\d6Z\ff\01\ebZ\ff\01\d0\ff\ff\01\bdZ\ff\01\c8u\ff\00\00\00\00\000h\ff\00`\fc\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01(\00\00\00\d8\ff\ff\00\00\00\00\01@\00\00\00\c0\ff\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01\"\00\00\00\de\ff\ff")
 (data (i32.const 5849) "\06\'Qow")
 (data (i32.const 5864) "|\00\00\7f\00\00\00\00\00\00\00\00\83\8e\92\97\00\aa")
 (data (i32.const 5892) "\b4\c4")
 (data (i32.const 6014) "\c6\c9\00\00\00\db")
 (data (i32.const 6103) "\de\00\00\00\00\e1\00\00\00\00\00\00\00\e4")
 (data (i32.const 6128) "\e7")
 (data (i32.const 6214) "\ea")
 (data (i32.const 6337) "\ed")
 (data (i32.const 6360) "0\0c1\0dx\0e\7f\0f\80\10\81\11\86\12\89\13\8a\13\8e\14\8f\15\90\16\93\13\94\17\95\18\96\19\97\1a\9a\1b\9c\19\9d\1c\9e\1d\9f\1e\a6\1f\a9\1f\ae\1f\b1 \b2 \b7!\bf\"\c5#\c8#\cb#\dd$\f2#\f6%\f7& -:.=/>0?1@1C2D3E4P5Q6R7S8T9Y:[;\\<a=c>e?f@hAiBj@kClDoBqErFuG}H\82I\87J\89K\8aL\8bL\8cM\92N\9dO\9ePEW{\1d|\1d}\1d\7fX\86Y\88Z\89Z\8aZ\8c[\8e\\\8f\\\ac]\ad^\ae^\af^\c2_\cc`\cda\cea\cfb\d0c\d1d\d5e\d6f\d7g\f0h\f1i\f2j\f3k\f4l\f5m\f9n\fd-\fe-\ff-PiQiRiSiTiUiViWiXiYiZi[i\\i]i^i_i\82\00\83\00\84\00\85\00\86\00\87\00\88\00\89\00\c0u\cfv\80\89\81\8a\82\8b\85\8c\86\8dp\9dq\9dv\9ew\9ex\9fy\9fz\a0{\a0|\a1}\a1\b3\a2\ba\a3\bb\a3\bc\a4\be\a5\c3\a2\cc\a4\da\a6\db\a6\e5j\ea\a7\eb\a7\ecn\f3\a2\f8\a8\f9\a8\fa\a9\fb\a9\fc\a4&\b0*\b1+\b2N\b3\84\08b\bac\bbd\bce\bdf\bem\bfn\c0o\c1p\c2~\c3\7f\c3}\cf\8d\d0\94\d1\ab\d2\ac\d3\ad\d4\b0\d5\b1\d6\b2\d7\c4\d8\c5\d9\c6\da")
 (data (i32.const 6768) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00n\00o\00n\00-\00a\00t\00g\00c\00u\00 \00b\00a\00s\00e")
 (data (i32.const 6816) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data (i32.const 6884) "\01\00\00\00\01")
 (data (i32.const 6896) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00A")
 (data (i32.const 6928) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00T")
 (data (i32.const 6960) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00U")
 (data (i32.const 6992) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00G")
 (data (i32.const 7024) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00C")
 (data (i32.const 7056) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 7088) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00A\00A")
 (data (i32.const 7120) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00A\00C")
 (data (i32.const 7152) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00G\00T")
 (data (i32.const 7184) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00A\00G")
 (data (i32.const 7216) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00C\00C")
 (data (i32.const 7248) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00C\00A")
 (data (i32.const 7280) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00C\00G")
 (data (i32.const 7312) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00T\00T")
 (data (i32.const 7344) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00G\00G")
 (data (i32.const 7376) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00G\00C")
 (data (i32.const 7408) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00A\00T")
 (data (i32.const 7440) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00G\00A")
 (data (i32.const 7472) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00T\00G")
 (data (i32.const 7504) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00T\00A")
 (data (i32.const 7536) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00T\00C")
 (data (i32.const 7568) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00C\00T")
 (data (i32.const 7597) "\a0\f6?")
 (data (i32.const 7609) "\c8\b9\f2\82,\d6\bf\80V7($\b4\fa<\00\00\00\00\00\80\f6?")
 (data (i32.const 7641) "\08X\bf\bd\d1\d5\bf \f7\e0\d8\08\a5\1c\bd\00\00\00\00\00`\f6?")
 (data (i32.const 7673) "XE\17wv\d5\bfmP\b6\d5\a4b#\bd\00\00\00\00\00@\f6?")
 (data (i32.const 7705) "\f8-\87\ad\1a\d5\bf\d5g\b0\9e\e4\84\e6\bc\00\00\00\00\00 \f6?")
 (data (i32.const 7737) "xw\95_\be\d4\bf\e0>)\93i\1b\04\bd\00\00\00\00\00\00\f6?")
 (data (i32.const 7769) "`\1c\c2\8ba\d4\bf\cc\84LH/\d8\13=\00\00\00\00\00\e0\f5?")
 (data (i32.const 7801) "\a8\86\860\04\d4\bf:\0b\82\ed\f3B\dc<\00\00\00\00\00\c0\f5?")
 (data (i32.const 7833) "HiUL\a6\d3\bf`\94Q\86\c6\b1 =\00\00\00\00\00\a0\f5?")
 (data (i32.const 7865) "\80\98\9a\ddG\d3\bf\92\80\c5\d4MY%=\00\00\00\00\00\80\f5?")
 (data (i32.const 7897) " \e1\ba\e2\e8\d2\bf\d8+\b7\99\1e{&=\00\00\00\00\00`\f5?")
 (data (i32.const 7929) "\88\de\13Z\89\d2\bf?\b0\cf\b6\14\ca\15=\00\00\00\00\00`\f5?")
 (data (i32.const 7961) "\88\de\13Z\89\d2\bf?\b0\cf\b6\14\ca\15=\00\00\00\00\00@\f5?")
 (data (i32.const 7993) "x\cf\fbA)\d2\bfv\daS($Z\16\bd\00\00\00\00\00 \f5?")
 (data (i32.const 8025) "\98i\c1\98\c8\d1\bf\04T\e7h\bc\af\1f\bd\00\00\00\00\00\00\f5?")
 (data (i32.const 8057) "\a8\ab\ab\\g\d1\bf\f0\a8\823\c6\1f\1f=\00\00\00\00\00\e0\f4?")
 (data (i32.const 8089) "H\ae\f9\8b\05\d1\bffZ\05\fd\c4\a8&\bd\00\00\00\00\00\c0\f4?")
 (data (i32.const 8121) "\90s\e2$\a3\d0\bf\0e\03\f4~\eek\0c\bd\00\00\00\00\00\a0\f4?")
 (data (i32.const 8153) "\d0\b4\94%@\d0\bf\7f-\f4\9e\b86\f0\bc\00\00\00\00\00\a0\f4?")
 (data (i32.const 8185) "\d0\b4\94%@\d0\bf\7f-\f4\9e\b86\f0\bc\00\00\00\00\00\80\f4?")
 (data (i32.const 8217) "@^m\18\b9\cf\bf\87<\99\ab*W\0d=\00\00\00\00\00`\f4?")
 (data (i32.const 8249) "`\dc\cb\ad\f0\ce\bf$\af\86\9c\b7&+=\00\00\00\00\00@\f4?")
 (data (i32.const 8281) "\f0*n\07\'\ce\bf\10\ff?TO/\17\bd\00\00\00\00\00 \f4?")
 (data (i32.const 8313) "\c0Ok!\\\cd\bf\1bh\ca\bb\91\ba!=\00\00\00\00\00\00\f4?")
 (data (i32.const 8345) "\a0\9a\c7\f7\8f\cc\bf4\84\9fhOy\'=\00\00\00\00\00\00\f4?")
 (data (i32.const 8377) "\a0\9a\c7\f7\8f\cc\bf4\84\9fhOy\'=\00\00\00\00\00\e0\f3?")
 (data (i32.const 8409) "\90-t\86\c2\cb\bf\8f\b7\8b1\b0N\19=\00\00\00\00\00\c0\f3?")
 (data (i32.const 8441) "\c0\80N\c9\f3\ca\bff\90\cd?cN\ba<\00\00\00\00\00\a0\f3?")
 (data (i32.const 8473) "\b0\e2\1f\bc#\ca\bf\ea\c1F\dcd\8c%\bd\00\00\00\00\00\a0\f3?")
 (data (i32.const 8505) "\b0\e2\1f\bc#\ca\bf\ea\c1F\dcd\8c%\bd\00\00\00\00\00\80\f3?")
 (data (i32.const 8537) "P\f4\9cZR\c9\bf\e3\d4\c1\04\d9\d1*\bd\00\00\00\00\00`\f3?")
 (data (i32.const 8569) "\d0 e\a0\7f\c8\bf\t\fa\db\7f\bf\bd+=\00\00\00\00\00@\f3?")
 (data (i32.const 8601) "\e0\10\02\89\ab\c7\bfXJSr\90\db+=\00\00\00\00\00@\f3?")
 (data (i32.const 8633) "\e0\10\02\89\ab\c7\bfXJSr\90\db+=\00\00\00\00\00 \f3?")
 (data (i32.const 8665) "\d0\19\e7\0f\d6\c6\bff\e2\b2\a3j\e4\10\bd\00\00\00\00\00\00\f3?")
 (data (i32.const 8697) "\90\a7p0\ff\c5\bf9P\10\9fC\9e\1e\bd\00\00\00\00\00\00\f3?")
 (data (i32.const 8729) "\90\a7p0\ff\c5\bf9P\10\9fC\9e\1e\bd\00\00\00\00\00\e0\f2?")
 (data (i32.const 8761) "\b0\a1\e3\e5&\c5\bf\8f[\07\90\8b\de \bd\00\00\00\00\00\c0\f2?")
 (data (i32.const 8793) "\80\cbl+M\c4\bf<x5a\c1\0c\17=\00\00\00\00\00\c0\f2?")
 (data (i32.const 8825) "\80\cbl+M\c4\bf<x5a\c1\0c\17=\00\00\00\00\00\a0\f2?")
 (data (i32.const 8857) "\90\1e \fcq\c3\bf:T\'M\86x\f1<\00\00\00\00\00\80\f2?")
 (data (i32.const 8889) "\f0\1f\f8R\95\c2\bf\08\c4q\170\8d$\bd\00\00\00\00\00`\f2?")
 (data (i32.const 8921) "`/\d5*\b7\c1\bf\96\a3\11\18\a4\80.\bd\00\00\00\00\00`\f2?")
 (data (i32.const 8953) "`/\d5*\b7\c1\bf\96\a3\11\18\a4\80.\bd\00\00\00\00\00@\f2?")
 (data (i32.const 8985) "\90\d0|~\d7\c0\bf\f4[\e8\88\96i\n=\00\00\00\00\00@\f2?")
 (data (i32.const 9017) "\90\d0|~\d7\c0\bf\f4[\e8\88\96i\n=\00\00\00\00\00 \f2?")
 (data (i32.const 9049) "\e0\db1\91\ec\bf\bf\f23\a3\\Tu%\bd\00\00\00\00\00\00\f2?")
 (data (i32.const 9082) "+n\07\'\be\bf<\00\f0*,4*=\00\00\00\00\00\00\f2?")
 (data (i32.const 9114) "+n\07\'\be\bf<\00\f0*,4*=\00\00\00\00\00\e0\f1?")
 (data (i32.const 9145) "\c0[\8fT^\bc\bf\06\be_XW\0c\1d\bd\00\00\00\00\00\c0\f1?")
 (data (i32.const 9177) "\e0J:m\92\ba\bf\c8\aa[\e859%=\00\00\00\00\00\c0\f1?")
 (data (i32.const 9209) "\e0J:m\92\ba\bf\c8\aa[\e859%=\00\00\00\00\00\a0\f1?")
 (data (i32.const 9241) "\a01\d6E\c3\b8\bfhV/M)|\13=\00\00\00\00\00\a0\f1?")
 (data (i32.const 9273) "\a01\d6E\c3\b8\bfhV/M)|\13=\00\00\00\00\00\80\f1?")
 (data (i32.const 9305) "`\e5\8a\d2\f0\b6\bf\das3\c97\97&\bd\00\00\00\00\00`\f1?")
 (data (i32.const 9337) " \06?\07\1b\b5\bfW^\c6a[\02\1f=\00\00\00\00\00`\f1?")
 (data (i32.const 9369) " \06?\07\1b\b5\bfW^\c6a[\02\1f=\00\00\00\00\00@\f1?")
 (data (i32.const 9401) "\e0\1b\96\d7A\b3\bf\df\13\f9\cc\da^,=\00\00\00\00\00@\f1?")
 (data (i32.const 9433) "\e0\1b\96\d7A\b3\bf\df\13\f9\cc\da^,=\00\00\00\00\00 \f1?")
 (data (i32.const 9465) "\80\a3\ee6e\b1\bf\t\a3\8fv^|\14=\00\00\00\00\00\00\f1?")
 (data (i32.const 9497) "\80\11\c00\n\af\bf\91\8e6\83\9eY-=\00\00\00\00\00\00\f1?")
 (data (i32.const 9529) "\80\11\c00\n\af\bf\91\8e6\83\9eY-=\00\00\00\00\00\e0\f0?")
 (data (i32.const 9561) "\80\19q\ddB\ab\bfLp\d6\e5z\82\1c=\00\00\00\00\00\e0\f0?")
 (data (i32.const 9593) "\80\19q\ddB\ab\bfLp\d6\e5z\82\1c=\00\00\00\00\00\c0\f0?")
 (data (i32.const 9625) "\c02\f6Xt\a7\bf\ee\a1\f24F\fc,\bd\00\00\00\00\00\c0\f0?")
 (data (i32.const 9657) "\c02\f6Xt\a7\bf\ee\a1\f24F\fc,\bd\00\00\00\00\00\a0\f0?")
 (data (i32.const 9689) "\c0\fe\b9\87\9e\a3\bf\aa\fe&\f5\b7\02\f5<\00\00\00\00\00\a0\f0?")
 (data (i32.const 9721) "\c0\fe\b9\87\9e\a3\bf\aa\fe&\f5\b7\02\f5<\00\00\00\00\00\80\f0?")
 (data (i32.const 9754) "x\0e\9b\82\9f\bf\e4\t~|&\80)\bd\00\00\00\00\00\80\f0?")
 (data (i32.const 9786) "x\0e\9b\82\9f\bf\e4\t~|&\80)\bd\00\00\00\00\00`\f0?")
 (data (i32.const 9817) "\80\d5\07\1b\b9\97\bf9\a6\fa\93T\8d(\bd\00\00\00\00\00@\f0?")
 (data (i32.const 9850) "\fc\b0\a8\c0\8f\bf\9c\a6\d3\f6|\1e\df\bc\00\00\00\00\00@\f0?")
 (data (i32.const 9882) "\fc\b0\a8\c0\8f\bf\9c\a6\d3\f6|\1e\df\bc\00\00\00\00\00 \f0?")
 (data (i32.const 9914) "\10k*\e0\7f\bf\e4@\da\0d?\e2\19\bd\00\00\00\00\00 \f0?")
 (data (i32.const 9946) "\10k*\e0\7f\bf\e4@\da\0d?\e2\19\bd\00\00\00\00\00\00\f0?")
 (data (i32.const 9998) "\f0?")
 (data (i32.const 10029) "\c0\ef?")
 (data (i32.const 10042) "\89u\15\10\80?\e8+\9d\99k\c7\10\bd\00\00\00\00\00\80\ef?")
 (data (i32.const 10073) "\80\93XV \90?\d2\f7\e2\06[\dc#\bd\00\00\00\00\00@\ef?")
 (data (i32.const 10106) "\c9(%I\98?4\0cZ2\ba\a0*\bd\00\00\00\00\00\00\ef?")
 (data (i32.const 10137) "@\e7\89]A\a0?S\d7\f1\\\c0\11\01=\00\00\00\00\00\c0\ee?")
 (data (i32.const 10170) ".\d4\aef\a4?(\fd\bdus\16,\bd\00\00\00\00\00\80\ee?")
 (data (i32.const 10201) "\c0\9f\14\aa\94\a8?}&Z\d0\95y\19\bd\00\00\00\00\00@\ee?")
 (data (i32.const 10233) "\c0\dd\cds\cb\ac?\07(\d8G\f2h\1a\bd\00\00\00\00\00 \ee?")
 (data (i32.const 10265) "\c0\06\c01\ea\ae?{;\c9O>\11\0e\bd\00\00\00\00\00\e0\ed?")
 (data (i32.const 10297) "`F\d1;\97\b1?\9b\9e\0dV]2%\bd\00\00\00\00\00\a0\ed?")
 (data (i32.const 10329) "\e0\d1\a7\f5\bd\b3?\d7N\db\a5^\c8,=\00\00\00\00\00`\ed?")
 (data (i32.const 10361) "\a0\97MZ\e9\b5?\1e\1d]<\06i,\bd\00\00\00\00\00@\ed?")
 (data (i32.const 10393) "\c0\ea\n\d3\00\b7?2\ed\9d\a9\8d\1e\ec<\00\00\00\00\00\00\ed?")
 (data (i32.const 10425) "@Y]^3\b9?\daG\bd:\\\11#=\00\00\00\00\00\c0\ec?")
 (data (i32.const 10457) "`\ad\8d\c8j\bb?\e5h\f7+\80\90\13\bd\00\00\00\00\00\a0\ec?")
 (data (i32.const 10489) "@\bc\01X\88\bc?\d3\acZ\c6\d1F&=\00\00\00\00\00`\ec?")
 (data (i32.const 10521) " \n\839\c7\be?\e0E\e6\afh\c0-\bd\00\00\00\00\00@\ec?")
 (data (i32.const 10553) "\e0\db9\91\e8\bf?\fd\n\a1O\d64%\bd\00\00\00\00\00\00\ec?")
 (data (i32.const 10585) "\e0\'\82\8e\17\c1?\f2\07-\cex\ef!=\00\00\00\00\00\e0\eb?")
 (data (i32.const 10617) "\f0#~+\aa\c1?4\998D\8e\a7,=\00\00\00\00\00\a0\eb?")
 (data (i32.const 10649) "\80\86\0ca\d1\c2?\a1\b4\81\cbl\9d\03=\00\00\00\00\00\80\eb?")
 (data (i32.const 10681) "\90\15\b0\fce\c3?\89rK#\a8/\c6<\00\00\00\00\00@\eb?")
 (data (i32.const 10713) "\b03\83=\91\c4?x\b6\fdTy\83%=\00\00\00\00\00 \eb?")
 (data (i32.const 10745) "\b0\a1\e4\e5\'\c5?\c7}i\e5\e83&=\00\00\00\00\00\e0\ea?")
 (data (i32.const 10777) "\10\8c\beNW\c6?x.<,\8b\cf\19=\00\00\00\00\00\c0\ea?")
 (data (i32.const 10809) "pu\8b\12\f0\c6?\e1!\9c\e5\8d\11%\bd\00\00\00\00\00\a0\ea?")
 (data (i32.const 10841) "PD\85\8d\89\c7?\05C\91p\10f\1c\bd\00\00\00\00\00`\ea?")
 (data (i32.const 10874) "9\eb\af\be\c8?\d1,\e9\aaT=\07\bd\00\00\00\00\00@\ea?")
 (data (i32.const 10906) "\f7\dcZZ\c9?o\ff\a0X(\f2\07=\00\00\00\00\00\00\ea?")
 (data (i32.const 10937) "\e0\8a<\ed\93\ca?i!VPCr(\bd\00\00\00\00\00\e0\e9?")
 (data (i32.const 10969) "\d0[W\d81\cb?\aa\e1\acN\8d5\0c\bd\00\00\00\00\00\c0\e9?")
 (data (i32.const 11001) "\e0;8\87\d0\cb?\b6\12TY\c4K-\bd\00\00\00\00\00\a0\e9?")
 (data (i32.const 11033) "\10\f0\c6\fbo\cc?\d2+\96\c5r\ec\f1\bc\00\00\00\00\00`\e9?")
 (data (i32.const 11065) "\90\d4\b0=\b1\cd?5\b0\15\f7*\ff*\bd\00\00\00\00\00@\e9?")
 (data (i32.const 11097) "\10\e7\ff\0eS\ce?0\f4A`\'\12\c2<\00\00\00\00\00 \e9?")
 (data (i32.const 11130) "\dd\e4\ad\f5\ce?\11\8e\bbe\15!\ca\bc\00\00\00\00\00\00\e9?")
 (data (i32.const 11161) "\b0\b3l\1c\99\cf?0\df\0c\ca\ec\cb\1b=\00\00\00\00\00\c0\e8?")
 (data (i32.const 11193) "XM`8q\d0?\91N\ed\16\db\9c\f8<\00\00\00\00\00\a0\e8?")
 (data (i32.const 11225) "`ag-\c4\d0?\e9\ea<\16\8b\18\'=\00\00\00\00\00\80\e8?")
 (data (i32.const 11257) "\e8\'\82\8e\17\d1?\1c\f0\a5c\0e!,\bd\00\00\00\00\00`\e8?")
 (data (i32.const 11289) "\f8\ac\cb\\k\d1?\81\16\a5\f7\cd\9a+=\00\00\00\00\00@\e8?")
 (data (i32.const 11321) "hZc\99\bf\d1?\b7\bdGQ\ed\a6,=\00\00\00\00\00 \e8?")
 (data (i32.const 11353) "\b8\0emE\14\d2?\ea\baF\ba\de\87\n=\00\00\00\00\00\e0\e7?")
 (data (i32.const 11385) "\90\dc|\f0\be\d2?\f4\04PJ\fa\9c*=\00\00\00\00\00\c0\e7?")
 (data (i32.const 11417) "`\d3\e1\f1\14\d3?\b8<!\d3z\e2(\bd\00\00\00\00\00\a0\e7?")
 (data (i32.const 11449) "\10\bevgk\d3?\c8w\f1\b0\cdn\11=\00\00\00\00\00\80\e7?")
 (data (i32.const 11481) "03wR\c2\d3?\\\bd\06\b6T;\18=\00\00\00\00\00`\e7?")
 (data (i32.const 11513) "\e8\d5#\b4\19\d4?\9d\e0\90\ec6\e4\08=\00\00\00\00\00@\e7?")
 (data (i32.const 11545) "\c8q\c2\8dq\d4?u\d6g\t\ce\'/\bd\00\00\00\00\00 \e7?")
 (data (i32.const 11577) "0\17\9e\e0\c9\d4?\a4\d8\n\1b\89 .\bd\00\00\00\00\00\00\e7?")
 (data (i32.const 11609) "\a08\07\ae\"\d5?Y\c7d\81p\be.=\00\00\00\00\00\e0\e6?")
 (data (i32.const 11641) "\d0\c8S\f7{\d5?\ef@]\ee\ed\ad\1f=\00\00\00\00\00\c0\e6?")
 (data (i32.const 11673) "`Y\df\bd\d5\d5?\dce\a4\08*\0b\n\bd")
 (data (i32.const 11702) "\f0?n\bf\88\1aO;\9b<53\fb\a9=\f6\ef?]\dc\d8\9c\13`q\bca\80w>\9a\ec\ef?\d1f\87\10z^\90\bc\85\7fn\e8\15\e3\ef?\13\f6g5R\d2\8c<t\85\15\d3\b0\d9\ef?\fa\8e\f9#\80\ce\8b\bc\de\f6\dd)k\d0\ef?a\c8\e6aN\f7`<\c8\9bu\18E\c7\ef?\99\d33[\e4\a3\90<\83\f3\c6\ca>\be\ef?m{\83]\a6\9a\97<\0f\89\f9lX\b5\ef?\fc\ef\fd\92\1a\b5\8e<\f7Gr+\92\ac\ef?\d1\9c/p=\be><\a2\d1\d32\ec\a3\ef?\0bn\90\894\03j\bc\1b\d3\fe\aff\9b\ef?\0e\bd/*RV\95\bcQ[\12\d0\01\93\ef?U\eaN\8c\ef\80P\bc\cc1l\c0\bd\8a\ef?\16\f4\d5\b9#\c9\91\bc\e0-\a9\ae\9a\82\ef?\afU\\\e9\e3\d3\80<Q\8e\a5\c8\98z\ef?H\93\a5\ea\15\1b\80\bc{Q}<\b8r\ef?=2\deU\f0\1f\8f\bc\ea\8d\8c8\f9j\ef?\bfS\13?\8c\89\8b<u\cbo\eb[c\ef?&\eb\11v\9c\d9\96\bc\d4\\\04\84\e0[\ef?`/:>\f7\ec\9a<\aa\b9h1\87T\ef?\9d8\86\cb\82\e7\8f\bc\1d\d9\fc\"PM\ef?\8d\c3\a6DAo\8a<\d6\8cb\88;F\ef?}\04\e4\b0\05z\80<\96\dc}\91I?\ef?\94\a8\a8\e3\fd\8e\96<8bunz8\ef?}Ht\f2\18^\87<?\a6\b2O\ce1\ef?\f2\e7\1f\98+G\80<\dd|\e2eE+\ef?^\08q?{\b8\96\bc\81c\f5\e1\df$\ef?1\ab\tm\e1\f7\82<\e1\de\1f\f5\9d\1e\ef?\fa\bfo\1a\9b!=\bc\90\d9\da\d0\7f\18\ef?\b4\n\0cr\827\8b<\0b\03\e4\a6\85\12\ef?\8f\cb\ce\89\92\14n<V/>\a9\af\0c\ef?\b6\ab\b0MuM\83<\15\b71\n\fe\06\ef?Lt\ac\e2\01B\86<1\d8L\fcp\01\ef?J\f8\d3]9\dd\8f<\ff\16d\b2\08\fc\ee?\04[\8e;\80\a3\86\bc\f1\9f\92_\c5\f6\ee?hPK\cc\edJ\92\bc\cb\a9:7\a7\f1\ee?\8e-Q\1b\f8\07\99\bcf\d8\05m\ae\ec\ee?\d26\94>\e8\d1q\bc\f7\9f\e54\db\e7\ee?\15\1b\ce\b3\19\19\99\bc\e5\a8\13\c3-\e3\ee?mL*\a7H\9f\85<\"4\12L\a6\de\ee?\8ai(z`\12\93\bc\1c\80\ac\04E\da\ee?[\89\17H\8f\a7X\bc*.\f7!\n\d6\ee?\1b\9aIg\9b,|\bc\97\a8P\d9\f5\d1\ee?\11\ac\c2`\edcC<-\89a`\08\ce\ee?\efd\06;\tf\96<W\00\1d\edA\ca\ee?y\03\a1\da\e1\ccn<\d0<\c1\b5\a2\c6\ee?0\12\0f?\8e\ff\93<\de\d3\d7\f0*\c3\ee?\b0\afz\bb\ce\90v<\'*6\d5\da\bf\ee?w\e0T\eb\bd\1d\93<\0d\dd\fd\99\b2\bc\ee?\8e\a3q\004\94\8f\bc\a7,\9dv\b2\b9\ee?I\a3\93\dc\cc\de\87\bcBf\cf\a2\da\b6\ee?_8\0f\bd\c6\dex\bc\82O\9dV+\b4\ee?\f6\\{\ecF\12\86\bc\0f\92]\ca\a4\b1\ee?\8e\d7\fd\18\055\93<\da\'\b56G\af\ee?\05\9b\8a/\b7\98{<\fd\c7\97\d4\12\ad\ee?\tT\1c\e2\e1c\90<)TH\dd\07\ab\ee?\ea\c6\19P\85\c74<\b7FY\8a&\a9\ee?5\c0d+\e62\94<H!\ad\15o\a7\ee?\9fv\99aJ\e4\8c\bc\t\dcv\b9\e1\a5\ee?\a8M\ef;\c53\8c\bc\85U:\b0~\a4\ee?\ae\e9+\89xS\84\bc \c3\cc4F\a3\ee?XXVx\dd\ce\93\bc%\"U\828\a2\ee?d\19~\80\aa\10W<s\a9L\d4U\a1\ee?(\"^\bf\ef\b3\93\bc\cd;\7ff\9e\a0\ee?\82\b94\87\ad\12j\bc\bf\da\0bu\12\a0\ee?\ee\a9m\b8\efgc\bc/\1ae<\b2\9f\ee?Q\88\e0T=\dc\80\bc\84\94Q\f9}\9f\ee?\cf>Z~d\1fx\bct_\ec\e8u\9f\ee?\b0}\8b\c0J\ee\86\bct\81\a5H\9a\9f\ee?\8a\e6U\1e2\19\86\bc\c9gBV\eb\9f\ee?\d3\d4\t^\cb\9c\90<?]\deOi\a0\ee?\1d\a5M\b9\dc2{\bc\87\01\ebs\14\a1\ee?k\c0gT\fd\ec\94<2\c10\01\ed\a1\ee?Ul\d6\ab\e1\ebe<bN\cf6\f3\a2\ee?B\cf\b3/\c5\a1\88\bc\12\1a>T\'\a4\ee?47;\f1\b6i\93\bc\13\ceL\99\89\a5\ee?\1e\ff\19:\84^\80\bc\ad\c7#F\1a\a7\ee?nWr\d8P\d4\94\bc\ed\92D\9b\d9\a8\ee?\00\8a\0e[g\ad\90<\99f\8a\d9\c7\aa\ee?\b4\ea\f0\c1/\b7\8d<\db\a0*B\e5\ac\ee?\ff\e7\c5\9c`\b6e\bc\8cD\b5\162\af\ee?D_\f3Y\83\f6{<6w\15\99\ae\b1\ee?\83=\1e\a7\1f\t\93\bc\c6\ff\91\0b[\b4\ee?)\1el\8b\b8\a9]\bc\e5\c5\cd\b07\b7\ee?Y\b9\90|\f9#l\bc\0fR\c8\cbD\ba\ee?\aa\f9\f4\"CC\92\bcPN\de\9f\82\bd\ee?K\8ef\d7l\ca\85\bc\ba\07\cap\f1\c0\ee?\'\ce\91+\fc\afq<\90\f0\a3\82\91\c4\ee?\bbs\n\e15\d2m<##\e3\19c\c8\ee?c\"b\"\04\c5\87\bce\e5]{f\cc\ee?\d51\e2\e3\86\1c\8b<3-J\ec\9b\d0\ee?\15\bb\bc\d3\d1\bb\91\bc]%>\b2\03\d5\ee?\d21\ee\9c1\cc\90<X\b30\13\9e\d9\ee?\b3Zsn\84i\84<\bf\fdyUk\de\ee?\b4\9d\8e\97\cd\df\82\bcz\f3\d3\bfk\e3\ee?\873\cb\92w\1a\8c<\ad\d3Z\99\9f\e8\ee?\fa\d9\d1J\8f{\90\bcf\b6\8d)\07\ee\ee?\ba\ae\dcV\d9\c3U\bc\fb\15O\b8\a2\f3\ee?@\f6\a6=\0e\a4\90\bc:Y\e5\8dr\f9\ee?4\93\ad8\f4\d6h\bcG^\fb\f2v\ff\ee?5\8aXk\e2\ee\91\bcJ\06\a10\b0\05\ef?\cd\dd_\n\d7\fft<\d2\c1K\90\1e\0c\ef?\ac\98\92\fa\fb\bd\91\bc\t\1e\d7[\c2\12\ef?\b3\0c\af0\aens<\9cR\85\dd\9b\19\ef?\94\fd\9f\\2\e3\8e<z\d0\ff_\ab \ef?\acY\t\d1\8f\e0\84<K\d1W.\f1\'\ef?g\1aN8\af\cdc<\b5\e7\06\94m/\ef?h\19\92l,kg<i\90\ef\dc 7\ef?\d2\b5\cc\83\18\8a\80\bc\fa\c3]U\0b?\ef?o\fa\ff?]\ad\8f\bc|\89\07J-G\ef?I\a9u8\ae\0d\90\bc\f2\89\0d\08\87O\ef?\a7\07=\a6\85\a3t<\87\a4\fb\dc\18X\ef?\0f\"@ \9e\91\82\bc\98\83\c9\16\e3`\ef?\ac\92\c1\d5PZ\8e<\852\db\03\e6i\ef?Kk\01\acY:\84<`\b4\01\f3!s\ef?\1f>\b4\07!\d5\82\bc_\9b{3\97|\ef?\c9\0dG;\b9*\89\bc)\a1\f5\14F\86\ef?\d3\88:`\04\b6t<\f6?\8b\e7.\90\ef?qr\9dQ\ec\c5\83<\83L\c7\fbQ\9a\ef?\f0\91\d3\8f\12\f7\8f\bc\da\90\a4\a2\af\a4\ef?}t#\e2\98\ae\8d\bc\f1g\8e-H\af\ef?\08 \aaA\bc\c3\8e<\'Za\ee\1b\ba\ef?2\eb\a9\c3\94+\84<\97\bak7+\c5\ef?\ee\85\d11\a9d\8a<@En[v\d0\ef?\ed\e3;\e4\ba7\8e\bc\14\be\9c\ad\fd\db\ef?\9d\cd\91M;\89w<\d8\90\9e\81\c1\e7\ef?\89\cc`A\c1\05S<\f1q\8f+\c2\f3\ef?")
 (data (i32.const 13744) "\05\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00!\1a\00\00\02\00\00\00\a4")
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 13744))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "x_squiggle" (func $assembly/index/x_squiggle))
 (export "y_squiggle" (func $assembly/index/y_squiggle))
 (export "squiggle" (func $assembly/index/squiggle))
 (export "gates" (func $assembly/index/gates))
 (export "y_qi" (func $assembly/index/y_qi))
 (export "x_qi" (func $assembly/index/x_qi))
 (export "x_yau_bp" (func $assembly/index/x_yau_bp))
 (export "y_yau_bp" (func $assembly/index/y_yau_bp))
 (export "yau" (func $assembly/index/yau))
 (export "y_randic" (func $assembly/index/y_randic))
 (export "x_randic" (func $assembly/index/x_randic))
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  i32.const -4
  i32.and
  local.tee $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $3
   local.get $2
   i32.const 7
   i32.sub
   local.set $4
  end
  local.get $1
  i32.load offset=20
  local.set $2
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $2
   i32.store offset=20
  end
  local.get $2
  if
   local.get $2
   local.get $5
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.get $3
  local.get $4
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
   local.get $3
   local.get $4
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $2
   i32.store offset=96
   local.get $2
   i32.eqz
   if
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.tee $2
    i32.load offset=4
    i32.const 1
    local.get $3
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.set $1
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
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
  i32.load
  local.set $4
  local.get $1
  i32.const 16
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
   i32.const 16
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.const 1073741808
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
    i32.const 16
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
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741808
   i32.lt_u
   if
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
    local.set $1
   end
  end
  local.get $5
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $5
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $4
  i32.const -4
  i32.and
  local.tee $3
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
  i32.store offset=16
  local.get $1
  local.get $4
  i32.store offset=20
  local.get $4
  if
   local.get $4
   local.get $1
   i32.store offset=16
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
  local.get $2
  local.get $0
  i32.load offset=1568
  local.tee $2
  if
   local.get $2
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
    i32.load
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $2
  i32.const 32
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $2
  i32.add
  i32.const 16
  i32.sub
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
 (func $~lib/rt/tlsf/maybeInitialize (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.tee $0
  i32.eqz
  if
   i32.const 1
   memory.size
   local.tee $0
   i32.gt_s
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
   i32.const 13792
   local.tee $0
   i32.const 0
   i32.store
   i32.const 15360
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
     i32.const 13792
     i32.add
     i32.const 0
     i32.store offset=4
     i32.const 0
     local.set $2
     loop $for-loop|1
      local.get $2
      i32.const 16
      i32.lt_u
      if
       local.get $1
       i32.const 4
       i32.shl
       local.get $2
       i32.add
       i32.const 2
       i32.shl
       i32.const 13792
       i32.add
       i32.const 0
       i32.store offset=96
       local.get $2
       i32.const 1
       i32.add
       local.set $2
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
   i32.const 13792
   i32.const 15376
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 13792
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 1040
   i32.const 1104
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 16
  local.get $0
  i32.const 16
  i32.gt_u
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
   local.get $1
   i32.const 536870904
   i32.lt_u
   if
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
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
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
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
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
  local.tee $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 32
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
   i32.const 16
   i32.add
   i32.add
   local.tee $1
   local.get $4
   i32.const 16
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
   i32.const 16
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
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $4
  call $~lib/rt/tlsf/searchBlock
  local.tee $3
  i32.eqz
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/searchBlock
   local.tee $3
   i32.eqz
   if
    local.get $4
    i32.const 536870904
    i32.lt_u
    if (result i32)
     local.get $4
     i32.const 1
     i32.const 27
     local.get $4
     i32.clz
     i32.sub
     i32.shl
     i32.const 1
     i32.sub
     i32.add
    else
     local.get $4
    end
    i32.const 16
    memory.size
    local.tee $3
    i32.const 16
    i32.shl
    i32.const 16
    i32.sub
    local.get $0
    i32.load offset=1568
    i32.ne
    i32.shl
    i32.add
    i32.const 65535
    i32.add
    i32.const -65536
    i32.and
    i32.const 16
    i32.shr_u
    local.set $5
    local.get $3
    local.get $5
    local.get $3
    local.get $5
    i32.gt_s
    select
    memory.grow
    i32.const 0
    i32.lt_s
    if
     local.get $5
     memory.grow
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
    local.get $0
    local.get $3
    i32.const 16
    i32.shl
    memory.size
    i32.const 16
    i32.shl
    call $~lib/rt/tlsf/addMemory
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/searchBlock
    local.set $3
   end
  end
  local.get $3
  i32.load
  drop
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $4
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/__retain (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   i32.load offset=4
   local.set $2
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $1
   i32.load
   drop
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (param $0 i32)
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
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
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   call $~lib/rt/tlsf/maybeInitialize
   i32.const 12
   i32.const 2
   call $~lib/rt/tlsf/allocateBlock
   i32.const 16
   i32.add
   local.tee $0
   i32.const 13788
   i32.gt_u
   if
    local.get $0
    i32.const 16
    i32.sub
    local.tee $2
    i32.load offset=4
    local.set $3
    local.get $2
    local.get $3
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $2
    i32.load
    drop
   end
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 134217726
  i32.gt_u
  if
   i32.const 1152
   i32.const 1200
   i32.const 18
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/tlsf/maybeInitialize
  local.get $1
  i32.const 3
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $2
  local.get $3
  call $~lib/memory/memory.fill
  local.get $0
  i32.load
  local.tee $1
  local.get $2
  i32.ne
  if
   local.get $2
   i32.const 13788
   i32.gt_u
   if
    local.get $2
    i32.const 16
    i32.sub
    local.tee $4
    i32.load offset=4
    local.set $5
    local.get $4
    local.get $5
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $4
    i32.load
    drop
   end
   local.get $1
   i32.const 13788
   i32.gt_u
   if
    local.get $1
    i32.const 16
    i32.sub
    call $~lib/rt/pure/decrement
   end
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Float64Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $1
  i32.const 13788
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   local.tee $2
   i32.load offset=4
   local.set $3
   local.get $2
   local.get $3
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $2
   i32.load
   drop
  end
  local.get $1
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#constructor
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
   local.get $1
   local.get $0
   i32.le_s
   if
    local.get $2
    i32.load offset=4
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    local.get $3
    f64.const 0.5
    f64.add
    local.tee $3
    f64.store
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
  i32.const 5848
  i32.add
  i32.load8_u
  local.get $1
  i32.const 2208
  i32.add
  i32.load8_u
  i32.const 86
  i32.mul
  i32.const 2208
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
  i32.const 4876
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
  i32.const 4888
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
     i32.const 6360
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
      i32.const 6360
      i32.add
      i32.load8_u offset=1
      i32.const 2
      i32.shl
      i32.const 4888
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
      local.get $5
      local.get $4
      i32.gt_u
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
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $while-continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
   local.get $2
   select
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     local.get $1
     i32.load offset=4
     i32.store offset=4
     local.get $0
     local.get $1
     i32.load offset=8
     i32.store offset=8
     local.get $0
     local.get $1
     i32.load offset=12
     i32.store offset=12
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    local.get $1
    i32.load offset=4
    i32.store offset=4
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      local.get $0
      i32.const 3
      i32.and
      local.tee $3
      i32.const 1
      i32.ne
      if
       local.get $3
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $3
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $1
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $4
      i32.const 2
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 2
      i32.add
      local.set $1
      local.get $4
      local.get $3
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.load offset=1
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.load offset=5
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store offset=4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.load offset=9
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store offset=8
        local.get $0
        local.get $1
        i32.load offset=13
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=12
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $4
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     local.tee $3
     i32.const 2
     i32.add
     local.set $1
     local.get $4
     local.get $3
     i32.load8_u offset=1
     i32.store8 offset=1
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.load offset=2
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.load offset=6
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.load offset=10
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=8
       local.get $0
       local.get $1
       i32.load offset=14
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=12
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.load offset=3
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.load offset=7
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store offset=4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.load offset=11
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store offset=8
      local.get $0
      local.get $1
      i32.load offset=15
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=12
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
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
   i32.const 1
   local.get $0
   local.get $4
   i32.add
   local.get $1
   i32.le_u
   local.get $1
   local.get $4
   i32.add
   local.get $0
   i32.le_u
   select
   if
    local.get $0
    local.get $1
    local.get $4
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
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
 (func $~lib/rt/tlsf/reallocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.tee $3
  local.get $1
  i32.load
  local.tee $5
  i32.const -4
  i32.and
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $3
   call $~lib/rt/tlsf/prepareBlock
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   return
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $6
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  if
   local.get $5
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $4
    local.get $5
    i32.const 3
    i32.and
    i32.or
    i32.store
    local.get $1
    local.get $2
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    call $~lib/rt/tlsf/prepareBlock
    local.get $1
    return
   end
  end
  local.get $0
  local.get $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $3
  local.get $1
  i32.load offset=4
  i32.store offset=4
  local.get $3
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 13788
  i32.ge_u
  if
   local.get $1
   local.get $1
   i32.load
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  end
  local.get $3
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
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
  local.tee $8
  i32.eqz
  if
   local.get $0
   i32.const 13788
   i32.gt_u
   if
    local.get $0
    i32.const 16
    i32.sub
    local.tee $1
    i32.load offset=4
    local.set $2
    local.get $1
    local.get $2
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $1
    i32.load
    drop
   end
   local.get $0
   return
  end
  call $~lib/rt/tlsf/maybeInitialize
  local.get $8
  i32.const 3
  i32.mul
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.set $5
  i32.const 1260
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
       local.tee $6
       i32.const 56319
       i32.sub
       i32.const 1025
       i32.lt_u
       if
        local.get $7
        i32.const 1
        i32.add
        local.set $7
        local.get $6
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
         local.get $5
         local.get $4
         i32.const 1
         i32.shl
         i32.add
         local.get $1
         local.get $6
         i32.const 16
         i32.shl
         i32.or
         i32.store
         local.get $4
         i32.const 1
         i32.add
         local.set $4
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
       local.get $5
       local.get $4
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
        block $~lib/util/casemap/bsearch|inlined.0 (result i32)
         local.get $3
         local.set $1
         i32.const 0
         local.set $9
         loop $while-continue|1
          local.get $9
          local.get $1
          i32.le_s
          if
           local.get $1
           local.get $9
           i32.add
           i32.const 3
           i32.shr_u
           i32.const 2
           i32.shl
           local.tee $6
           i32.const 1
           i32.shl
           i32.const 1264
           i32.add
           i32.load16_u
           local.get $2
           i32.sub
           local.tee $10
           if
            local.get $10
            i32.const 31
            i32.shr_u
            if
             local.get $6
             i32.const 4
             i32.add
             local.set $9
            else
             local.get $6
             i32.const 4
             i32.sub
             local.set $1
            end
           else
            local.get $6
            br $~lib/util/casemap/bsearch|inlined.0
           end
           br $while-continue|1
          end
         end
         i32.const -1
        end
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
        i32.const 1264
        i32.add
        local.tee $2
        i32.load16_u offset=6
        local.set $1
        local.get $5
        local.get $4
        i32.const 1
        i32.shl
        i32.add
        local.tee $6
        local.get $2
        i32.load offset=2
        i32.store
        local.get $6
        local.get $1
        i32.store16 offset=4
        local.get $4
        local.get $1
        i32.const 0
        i32.ne
        i32.const 1
        i32.add
        i32.add
        local.set $4
       else
        local.get $2
        call $~lib/util/casemap/casemap
        i32.const 2097151
        i32.and
        local.tee $1
        i32.const 65536
        i32.lt_s
        if
         local.get $5
         local.get $4
         i32.const 1
         i32.shl
         i32.add
         local.get $1
         i32.store16
        else
         local.get $5
         local.get $4
         i32.const 1
         i32.shl
         i32.add
         local.get $1
         i32.const 65536
         i32.sub
         local.tee $1
         i32.const 10
         i32.shr_u
         i32.const 55296
         i32.or
         local.get $1
         i32.const 1023
         i32.and
         i32.const 56320
         i32.or
         i32.const 16
         i32.shl
         i32.or
         i32.store
         local.get $4
         i32.const 1
         i32.add
         local.set $4
        end
       end
      end
     end
    else
     local.get $5
     local.get $4
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     i32.const 2080
     i32.add
     i32.load8_u
     i32.store16
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  call $~lib/rt/tlsf/maybeInitialize
  local.get $5
  i32.const 16
  i32.sub
  local.set $0
  local.get $5
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $5
  select
  if (result i32)
   local.get $0
   i32.load
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if
   local.get $0
   i32.load offset=4
   drop
  end
  local.get $0
  local.get $4
  i32.const 1
  i32.shl
  call $~lib/rt/tlsf/reallocateBlock
  i32.const 16
  i32.add
  local.tee $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   i32.load offset=4
   local.set $2
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $1
   i32.load
   drop
  end
  local.get $0
 )
 (func $assembly/index/y_squiggle (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $4
   i32.load offset=4
   local.set $2
   local.get $4
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $4
   i32.load
   drop
  end
  local.get $0
  call $~lib/string/String#toUpperCase
  local.set $4
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  i32.add
  call $~lib/typedarray/Float64Array#constructor
  local.set $2
  loop $for-loop|0
   local.get $3
   local.get $1
   i32.const 1
   i32.shl
   i32.lt_s
   if
    block $break|1
     block $case5|1
      block $case4|1
       block $case3|1
        block $case1|1
         block $__inlined_func$~lib/string/String#charCodeAt (result i32)
          i32.const -1
          local.get $3
          i32.const 1
          i32.shr_u
          local.tee $0
          local.get $4
          i32.const 16
          i32.sub
          i32.load offset=12
          i32.const 1
          i32.shr_u
          i32.ge_u
          br_if $__inlined_func$~lib/string/String#charCodeAt
          drop
          local.get $4
          local.get $0
          i32.const 1
          i32.shl
          i32.add
          i32.load16_u
         end
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
          br_if $case3|1
          local.get $0
          i32.const 85
          i32.eq
          br_if $case3|1
          local.get $0
          i32.const 71
          i32.eq
          br_if $case4|1
          br $case5|1
         end
         local.get $2
         i32.load offset=4
         local.get $3
         i32.const 1
         i32.add
         i32.const 3
         i32.shl
         i32.add
         local.get $3
         i32.const 3
         i32.shl
         local.tee $0
         local.get $2
         i32.load offset=4
         i32.add
         f64.load
         f64.const 0.5
         f64.add
         f64.store
         local.get $2
         i32.load offset=4
         local.get $3
         i32.const 2
         i32.add
         i32.const 3
         i32.shl
         i32.add
         local.get $0
         local.get $2
         i32.load offset=4
         i32.add
         f64.load
         f64.store
         br $break|1
        end
        local.get $2
        i32.load offset=4
        local.get $3
        i32.const 1
        i32.add
        i32.const 3
        i32.shl
        i32.add
        local.get $3
        i32.const 3
        i32.shl
        local.tee $0
        local.get $2
        i32.load offset=4
        i32.add
        f64.load
        f64.const 0.5
        f64.sub
        f64.store
        local.get $2
        i32.load offset=4
        local.get $3
        i32.const 2
        i32.add
        i32.const 3
        i32.shl
        i32.add
        local.get $0
        local.get $2
        i32.load offset=4
        i32.add
        f64.load
        f64.store
        br $break|1
       end
       local.get $2
       i32.load offset=4
       local.get $3
       i32.const 1
       i32.add
       i32.const 3
       i32.shl
       i32.add
       local.get $3
       i32.const 3
       i32.shl
       local.tee $0
       local.get $2
       i32.load offset=4
       i32.add
       f64.load
       f64.const 0.5
       f64.sub
       f64.store
       local.get $2
       i32.load offset=4
       local.get $3
       i32.const 2
       i32.add
       i32.const 3
       i32.shl
       i32.add
       local.get $0
       local.get $2
       i32.load offset=4
       i32.add
       f64.load
       f64.const 1
       f64.sub
       f64.store
       br $break|1
      end
      local.get $2
      i32.load offset=4
      local.get $3
      i32.const 1
      i32.add
      i32.const 3
      i32.shl
      i32.add
      local.get $3
      i32.const 3
      i32.shl
      local.tee $0
      local.get $2
      i32.load offset=4
      i32.add
      f64.load
      f64.const 0.5
      f64.add
      f64.store
      local.get $2
      i32.load offset=4
      local.get $3
      i32.const 2
      i32.add
      i32.const 3
      i32.shl
      i32.add
      local.get $0
      local.get $2
      i32.load offset=4
      i32.add
      f64.load
      f64.const 1
      f64.add
      f64.store
      br $break|1
     end
     local.get $2
     i32.load offset=4
     local.get $3
     i32.const 1
     i32.add
     i32.const 3
     i32.shl
     i32.add
     local.get $3
     i32.const 3
     i32.shl
     local.tee $0
     local.get $2
     i32.load offset=4
     i32.add
     f64.load
     f64.store
     local.get $2
     i32.load offset=4
     local.get $3
     i32.const 2
     i32.add
     i32.const 3
     i32.shl
     i32.add
     local.get $0
     local.get $2
     i32.load offset=4
     i32.add
     f64.load
     f64.store
    end
    local.get $3
    i32.const 2
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $4
  i32.const 13788
  i32.gt_u
  if
   local.get $4
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $2
 )
 (func $assembly/index/squiggle (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $5
   i32.load offset=4
   local.set $2
   local.get $5
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $5
   i32.load
   drop
  end
  local.get $0
  call $~lib/string/String#toUpperCase
  local.set $5
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $1
  i32.const 2
  i32.shl
  i32.const 2
  i32.add
  call $~lib/typedarray/Float64Array#constructor
  local.set $2
  loop $for-loop|0
   local.get $4
   local.get $1
   i32.lt_s
   if
    local.get $2
    i32.load offset=4
    local.get $4
    i32.const 1
    i32.shl
    local.tee $0
    i32.const 1
    i32.add
    i32.const 3
    i32.shl
    i32.add
    local.get $6
    f64.const 0.5
    f64.add
    f64.store
    local.get $2
    i32.load offset=4
    local.get $0
    i32.const 2
    i32.add
    i32.const 3
    i32.shl
    i32.add
    local.get $6
    f64.const 1
    f64.add
    local.tee $6
    f64.store
    block $break|1
     block $case4|1
      block $case3|1
       block $case2|1
        block $case1|1
         block $__inlined_func$~lib/string/String#charCodeAt (result i32)
          i32.const -1
          local.get $4
          local.get $5
          i32.const 16
          i32.sub
          i32.load offset=12
          i32.const 1
          i32.shr_u
          i32.ge_u
          br_if $__inlined_func$~lib/string/String#charCodeAt
          drop
          local.get $5
          local.get $4
          i32.const 1
          i32.shl
          i32.add
          i32.load16_u
         end
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
          br_if $case2|1
          local.get $0
          i32.const 71
          i32.eq
          br_if $case3|1
          br $case4|1
         end
         local.get $2
         i32.load offset=4
         local.get $1
         local.get $4
         i32.add
         i32.const 1
         i32.shl
         local.tee $0
         i32.const 2
         i32.add
         i32.const 3
         i32.shl
         i32.add
         local.get $3
         f64.const 0.5
         f64.add
         f64.store
         local.get $2
         i32.load offset=4
         local.get $0
         i32.const 3
         i32.add
         i32.const 3
         i32.shl
         i32.add
         local.get $3
         f64.store
         br $break|1
        end
        local.get $2
        i32.load offset=4
        local.get $1
        local.get $4
        i32.add
        i32.const 1
        i32.shl
        local.tee $0
        i32.const 2
        i32.add
        i32.const 3
        i32.shl
        i32.add
        local.get $3
        f64.const 0.5
        f64.sub
        f64.store
        local.get $2
        i32.load offset=4
        local.get $0
        i32.const 3
        i32.add
        i32.const 3
        i32.shl
        i32.add
        local.get $3
        f64.store
        br $break|1
       end
       local.get $2
       i32.load offset=4
       local.get $1
       local.get $4
       i32.add
       i32.const 1
       i32.shl
       local.tee $0
       i32.const 2
       i32.add
       i32.const 3
       i32.shl
       i32.add
       local.get $3
       f64.const 0.5
       f64.sub
       f64.store
       local.get $2
       i32.load offset=4
       local.get $0
       i32.const 3
       i32.add
       i32.const 3
       i32.shl
       i32.add
       local.get $3
       f64.const 1
       f64.sub
       local.tee $3
       f64.store
       br $break|1
      end
      local.get $2
      i32.load offset=4
      local.get $1
      local.get $4
      i32.add
      i32.const 1
      i32.shl
      local.tee $0
      i32.const 2
      i32.add
      i32.const 3
      i32.shl
      i32.add
      local.get $3
      f64.const 0.5
      f64.add
      f64.store
      local.get $2
      i32.load offset=4
      local.get $0
      i32.const 3
      i32.add
      i32.const 3
      i32.shl
      i32.add
      local.get $3
      f64.const 1
      f64.add
      local.tee $3
      f64.store
      br $break|1
     end
     local.get $2
     i32.load offset=4
     local.get $1
     local.get $4
     i32.add
     i32.const 1
     i32.shl
     local.tee $0
     i32.const 2
     i32.add
     i32.const 3
     i32.shl
     i32.add
     local.get $3
     f64.store
     local.get $2
     i32.load offset=4
     local.get $0
     i32.const 3
     i32.add
     i32.const 3
     i32.shl
     i32.add
     local.get $3
     f64.store
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $5
  i32.const 13788
  i32.gt_u
  if
   local.get $5
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $2
 )
 (func $assembly/index/gates (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $3
   i32.load offset=4
   local.set $4
   local.get $3
   local.get $4
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $3
   i32.load
   drop
  end
  local.get $0
  call $~lib/string/String#toUpperCase
  local.set $3
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 2
  i32.add
  call $~lib/typedarray/Float64Array#constructor
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $1
   i32.lt_s
   if
    block $break|1
     block $case5|1
      block $case4|1
       block $case3|1
        block $case1|1
         block $__inlined_func$~lib/string/String#charCodeAt (result i32)
          i32.const -1
          local.get $2
          local.get $3
          i32.const 16
          i32.sub
          i32.load offset=12
          i32.const 1
          i32.shr_u
          i32.ge_u
          br_if $__inlined_func$~lib/string/String#charCodeAt
          drop
          local.get $3
          local.get $2
          i32.const 1
          i32.shl
          i32.add
          i32.load16_u
         end
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
          br_if $case3|1
          local.get $0
          i32.const 85
          i32.eq
          br_if $case3|1
          local.get $0
          i32.const 71
          i32.eq
          br_if $case4|1
          br $case5|1
         end
         local.get $5
         f64.const 1
         f64.sub
         local.set $5
         br $break|1
        end
        local.get $6
        f64.const 1
        f64.sub
        local.set $6
        br $break|1
       end
       local.get $5
       f64.const 1
       f64.add
       local.set $5
       br $break|1
      end
      local.get $6
      f64.const 1
      f64.add
      local.set $6
      br $break|1
     end
     i32.const 6784
     i32.const 6832
     i32.const 124
     i32.const 9
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    i32.load offset=4
    local.get $2
    i32.const 1
    i32.add
    local.tee $0
    i32.const 3
    i32.shl
    i32.add
    local.get $6
    f64.store
    local.get $4
    i32.load offset=4
    local.get $1
    local.get $2
    i32.add
    i32.const 2
    i32.add
    i32.const 3
    i32.shl
    i32.add
    local.get $5
    f64.store
    local.get $0
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
  i32.const 13788
  i32.gt_u
  if
   local.get $3
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $4
 )
 (func $~lib/string/String#charAt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 6896
   return
  end
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 2
  i32.const 1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  i32.store16
  local.get $2
  i32.const 13788
  i32.gt_u
  if
   local.get $2
   i32.const 16
   i32.sub
   local.tee $0
   i32.load offset=4
   local.set $1
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $0
   i32.load
   drop
  end
  local.get $2
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $3
   i32.load offset=4
   local.set $4
   local.get $3
   local.get $4
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $3
   i32.load
   drop
  end
  local.get $0
  local.set $4
  local.get $1
  i32.const 13788
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   local.tee $3
   i32.load offset=4
   local.set $5
   local.get $3
   local.get $5
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $3
   i32.load
   drop
  end
  local.get $4
  i32.const 7
  i32.and
  local.get $1
  local.tee $3
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
    local.get $4
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $4
     i32.const 8
     i32.add
     local.set $4
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
   local.tee $5
   i32.const 1
   i32.sub
   local.set $2
   local.get $5
   if
    local.get $4
    i32.load16_u
    local.tee $5
    local.get $1
    i32.load16_u
    local.tee $6
    i32.ne
    if
     local.get $0
     i32.const 13788
     i32.gt_u
     if
      local.get $0
      i32.const 16
      i32.sub
      call $~lib/rt/pure/decrement
     end
     local.get $3
     i32.const 13788
     i32.gt_u
     if
      local.get $3
      i32.const 16
      i32.sub
      call $~lib/rt/pure/decrement
     end
     local.get $5
     local.get $6
     i32.sub
     return
    end
    local.get $4
    i32.const 2
    i32.add
    local.set $4
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|1
   end
  end
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $3
  i32.const 13788
  i32.gt_u
  if
   local.get $3
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $2
   i32.load offset=4
   local.set $3
   local.get $2
   local.get $3
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $2
   i32.load
   drop
  end
  local.get $1
  i32.const 13788
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   local.tee $2
   i32.load offset=4
   local.set $3
   local.get $2
   local.get $3
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $2
   i32.load
   drop
  end
  local.get $0
  local.get $1
  i32.eq
  if
   local.get $0
   i32.const 13788
   i32.gt_u
   if
    local.get $0
    i32.const 16
    i32.sub
    call $~lib/rt/pure/decrement
   end
   local.get $1
   i32.const 13788
   i32.gt_u
   if
    local.get $1
    i32.const 16
    i32.sub
    call $~lib/rt/pure/decrement
   end
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   i32.const 1
   local.get $0
   select
   br_if $folding-inner0
   local.get $0
   i32.const 16
   i32.sub
   i32.load offset=12
   i32.const 1
   i32.shr_u
   local.tee $2
   local.get $1
   i32.const 16
   i32.sub
   i32.load offset=12
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   local.get $0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   local.get $0
   i32.const 13788
   i32.gt_u
   if
    local.get $0
    i32.const 16
    i32.sub
    call $~lib/rt/pure/decrement
   end
   local.get $1
   i32.const 13788
   i32.gt_u
   if
    local.get $1
    i32.const 16
    i32.sub
    call $~lib/rt/pure/decrement
   end
   return
  end
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $1
  i32.const 13788
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  i32.const 0
 )
 (func $~lib/string/String.__ne (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $2
   i32.load offset=4
   local.set $3
   local.get $2
   local.get $3
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $2
   i32.load
   drop
  end
  local.get $0
  local.get $1
  i32.const 13788
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   local.tee $3
   i32.load offset=4
   local.set $4
   local.get $3
   local.get $4
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $3
   i32.load
   drop
  end
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $1
  i32.const 13788
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 13788
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   local.tee $3
   i32.load offset=4
   local.set $2
   local.get $3
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $3
   i32.load
   drop
  end
  local.get $1
  i32.eqz
  if
   local.get $1
   i32.const 7072
   i32.ne
   if
    local.get $1
    i32.const 13788
    i32.gt_u
    if
     local.get $1
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
   end
   i32.const 7072
   local.set $1
  end
  local.get $1
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $6
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $4
  i32.add
  local.tee $2
  i32.eqz
  if
   local.get $1
   i32.const 13788
   i32.gt_u
   if
    local.get $1
    i32.const 16
    i32.sub
    call $~lib/rt/pure/decrement
   end
   i32.const 6896
   return
  end
  call $~lib/rt/tlsf/maybeInitialize
  local.get $2
  i32.const 1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $2
  i32.const 13788
  i32.gt_u
  if
   local.get $2
   i32.const 16
   i32.sub
   local.tee $5
   i32.load offset=4
   local.set $3
   local.get $5
   local.get $3
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $5
   i32.load
   drop
  end
  local.get $2
  local.get $0
  local.get $4
  call $~lib/memory/memory.copy
  local.get $2
  local.get $4
  i32.add
  local.get $1
  local.get $6
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 13788
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $2
 )
 (func $assembly/index/y_qi (param $0 i32) (param $1 i32) (result i32)
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
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $3
   i32.load offset=4
   local.set $2
   local.get $3
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $3
   i32.load
   drop
  end
  local.get $0
  call $~lib/string/String#toUpperCase
  local.set $8
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $1
  i32.const 1
  i32.sub
  call $~lib/typedarray/Float64Array#constructor
  local.set $9
  loop $for-loop|0
   local.get $10
   local.get $1
   i32.const 1
   i32.sub
   i32.lt_s
   if
    local.get $8
    local.get $10
    call $~lib/string/String#charAt
    local.set $3
    local.get $8
    local.get $10
    i32.const 1
    i32.add
    call $~lib/string/String#charAt
    local.set $2
    local.get $3
    i32.const 6912
    call $~lib/string/String.__ne
    if (result i32)
     local.get $3
     i32.const 6944
     call $~lib/string/String.__ne
    else
     i32.const 0
    end
    if (result i32)
     local.get $3
     i32.const 6976
     call $~lib/string/String.__ne
    else
     i32.const 0
    end
    if (result i32)
     local.get $3
     i32.const 7008
     call $~lib/string/String.__ne
    else
     i32.const 0
    end
    if (result i32)
     local.get $3
     i32.const 7040
     call $~lib/string/String.__ne
    else
     i32.const 0
    end
    if
     i32.const 6784
     i32.const 6832
     i32.const 148
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    else
     local.get $2
     i32.const 6912
     call $~lib/string/String.__ne
     if (result i32)
      local.get $2
      i32.const 6944
      call $~lib/string/String.__ne
     else
      i32.const 0
     end
     if (result i32)
      local.get $2
      i32.const 6976
      call $~lib/string/String.__ne
     else
      i32.const 0
     end
     if (result i32)
      local.get $2
      i32.const 7008
      call $~lib/string/String.__ne
     else
      i32.const 0
     end
     if (result i32)
      local.get $2
      i32.const 7040
      call $~lib/string/String.__ne
     else
      i32.const 0
     end
     if
      i32.const 6784
      i32.const 6832
      i32.const 156
      i32.const 7
      call $~lib/builtins/abort
      unreachable
     else
      local.get $3
      i32.const 6976
      i32.eq
      if
       local.get $3
       i32.const 13788
       i32.gt_u
       if
        local.get $3
        i32.const 16
        i32.sub
        call $~lib/rt/pure/decrement
       end
       i32.const 6944
       local.set $3
      else
       local.get $2
       i32.const 6976
       i32.eq
       if
        local.get $2
        i32.const 13788
        i32.gt_u
        if
         local.get $2
         i32.const 16
         i32.sub
         call $~lib/rt/pure/decrement
        end
        i32.const 6944
        local.set $2
       end
      end
     end
    end
    local.get $2
    local.set $0
    local.get $3
    local.set $4
    local.get $3
    i32.const 13788
    i32.gt_u
    if
     local.get $4
     i32.const 16
     i32.sub
     local.tee $5
     i32.load offset=4
     local.set $7
     local.get $5
     local.get $7
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $5
     i32.load
     drop
    end
    local.get $4
    i32.const 7072
    local.get $4
    select
    local.get $0
    i32.const 13788
    i32.gt_u
    if
     local.get $0
     i32.const 16
     i32.sub
     local.tee $5
     i32.load offset=4
     local.set $6
     local.get $5
     local.get $6
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $5
     i32.load
     drop
    end
    local.get $0
    call $~lib/string/String#concat
    local.get $4
    i32.const 13788
    i32.gt_u
    if
     local.get $4
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $0
    i32.const 13788
    i32.gt_u
    if
     local.get $0
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.tee $0
    i32.const 13788
    i32.gt_u
    if
     local.get $0
     i32.const 16
     i32.sub
     local.tee $4
     i32.load offset=4
     local.set $5
     local.get $4
     local.get $5
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $4
     i32.load
     drop
    end
    block $break|1
     block $case16|1
      block $case15|1
       block $case14|1
        block $case13|1
         block $case12|1
          block $case11|1
           block $case10|1
            block $case9|1
             block $case8|1
              block $case7|1
               block $case6|1
                block $case5|1
                 block $case4|1
                  block $case3|1
                   block $case2|1
                    block $case1|1
                     i32.const 7104
                     local.get $0
                     call $~lib/string/String.__eq
                     i32.const 1
                     i32.ne
                     if
                      i32.const 7136
                      local.get $0
                      call $~lib/string/String.__eq
                      i32.const 1
                      i32.eq
                      br_if $case1|1
                      i32.const 7168
                      local.get $0
                      call $~lib/string/String.__eq
                      i32.const 1
                      i32.eq
                      br_if $case2|1
                      i32.const 7200
                      local.get $0
                      call $~lib/string/String.__eq
                      i32.const 1
                      i32.eq
                      br_if $case3|1
                      i32.const 7232
                      local.get $0
                      call $~lib/string/String.__eq
                      i32.const 1
                      i32.eq
                      br_if $case4|1
                      i32.const 7264
                      local.get $0
                      call $~lib/string/String.__eq
                      i32.const 1
                      i32.eq
                      br_if $case5|1
                      i32.const 7296
                      local.get $0
                      call $~lib/string/String.__eq
                      i32.const 1
                      i32.eq
                      br_if $case6|1
                      i32.const 7328
                      local.get $0
                      call $~lib/string/String.__eq
                      i32.const 1
                      i32.eq
                      br_if $case7|1
                      i32.const 7360
                      local.get $0
                      call $~lib/string/String.__eq
                      i32.const 1
                      i32.eq
                      br_if $case8|1
                      i32.const 7392
                      local.get $0
                      call $~lib/string/String.__eq
                      i32.const 1
                      i32.eq
                      br_if $case9|1
                      i32.const 7424
                      local.get $0
                      call $~lib/string/String.__eq
                      i32.const 1
                      i32.eq
                      br_if $case10|1
                      i32.const 7456
                      local.get $0
                      call $~lib/string/String.__eq
                      i32.const 1
                      i32.eq
                      br_if $case11|1
                      i32.const 7488
                      local.get $0
                      call $~lib/string/String.__eq
                      i32.const 1
                      i32.eq
                      br_if $case12|1
                      i32.const 7520
                      local.get $0
                      call $~lib/string/String.__eq
                      i32.const 1
                      i32.eq
                      br_if $case13|1
                      i32.const 7552
                      local.get $0
                      call $~lib/string/String.__eq
                      i32.const 1
                      i32.eq
                      br_if $case14|1
                      i32.const 7584
                      local.get $0
                      call $~lib/string/String.__eq
                      i32.const 1
                      i32.eq
                      br_if $case15|1
                      br $case16|1
                     end
                     local.get $9
                     i32.load offset=4
                     local.get $10
                     i32.const 3
                     i32.shl
                     i32.add
                     f64.const 12
                     f64.store
                     br $break|1
                    end
                    local.get $9
                    i32.load offset=4
                    local.get $10
                    i32.const 3
                    i32.shl
                    i32.add
                    f64.const 4
                    f64.store
                    br $break|1
                   end
                   local.get $9
                   i32.load offset=4
                   local.get $10
                   i32.const 3
                   i32.shl
                   i32.add
                   f64.const 6
                   f64.store
                   br $break|1
                  end
                  local.get $9
                  i32.load offset=4
                  local.get $10
                  i32.const 3
                  i32.shl
                  i32.add
                  f64.const 0
                  f64.store
                  br $break|1
                 end
                 local.get $9
                 i32.load offset=4
                 local.get $10
                 i32.const 3
                 i32.shl
                 i32.add
                 f64.const 13
                 f64.store
                 br $break|1
                end
                local.get $9
                i32.load offset=4
                local.get $10
                i32.const 3
                i32.shl
                i32.add
                f64.const 5
                f64.store
                br $break|1
               end
               local.get $9
               i32.load offset=4
               local.get $10
               i32.const 3
               i32.shl
               i32.add
               f64.const 10
               f64.store
               br $break|1
              end
              local.get $9
              i32.load offset=4
              local.get $10
              i32.const 3
              i32.shl
              i32.add
              f64.const 15
              f64.store
              br $break|1
             end
             local.get $9
             i32.load offset=4
             local.get $10
             i32.const 3
             i32.shl
             i32.add
             f64.const 14
             f64.store
             br $break|1
            end
            local.get $9
            i32.load offset=4
            local.get $10
            i32.const 3
            i32.shl
            i32.add
            f64.const 11
            f64.store
            br $break|1
           end
           local.get $9
           i32.load offset=4
           local.get $10
           i32.const 3
           i32.shl
           i32.add
           f64.const 8
           f64.store
           br $break|1
          end
          local.get $9
          i32.load offset=4
          local.get $10
          i32.const 3
          i32.shl
          i32.add
          f64.const 1
          f64.store
          br $break|1
         end
         local.get $9
         i32.load offset=4
         local.get $10
         i32.const 3
         i32.shl
         i32.add
         f64.const 7
         f64.store
         br $break|1
        end
        local.get $9
        i32.load offset=4
        local.get $10
        i32.const 3
        i32.shl
        i32.add
        f64.const 9
        f64.store
        br $break|1
       end
       local.get $9
       i32.load offset=4
       local.get $10
       i32.const 3
       i32.shl
       i32.add
       f64.const 3
       f64.store
       br $break|1
      end
      local.get $9
      i32.load offset=4
      local.get $10
      i32.const 3
      i32.shl
      i32.add
      f64.const 2
      f64.store
      br $break|1
     end
     i32.const 6784
     i32.const 6832
     i32.const 215
     i32.const 9
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    i32.const 13788
    i32.gt_u
    if
     local.get $3
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $2
    i32.const 13788
    i32.gt_u
    if
     local.get $2
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $0
    local.tee $3
    i32.const 13788
    i32.gt_u
    if
     local.get $3
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $3
    i32.const 13788
    i32.gt_u
    if
     local.get $3
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $10
    i32.const 1
    i32.add
    local.set $10
    br $for-loop|0
   end
  end
  local.get $8
  i32.const 13788
  i32.gt_u
  if
   local.get $8
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $9
 )
 (func $assembly/index/x_qi (param $0 i32) (result i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1
  i32.sub
  call $~lib/typedarray/Float64Array#constructor
  local.set $3
  f64.const 1
  local.set $1
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.lt_s
   if
    local.get $3
    i32.load offset=4
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    local.get $1
    f64.store
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $assembly/index/x_yau_bp (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  local.get $0
  i32.const 1
  i32.add
  call $~lib/typedarray/Float64Array#constructor
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.lt_s
   if
    local.get $2
    i32.load offset=4
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    local.get $3
    f64.store
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
 (func $assembly/index/y_yau_bp (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $3
   i32.load offset=4
   local.set $2
   local.get $3
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $3
   i32.load
   drop
  end
  local.get $0
  call $~lib/string/String#toUpperCase
  local.set $3
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $1
  i32.const 1
  i32.add
  call $~lib/typedarray/Float64Array#constructor
  local.set $5
  i32.const 1
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $1
   i32.le_s
   if
    block $break|1
     block $case4|1
      block $case3|1
       block $case1|1
        block $__inlined_func$~lib/string/String#charCodeAt (result i32)
         i32.const -1
         local.get $2
         local.get $3
         i32.const 16
         i32.sub
         i32.load offset=12
         i32.const 1
         i32.shr_u
         i32.ge_u
         br_if $__inlined_func$~lib/string/String#charCodeAt
         drop
         local.get $3
         local.get $2
         i32.const 1
         i32.shl
         i32.add
         i32.load16_u
        end
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
         br_if $case3|1
         local.get $0
         i32.const 85
         i32.eq
         br_if $case3|1
         local.get $0
         i32.const 71
         i32.eq
         br_if $case4|1
         br $break|1
        end
        local.get $5
        i32.load offset=4
        local.get $2
        i32.const 3
        i32.shl
        i32.add
        local.get $4
        f64.const 1
        f64.sub
        local.tee $4
        f64.store
        br $break|1
       end
       local.get $5
       i32.load offset=4
       local.get $2
       i32.const 3
       i32.shl
       i32.add
       local.get $4
       f64.const 0.5
       f64.add
       local.tee $4
       f64.store
       br $break|1
      end
      local.get $5
      i32.load offset=4
      local.get $2
      i32.const 3
      i32.shl
      i32.add
      local.get $4
      f64.const 1
      f64.add
      local.tee $4
      f64.store
      br $break|1
     end
     local.get $5
     i32.load offset=4
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     local.get $4
     f64.const 0.5
     f64.sub
     local.tee $4
     f64.store
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
  i32.const 13788
  i32.gt_u
  if
   local.get $3
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $5
 )
 (func $assembly/index/yau (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $3
   i32.load offset=4
   local.set $2
   local.get $3
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $3
   i32.load
   drop
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 2
  i32.add
  call $~lib/typedarray/Float64Array#constructor
  local.set $4
  i32.const 1
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $1
   i32.le_s
   if
    block $break|1
     block $case4|1
      block $case3|1
       block $case1|1
        block $__inlined_func$~lib/string/String#charCodeAt (result i32)
         i32.const -1
         local.get $2
         i32.const 1
         i32.sub
         local.tee $3
         local.get $0
         i32.const 16
         i32.sub
         i32.load offset=12
         i32.const 1
         i32.shr_u
         i32.ge_u
         br_if $__inlined_func$~lib/string/String#charCodeAt
         drop
         local.get $0
         local.get $3
         i32.const 1
         i32.shl
         i32.add
         i32.load16_u
        end
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
         br_if $case3|1
         local.get $3
         i32.const 85
         i32.eq
         br_if $case3|1
         local.get $3
         i32.const 71
         i32.eq
         br_if $case4|1
         br $break|1
        end
        local.get $4
        i32.load offset=4
        local.get $2
        i32.const 3
        i32.shl
        i32.add
        local.get $5
        f64.const 0.5
        f64.add
        local.tee $5
        f64.store
        local.get $4
        i32.load offset=4
        local.get $1
        local.get $2
        i32.add
        i32.const 1
        i32.add
        i32.const 3
        i32.shl
        i32.add
        local.get $6
        f64.const 0.8660254037844386
        f64.sub
        local.tee $6
        f64.store
        br $break|1
       end
       local.get $4
       i32.load offset=4
       local.get $2
       i32.const 3
       i32.shl
       i32.add
       local.get $5
       f64.const 0.8660254037844386
       f64.add
       local.tee $5
       f64.store
       local.get $4
       i32.load offset=4
       local.get $1
       local.get $2
       i32.add
       i32.const 1
       i32.add
       i32.const 3
       i32.shl
       i32.add
       local.get $6
       f64.const 0.5
       f64.add
       local.tee $6
       f64.store
       br $break|1
      end
      local.get $4
      i32.load offset=4
      local.get $2
      i32.const 3
      i32.shl
      i32.add
      local.get $5
      f64.const 0.5
      f64.add
      local.tee $5
      f64.store
      local.get $4
      i32.load offset=4
      local.get $1
      local.get $2
      i32.add
      i32.const 1
      i32.add
      i32.const 3
      i32.shl
      i32.add
      local.get $6
      f64.const 0.8660254037844386
      f64.add
      local.tee $6
      f64.store
      br $break|1
     end
     local.get $4
     i32.load offset=4
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     local.get $5
     f64.const 0.8660254037844386
     f64.add
     local.tee $5
     f64.store
     local.get $4
     i32.load offset=4
     local.get $1
     local.get $2
     i32.add
     i32.const 1
     i32.add
     i32.const 3
     i32.shl
     i32.add
     local.get $6
     f64.const 0.5
     f64.sub
     local.tee $6
     f64.store
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $4
 )
 (func $assembly/index/y_randic (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $2
   i32.load offset=4
   local.set $3
   local.get $2
   local.get $3
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $2
   i32.load
   drop
  end
  local.get $0
  call $~lib/string/String#toUpperCase
  local.set $2
  local.get $0
  i32.const 13788
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $1
  call $~lib/typedarray/Float64Array#constructor
  local.set $3
  loop $for-loop|0
   local.get $4
   local.get $1
   i32.lt_s
   if
    block $break|1
     block $case4|1
      block $case3|1
       block $case1|1
        block $__inlined_func$~lib/string/String#charCodeAt (result i32)
         i32.const -1
         local.get $4
         i32.const 1
         i32.shr_u
         local.tee $0
         local.get $2
         i32.const 16
         i32.sub
         i32.load offset=12
         i32.const 1
         i32.shr_u
         i32.ge_u
         br_if $__inlined_func$~lib/string/String#charCodeAt
         drop
         local.get $2
         local.get $0
         i32.const 1
         i32.shl
         i32.add
         i32.load16_u
        end
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
         br_if $case3|1
         local.get $0
         i32.const 85
         i32.eq
         br_if $case3|1
         local.get $0
         i32.const 71
         i32.eq
         br_if $case4|1
         br $break|1
        end
        local.get $3
        i32.load offset=4
        local.get $4
        i32.const 3
        i32.shl
        i32.add
        f64.const 3
        f64.store
        br $break|1
       end
       local.get $3
       i32.load offset=4
       local.get $4
       i32.const 3
       i32.shl
       i32.add
       f64.const 0
       f64.store
       br $break|1
      end
      local.get $3
      i32.load offset=4
      local.get $4
      i32.const 3
      i32.shl
      i32.add
      f64.const 2
      f64.store
      br $break|1
     end
     local.get $3
     i32.load offset=4
     local.get $4
     i32.const 3
     i32.shl
     i32.add
     f64.const 1
     f64.store
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $2
  i32.const 13788
  i32.gt_u
  if
   local.get $2
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $3
 )
 (func $assembly/index/x_randic (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  local.get $0
  call $~lib/typedarray/Float64Array#constructor
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.lt_s
   if
    local.get $2
    i32.load offset=4
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    local.get $3
    f64.store
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
 (func $~lib/rt/pure/__collect
  nop
 )
 (func $~lib/rt/pure/decrement (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  drop
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 268435455
  i32.and
  local.tee $1
  i32.const 1
  i32.eq
  if
   block $__inlined_func$~lib/rt/__visit_members
    block $switch$1$default
     block $switch$1$case$4
      local.get $0
      i32.const 8
      i32.add
      i32.load
      br_table $__inlined_func$~lib/rt/__visit_members $__inlined_func$~lib/rt/__visit_members $switch$1$case$4 $switch$1$case$4 $__inlined_func$~lib/rt/__visit_members $switch$1$default
     end
     local.get $0
     i32.load offset=16
     local.tee $1
     if
      local.get $1
      i32.const 13788
      i32.ge_u
      if
       local.get $1
       i32.const 16
       i32.sub
       call $~lib/rt/pure/decrement
      end
     end
     br $__inlined_func$~lib/rt/__visit_members
    end
    unreachable
   end
   local.get $0
   local.get $0
   i32.load
   i32.const 1
   i32.or
   i32.store
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $0
   local.get $1
   i32.const 1
   i32.sub
   local.get $2
   i32.const -268435456
   i32.and
   i32.or
   i32.store offset=4
  end
 )
)
