DELETE FROM `landblock_instance` WHERE `landblock` = 0x00AE;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE043, 490250, 0x00AE0329, 44.7366, -39.9313, -12.2098, -0.702259, 0, 0, 0.711922, False, '2024-01-29 21:47:40'); /* Surface */
/* @teleloc 0x00AE0329 [44.736599 -39.931301 -12.209800] -0.702259 0.000000 0.000000 0.711922 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE044, 24129, 0x00AE033B, 60.5908, -49.5142, -11.945, -0.69305, 0, 0, 0.72089, False, '2024-02-03 09:17:02'); /* Linkable Monster Gen (1 min.) */
/* @teleloc 0x00AE033B [60.590801 -49.514198 -11.945000] -0.693050 0.000000 0.000000 0.720890 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x700AE044, 0x700AE045, '2024-02-03 09:19:25') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE046, '2024-02-03 09:19:29') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE047, '2024-02-03 09:19:37') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE048, '2024-02-03 09:19:39') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE049, '2024-02-03 09:19:41') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE04A, '2024-02-03 09:31:13') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE04B, '2024-02-03 09:31:16') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE04C, '2024-02-03 09:31:18') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE04D, '2024-02-03 09:31:21') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE04E, '2024-02-03 09:31:24') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE04F, '2024-02-03 09:31:46') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE050, '2024-02-03 09:31:48') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE051, '2024-02-03 09:31:51') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE052, '2024-02-03 09:31:53') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE053, '2024-02-03 09:31:55') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE054, '2024-02-03 09:32:17') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE055, '2024-02-03 09:32:19') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE056, '2024-02-03 09:32:21') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE057, '2024-02-03 09:32:24') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE058, '2024-02-03 09:32:28') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE059, '2024-02-03 09:34:08') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE05A, '2024-02-03 09:34:10') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE05B, '2024-02-03 09:34:12') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE05C, '2024-02-03 09:34:13') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE05D, '2024-02-03 09:34:15') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE05E, '2024-02-03 09:34:20') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE05F, '2024-02-03 09:34:25') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE060, '2024-02-03 09:34:27') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE061, '2024-02-03 09:34:30') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE062, '2024-02-03 09:34:32') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE063, '2024-02-03 09:34:44') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE064, '2024-02-03 09:34:48') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE065, '2024-02-03 09:34:51') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE066, '2024-02-03 09:34:55') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE067, '2024-02-03 09:34:59') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE068, '2024-02-03 09:35:17') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE069, '2024-02-03 09:35:20') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE06A, '2024-02-03 09:35:24') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE06B, '2024-02-03 09:35:29') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE06C, '2024-02-03 09:35:33') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE06D, '2024-02-03 09:36:48') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE06E, '2024-02-03 09:36:51') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE06F, '2024-02-03 09:36:54') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE070, '2024-02-03 09:36:57') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE071, '2024-02-03 09:36:59') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE072, '2024-02-03 09:37:04') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE073, '2024-02-03 09:37:06') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE074, '2024-02-03 09:37:09') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE075, '2024-02-03 09:37:12') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE076, '2024-02-03 09:37:14') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE077, '2024-02-03 09:37:18') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE078, '2024-02-03 09:37:22') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE079, '2024-02-03 09:37:25') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE07A, '2024-02-03 09:37:29') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE07B, '2024-02-03 09:37:33') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE07C, '2024-02-03 09:37:42') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE07D, '2024-02-03 09:37:45') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE07E, '2024-02-03 09:37:48') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE07F, '2024-02-03 09:37:52') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE080, '2024-02-03 09:37:56') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE081, '2024-02-03 09:38:04') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE082, '2024-02-03 09:38:07') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE083, '2024-02-03 09:38:11') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE084, '2024-02-03 09:38:14') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE085, '2024-02-03 09:38:17') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE086, '2024-02-03 09:39:27') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE087, '2024-02-03 09:39:32') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE088, '2024-02-03 09:39:34') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE089, '2024-02-03 09:39:38') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE08A, '2024-02-03 09:39:40') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE08B, '2024-02-03 09:39:45') /* Mythic Wasp  (151001) */
     , (0x700AE044, 0x700AE08C, '2024-02-03 09:39:49') /* Mythic Wasp  (151001) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE045, 151001, 0x00AE0395, 79.9213, -90.0425, -11.985, 0.697055, 0, 0, -0.717018,  True, '2024-02-03 09:19:25'); /* Mythic Wasp  */
/* @teleloc 0x00AE0395 [79.921303 -90.042503 -11.985000] 0.697055 0.000000 0.000000 -0.717018 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE046, 151001, 0x00AE03F9, 100.465, -90.2487, -11.985, 0.701179, 0, 0, -0.712986,  True, '2024-02-03 09:19:29'); /* Mythic Wasp  */
/* @teleloc 0x00AE03F9 [100.464996 -90.248703 -11.985000] 0.701179 0.000000 0.000000 -0.712986 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE047, 151001, 0x00AE0461, 120.616, -89.7983, -11.985, 0.710374, 0, 0, -0.703825,  True, '2024-02-03 09:19:37'); /* Mythic Wasp  */
/* @teleloc 0x00AE0461 [120.615997 -89.798302 -11.985000] 0.710374 0.000000 0.000000 -0.703825 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE048, 151001, 0x00AE04CB, 140.484, -89.6142, -11.985, 0.710374, 0, 0, -0.703825,  True, '2024-02-03 09:19:39'); /* Mythic Wasp  */
/* @teleloc 0x00AE04CB [140.483994 -89.614197 -11.985000] 0.710374 0.000000 0.000000 -0.703825 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE049, 151001, 0x00AE052E, 160.725, -89.4266, -11.985, 0.710374, 0, 0, -0.703825,  True, '2024-02-03 09:19:41'); /* Mythic Wasp  */
/* @teleloc 0x00AE052E [160.725006 -89.426598 -11.985000] 0.710374 0.000000 0.000000 -0.703825 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE04A, 151001, 0x00AE0524, 160.058, -70.0742, -11.985, 0.701174, 0, 0, 0.71299,  True, '2024-02-03 09:31:13'); /* Mythic Wasp  */
/* @teleloc 0x00AE0524 [160.057999 -70.074203 -11.985000] 0.701174 0.000000 0.000000 0.712990 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE04B, 151001, 0x00AE04C1, 139.242, -70.422, -11.985, 0.701174, 0, 0, 0.71299,  True, '2024-02-03 09:31:16'); /* Mythic Wasp  */
/* @teleloc 0x00AE04C1 [139.242004 -70.421997 -11.985000] 0.701174 0.000000 0.000000 0.712990 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE04C, 151001, 0x00AE0457, 120.004, -70.0954, -11.985, 0.701174, 0, 0, 0.71299,  True, '2024-02-03 09:31:18'); /* Mythic Wasp  */
/* @teleloc 0x00AE0457 [120.003998 -70.095398 -11.985000] 0.701174 0.000000 0.000000 0.712990 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE04D, 151001, 0x00AE03F5, 99.9997, -70.4297, -11.985, 0.701174, 0, 0, 0.71299,  True, '2024-02-03 09:31:21'); /* Mythic Wasp  */
/* @teleloc 0x00AE03F5 [99.999702 -70.429703 -11.985000] 0.701174 0.000000 0.000000 0.712990 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE04E, 151001, 0x00AE038B, 80.2703, -70.2893, -11.985, 0.701174, 0, 0, 0.71299,  True, '2024-02-03 09:31:24'); /* Mythic Wasp  */
/* @teleloc 0x00AE038B [80.270302 -70.289299 -11.985000] 0.701174 0.000000 0.000000 0.712990 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE04F, 151001, 0x00AE051A, 160.54, -50.2278, -11.985, -0.706118, 0, 0, -0.708094,  True, '2024-02-03 09:31:46'); /* Mythic Wasp  */
/* @teleloc 0x00AE051A [160.539993 -50.227798 -11.985000] -0.706118 0.000000 0.000000 -0.708094 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE050, 151001, 0x00AE04B7, 140.76, -50.2832, -11.985, -0.706118, 0, 0, -0.708094,  True, '2024-02-03 09:31:48'); /* Mythic Wasp  */
/* @teleloc 0x00AE04B7 [140.759995 -50.283199 -11.985000] -0.706118 0.000000 0.000000 -0.708094 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE051, 151001, 0x00AE044D, 119.934, -50.046, -11.985, -0.706118, 0, 0, -0.708094,  True, '2024-02-03 09:31:51'); /* Mythic Wasp  */
/* @teleloc 0x00AE044D [119.933998 -50.046001 -11.985000] -0.706118 0.000000 0.000000 -0.708094 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE052, 151001, 0x00AE03EB, 100.316, -50.1009, -11.985, -0.706118, 0, 0, -0.708094,  True, '2024-02-03 09:31:53'); /* Mythic Wasp  */
/* @teleloc 0x00AE03EB [100.316002 -50.100899 -11.985000] -0.706118 0.000000 0.000000 -0.708094 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE053, 151001, 0x00AE0381, 80.4137, -50.1566, -11.985, -0.706118, 0, 0, -0.708094,  True, '2024-02-03 09:31:55'); /* Mythic Wasp  */
/* @teleloc 0x00AE0381 [80.413696 -50.156601 -11.985000] -0.706118 0.000000 0.000000 -0.708094 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE054, 151001, 0x00AE050C, 160.449, -19.9555, -11.985, 0.711015, 0, 0, 0.703177,  True, '2024-02-03 09:32:17'); /* Mythic Wasp  */
/* @teleloc 0x00AE050C [160.449005 -19.955500 -11.985000] 0.711015 0.000000 0.000000 0.703177 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE055, 151001, 0x00AE04A8, 139.936, -20.208, -11.985, 0.728041, 0, 0, 0.685533,  True, '2024-02-03 09:32:19'); /* Mythic Wasp  */
/* @teleloc 0x00AE04A8 [139.936005 -20.208000 -11.985000] 0.728041 0.000000 0.000000 0.685533 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE056, 151001, 0x00AE043E, 120.827, -19.8745, -11.985, 0.728041, 0, 0, 0.685533,  True, '2024-02-03 09:32:21'); /* Mythic Wasp  */
/* @teleloc 0x00AE043E [120.827003 -19.874500 -11.985000] 0.728041 0.000000 0.000000 0.685533 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE057, 151001, 0x00AE03DC, 101.107, -20.1623, -11.985, 0.731002, 0, 0, 0.682376,  True, '2024-02-03 09:32:24'); /* Mythic Wasp  */
/* @teleloc 0x00AE03DC [101.107002 -20.162300 -11.985000] 0.731002 0.000000 0.000000 0.682376 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE058, 151001, 0x00AE0372, 79.9775, -20.007, -11.985, 0.698742, 0, 0, 0.715374,  True, '2024-02-03 09:32:28'); /* Mythic Wasp  */
/* @teleloc 0x00AE0372 [79.977501 -20.007000 -11.985000] 0.698742 0.000000 0.000000 0.715374 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE059, 151001, 0x00AE02D3, 160.164, -19.9056, -17.985, -0.705075, 0, 0, -0.709133,  True, '2024-02-03 09:34:08'); /* Mythic Wasp  */
/* @teleloc 0x00AE02D3 [160.164001 -19.905600 -17.985001] -0.705075 0.000000 0.000000 -0.709133 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE05A, 151001, 0x00AE0271, 140.612, -20.0178, -17.985, -0.705075, 0, 0, -0.709133,  True, '2024-02-03 09:34:10'); /* Mythic Wasp  */
/* @teleloc 0x00AE0271 [140.612000 -20.017799 -17.985001] -0.705075 0.000000 0.000000 -0.709133 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE05B, 151001, 0x00AE0207, 119.955, -20.1364, -17.985, -0.705075, 0, 0, -0.709133,  True, '2024-02-03 09:34:12'); /* Mythic Wasp  */
/* @teleloc 0x00AE0207 [119.955002 -20.136400 -17.985001] -0.705075 0.000000 0.000000 -0.709133 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE05C, 151001, 0x00AE019D, 101.385, -20.2429, -17.985, -0.705075, 0, 0, -0.709133,  True, '2024-02-03 09:34:13'); /* Mythic Wasp  */
/* @teleloc 0x00AE019D [101.385002 -20.242901 -17.985001] -0.705075 0.000000 0.000000 -0.709133 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE05D, 151001, 0x00AE0133, 81.1283, -20.3591, -17.985, -0.705075, 0, 0, -0.709133,  True, '2024-02-03 09:34:15'); /* Mythic Wasp  */
/* @teleloc 0x00AE0133 [81.128304 -20.359100 -17.985001] -0.705075 0.000000 0.000000 -0.709133 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE05E, 151001, 0x00AE013D, 80.0339, -40.035, -17.985, 0.71579, 0, 0, -0.698316,  True, '2024-02-03 09:34:20'); /* Mythic Wasp  */
/* @teleloc 0x00AE013D [80.033897 -40.035000 -17.985001] 0.715790 0.000000 0.000000 -0.698316 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE05F, 151001, 0x00AE01A7, 99.7172, -40.1704, -17.985, 0.712087, 0, 0, -0.702091,  True, '2024-02-03 09:34:25'); /* Mythic Wasp  */
/* @teleloc 0x00AE01A7 [99.717201 -40.170399 -17.985001] 0.712087 0.000000 0.000000 -0.702091 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE060, 151001, 0x00AE0211, 118.835, -39.9002, -17.985, 0.712087, 0, 0, -0.702091,  True, '2024-02-03 09:34:27'); /* Mythic Wasp  */
/* @teleloc 0x00AE0211 [118.834999 -39.900200 -17.985001] 0.712087 0.000000 0.000000 -0.702091 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE061, 151001, 0x00AE027A, 139.884, -39.8981, -17.985, 0.712087, 0, 0, -0.702091,  True, '2024-02-03 09:34:30'); /* Mythic Wasp  */
/* @teleloc 0x00AE027A [139.884003 -39.898102 -17.985001] 0.712087 0.000000 0.000000 -0.702091 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE062, 151001, 0x00AE02DD, 159.554, -39.9156, -17.985, 0.712087, 0, 0, -0.702091,  True, '2024-02-03 09:34:32'); /* Mythic Wasp  */
/* @teleloc 0x00AE02DD [159.554001 -39.915600 -17.985001] 0.712087 0.000000 0.000000 -0.702091 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE063, 151001, 0x00AE02E7, 160.118, -59.879, -17.985, -0.694777, 0, 0, -0.719226,  True, '2024-02-03 09:34:44'); /* Mythic Wasp  */
/* @teleloc 0x00AE02E7 [160.117996 -59.879002 -17.985001] -0.694777 0.000000 0.000000 -0.719226 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE064, 151001, 0x00AE0284, 139.81, -59.8901, -17.985, -0.723248, 0, 0, -0.690589,  True, '2024-02-03 09:34:48'); /* Mythic Wasp  */
/* @teleloc 0x00AE0284 [139.809998 -59.890099 -17.985001] -0.723248 0.000000 0.000000 -0.690589 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE065, 151001, 0x00AE021B, 120.41, -60.3037, -17.985, -0.702003, 0, 0, -0.712175,  True, '2024-02-03 09:34:51'); /* Mythic Wasp  */
/* @teleloc 0x00AE021B [120.410004 -60.303699 -17.985001] -0.702003 0.000000 0.000000 -0.712175 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE066, 151001, 0x00AE01B1, 99.7015, -60.0107, -17.985, -0.702003, 0, 0, -0.712175,  True, '2024-02-03 09:34:55'); /* Mythic Wasp  */
/* @teleloc 0x00AE01B1 [99.701500 -60.010700 -17.985001] -0.702003 0.000000 0.000000 -0.712175 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE067, 151001, 0x00AE0147, 80.2528, -60.1454, -17.985, -0.702003, 0, 0, -0.712175,  True, '2024-02-03 09:34:59'); /* Mythic Wasp  */
/* @teleloc 0x00AE0147 [80.252800 -60.145401 -17.985001] -0.702003 0.000000 0.000000 -0.712175 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE068, 151001, 0x00AE0151, 79.7045, -79.9284, -17.985, 0.710394, 0, 0, -0.703805,  True, '2024-02-03 09:35:17'); /* Mythic Wasp  */
/* @teleloc 0x00AE0151 [79.704498 -79.928398 -17.985001] 0.710394 0.000000 0.000000 -0.703805 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE069, 151001, 0x00AE01BB, 100.018, -79.9528, -17.985, 0.710394, 0, 0, -0.703805,  True, '2024-02-03 09:35:20'); /* Mythic Wasp  */
/* @teleloc 0x00AE01BB [100.017998 -79.952797 -17.985001] 0.710394 0.000000 0.000000 -0.703805 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE06A, 151001, 0x00AE0225, 120.232, -79.9095, -17.985, 0.710394, 0, 0, -0.703805,  True, '2024-02-03 09:35:24'); /* Mythic Wasp  */
/* @teleloc 0x00AE0225 [120.232002 -79.909500 -17.985001] 0.710394 0.000000 0.000000 -0.703805 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE06B, 151001, 0x00AE028E, 138.671, -80.033, -17.985, 0.710394, 0, 0, -0.703805,  True, '2024-02-03 09:35:29'); /* Mythic Wasp  */
/* @teleloc 0x00AE028E [138.671005 -80.032997 -17.985001] 0.710394 0.000000 0.000000 -0.703805 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE06C, 151001, 0x00AE02F1, 160.582, -79.8288, -17.985, 0.710394, 0, 0, -0.703805,  True, '2024-02-03 09:35:33'); /* Mythic Wasp  */
/* @teleloc 0x00AE02F1 [160.582001 -79.828796 -17.985001] 0.710394 0.000000 0.000000 -0.703805 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE06D, 151001, 0x00AE05B8, 78.1192, -89.9705, -5.985, -0.693845, 0, 0, 0.720125,  True, '2024-02-03 09:36:48'); /* Mythic Wasp  */
/* @teleloc 0x00AE05B8 [78.119202 -89.970497 -5.985000] -0.693845 0.000000 0.000000 0.720125 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE06E, 151001, 0x00AE0615, 99.9452, -89.8917, -5.985, -0.70108, 0, 0, 0.713083,  True, '2024-02-03 09:36:51'); /* Mythic Wasp  */
/* @teleloc 0x00AE0615 [99.945198 -89.891701 -5.985000] -0.701080 0.000000 0.000000 0.713083 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE06F, 151001, 0x00AE067D, 120.141, -90.0803, -5.985, -0.70108, 0, 0, 0.713083,  True, '2024-02-03 09:36:54'); /* Mythic Wasp  */
/* @teleloc 0x00AE067D [120.140999 -90.080299 -5.985000] -0.701080 0.000000 0.000000 0.713083 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE070, 151001, 0x00AE06E7, 139.639, -89.9603, -5.985, -0.70108, 0, 0, 0.713083,  True, '2024-02-03 09:36:57'); /* Mythic Wasp  */
/* @teleloc 0x00AE06E7 [139.639008 -89.960297 -5.985000] -0.701080 0.000000 0.000000 0.713083 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE071, 151001, 0x00AE0751, 159.766, -90.002, -5.985, -0.70108, 0, 0, 0.713083,  True, '2024-02-03 09:36:59'); /* Mythic Wasp  */
/* @teleloc 0x00AE0751 [159.766006 -90.001999 -5.985000] -0.701080 0.000000 0.000000 0.713083 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE072, 151001, 0x00AE0747, 160.008, -69.9247, -5.985, -0.698188, 0, 0, -0.715914,  True, '2024-02-03 09:37:04'); /* Mythic Wasp  */
/* @teleloc 0x00AE0747 [160.007996 -69.924698 -5.985000] -0.698188 0.000000 0.000000 -0.715914 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE073, 151001, 0x00AE06DD, 141.365, -69.763, -5.985, -0.693007, 0, 0, -0.720931,  True, '2024-02-03 09:37:06'); /* Mythic Wasp  */
/* @teleloc 0x00AE06DD [141.365005 -69.763000 -5.985000] -0.693007 0.000000 0.000000 -0.720931 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE074, 151001, 0x00AE0673, 119.97, -69.9478, -5.985, -0.70128, 0, 0, -0.712886,  True, '2024-02-03 09:37:09'); /* Mythic Wasp  */
/* @teleloc 0x00AE0673 [119.970001 -69.947800 -5.985000] -0.701280 0.000000 0.000000 -0.712886 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE075, 151001, 0x00AE0610, 100.09, -69.7357, -5.985, -0.70538, 0, 0, -0.708829,  True, '2024-02-03 09:37:12'); /* Mythic Wasp  */
/* @teleloc 0x00AE0610 [100.089996 -69.735703 -5.985000] -0.705380 0.000000 0.000000 -0.708829 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE076, 151001, 0x00AE05AE, 80.6156, -69.8305, -5.985, -0.70538, 0, 0, -0.708829,  True, '2024-02-03 09:37:14'); /* Mythic Wasp  */
/* @teleloc 0x00AE05AE [80.615601 -69.830498 -5.985000] -0.705380 0.000000 0.000000 -0.708829 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE077, 151001, 0x00AE05A4, 80.1294, -50.0924, -5.985, -0.726329, 0, 0, 0.687347,  True, '2024-02-03 09:37:18'); /* Mythic Wasp  */
/* @teleloc 0x00AE05A4 [80.129402 -50.092400 -5.985000] -0.726329 0.000000 0.000000 0.687347 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE078, 151001, 0x00AE0606, 100.247, -49.7734, -5.985, -0.712977, 0, 0, 0.701188,  True, '2024-02-03 09:37:22'); /* Mythic Wasp  */
/* @teleloc 0x00AE0606 [100.247002 -49.773399 -5.985000] -0.712977 0.000000 0.000000 0.701188 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE079, 151001, 0x00AE0669, 119.196, -50.0484, -5.985, -0.712977, 0, 0, 0.701188,  True, '2024-02-03 09:37:25'); /* Mythic Wasp  */
/* @teleloc 0x00AE0669 [119.195999 -50.048401 -5.985000] -0.712977 0.000000 0.000000 0.701188 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE07A, 151001, 0x00AE06D3, 139.68, -49.9028, -5.985, -0.712977, 0, 0, 0.701188,  True, '2024-02-03 09:37:29'); /* Mythic Wasp  */
/* @teleloc 0x00AE06D3 [139.679993 -49.902802 -5.985000] -0.712977 0.000000 0.000000 0.701188 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE07B, 151001, 0x00AE073D, 160.221, -49.8019, -5.985, -0.712977, 0, 0, 0.701188,  True, '2024-02-03 09:37:33'); /* Mythic Wasp  */
/* @teleloc 0x00AE073D [160.220993 -49.801899 -5.985000] -0.712977 0.000000 0.000000 0.701188 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE07C, 151001, 0x00AE0733, 160.138, -29.8993, -5.985, -0.698188, 0, 0, -0.715914,  True, '2024-02-03 09:37:42'); /* Mythic Wasp  */
/* @teleloc 0x00AE0733 [160.138000 -29.899300 -5.985000] -0.698188 0.000000 0.000000 -0.715914 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE07D, 151001, 0x00AE06C9, 139.653, -29.7647, -5.985, -0.698188, 0, 0, -0.715914,  True, '2024-02-03 09:37:45'); /* Mythic Wasp  */
/* @teleloc 0x00AE06C9 [139.653000 -29.764700 -5.985000] -0.698188 0.000000 0.000000 -0.715914 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE07E, 151001, 0x00AE065F, 119.646, -29.9708, -5.985, -0.698188, 0, 0, -0.715914,  True, '2024-02-03 09:37:48'); /* Mythic Wasp  */
/* @teleloc 0x00AE065F [119.646004 -29.970800 -5.985000] -0.698188 0.000000 0.000000 -0.715914 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE07F, 151001, 0x00AE05FD, 100.519, -30.0049, -5.985, -0.698188, 0, 0, -0.715914,  True, '2024-02-03 09:37:52'); /* Mythic Wasp  */
/* @teleloc 0x00AE05FD [100.518997 -30.004900 -5.985000] -0.698188 0.000000 0.000000 -0.715914 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE080, 151001, 0x00AE059A, 79.2382, -30.0553, -5.985, -0.698188, 0, 0, -0.715914,  True, '2024-02-03 09:37:56'); /* Mythic Wasp  */
/* @teleloc 0x00AE059A [79.238197 -30.055300 -5.985000] -0.698188 0.000000 0.000000 -0.715914 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE081, 151001, 0x00AE0590, 80.1252, -10.097, -5.985, -0.720685, 0, 0, 0.693263,  True, '2024-02-03 09:38:04'); /* Mythic Wasp  */
/* @teleloc 0x00AE0590 [80.125198 -10.097000 -5.985000] -0.720685 0.000000 0.000000 0.693263 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE082, 151001, 0x00AE05F9, 99.2015, -10.2123, -5.985, -0.720685, 0, 0, 0.693263,  True, '2024-02-03 09:38:07'); /* Mythic Wasp  */
/* @teleloc 0x00AE05F9 [99.201500 -10.212300 -5.985000] -0.720685 0.000000 0.000000 0.693263 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE083, 151001, 0x00AE0655, 119.398, -9.89897, -5.985, -0.720685, 0, 0, 0.693263,  True, '2024-02-03 09:38:11'); /* Mythic Wasp  */
/* @teleloc 0x00AE0655 [119.398003 -9.898970 -5.985000] -0.720685 0.000000 0.000000 0.693263 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE084, 151001, 0x00AE06BF, 139.451, -9.92933, -5.985, -0.720685, 0, 0, 0.693263,  True, '2024-02-03 09:38:14'); /* Mythic Wasp  */
/* @teleloc 0x00AE06BF [139.451004 -9.929330 -5.985000] -0.720685 0.000000 0.000000 0.693263 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE085, 151001, 0x00AE0729, 160.016, -10.1796, -5.985, -0.720685, 0, 0, 0.693263,  True, '2024-02-03 09:38:17'); /* Mythic Wasp  */
/* @teleloc 0x00AE0729 [160.016006 -10.179600 -5.985000] -0.720685 0.000000 0.000000 0.693263 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE086, 151001, 0x00AE0797, 119.751, -50.3611, 0.015, 0.999959, 0, 0, -0.00903,  True, '2024-02-03 09:39:27'); /* Mythic Wasp  */
/* @teleloc 0x00AE0797 [119.750999 -50.361099 0.015000] 0.999959 0.000000 0.000000 -0.009030 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE087, 151001, 0x00AE079A, 127.305, -54.0611, 0.015, 0.999822, 0, 0, 0.018853,  True, '2024-02-03 09:39:32'); /* Mythic Wasp  */
/* @teleloc 0x00AE079A [127.305000 -54.061100 0.015000] 0.999822 0.000000 0.000000 0.018853 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE088, 151001, 0x00AE079A, 127.851, -45.8501, 0.015, 0.999822, 0, 0, 0.018853,  True, '2024-02-03 09:39:34'); /* Mythic Wasp  */
/* @teleloc 0x00AE079A [127.850998 -45.850101 0.015000] 0.999822 0.000000 0.000000 0.018853 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE089, 151001, 0x00AE0790, 111.526, -46.9041, 0.015, 0.999971, 0, 0, -0.007585,  True, '2024-02-03 09:39:38'); /* Mythic Wasp  */
/* @teleloc 0x00AE0790 [111.526001 -46.904099 0.015000] 0.999971 0.000000 0.000000 -0.007585 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE08A, 151001, 0x00AE0790, 111.221, -53.0185, 0.015, 0.999971, 0, 0, -0.007585,  True, '2024-02-03 09:39:40'); /* Mythic Wasp  */
/* @teleloc 0x00AE0790 [111.221001 -53.018501 0.015000] 0.999971 0.000000 0.000000 -0.007585 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE08B, 151001, 0x00AE0798, 116.862, -57.9817, 0.015, 0.999971, 0, 0, -0.007585,  True, '2024-02-03 09:39:45'); /* Mythic Wasp  */
/* @teleloc 0x00AE0798 [116.862000 -57.981701 0.015000] 0.999971 0.000000 0.000000 -0.007585 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700AE08C, 151001, 0x00AE0798, 123.3351, -58.33899, 0.015, 0.999971, 0, 0, -0.007585,  True, '2024-02-03 09:39:49'); /* Mythic Wasp  */
/* @teleloc 0x00AE0798 [123.335098 -58.338989 0.015000] 0.999971 0.000000 0.000000 -0.007585 */
