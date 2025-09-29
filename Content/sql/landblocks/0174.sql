DELETE FROM `landblock_instance` WHERE `landblock` = 0x0174;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70174000, 29043, 0x0174012C, 60, 3.566, 1.5, 0, 0, 0, -1,  True, '2005-02-09 10:00:00'); /* Portal Beacon */
/* @teleloc 0x0174012C [60.000000 3.566000 1.500000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70174001, 29015, 0x0174012F, 60, -34.2, 0.005, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Izji Qo Sealed Door Generator */
/* @teleloc 0x0174012F [60.000000 -34.200001 0.005000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70174002, 29014, 0x01740131, 60, -50, 0.005, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Izji Qo Raid Generator */
/* @teleloc 0x01740131 [60.000000 -50.000000 0.005000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70174003, 29034, 0x01740138, 60, -94.883, 0.25, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Eye of Darkness */
/* @teleloc 0x01740138 [60.000000 -94.883003 0.250000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70174004, 29035, 0x01740141, 60, -139.8, 0.005, 1, 0, 0, 0,  True, '2005-02-09 10:00:00'); /* Sealed Door */
/* @teleloc 0x01740141 [60.000000 -139.800003 0.005000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70174005,  7924, 0x01740145, 60, -150, 0.005, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Linkable Monster Generator ( 5 Min.) */
/* @teleloc 0x01740145 [60.000000 -150.000000 0.005000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x70174005, 0x70174000, '2005-02-09 10:00:00') /* Portal Beacon (29043) */
     , (0x70174005, 0x70174004, '2005-02-09 10:00:00') /* Sealed Door (29035) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70174006, 29034, 0x01740149, 60, -155.875, 0.25, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Eye of Darkness */
/* @teleloc 0x01740149 [60.000000 -155.875000 0.250000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70174007, 29055, 0x0174012D, 60, -10, 0.005, 0, 0, 0, -1, False, '2005-02-09 10:00:00'); /* Reeshan Kukuur Generator */
/* @teleloc 0x0174012D [60.000000 -10.000000 0.005000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70174008, 24129, 0x01740138, 59.754, -87.5596, 0.055, -0.998897, 0, 0, -0.046958, False, '2024-02-24 13:45:15'); /* Linkable Monster Generator ( 2 Min.) */
/* @teleloc 0x01740138 [59.754002 -87.559601 0.055000] -0.998897 0.000000 0.000000 -0.046958 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x70174008, 0x71134103, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134104, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134105, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134106, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134107, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134108, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134109, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134110, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134111, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134112, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134113, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134114, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134115, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134116, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134117, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134118, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134119, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134120, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134121, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134122, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134123, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134124, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134125, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134126, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134127, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134128, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134129, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134130, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134131, '2005-02-09 10:00:00') /* Ancient Golem (490253) */
     , (0x70174008, 0x71134132, '2005-02-09 10:00:00') /* Ancient Golem (490253) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70174009, 490252, 0x0174013B, 60.0824, -116.497, -0.157373, 0.99996, 0, 0, 0.008962, False, '2024-02-03 12:53:24'); /* Surface */
/* @teleloc 0x0174013B [60.082401 -116.497002 -0.157373] 0.999960 0.000000 0.000000 0.008962 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7017400A, 514108530, 0x0174012D, 59.9751, -10.1816, 0.055, -0.999975, 0, 0, 0.007099, False, '2025-09-28 21:03:37'); /* Dungeon Control Point */
/* @teleloc 0x0174012D [59.975101 -10.181600 0.055000] -0.999975 0.000000 0.000000 0.007099 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134103, 490253, 0x01740125, 49.5312, -88.8985, 0.055, 0.006506, 0, 0, -0.999979,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x01740125 [49.531200 -88.898499 0.055000] 0.006506 0.000000 0.000000 -0.999979 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134104, 490253, 0x01740123, 49.2746, -69.1679, 0.055, 0.006506, 0, 0, -0.999979,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x01740123 [49.274601 -69.167900 0.055000] 0.006506 0.000000 0.000000 -0.999979 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134105, 490253, 0x01740154, 70.0265, -68.8978, 0.055, 0.006506, 0, 0, -0.999979,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x01740154 [70.026497 -68.897797 0.055000] 0.006506 0.000000 0.000000 -0.999979 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134106, 490253, 0x01740156, 70.1775, -88.6298, 0.055, 0.006506, 0, 0, -0.999979,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x01740156 [70.177498 -88.629799 0.055000] 0.006506 0.000000 0.000000 -0.999979 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134107, 490253, 0x01740137, 59.8847, -78.8665, 0.055, -0.999948, 0, 0, 0.010197,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x01740137 [59.884701 -78.866501 0.055000] -0.999948 0.000000 0.000000 0.010197 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134108, 490253, 0x01740117, 39.9414, -110.243, 0.055, 0.99935, 0, 0, 0.03605,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x01740117 [39.941399 -110.242996 0.055000] 0.999350 0.000000 0.000000 0.036050 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134109, 490253, 0x0174017C, 19.7664, -109.911, 6.055, 0.72774, 0, 0, -0.685853,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x0174017C [19.766399 -109.911003 6.055000] 0.727740 0.000000 0.000000 -0.685853 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134110, 490253, 0x01740174, 80.072, -110.192, 0.055, 0.99991, 0, 0, -0.013447,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x01740174 [80.071999 -110.192001 0.055000] 0.999910 0.000000 0.000000 -0.013447 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134111, 490253, 0x017401B3, 100.242, -109.793, 6.055, 0.73584, 0, 0, 0.677156,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x017401B3 [100.241997 -109.792999 6.055000] 0.735840 0.000000 0.000000 0.677156 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134112, 490253, 0x0174017A, 19.9023, -90.0529, 6.055, 0.70338, 0, 0, -0.710814,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x0174017A [19.902300 -90.052902 6.055000] 0.703380 0.000000 0.000000 -0.710814 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134113, 490253, 0x017401B9, -0.237483, -90.0868, 12.055, -0.692556, 0, 0, 0.721364,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x017401B9 [-0.237483 -90.086800 12.055000] -0.692556 0.000000 0.000000 0.721364 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134114, 490253, 0x017401B1, 100.413, -90.0867, 6.055, -0.706997, 0, 0, -0.707217,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x017401B1 [100.413002 -90.086700 6.055000] -0.706997 0.000000 0.000000 -0.707217 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134115, 490253, 0x017401EF, 120.24, -90.0445, 12.055, 0.688902, 0, 0, 0.724854,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x017401EF [120.239998 -90.044502 12.055000] 0.688902 0.000000 0.000000 0.724854 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134116, 490253, 0x01740179, 19.7497, -69.9468, 6.055, 0.709161, 0, 0, -0.705046,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x01740179 [19.749701 -69.946800 6.055000] 0.709161 0.000000 0.000000 -0.705046 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134117, 490253, 0x017401B6, -0.234913, -70.029, 12.055, -0.711704, 0, 0, 0.70248,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x017401B6 [-0.234913 -70.028999 12.055000] -0.711704 0.000000 0.000000 0.702480 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134118, 490253, 0x017401B0, 100.336, -70.0058, 6.055, 0.702062, 0, 0, 0.712115,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x017401B0 [100.335999 -70.005798 6.055000] 0.702062 0.000000 0.000000 0.712115 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134119, 490253, 0x017401EC, 120.217, -70.0452, 12.055, -0.699482, 0, 0, -0.714651,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x017401EC [120.217003 -70.045197 12.055000] -0.699482 0.000000 0.000000 -0.714651 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134120, 490253, 0x01740101, 39.9953, -49.8236, 0.055, 0.009832, 0, 0, 0.999952,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x01740101 [39.995300 -49.823601 0.055000] 0.009832 0.000000 0.000000 0.999952 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134121, 490253, 0x01740177, 19.7628, -49.5685, 6.055, 0.709295, 0, 0, -0.704912,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x01740177 [19.762800 -49.568501 6.055000] 0.709295 0.000000 0.000000 -0.704912 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134122, 490253, 0x0174015E, 79.974, -49.7483, 0.055, 0.056953, 0, 0, 0.998377,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x0174015E [79.973999 -49.748299 0.055000] 0.056953 0.000000 0.000000 0.998377 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134123, 490253, 0x017401AE, 100.219, -49.9266, 6.055, -0.725366, 0, 0, -0.688363,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x017401AE [100.219002 -49.926601 6.055000] -0.725366 0.000000 0.000000 -0.688363 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134124, 490253, 0x0174011C, 48.4091, -39.9863, 0.055, 0.708188, 0, 0, -0.706024,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x0174011C [48.409100 -39.986301 0.055000] 0.708188 0.000000 0.000000 -0.706024 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134125, 490253, 0x01740130, 59.9528, -37.7964, 0.055, -0.004416, 0, 0, -0.99999,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x01740130 [59.952801 -37.796398 0.055000] -0.004416 0.000000 0.000000 -0.999990 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134126, 490253, 0x0174014D, 71.6599, -40.0083, 0.055, -0.708656, 0, 0, -0.705554,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x0174014D [71.659897 -40.008301 0.055000] -0.708656 0.000000 0.000000 -0.705554 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134127, 490253, 0x0174011B, 51.9863, -17.3269, 0.055, 0.935205, 0, 0, -0.354106,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x0174011B [51.986301 -17.326900 0.055000] 0.935205 0.000000 0.000000 -0.354106 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134128, 490253, 0x0174011A, 48.3134, -9.99402, 0.055, 0.708385, 0, 0, -0.705827,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x0174011A [48.313400 -9.994020 0.055000] 0.708385 0.000000 0.000000 -0.705827 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134129, 490253, 0x01740119, 52.5686, -2.09372, 0.055, 0.377604, 0, 0, -0.925967,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x01740119 [52.568600 -2.093720 0.055000] 0.377604 0.000000 0.000000 -0.925967 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134130, 490253, 0x0174014C, 67.4185, -17.9064, 0.055, 0.924587, 0, 0, 0.380971,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x0174014C [67.418503 -17.906401 0.055000] 0.924587 0.000000 0.000000 0.380971 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134131, 490253, 0x0174014B, 71.6583, -9.94907, 0.055, 0.716451, 0, 0, 0.697637,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x0174014B [71.658302 -9.949070 0.055000] 0.716451 0.000000 0.000000 0.697637 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71134132, 490253, 0x0174014A, 67.926, -2.60403, 0.055, 0.377566, 0, 0, 0.925982,  True, '2020-05-21 16:56:37'); /* Ancient Golem */
/* @teleloc 0x0174014A [67.926003 -2.604030 0.055000] 0.377566 0.000000 0.000000 0.925982 */
