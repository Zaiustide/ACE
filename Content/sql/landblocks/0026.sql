DELETE FROM `landblock_instance` WHERE `landblock` = 0x0026;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026001, 24129, 0x002602A7, 171.953, -39.1031, -11.945, -0.994636, 0, 0, -0.103434, False, '2024-03-23 14:04:31'); /* Linkable Monster Generator ( 2 Min.) */
/* @teleloc 0x002602A7 [171.953003 -39.103100 -11.945000] -0.994636 0.000000 0.000000 -0.103434 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x70026001, 0x70026002, '2024-03-23 14:05:12') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026003, '2024-03-23 14:05:21') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026004, '2024-03-23 14:05:27') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026005, '2024-03-23 14:05:31') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026006, '2024-03-23 14:05:35') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026007, '2024-03-23 14:05:39') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026009, '2024-03-23 14:07:34') /* Drudge Maurader (490173) */
     , (0x70026001, 0x7002600A, '2024-03-23 14:07:39') /* Drudge Maurader (490173) */
     , (0x70026001, 0x7002600B, '2024-03-23 14:07:44') /* Drudge Maurader (490173) */
     , (0x70026001, 0x7002600C, '2024-03-23 14:07:47') /* Drudge Maurader (490173) */
     , (0x70026001, 0x7002600D, '2024-03-23 14:07:51') /* Drudge Maurader (490173) */
     , (0x70026001, 0x7002600E, '2024-03-23 14:08:04') /* Drudge Maurader (490173) */
     , (0x70026001, 0x7002600F, '2024-03-23 14:08:08') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026010, '2024-03-23 14:08:13') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026011, '2024-03-23 14:08:17') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026012, '2024-03-23 14:08:28') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026013, '2024-03-23 14:08:32') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026014, '2024-03-23 14:08:34') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026015, '2024-03-23 14:08:50') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026016, '2024-03-23 14:08:53') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026017, '2024-03-23 14:08:57') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026018, '2024-03-23 14:09:07') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026019, '2024-03-23 14:09:11') /* Drudge Maurader (490173) */
     , (0x70026001, 0x7002601A, '2024-03-23 14:09:21') /* Drudge Maurader (490173) */
     , (0x70026001, 0x7002601B, '2024-03-23 14:10:09') /* Drudge Maurader (490173) */
     , (0x70026001, 0x7002601C, '2024-03-23 14:10:19') /* Drudge Maurader (490173) */
     , (0x70026001, 0x7002601D, '2024-03-23 14:10:26') /* Drudge Maurader (490173) */
     , (0x70026001, 0x7002601E, '2024-03-23 14:10:36') /* Drudge Maurader (490173) */
     , (0x70026001, 0x7002601F, '2024-03-23 14:10:43') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026020, '2024-03-23 14:10:49') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026021, '2024-03-23 14:11:07') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026022, '2024-03-23 14:11:15') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026023, '2024-03-23 14:11:20') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026024, '2024-03-23 14:11:40') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026025, '2024-03-23 14:11:43') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026032, '2024-03-23 14:20:37') /* Drudge Maurader (490173) */
     , (0x70026001, 0x70026033, '2024-03-23 14:20:40') /* Drudge Maurader (490173) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026002, 490173, 0x002602A8, 169.608, -49.6881, -11.9948, -0.708886, 0, 0, -0.705323,  True, '2024-03-23 14:05:12'); /* Drudge Maurader */
/* @teleloc 0x002602A8 [169.608002 -49.688099 -11.994800] -0.708886 0.000000 0.000000 -0.705323 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026003, 490173, 0x002602A7, 168.811, -40.0394, -11.9948, -0.695825, 0, 0, -0.718212,  True, '2024-03-23 14:05:21'); /* Drudge Maurader */
/* @teleloc 0x002602A7 [168.811005 -40.039398 -11.994800] -0.695825 0.000000 0.000000 -0.718212 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026004, 490173, 0x002602A6, 168.484, -29.6907, -11.9948, -0.695825, 0, 0, -0.718212,  True, '2024-03-23 14:05:27'); /* Drudge Maurader */
/* @teleloc 0x002602A6 [168.483994 -29.690701 -11.994800] -0.695825 0.000000 0.000000 -0.718212 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026005, 490173, 0x00260259, 150.648, -30.2556, -17.9947, -0.695825, 0, 0, -0.718212,  True, '2024-03-23 14:05:31'); /* Drudge Maurader */
/* @teleloc 0x00260259 [150.647995 -30.255600 -17.994699] -0.695825 0.000000 0.000000 -0.718212 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026006, 490173, 0x0026025A, 150.944, -39.5873, -17.9947, -0.695825, 0, 0, -0.718212,  True, '2024-03-23 14:05:35'); /* Drudge Maurader */
/* @teleloc 0x0026025A [150.944000 -39.587299 -17.994699] -0.695825 0.000000 0.000000 -0.718212 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026007, 490173, 0x0026025B, 151.247, -49.1721, -17.9947, -0.695825, 0, 0, -0.718212,  True, '2024-03-23 14:05:39'); /* Drudge Maurader */
/* @teleloc 0x0026025B [151.246994 -49.172100 -17.994699] -0.695825 0.000000 0.000000 -0.718212 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026009, 490173, 0x0026023D, 129.453, -20.0842, -17.9947, 0.700114, 0, 0, 0.714031,  True, '2024-03-23 14:07:34'); /* Drudge Maurader */
/* @teleloc 0x0026023D [129.453003 -20.084200 -17.994699] 0.700114 0.000000 0.000000 0.714031 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002600A, 490173, 0x00260234, 129.371, 0.162655, -17.9947, 0.72108, 0, 0, 0.692852,  True, '2024-03-23 14:07:39'); /* Drudge Maurader */
/* @teleloc 0x00260234 [129.371002 0.162655 -17.994699] 0.721080 0.000000 0.000000 0.692852 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002600B, 490173, 0x00260212, 110.004, 0.341111, -17.9947, 0.69252, 0, 0, 0.721399,  True, '2024-03-23 14:07:44'); /* Drudge Maurader */
/* @teleloc 0x00260212 [110.003998 0.341111 -17.994699] 0.692520 0.000000 0.000000 0.721399 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002600C, 490173, 0x002601EA, 90.1215, 0.414109, -17.9947, 0.716738, 0, 0, 0.697343,  True, '2024-03-23 14:07:47'); /* Drudge Maurader */
/* @teleloc 0x002601EA [90.121498 0.414109 -17.994699] 0.716738 0.000000 0.000000 0.697343 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002600D, 490173, 0x002601C6, 70.2606, 0.275182, -17.9947, 0.699082, 0, 0, 0.715042,  True, '2024-03-23 14:07:51'); /* Drudge Maurader */
/* @teleloc 0x002601C6 [70.260597 0.275182 -17.994699] 0.699082 0.000000 0.000000 0.715042 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002600E, 490173, 0x00260239, 129.835, -9.84015, -17.9947, 0.699082, 0, 0, 0.715042,  True, '2024-03-23 14:08:04'); /* Drudge Maurader */
/* @teleloc 0x00260239 [129.835007 -9.840150 -17.994699] 0.699082 0.000000 0.000000 0.715042 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002600F, 490173, 0x00260217, 110.34, -9.9045, -17.9947, 0.702853, 0, 0, 0.711335,  True, '2024-03-23 14:08:08'); /* Drudge Maurader */
/* @teleloc 0x00260217 [110.339996 -9.904500 -17.994699] 0.702853 0.000000 0.000000 0.711335 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026010, 490173, 0x002601EF, 90.5794, -9.82786, -17.9947, 0.702853, 0, 0, 0.711335,  True, '2024-03-23 14:08:13'); /* Drudge Maurader */
/* @teleloc 0x002601EF [90.579399 -9.827860 -17.994699] 0.702853 0.000000 0.000000 0.711335 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026011, 490173, 0x002601CB, 70.0081, -10.0746, -17.9947, 0.702853, 0, 0, 0.711335,  True, '2024-03-23 14:08:17'); /* Drudge Maurader */
/* @teleloc 0x002601CB [70.008102 -10.074600 -17.994699] 0.702853 0.000000 0.000000 0.711335 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026012, 490173, 0x0026022E, 119.892, -20.0991, -17.9947, -0.710184, 0, 0, -0.704016,  True, '2024-03-23 14:08:28'); /* Drudge Maurader */
/* @teleloc 0x0026022E [119.891998 -20.099100 -17.994699] -0.710184 0.000000 0.000000 -0.704016 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026013, 490173, 0x0026020A, 100.478, -19.9297, -17.9947, -0.692364, 0, 0, -0.721549,  True, '2024-03-23 14:08:32'); /* Drudge Maurader */
/* @teleloc 0x0026020A [100.477997 -19.929701 -17.994699] -0.692364 0.000000 0.000000 -0.721549 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026014, 490173, 0x002601E4, 80.7218, -19.8867, -17.9947, -0.664825, 0, 0, -0.746999,  True, '2024-03-23 14:08:34'); /* Drudge Maurader */
/* @teleloc 0x002601E4 [80.721802 -19.886700 -17.994699] -0.664825 0.000000 0.000000 -0.746999 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026015, 490173, 0x002601B1, 50.1291, -30.0935, -17.9947, -0.706482, 0, 0, 0.707731,  True, '2024-03-23 14:08:50'); /* Drudge Maurader */
/* @teleloc 0x002601B1 [50.129101 -30.093500 -17.994699] -0.706482 0.000000 0.000000 0.707731 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026016, 490173, 0x002601B2, 50.1113, -40.1332, -17.9947, -0.706482, 0, 0, 0.707731,  True, '2024-03-23 14:08:53'); /* Drudge Maurader */
/* @teleloc 0x002601B2 [50.111301 -40.133202 -17.994699] -0.706482 0.000000 0.000000 0.707731 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026017, 490173, 0x002601B3, 50.0942, -49.7811, -17.9947, -0.706482, 0, 0, 0.707731,  True, '2024-03-23 14:08:57'); /* Drudge Maurader */
/* @teleloc 0x002601B3 [50.094200 -49.781101 -17.994699] -0.706482 0.000000 0.000000 0.707731 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026018, 490173, 0x00260272, 31.0373, -51.1267, -11.9948, 0.725123, 0, 0, -0.68862,  True, '2024-03-23 14:09:07'); /* Drudge Maurader */
/* @teleloc 0x00260272 [31.037300 -51.126701 -11.994800] 0.725123 0.000000 0.000000 -0.688620 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026019, 490173, 0x00260271, 30.5087, -40.8987, -11.9948, 0.725123, 0, 0, -0.68862,  True, '2024-03-23 14:09:11'); /* Drudge Maurader */
/* @teleloc 0x00260271 [30.508699 -40.898701 -11.994800] 0.725123 0.000000 0.000000 -0.688620 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002601A, 490173, 0x00260270, 30.3527, -29.9636, -11.9948, 0.698796, 0, 0, -0.715321,  True, '2024-03-23 14:09:21'); /* Drudge Maurader */
/* @teleloc 0x00260270 [30.352699 -29.963600 -11.994800] 0.698796 0.000000 0.000000 -0.715321 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002601B, 490173, 0x0026012F, 10.1151, -49.7977, -23.9947, -0.730595, 0, 0, 0.682811,  True, '2024-03-23 14:10:09'); /* Drudge Maurader */
/* @teleloc 0x0026012F [10.115100 -49.797699 -23.994699] -0.730595 0.000000 0.000000 0.682811 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002601C, 490173, 0x0026013E, 40.0416, -28.0418, -23.9947, -0.999918, 0, 0, -0.012835,  True, '2024-03-23 14:10:19'); /* Drudge Maurader */
/* @teleloc 0x0026013E [40.041599 -28.041800 -23.994699] -0.999918 0.000000 0.000000 -0.012835 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002601D, 490173, 0x00260144, 59.9812, -30.1546, -23.9947, 0.667456, 0, 0, 0.744649,  True, '2024-03-23 14:10:26'); /* Drudge Maurader */
/* @teleloc 0x00260144 [59.981201 -30.154600 -23.994699] 0.667456 0.000000 0.000000 0.744649 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002601E, 490173, 0x0026014E, 80.1726, -50.0434, -23.9947, 0.715146, 0, 0, -0.698975,  True, '2024-03-23 14:10:36'); /* Drudge Maurader */
/* @teleloc 0x0026014E [80.172600 -50.043400 -23.994699] 0.715146 0.000000 0.000000 -0.698975 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002601F, 490173, 0x00260164, 109.818, -60.1744, -23.9947, 0.689481, 0, 0, -0.724304,  True, '2024-03-23 14:10:43'); /* Drudge Maurader */
/* @teleloc 0x00260164 [109.818001 -60.174400 -23.994699] 0.689481 0.000000 0.000000 -0.724304 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026020, 490173, 0x00260169, 119.858, -50.4012, -23.9947, 1, 0, 0, 0.000557,  True, '2024-03-23 14:10:49'); /* Drudge Maurader */
/* @teleloc 0x00260169 [119.858002 -50.401199 -23.994699] 1.000000 0.000000 0.000000 0.000557 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026021, 490173, 0x00260166, 120.188, -30.0645, -23.9947, -0.688845, 0, 0, -0.724909,  True, '2024-03-23 14:11:07'); /* Drudge Maurader */
/* @teleloc 0x00260166 [120.188004 -30.064501 -23.994699] -0.688845 0.000000 0.000000 -0.724909 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026022, 490173, 0x00260173, 140.085, -30.1901, -23.9947, 0.717827, 0, 0, -0.696222,  True, '2024-03-23 14:11:15'); /* Drudge Maurader */
/* @teleloc 0x00260173 [140.085007 -30.190100 -23.994699] 0.717827 0.000000 0.000000 -0.696222 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026023, 490173, 0x00260197, 169.557, -29.9155, -23.9947, 0.723164, 0, 0, -0.690676,  True, '2024-03-23 14:11:20'); /* Drudge Maurader */
/* @teleloc 0x00260197 [169.557007 -29.915501 -23.994699] 0.723164 0.000000 0.000000 -0.690676 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026024, 490173, 0x00260153, 93.0038, -28.1932, -23.9947, -0.853876, 0, 0, -0.520477,  True, '2024-03-23 14:11:40'); /* Drudge Maurader */
/* @teleloc 0x00260153 [93.003799 -28.193199 -23.994699] -0.853876 0.000000 0.000000 -0.520477 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026025, 490173, 0x00260153, 87.9867, -32.9273, -23.9947, -0.978943, 0, 0, -0.204136,  True, '2024-03-23 14:11:43'); /* Drudge Maurader */
/* @teleloc 0x00260153 [87.986702 -32.927299 -23.994699] -0.978943 0.000000 0.000000 -0.204136 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026026, 490258, 0x00260102, 28.475, -47.8025, -35.945, -0.745453, 0, 0, 0.666558, False, '2024-03-23 14:12:43'); /* Pile of Rocks */
/* @teleloc 0x00260102 [28.475000 -47.802502 -35.945000] -0.745453 0.000000 0.000000 0.666558 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026027, 490258, 0x00260106, 69.9241, -50.3183, -36, -0.675188, 0, 0, 0.737646, False, '2024-03-23 14:13:00'); /* Pile of Rocks */
/* @teleloc 0x00260106 [69.924103 -50.318298 -36.000000] -0.675188 0.000000 0.000000 0.737646 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026028, 490258, 0x0026010A, 87.8392, -45.4009, -35.945, -0.308694, 0, 0, 0.951161, False, '2024-03-23 14:13:31'); /* Pile of Rocks */
/* @teleloc 0x0026010A [87.839203 -45.400902 -35.945000] -0.308694 0.000000 0.000000 0.951161 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026029, 490258, 0x00260111, 107.986, -45.6246, -36, 0.99988, 0, 0, -0.01548, False, '2024-03-23 14:13:39'); /* Pile of Rocks */
/* @teleloc 0x00260111 [107.986000 -45.624599 -36.000000] 0.999880 0.000000 0.000000 -0.015480 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002602A, 490258, 0x00260119, 171.976, -47.9259, -35.945, -0.479312, 0, 0, 0.877644, False, '2024-03-23 14:13:48'); /* Pile of Rocks */
/* @teleloc 0x00260119 [171.975998 -47.925900 -35.945000] -0.479312 0.000000 0.000000 0.877644 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002602B, 490258, 0x00260116, 138.088, -52.2194, -35.945, 0.724164, 0, 0, 0.689628, False, '2024-03-23 14:13:56'); /* Pile of Rocks */
/* @teleloc 0x00260116 [138.087997 -52.219398 -35.945000] 0.724164 0.000000 0.000000 0.689628 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002602C, 490192, 0x0026010F, 113.839, -36.3593, -35.9958, 0.012634, 0, 0, 0.99992, False, '2024-03-23 14:14:45'); /* Drudge Slave */
/* @teleloc 0x0026010F [113.838997 -36.359299 -35.995800] 0.012634 0.000000 0.000000 0.999920 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002602D, 490195, 0x0026010F, 108.868, -36.9473, -36, 0.997361, 0, 0, 0.072597, False, '2024-03-23 14:15:16'); /* Way Out Generator */
/* @teleloc 0x0026010F [108.867996 -36.947300 -36.000000] 0.997361 0.000000 0.000000 0.072597 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002602E, 490258, 0x0026019C, 184.964, -30.9021, -23.945, -0.687585, 0, 0, -0.726104, False, '2024-03-23 14:18:02'); /* Pile of Rocks */
/* @teleloc 0x0026019C [184.964005 -30.902100 -23.945000] -0.687585 0.000000 0.000000 -0.726104 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7002602F, 490258, 0x0026017D, 142.544, -61.1868, -23.945, 0.492255, 0, 0, 0.870451, False, '2024-03-23 14:18:31'); /* Pile of Rocks */
/* @teleloc 0x0026017D [142.544006 -61.186798 -23.945000] 0.492255 0.000000 0.000000 0.870451 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026030, 490258, 0x0026018F, 164.484, -41.2439, -23.945, 0.384248, 0, 0, 0.92323, False, '2024-03-23 14:19:40'); /* Pile of Rocks */
/* @teleloc 0x0026018F [164.483994 -41.243900 -23.945000] 0.384248 0.000000 0.000000 0.923230 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026031, 490187, 0x00260163, 107.504, -47.577, -23.945, -0.407798, 0, 0, 0.913072, False, '2024-03-23 14:20:26'); /* Drudge Battle Plan Generator */
/* @teleloc 0x00260163 [107.503998 -47.577000 -23.945000] -0.407798 0.000000 0.000000 0.913072 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026032, 490173, 0x00260163, 109.254, -52.5456, -23.9947, 0.511667, 0, 0, -0.859184,  True, '2024-03-23 14:20:37'); /* Drudge Maurader */
/* @teleloc 0x00260163 [109.253998 -52.545601 -23.994699] 0.511667 0.000000 0.000000 -0.859184 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026033, 490173, 0x00260163, 112.505, -48.4198, -23.9947, 0.23771, 0, 0, -0.971336,  True, '2024-03-23 14:20:40'); /* Drudge Maurader */
/* @teleloc 0x00260163 [112.504997 -48.419800 -23.994699] 0.237710 0.000000 0.000000 -0.971336 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70026034, 490514, 0x00260153, 93.97906, -34.04482, -23.99545, -0.903859, 0, 0, -0.427831, False, '2024-12-24 01:00:56');
/* @teleloc 0x00260153 [93.979057 -34.044819 -23.995449] -0.903859 0.000000 0.000000 -0.427831 */
