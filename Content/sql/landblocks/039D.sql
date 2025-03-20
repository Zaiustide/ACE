DELETE FROM `landblock_instance` WHERE `landblock` = 0x039D;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D001, 24129, 0x039D0149, 38.8531, -77.816, -29.995, 0.549412, 0, 0, 0.835551, False, '2023-05-15 03:25:02'); /* Linkable Monster Generator ( 2 Min.) */
/* @teleloc 0x039D0149 [38.853100 -77.816002 -29.995001] 0.549412 0.000000 0.000000 0.835551 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7039D001, 0x7039D04D, '2023-05-15 03:25:02')
     , (0x7039D001, 0x7039D04E, '2023-05-15 03:25:02')
     , (0x7039D001, 0x7039D04F, '2023-05-15 03:25:02');

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D003, 28803, 0x039D0127, 22.1202, -79.9599, -30.063, -0.721127, 0, 0, -0.692803, False, '2023-05-15 03:25:02'); /* Surface */
/* @teleloc 0x039D0127 [22.120199 -79.959900 -30.063000] -0.721127 0.000000 0.000000 -0.692803 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D050, 4200155, 0x039D0291, 85.9735, -26.538, 36, -0.347031, 0, 0, -0.937854, False, '2024-09-11 15:51:41'); /* Death Zone */
/* @teleloc 0x039D0291 [85.973503 -26.538000 36.000000] -0.347031 0.000000 0.000000 -0.937854 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D051, 4200155, 0x039D0291, 94.1021, -25.6107, 36, 0.421617, 0, 0, -0.906774, False, '2024-09-11 15:51:45'); /* Death Zone */
/* @teleloc 0x039D0291 [94.102097 -25.610701 36.000000] 0.421617 0.000000 0.000000 -0.906774 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D052, 4200155, 0x039D0291, 94.5149, -33.8968, 36, -0.045094, 0, 0, -0.998983, False, '2024-09-11 15:51:48'); /* Death Zone */
/* @teleloc 0x039D0291 [94.514900 -33.896801 36.000000] -0.045094 0.000000 0.000000 -0.998983 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D053, 4200155, 0x039D0291, 85.5755, -33.6339, 36, -0.671901, 0, 0, 0.740641, False, '2024-09-11 15:55:32'); /* Death Zone */
/* @teleloc 0x039D0291 [85.575500 -33.633900 36.000000] -0.671901 0.000000 0.000000 0.740641 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D054, 4200156, 0x039D0291, 89.7963, -30.8061, 36, -0.998066, 0, 0, -0.06216, False, '2024-09-11 15:55:42'); /* Death Zone Melee */
/* @teleloc 0x039D0291 [89.796303 -30.806101 36.000000] -0.998066 0.000000 0.000000 -0.062160 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D055, 4200156, 0x039D0291, 90.198, -34.7106, 36, 0.165637, 0, 0, -0.986187, False, '2024-09-11 15:55:47'); /* Death Zone Melee */
/* @teleloc 0x039D0291 [90.197998 -34.710602 36.000000] 0.165637 0.000000 0.000000 -0.986187 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D056, 4200156, 0x039D0291, 94.51, -30.1656, 36, 0.686228, 0, 0, -0.727386, False, '2024-09-11 15:55:50'); /* Death Zone Melee */
/* @teleloc 0x039D0291 [94.510002 -30.165600 36.000000] 0.686228 0.000000 0.000000 -0.727386 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D057, 4200156, 0x039D0291, 90.3443, -25.4808, 36, 0.056392, 0, 0, -0.998409, False, '2024-09-11 15:56:02'); /* Death Zone Melee */
/* @teleloc 0x039D0291 [90.344299 -25.480801 36.000000] 0.056392 0.000000 0.000000 -0.998409 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D058, 4200156, 0x039D0297, 107.061, -46.8072, 36, -0.938954, 0, 0, -0.344044, False, '2024-09-11 15:57:06'); /* Death Zone Melee */
/* @teleloc 0x039D0297 [107.060997 -46.807201 36.000000] -0.938954 0.000000 0.000000 -0.344044 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D059, 4200156, 0x039D0297, 113.956, -46.5675, 36, -0.924508, 0, 0, 0.381163, False, '2024-09-11 15:57:09'); /* Death Zone Melee */
/* @teleloc 0x039D0297 [113.956001 -46.567501 36.000000] -0.924508 0.000000 0.000000 0.381163 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D05A, 4200156, 0x039D0297, 113.15, -53.4103, 36, 0.004112, 0, 0, 0.999992, False, '2024-09-11 15:57:13'); /* Death Zone Melee */
/* @teleloc 0x039D0297 [113.150002 -53.410301 36.000000] 0.004112 0.000000 0.000000 0.999992 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D05B, 4200156, 0x039D0297, 106.992, -53.4879, 36, 0.689341, 0, 0, 0.724437, False, '2024-09-11 15:57:15'); /* Death Zone Melee */
/* @teleloc 0x039D0297 [106.991997 -53.487900 36.000000] 0.689341 0.000000 0.000000 0.724437 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D05C, 4200155, 0x039D0297, 108.686, -50.844, 36, 0.905913, 0, 0, -0.423463, False, '2024-09-11 15:57:19'); /* Death Zone */
/* @teleloc 0x039D0297 [108.685997 -50.844002 36.000000] 0.905913 0.000000 0.000000 -0.423463 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D05D, 4200155, 0x039D0287, 89.6196, -42.0366, 24, 0.998788, 0, 0, 0.049218, False, '2024-09-11 15:57:42'); /* Death Zone */
/* @teleloc 0x039D0287 [89.619598 -42.036598 24.000000] 0.998788 0.000000 0.000000 0.049218 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D05E, 4200155, 0x039D0287, 89.4068, -39.8828, 24, 0.998788, 0, 0, 0.049218, False, '2024-09-11 15:57:43'); /* Death Zone */
/* @teleloc 0x039D0287 [89.406799 -39.882801 24.000000] 0.998788 0.000000 0.000000 0.049218 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D05F, 4200156, 0x039D0287, 86.7713, -35.9873, 24, 0.765333, 0, 0, 0.643634, False, '2024-09-11 15:57:50'); /* Death Zone Melee */
/* @teleloc 0x039D0287 [86.771301 -35.987301 24.000000] 0.765333 0.000000 0.000000 0.643634 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D060, 4200156, 0x039D0287, 86.3247, -42.8053, 24, -0.103257, 0, 0, 0.994655, False, '2024-09-11 15:57:53'); /* Death Zone Melee */
/* @teleloc 0x039D0287 [86.324699 -42.805302 24.000000] -0.103257 0.000000 0.000000 0.994655 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D061, 4200156, 0x039D0287, 92.2534, -42.9742, 24, -0.723835, 0, 0, 0.689974, False, '2024-09-11 15:57:55'); /* Death Zone Melee */
/* @teleloc 0x039D0287 [92.253403 -42.974201 24.000000] -0.723835 0.000000 0.000000 0.689974 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D062, 4200156, 0x039D0287, 93.2733, -38.5638, 24, -0.998877, 0, 0, -0.047384, False, '2024-09-11 15:57:58'); /* Death Zone Melee */
/* @teleloc 0x039D0287 [93.273300 -38.563801 24.000000] -0.998877 0.000000 0.000000 -0.047384 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D063, 4200156, 0x039D028B, 108.402, -38.4212, 24, 0.904655, 0, 0, 0.426145, False, '2024-09-11 16:01:47'); /* Death Zone Melee */
/* @teleloc 0x039D028B [108.402000 -38.421200 24.000000] 0.904655 0.000000 0.000000 0.426145 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D064, 4200156, 0x039D028B, 106.804, -42.2276, 24, -0.089968, 0, 0, 0.995945, False, '2024-09-11 16:01:49'); /* Death Zone Melee */
/* @teleloc 0x039D028B [106.804001 -42.227600 24.000000] -0.089968 0.000000 0.000000 0.995945 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D065, 4200156, 0x039D028B, 113.412, -43.0918, 24, -0.923801, 0, 0, 0.382872, False, '2024-09-11 16:01:51'); /* Death Zone Melee */
/* @teleloc 0x039D028B [113.412003 -43.091801 24.000000] -0.923801 0.000000 0.000000 0.382872 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D066, 4200156, 0x039D028B, 113.763, -37.5055, 24, -0.99919, 0, 0, -0.040245, False, '2024-09-11 16:01:53'); /* Death Zone Melee */
/* @teleloc 0x039D028B [113.763000 -37.505501 24.000000] -0.999190 0.000000 0.000000 -0.040245 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D067, 4200155, 0x039D028B, 111.298, -40.5266, 24, -0.924812, 0, 0, -0.380425, False, '2024-09-11 16:02:01'); /* Death Zone */
/* @teleloc 0x039D028B [111.297997 -40.526600 24.000000] -0.924812 0.000000 0.000000 -0.380425 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D068, 4200155, 0x039D025B, 100.289, -14.7494, 6, -0.998482, 0, 0, -0.055089, False, '2024-09-11 16:02:48'); /* Death Zone */
/* @teleloc 0x039D025B [100.289001 -14.749400 6.000000] -0.998482 0.000000 0.000000 -0.055089 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D069, 4200156, 0x039D025C, 99.9418, -11.6138, 6, -0.998482, 0, 0, -0.055089, False, '2024-09-11 16:02:52'); /* Death Zone Melee */
/* @teleloc 0x039D025C [99.941803 -11.613800 6.000000] -0.998482 0.000000 0.000000 -0.055089 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D06A, 4200155, 0x039D0264, 105.819, -10.6229, 5.53376, -0.715844, 0, 0, 0.698261, False, '2024-09-11 16:03:00'); /* Death Zone */
/* @teleloc 0x039D0264 [105.819000 -10.622900 5.533760] -0.715844 0.000000 0.000000 0.698261 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D06B, 4200156, 0x039D0264, 109.159, -10.5398, 3.52944, -0.715844, 0, 0, 0.698261, False, '2024-09-11 16:03:02'); /* Death Zone Melee */
/* @teleloc 0x039D0264 [109.158997 -10.539800 3.529440] -0.715844 0.000000 0.000000 0.698261 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D06C, 4200155, 0x039D0246, 116.025, -10.369, 0, -0.715844, 0, 0, 0.698261, False, '2024-09-11 16:03:05'); /* Death Zone */
/* @teleloc 0x039D0246 [116.025002 -10.369000 0.000000] -0.715844 0.000000 0.000000 0.698261 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D06D, 4200156, 0x039D0247, 118.257, -10.3135, 0, -0.715844, 0, 0, 0.698261, False, '2024-09-11 16:03:06'); /* Death Zone Melee */
/* @teleloc 0x039D0247 [118.257004 -10.313500 0.000000] -0.715844 0.000000 0.000000 0.698261 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D06E, 4200155, 0x039D025E, 101.503, -20.1801, 6, -0.159516, 0, 0, 0.987195, False, '2024-09-11 16:03:13'); /* Death Zone */
/* @teleloc 0x039D025E [101.502998 -20.180099 6.000000] -0.159516 0.000000 0.000000 0.987195 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D06F, 4200156, 0x039D025E, 96.9301, -18.9657, 6, 0.753624, 0, 0, 0.657306, False, '2024-09-11 16:03:16'); /* Death Zone Melee */
/* @teleloc 0x039D025E [96.930099 -18.965700 6.000000] 0.753624 0.000000 0.000000 0.657306 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D070, 4200155, 0x039D0257, 92.2752, -19.2448, 6, 0.525349, 0, 0, 0.850887, False, '2024-09-11 16:03:18'); /* Death Zone */
/* @teleloc 0x039D0257 [92.275200 -19.244801 6.000000] 0.525349 0.000000 0.000000 0.850887 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D071, 4200156, 0x039D0257, 86.5178, -19.826, 6, 0.788907, 0, 0, 0.614513, False, '2024-09-11 16:03:19'); /* Death Zone Melee */
/* @teleloc 0x039D0257 [86.517799 -19.826000 6.000000] 0.788907 0.000000 0.000000 0.614513 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D072, 4200155, 0x039D0252, 81.8829, -19.3331, 6, 0.582384, 0, 0, 0.812914, False, '2024-09-11 16:03:21'); /* Death Zone */
/* @teleloc 0x039D0252 [81.882896 -19.333099 6.000000] 0.582384 0.000000 0.000000 0.812914 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D073, 4200156, 0x039D0252, 80.2333, -23.9898, 6, 0.089507, 0, 0, 0.995986, False, '2024-09-11 16:03:23'); /* Death Zone Melee */
/* @teleloc 0x039D0252 [80.233299 -23.989799 6.000000] 0.089507 0.000000 0.000000 0.995986 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D074, 4200155, 0x039D0253, 80.3285, -29.1241, 6, -0.031158, 0, 0, 0.999515, False, '2024-09-11 16:03:24'); /* Death Zone */
/* @teleloc 0x039D0253 [80.328499 -29.124100 6.000000] -0.031158 0.000000 0.000000 0.999515 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D075, 4200156, 0x039D0254, 80.5055, -35.065, 6, 0.059817, 0, 0, 0.998209, False, '2024-09-11 16:03:26'); /* Death Zone Melee */
/* @teleloc 0x039D0254 [80.505501 -35.064999 6.000000] 0.059817 0.000000 0.000000 0.998209 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D076, 4200155, 0x039D0254, 77.5439, -38.7122, 6, 0.516234, 0, 0, 0.856448, False, '2024-09-11 16:03:28'); /* Death Zone */
/* @teleloc 0x039D0254 [77.543900 -38.712200 6.000000] 0.516234 0.000000 0.000000 0.856448 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D077, 4200156, 0x039D024F, 73.5979, -40.464, 6, 0.642955, 0, 0, 0.765904, False, '2024-09-11 16:03:33'); /* Death Zone Melee */
/* @teleloc 0x039D024F [73.597900 -40.464001 6.000000] 0.642955 0.000000 0.000000 0.765904 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D078, 4200155, 0x039D0250, 72.026, -39.0805, 6, -0.899485, 0, 0, -0.436952, False, '2024-09-11 16:03:37'); /* Death Zone */
/* @teleloc 0x039D0250 [72.026001 -39.080502 6.000000] -0.899485 0.000000 0.000000 -0.436952 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D079, 4200156, 0x039D024E, 69.3751, -34.8989, 5.96427, -0.999992, 0, 0, 0.004129, False, '2024-09-11 16:03:39'); /* Death Zone Melee */
/* @teleloc 0x039D024E [69.375099 -34.898899 5.964270] -0.999992 0.000000 0.000000 0.004129 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D07A, 4200155, 0x039D024E, 69.7792, -29.2321, 2.5642, -0.999657, 0, 0, -0.026207, False, '2024-09-11 16:03:41'); /* Death Zone */
/* @teleloc 0x039D024E [69.779198 -29.232100 2.564200] -0.999657 0.000000 0.000000 -0.026207 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D07B, 4200156, 0x039D023E, 69.4469, -22.8976, 0, -0.999657, 0, 0, -0.026207, False, '2024-09-11 16:03:42'); /* Death Zone Melee */
/* @teleloc 0x039D023E [69.446899 -22.897600 0.000000] -0.999657 0.000000 0.000000 -0.026207 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D07C, 4200155, 0x039D0254, 79.2757, -44.4541, 6, -0.03914, 0, 0, 0.999234, False, '2024-09-11 16:03:50'); /* Death Zone */
/* @teleloc 0x039D0254 [79.275703 -44.454102 6.000000] -0.039140 0.000000 0.000000 0.999234 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D07D, 4200156, 0x039D0255, 79.1283, -50.1449, 6, 0.246479, 0, 0, 0.969148, False, '2024-09-11 16:03:54'); /* Death Zone Melee */
/* @teleloc 0x039D0255 [79.128304 -50.144901 6.000000] 0.246479 0.000000 0.000000 0.969148 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D07E, 4200155, 0x039D0256, 78.2846, -55.0737, 6, 0.0622, 0, 0, 0.998064, False, '2024-09-11 16:03:56'); /* Death Zone */
/* @teleloc 0x039D0256 [78.284599 -55.073700 6.000000] 0.062200 0.000000 0.000000 0.998064 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D07F, 4200156, 0x039D0256, 77.1628, -60.4019, 6, -0.647531, 0, 0, 0.762039, False, '2024-09-11 16:04:00'); /* Death Zone Melee */
/* @teleloc 0x039D0256 [77.162804 -60.401901 6.000000] -0.647531 0.000000 0.000000 0.762039 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D080, 4200155, 0x039D0256, 81.1762, -62.492, 6, -0.806491, 0, 0, 0.591246, False, '2024-09-11 16:04:02'); /* Death Zone */
/* @teleloc 0x039D0256 [81.176201 -62.492001 6.000000] -0.806491 0.000000 0.000000 0.591246 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D081, 4200156, 0x039D0259, 85.2616, -59.106, 6, -0.920398, 0, 0, 0.390984, False, '2024-09-11 16:04:04'); /* Death Zone Melee */
/* @teleloc 0x039D0259 [85.261597 -59.105999 6.000000] -0.920398 0.000000 0.000000 0.390984 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D082, 4200156, 0x039D0258, 87.2581, -52.452, 6, -0.96096, 0, 0, 0.276688, False, '2024-09-11 16:04:06'); /* Death Zone Melee */
/* @teleloc 0x039D0258 [87.258102 -52.452000 6.000000] -0.960960 0.000000 0.000000 0.276688 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D083, 4200155, 0x039D0258, 90.7179, -50.0333, 6, -0.886835, 0, 0, 0.462086, False, '2024-09-11 16:04:09'); /* Death Zone */
/* @teleloc 0x039D0258 [90.717903 -50.033298 6.000000] -0.886835 0.000000 0.000000 0.462086 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D084, 4200156, 0x039D0259, 91.3731, -57.0871, 6, -0.253118, 0, 0, 0.967436, False, '2024-09-11 16:04:13'); /* Death Zone Melee */
/* @teleloc 0x039D0259 [91.373100 -57.087101 6.000000] -0.253118 0.000000 0.000000 0.967436 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D085, 4200155, 0x039D0260, 95.5037, -61.0255, 6, -0.653529, 0, 0, 0.756901, False, '2024-09-11 16:04:15'); /* Death Zone */
/* @teleloc 0x039D0260 [95.503700 -61.025501 6.000000] -0.653529 0.000000 0.000000 0.756901 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D086, 4200156, 0x039D0260, 100.899, -62.0829, 6, -0.009286, 0, 0, 0.999957, False, '2024-09-11 16:04:17'); /* Death Zone Melee */
/* @teleloc 0x039D0260 [100.899002 -62.082901 6.000000] -0.009286 0.000000 0.000000 0.999957 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D087, 4200155, 0x039D0261, 100.922, -66.0333, 6, 0.103031, 0, 0, 0.994678, False, '2024-09-11 16:04:19'); /* Death Zone */
/* @teleloc 0x039D0261 [100.921997 -66.033302 6.000000] 0.103031 0.000000 0.000000 0.994678 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D088, 4200156, 0x039D0262, 97.5601, -69.7965, 6, 0.655632, 0, 0, 0.755081, False, '2024-09-11 16:04:21'); /* Death Zone Melee */
/* @teleloc 0x039D0262 [97.560097 -69.796501 6.000000] 0.655632 0.000000 0.000000 0.755081 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D089, 4200155, 0x039D025A, 93.1944, -69.5748, 4.94155, 0.698197, 0, 0, 0.715906, False, '2024-09-11 16:04:24'); /* Death Zone */
/* @teleloc 0x039D025A [93.194397 -69.574799 4.941550] 0.698197 0.000000 0.000000 0.715906 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D08A, 4200156, 0x039D025A, 89.1075, -69.6772, 2.48944, 0.698197, 0, 0, 0.715906, False, '2024-09-11 16:04:25'); /* Death Zone Melee */
/* @teleloc 0x039D025A [89.107498 -69.677200 2.489440] 0.698197 0.000000 0.000000 0.715906 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D08B, 4200155, 0x039D0267, 106.3, -61.5116, 6, 0.742427, 0, 0, -0.669927, False, '2024-09-11 16:04:31'); /* Death Zone */
/* @teleloc 0x039D0267 [106.300003 -61.511600 6.000000] 0.742427 0.000000 0.000000 -0.669927 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D08C, 4200156, 0x039D0267, 112.1, -60.4338, 6, 0.846089, 0, 0, -0.533042, False, '2024-09-11 16:04:33'); /* Death Zone Melee */
/* @teleloc 0x039D0267 [112.099998 -60.433800 6.000000] 0.846089 0.000000 0.000000 -0.533042 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D08D, 4200155, 0x039D026C, 117.602, -61.2577, 6, 0.846089, 0, 0, -0.533042, False, '2024-09-11 16:04:35'); /* Death Zone */
/* @teleloc 0x039D026C [117.601997 -61.257702 6.000000] 0.846089 0.000000 0.000000 -0.533042 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D08E, 4200156, 0x039D026C, 122.635, -60.6733, 6, 0.949792, 0, 0, -0.312881, False, '2024-09-11 16:04:37'); /* Death Zone Melee */
/* @teleloc 0x039D026C [122.635002 -60.673302 6.000000] 0.949792 0.000000 0.000000 -0.312881 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D08F, 4200155, 0x039D026C, 122.736, -55.7259, 6, 0.936238, 0, 0, 0.351368, False, '2024-09-11 16:04:40'); /* Death Zone */
/* @teleloc 0x039D026C [122.736000 -55.725899 6.000000] 0.936238 0.000000 0.000000 0.351368 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D090, 4200156, 0x039D026B, 120.077, -52.7767, 6, 0.814451, 0, 0, 0.580232, False, '2024-09-11 16:04:41'); /* Death Zone Melee */
/* @teleloc 0x039D026B [120.077003 -52.776699 6.000000] 0.814451 0.000000 0.000000 0.580232 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D091, 4200155, 0x039D026B, 118.439, -47.5494, 6, 0.99236, 0, 0, -0.123379, False, '2024-09-11 16:04:43'); /* Death Zone */
/* @teleloc 0x039D026B [118.439003 -47.549400 6.000000] 0.992360 0.000000 0.000000 -0.123379 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D092, 4200156, 0x039D026A, 123.134, -42.8868, 6, 0.909369, 0, 0, -0.415991, False, '2024-09-11 16:04:45'); /* Death Zone Melee */
/* @teleloc 0x039D026A [123.134003 -42.886799 6.000000] 0.909369 0.000000 0.000000 -0.415991 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D093, 4200155, 0x039D026D, 125.328, -40.9907, 6, 0.909369, 0, 0, -0.415991, False, '2024-09-11 16:04:46'); /* Death Zone */
/* @teleloc 0x039D026D [125.328003 -40.990700 6.000000] 0.909369 0.000000 0.000000 -0.415991 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D094, 4200156, 0x039D026E, 129.529, -41.7767, 6, 0.574035, 0, 0, -0.818831, False, '2024-09-11 16:04:48'); /* Death Zone Melee */
/* @teleloc 0x039D026E [129.529007 -41.776699 6.000000] 0.574035 0.000000 0.000000 -0.818831 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D095, 4200155, 0x039D0270, 130.178, -45.4772, 5.73858, -0.013574, 0, 0, -0.999908, False, '2024-09-11 16:04:49'); /* Death Zone */
/* @teleloc 0x039D0270 [130.177994 -45.477200 5.738580] -0.013574 0.000000 0.000000 -0.999908 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D096, 4200156, 0x039D0270, 130.019, -51.2965, 2.247, -0.013574, 0, 0, -0.999908, False, '2024-09-11 16:04:51'); /* Death Zone Melee */
/* @teleloc 0x039D0270 [130.018997 -51.296501 2.247000] -0.013574 0.000000 0.000000 -0.999908 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D097, 4200155, 0x039D026A, 120.038, -36.6971, 6, -0.969251, 0, 0, -0.246075, False, '2024-09-11 16:04:56'); /* Death Zone */
/* @teleloc 0x039D026A [120.038002 -36.697102 6.000000] -0.969251 0.000000 0.000000 -0.246075 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D098, 4200156, 0x039D0269, 122.134, -29.9839, 6, -0.988565, 0, 0, 0.150794, False, '2024-09-11 16:04:57'); /* Death Zone Melee */
/* @teleloc 0x039D0269 [122.134003 -29.983900 6.000000] -0.988565 0.000000 0.000000 0.150794 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D099, 4200155, 0x039D0268, 121.803, -22.594, 6, -0.997478, 0, 0, 0.070973, False, '2024-09-11 16:05:00'); /* Death Zone */
/* @teleloc 0x039D0268 [121.803001 -22.594000 6.000000] -0.997478 0.000000 0.000000 0.070973 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D09A, 4200156, 0x039D0268, 118.959, -17.5705, 6, -0.924185, 0, 0, -0.381946, False, '2024-09-11 16:05:03'); /* Death Zone Melee */
/* @teleloc 0x039D0268 [118.959000 -17.570499 6.000000] -0.924185 0.000000 0.000000 -0.381946 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D09B, 4200155, 0x039D0265, 114.054, -21.8276, 6, -0.199723, 0, 0, -0.979853, False, '2024-09-11 16:05:05'); /* Death Zone */
/* @teleloc 0x039D0265 [114.054001 -21.827600 6.000000] -0.199723 0.000000 0.000000 -0.979853 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D09C, 4200156, 0x039D0266, 112.911, -27.9211, 6, -0.075439, 0, 0, -0.99715, False, '2024-09-11 16:05:06'); /* Death Zone Melee */
/* @teleloc 0x039D0266 [112.911003 -27.921101 6.000000] -0.075439 0.000000 0.000000 -0.997150 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D09D, 4200155, 0x039D0266, 109.291, -31.1072, 6, -0.891576, 0, 0, -0.452871, False, '2024-09-11 16:05:10'); /* Death Zone */
/* @teleloc 0x039D0266 [109.291000 -31.107201 6.000000] -0.891576 0.000000 0.000000 -0.452871 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D09E, 4200156, 0x039D0265, 107.059, -22.2377, 6, -0.947975, 0, 0, 0.318346, False, '2024-09-11 16:05:13'); /* Death Zone Melee */
/* @teleloc 0x039D0265 [107.058998 -22.237700 6.000000] -0.947975 0.000000 0.000000 0.318346 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D09F, 4200155, 0x039D0265, 105.324, -17.2546, 6, -0.787832, 0, 0, -0.615891, False, '2024-09-11 16:05:16'); /* Death Zone */
/* @teleloc 0x039D0265 [105.323997 -17.254601 6.000000] -0.787832 0.000000 0.000000 -0.615891 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0A0, 4200155, 0x039D024C, 129.956, -60.6805, 0, 0.893543, 0, 0, 0.448978, False, '2024-09-11 16:06:42'); /* Death Zone */
/* @teleloc 0x039D024C [129.955994 -60.680500 0.000000] 0.893543 0.000000 0.000000 0.448978 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0A1, 4200156, 0x039D024A, 123.737, -60.611, -0.733163, 0.727536, 0, 0, 0.686069, False, '2024-09-11 16:06:44'); /* Death Zone Melee */
/* @teleloc 0x039D024A [123.737000 -60.611000 -0.733163] 0.727536 0.000000 0.000000 0.686069 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0A2, 4200156, 0x039D02A2, 104.895, -34.8094, 48, 0.852896, 0, 0, 0.522081, False, '2024-09-11 16:12:52'); /* Death Zone Melee */
/* @teleloc 0x039D02A2 [104.894997 -34.809399 48.000000] 0.852896 0.000000 0.000000 0.522081 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0A3, 4200155, 0x039D02A2, 101.009, -31.2099, 48, 0.912596, 0, 0, 0.408862, False, '2024-09-11 16:13:03'); /* Death Zone */
/* @teleloc 0x039D02A2 [101.009003 -31.209900 48.000000] 0.912596 0.000000 0.000000 0.408862 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0A4, 4200156, 0x039D02A0, 94.7986, -35.0205, 48.055, -0.038335, 0, 0, 0.999265, False, '2024-09-11 16:13:10'); /* Death Zone Melee */
/* @teleloc 0x039D02A0 [94.798599 -35.020500 48.055000] -0.038335 0.000000 0.000000 0.999265 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0A5, 4200156, 0x039D02A2, 95.4629, -25.486, 48, -0.988308, 0, 0, 0.152472, False, '2024-09-11 16:13:14'); /* Death Zone Melee */
/* @teleloc 0x039D02A2 [95.462898 -25.486000 48.000000] -0.988308 0.000000 0.000000 0.152472 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0A6, 4200156, 0x039D02A2, 102.495, -25.9885, 48, -0.65872, 0, 0, 0.752388, False, '2024-09-11 16:13:16'); /* Death Zone Melee */
/* @teleloc 0x039D02A2 [102.495003 -25.988501 48.000000] -0.658720 0.000000 0.000000 0.752388 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0A7, 4200156, 0x039D02A2, 99.6605, -29.2647, 48, 0.177679, 0, 0, 0.984089, False, '2024-09-11 16:13:20'); /* Death Zone Melee */
/* @teleloc 0x039D02A2 [99.660500 -29.264700 48.000000] 0.177679 0.000000 0.000000 0.984089 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0A8, 4200155, 0x039D02A2, 96.9504, -31.2968, 48, -0.602295, 0, 0, 0.798274, False, '2024-09-11 16:13:26'); /* Death Zone */
/* @teleloc 0x039D02A2 [96.950401 -31.296801 48.000000] -0.602295 0.000000 0.000000 0.798274 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0A9, 4200155, 0x039D02A2, 97.8829, -27.4291, 48, 0.235576, 0, 0, 0.971856, False, '2024-09-11 16:26:46'); /* Death Zone */
/* @teleloc 0x039D02A2 [97.882896 -27.429100 48.000000] 0.235576 0.000000 0.000000 0.971856 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0AA, 4200155, 0x039D02A2, 102.848, -28.3384, 48, 0.005098, 0, 0, 0.999987, False, '2024-09-11 16:26:49'); /* Death Zone */
/* @teleloc 0x039D02A2 [102.848000 -28.338400 48.000000] 0.005098 0.000000 0.000000 0.999987 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0AB, 4200155, 0x039D0297, 112.186, -49.6757, 36, 0.827577, 0, 0, 0.561352, False, '2024-09-11 16:26:56'); /* Death Zone */
/* @teleloc 0x039D0297 [112.185997 -49.675701 36.000000] 0.827577 0.000000 0.000000 0.561352 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0AC, 4200155, 0x039D0297, 110.546, -47.0682, 36, 0.50263, 0, 0, 0.864502, False, '2024-09-11 16:27:01'); /* Death Zone */
/* @teleloc 0x039D0297 [110.545998 -47.068199 36.000000] 0.502630 0.000000 0.000000 0.864502 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0AD, 4200155, 0x039D0291, 86.4382, -28.7473, 36, 0.206026, 0, 0, -0.978547, False, '2024-09-11 16:27:11'); /* Death Zone */
/* @teleloc 0x039D0291 [86.438202 -28.747299 36.000000] 0.206026 0.000000 0.000000 -0.978547 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0AE, 4200155, 0x039D0291, 87.8636, -32.7268, 36, 0.441483, 0, 0, -0.89727, False, '2024-09-11 16:27:12'); /* Death Zone */
/* @teleloc 0x039D0291 [87.863602 -32.726799 36.000000] 0.441483 0.000000 0.000000 -0.897270 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0AF, 4200155, 0x039D0291, 93.8734, -31.8199, 36, 0.998527, 0, 0, 0.054256, False, '2024-09-11 16:27:14'); /* Death Zone */
/* @teleloc 0x039D0291 [93.873398 -31.819901 36.000000] 0.998527 0.000000 0.000000 0.054256 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0B0, 4200155, 0x039D028B, 111.649, -43.2676, 24, -0.946645, 0, 0, -0.322278, False, '2024-09-11 16:27:25'); /* Death Zone */
/* @teleloc 0x039D028B [111.649002 -43.267601 24.000000] -0.946645 0.000000 0.000000 -0.322278 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0B1, 4200155, 0x039D028B, 108.315, -38.9857, 24, -0.990533, 0, 0, -0.137274, False, '2024-09-11 16:27:26'); /* Death Zone */
/* @teleloc 0x039D028B [108.315002 -38.985699 24.000000] -0.990533 0.000000 0.000000 -0.137274 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0B2, 4200155, 0x039D028B, 110.626, -37.334, 24, -0.905902, 0, 0, 0.423487, False, '2024-09-11 16:27:28'); /* Death Zone */
/* @teleloc 0x039D028B [110.625999 -37.334000 24.000000] -0.905902 0.000000 0.000000 0.423487 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0B3, 4200155, 0x039D028B, 106.315, -43.4152, 24, 0.932138, 0, 0, 0.362102, False, '2024-09-11 16:27:40'); /* Death Zone */
/* @teleloc 0x039D028B [106.315002 -43.415199 24.000000] 0.932138 0.000000 0.000000 0.362102 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0B4, 4200155, 0x039D0287, 86.704, -38.8252, 24, -0.505806, 0, 0, 0.862647, False, '2024-09-11 16:27:46'); /* Death Zone */
/* @teleloc 0x039D0287 [86.704002 -38.825199 24.000000] -0.505806 0.000000 0.000000 0.862647 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0B5, 4200155, 0x039D0287, 93.5668, -35.4812, 24, -0.645844, 0, 0, 0.763469, False, '2024-09-11 16:27:49'); /* Death Zone */
/* @teleloc 0x039D0287 [93.566803 -35.481201 24.000000] -0.645844 0.000000 0.000000 0.763469 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0B6, 4200155, 0x039D0287, 93.8409, -44.4457, 24, -0.109881, 0, 0, 0.993945, False, '2024-09-11 16:27:52'); /* Death Zone */
/* @teleloc 0x039D0287 [93.840897 -44.445702 24.000000] -0.109881 0.000000 0.000000 0.993945 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0B7, 4200155, 0x039D0259, 87.8098, -55.0694, 6, -0.915352, 0, 0, 0.402654, False, '2024-09-11 16:28:00'); /* Death Zone */
/* @teleloc 0x039D0259 [87.809799 -55.069401 6.000000] -0.915352 0.000000 0.000000 0.402654 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0B8, 4200155, 0x039D0256, 84.0564, -56.6255, 6, -0.502678, 0, 0, -0.864474, False, '2024-09-11 16:28:02'); /* Death Zone */
/* @teleloc 0x039D0256 [84.056396 -56.625500 6.000000] -0.502678 0.000000 0.000000 -0.864474 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0B9, 4200155, 0x039D0259, 87.7628, -61.6948, 6, 0.606807, 0, 0, -0.794849, False, '2024-09-11 16:28:04'); /* Death Zone */
/* @teleloc 0x039D0259 [87.762802 -61.694801 6.000000] 0.606807 0.000000 0.000000 -0.794849 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0BA, 4200155, 0x039D0260, 102.442, -59.1839, 6, 0.983185, 0, 0, -0.182613, False, '2024-09-11 16:28:06'); /* Death Zone */
/* @teleloc 0x039D0260 [102.442001 -59.183899 6.000000] 0.983185 0.000000 0.000000 -0.182613 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0BB, 4200155, 0x039D0267, 107.946, -55.9009, 6, 0.65768, 0, 0, -0.753298, False, '2024-09-11 16:28:08'); /* Death Zone */
/* @teleloc 0x039D0267 [107.945999 -55.900902 6.000000] 0.657680 0.000000 0.000000 -0.753298 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0BC, 4200155, 0x039D0267, 113.91, -57.8544, 6, 0.300258, 0, 0, -0.953858, False, '2024-09-11 16:28:09'); /* Death Zone */
/* @teleloc 0x039D0267 [113.910004 -57.854401 6.000000] 0.300258 0.000000 0.000000 -0.953858 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0BD, 4200155, 0x039D026B, 117.627, -54.558, 6, 0.941586, 0, 0, -0.336774, False, '2024-09-11 16:28:12'); /* Death Zone */
/* @teleloc 0x039D026B [117.626999 -54.557999 6.000000] 0.941586 0.000000 0.000000 -0.336774 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0BE, 4200155, 0x039D026B, 117.107, -49.0745, 6, 0.999996, 0, 0, -0.0028, False, '2024-09-11 16:28:13'); /* Death Zone */
/* @teleloc 0x039D026B [117.107002 -49.074501 6.000000] 0.999996 0.000000 0.000000 -0.002800 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0BF, 4200155, 0x039D026A, 117.804, -41.7749, 6, 0.958233, 0, 0, -0.285989, False, '2024-09-11 16:28:15'); /* Death Zone */
/* @teleloc 0x039D026A [117.804001 -41.774899 6.000000] 0.958233 0.000000 0.000000 -0.285989 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0C0, 4200155, 0x039D0269, 123.942, -34.6766, 6, 0.973134, 0, 0, -0.230241, False, '2024-09-11 16:28:16'); /* Death Zone */
/* @teleloc 0x039D0269 [123.942001 -34.676601 6.000000] 0.973134 0.000000 0.000000 -0.230241 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0C1, 4200155, 0x039D0269, 118.384, -31.2686, 6, 0.795362, 0, 0, 0.606135, False, '2024-09-11 16:28:17'); /* Death Zone */
/* @teleloc 0x039D0269 [118.384003 -31.268600 6.000000] 0.795362 0.000000 0.000000 0.606135 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0C2, 4200155, 0x039D0266, 113.973, -32.7965, 6, 0.454425, 0, 0, 0.890785, False, '2024-09-11 16:28:19'); /* Death Zone */
/* @teleloc 0x039D0266 [113.973000 -32.796501 6.000000] 0.454425 0.000000 0.000000 0.890785 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0C3, 4200155, 0x039D0265, 110.679, -19.0019, 6, 1, 0, 0, -0.000931, False, '2024-09-11 16:28:22'); /* Death Zone */
/* @teleloc 0x039D0265 [110.679001 -19.001900 6.000000] 1.000000 0.000000 0.000000 -0.000931 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0C4, 4200155, 0x039D0268, 115.834, -15.822, 6, 0.979722, 0, 0, -0.20036, False, '2024-09-11 16:28:24'); /* Death Zone */
/* @teleloc 0x039D0268 [115.834000 -15.822000 6.000000] 0.979722 0.000000 0.000000 -0.200360 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0C5, 4200155, 0x039D025E, 98.4645, -24.3293, 6, 0.077745, 0, 0, 0.996973, False, '2024-09-11 16:28:28'); /* Death Zone */
/* @teleloc 0x039D025E [98.464500 -24.329300 6.000000] 0.077745 0.000000 0.000000 0.996973 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0C6, 4200155, 0x039D0257, 92.7268, -24.5089, 6, 0.496976, 0, 0, 0.867765, False, '2024-09-11 16:28:29'); /* Death Zone */
/* @teleloc 0x039D0257 [92.726799 -24.508900 6.000000] 0.496976 0.000000 0.000000 0.867765 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0C7, 4200155, 0x039D0257, 87.4229, -24.513, 6, 0.576352, 0, 0, 0.817202, False, '2024-09-11 16:28:31'); /* Death Zone */
/* @teleloc 0x039D0257 [87.422897 -24.513000 6.000000] 0.576352 0.000000 0.000000 0.817202 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0C8, 4200155, 0x039D0252, 76.3991, -16.8243, 6, 0.905974, 0, 0, 0.423333, False, '2024-09-11 16:28:33'); /* Death Zone */
/* @teleloc 0x039D0252 [76.399101 -16.824301 6.000000] 0.905974 0.000000 0.000000 0.423333 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0C9, 4200155, 0x039D0252, 79.2661, -21.2287, 6, -0.365629, 0, 0, 0.930761, False, '2024-09-11 16:28:35'); /* Death Zone */
/* @teleloc 0x039D0252 [79.266098 -21.228701 6.000000] -0.365629 0.000000 0.000000 0.930761 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0CA, 4200155, 0x039D0253, 75.627, -29.8725, 6, 0.904847, 0, 0, 0.425737, False, '2024-09-11 16:28:38'); /* Death Zone */
/* @teleloc 0x039D0253 [75.626999 -29.872499 6.000000] 0.904847 0.000000 0.000000 0.425737 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0CB, 4200155, 0x039D0254, 83.8141, -40.5388, 6, -0.292822, 0, 0, 0.956167, False, '2024-09-11 16:28:41'); /* Death Zone */
/* @teleloc 0x039D0254 [83.814102 -40.538799 6.000000] -0.292822 0.000000 0.000000 0.956167 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0CC, 4200155, 0x039D0255, 82.3235, -48.3986, 6, 0.049615, 0, 0, 0.998768, False, '2024-09-11 16:28:44'); /* Death Zone */
/* @teleloc 0x039D0255 [82.323502 -48.398602 6.000000] 0.049615 0.000000 0.000000 0.998768 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0CD, 4200155, 0x039D0258, 91.7151, -45.5284, 6, -0.999467, 0, 0, 0.032645, False, '2024-09-11 16:28:47'); /* Death Zone */
/* @teleloc 0x039D0258 [91.715103 -45.528400 6.000000] -0.999467 0.000000 0.000000 0.032645 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0CE, 4200155, 0x039D0243, 80.2371, -68.8583, 0, -0.998372, 0, 0, -0.057041, False, '2024-09-11 16:34:09'); /* Death Zone */
/* @teleloc 0x039D0243 [80.237099 -68.858299 0.000000] -0.998372 0.000000 0.000000 -0.057041 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0CF, 4200155, 0x039D0241, 80.2381, -63.3047, -0.992241, -0.999717, 0, 0, 0.023778, False, '2024-09-11 16:34:11'); /* Death Zone */
/* @teleloc 0x039D0241 [80.238098 -63.304699 -0.992241] -0.999717 0.000000 0.000000 0.023778 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0D0, 4200155, 0x039D0241, 80.4024, -56.2953, -5.19789, -0.997744, 0, 0, -0.067128, False, '2024-09-11 16:34:13'); /* Death Zone */
/* @teleloc 0x039D0241 [80.402397 -56.295300 -5.197890] -0.997744 0.000000 0.000000 -0.067128 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0D1, 4200155, 0x039D0238, 80.7406, -46.9693, -10.7935, -0.999716, 0, 0, -0.023824, False, '2024-09-11 16:34:14'); /* Death Zone */
/* @teleloc 0x039D0238 [80.740601 -46.969299 -10.793500] -0.999716 0.000000 0.000000 -0.023824 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0D2, 4200155, 0x039D0205, 80.462, -41.1246, -12, -0.999716, 0, 0, -0.023824, False, '2024-09-11 16:34:15'); /* Death Zone */
/* @teleloc 0x039D0205 [80.461998 -41.124599 -12.000000] -0.999716 0.000000 0.000000 -0.023824 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0D3, 4200156, 0x039D0204, 79.9384, -44.8763, -12, 0.036755, 0, 0, 0.999324, False, '2024-09-11 16:34:24'); /* Death Zone Melee */
/* @teleloc 0x039D0204 [79.938400 -44.876301 -12.000000] 0.036755 0.000000 0.000000 0.999324 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0D4, 4200156, 0x039D0238, 79.6899, -51.0658, -8.3356, 0.036755, 0, 0, 0.999324, False, '2024-09-11 16:34:25'); /* Death Zone Melee */
/* @teleloc 0x039D0238 [79.689903 -51.065800 -8.335600] 0.036755 0.000000 0.000000 0.999324 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0D5, 4200156, 0x039D026E, 132.237, -38.368, 6, 0.966428, 0, 0, -0.256938, False, '2024-09-11 16:34:42'); /* Death Zone Melee */
/* @teleloc 0x039D026E [132.237000 -38.368000 6.000000] 0.966428 0.000000 0.000000 -0.256938 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0D6, 4200156, 0x039D025C, 101.556, -9.03522, 6, 0.692869, 0, 0, -0.721064, False, '2024-09-11 16:34:48'); /* Death Zone Melee */
/* @teleloc 0x039D025C [101.556000 -9.035220 6.000000] 0.692869 0.000000 0.000000 -0.721064 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0D7, 4200156, 0x039D0248, 119.674, -13.2969, 0, 0.04709, 0, 0, -0.998891, False, '2024-09-11 16:34:52'); /* Death Zone Melee */
/* @teleloc 0x039D0248 [119.674004 -13.296900 0.000000] 0.047090 0.000000 0.000000 -0.998891 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0D8, 4200156, 0x039D0249, 120.269, -19.6833, -2.78504, -0.027889, 0, 0, -0.999611, False, '2024-09-11 16:34:54'); /* Death Zone Melee */
/* @teleloc 0x039D0249 [120.268997 -19.683300 -2.785040] -0.027889 0.000000 0.000000 -0.999611 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0D9, 4200155, 0x039D0249, 119.23, -23.3829, -5.00481, -0.080461, 0, 0, -0.996758, False, '2024-09-11 16:34:58'); /* Death Zone */
/* @teleloc 0x039D0249 [119.230003 -23.382900 -5.004810] -0.080461 0.000000 0.000000 -0.996758 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0DA, 4200155, 0x039D0240, 75.2675, -19.455, -0.135585, -0.564537, 0, 0, 0.825408, False, '2024-09-11 16:35:15'); /* Death Zone */
/* @teleloc 0x039D0240 [75.267502 -19.455000 -0.135585] -0.564537 0.000000 0.000000 0.825408 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0DB, 4200156, 0x039D0240, 80.8355, -19.9918, -3.47638, -0.693137, 0, 0, 0.720806, False, '2024-09-11 16:35:18'); /* Death Zone Melee */
/* @teleloc 0x039D0240 [80.835503 -19.991800 -3.476380] -0.693137 0.000000 0.000000 0.720806 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0DC, 4200156, 0x039D0239, 85.3317, -20.1679, -6.17412, -0.693137, 0, 0, 0.720806, False, '2024-09-11 16:35:19'); /* Death Zone Melee */
/* @teleloc 0x039D0239 [85.331703 -20.167900 -6.174120] -0.693137 0.000000 0.000000 0.720806 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0DD, 4200155, 0x039D0239, 90.8708, -20.3847, -9.49752, -0.693137, 0, 0, 0.720806, False, '2024-09-11 16:35:22'); /* Death Zone */
/* @teleloc 0x039D0239 [90.870796 -20.384701 -9.497520] -0.693137 0.000000 0.000000 0.720806 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0DE, 4200156, 0x039D0262, 101.878, -71.5826, 6, 0.760241, 0, 0, 0.649641, False, '2024-09-11 16:35:37'); /* Death Zone Melee */
/* @teleloc 0x039D0262 [101.877998 -71.582603 6.000000] 0.760241 0.000000 0.000000 0.649641 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0DF, 4200156, 0x039D0217, 103.033, -37.4045, -12, -0.481337, 0, 0, -0.876536, False, '2025-01-04 09:24:09'); /* Death Zone Melee */
/* @teleloc 0x039D0217 [103.032997 -37.404499 -12.000000] -0.481337 0.000000 0.000000 -0.876536 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0E0, 4200156, 0x039D0223, 106.092, -40.1164, -12, 0.293437, 0, 0, -0.955978, False, '2025-01-04 09:24:12'); /* Death Zone Melee */
/* @teleloc 0x039D0223 [106.092003 -40.116402 -12.000000] 0.293437 0.000000 0.000000 -0.955978 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0E1, 4200156, 0x039D0223, 111.471, -40.0957, -12, 0.744726, 0, 0, -0.667371, False, '2025-01-04 09:24:14'); /* Death Zone Melee */
/* @teleloc 0x039D0223 [111.471001 -40.095699 -12.000000] 0.744726 0.000000 0.000000 -0.667371 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0E2, 4200156, 0x039D0218, 101.2, -45.1557, -12, -0.125404, 0, 0, -0.992106, False, '2025-01-04 09:24:18'); /* Death Zone Melee */
/* @teleloc 0x039D0218 [101.199997 -45.155701 -12.000000] -0.125404 0.000000 0.000000 -0.992106 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0E3, 4200156, 0x039D0218, 99.8809, -50.2887, -12, -0.125404, 0, 0, -0.992106, False, '2025-01-04 09:24:19'); /* Death Zone Melee */
/* @teleloc 0x039D0218 [99.880898 -50.288700 -12.000000] -0.125404 0.000000 0.000000 -0.992106 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0E4, 4200156, 0x039D0217, 97.9612, -42.4073, -12, -0.900082, 0, 0, -0.43572, False, '2025-01-04 09:24:22'); /* Death Zone Melee */
/* @teleloc 0x039D0217 [97.961197 -42.407299 -12.000000] -0.900082 0.000000 0.000000 -0.435720 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0E5, 4200156, 0x039D020B, 92.3445, -39.7076, -12, -0.755239, 0, 0, -0.65545, False, '2025-01-04 09:24:25'); /* Death Zone Melee */
/* @teleloc 0x039D020B [92.344498 -39.707600 -12.000000] -0.755239 0.000000 0.000000 -0.655450 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0E6, 4200156, 0x039D020B, 87.6426, -40.4751, -12, -0.765544, 0, 0, -0.643383, False, '2025-01-04 09:24:27'); /* Death Zone Melee */
/* @teleloc 0x039D020B [87.642601 -40.475101 -12.000000] -0.765544 0.000000 0.000000 -0.643383 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0E7, 4200155, 0x039D0217, 98.1566, -39.0514, -12, -0.700404, 0, 0, 0.713747, False, '2025-01-04 09:24:31'); /* Death Zone */
/* @teleloc 0x039D0217 [98.156601 -39.051399 -12.000000] -0.700404 0.000000 0.000000 0.713747 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0E8, 4200155, 0x039D0216, 99.6269, -34.9132, -12, -0.990279, 0, 0, 0.139093, False, '2025-01-04 09:24:36'); /* Death Zone */
/* @teleloc 0x039D0216 [99.626900 -34.913200 -12.000000] -0.990279 0.000000 0.000000 0.139093 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0E9, 4200155, 0x039D0216, 99.843, -29.772, -12, -0.994399, 0, 0, 0.105696, False, '2025-01-04 09:24:37'); /* Death Zone */
/* @teleloc 0x039D0216 [99.843002 -29.771999 -12.000000] -0.994399 0.000000 0.000000 0.105696 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0EA, 4200155, 0x039D0213, 100.646, -24.7442, -12, -0.99734, 0, 0, -0.072885, False, '2025-01-04 09:24:39'); /* Death Zone */
/* @teleloc 0x039D0213 [100.646004 -24.744200 -12.000000] -0.997340 0.000000 0.000000 -0.072885 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0EB, 4200155, 0x039D0217, 100.258, -39.9907, -12, 0.042035, 0, 0, -0.999116, False, '2025-01-04 09:24:42'); /* Death Zone */
/* @teleloc 0x039D0217 [100.258003 -39.990700 -12.000000] 0.042035 0.000000 0.000000 -0.999116 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0EC, 4200155, 0x039D01FC, 65.2378, -39.7034, -17.8324, -0.696354, 0, 0, 0.717699, False, '2025-01-04 09:25:29'); /* Death Zone */
/* @teleloc 0x039D01FC [65.237801 -39.703400 -17.832399] -0.696354 0.000000 0.000000 0.717699 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0ED, 4200155, 0x039D01DA, 79.7858, -24.401, -18, -0.998967, 0, 0, 0.045438, False, '2025-01-04 09:25:37'); /* Death Zone */
/* @teleloc 0x039D01DA [79.785797 -24.400999 -18.000000] -0.998967 0.000000 0.000000 0.045438 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0EE, 4200155, 0x039D01F0, 136.295, -40.7286, -18, 0.740134, 0, 0, -0.67246, False, '2025-01-04 09:25:49'); /* Death Zone */
/* @teleloc 0x039D01F0 [136.294998 -40.728600 -18.000000] 0.740134 0.000000 0.000000 -0.672460 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0EF, 4200155, 0x039D01E9, 119.759, -55.313, -18, -0.024509, 0, 0, 0.9997, False, '2025-01-04 09:25:54'); /* Death Zone */
/* @teleloc 0x039D01E9 [119.759003 -55.313000 -18.000000] -0.024509 0.000000 0.000000 0.999700 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0F0, 4200155, 0x039D0222, 112.577, -19.9723, -16.5214, 0.727666, 0, 0, 0.685931, False, '2025-01-04 09:26:10'); /* Death Zone */
/* @teleloc 0x039D0222 [112.577003 -19.972300 -16.521400] 0.727666 0.000000 0.000000 0.685931 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0F1, 4200155, 0x039D021C, 99.0455, -61.2108, -12, -0.746679, 0, 0, 0.665185, False, '2025-01-04 09:26:30'); /* Death Zone */
/* @teleloc 0x039D021C [99.045502 -61.210800 -12.000000] -0.746679 0.000000 0.000000 0.665185 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0F2, 4200155, 0x039D01E2, 100.928, -76.2993, -18, 0.211649, 0, 0, 0.977346, False, '2025-01-04 09:26:35'); /* Death Zone */
/* @teleloc 0x039D01E2 [100.928001 -76.299301 -18.000000] 0.211649 0.000000 0.000000 0.977346 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7039D0F3, 4200155, 0x039D01DB, 84.85339, -59.83355, -18, 0.600244, 0, 0, 0.799817, False, '2025-01-04 09:26:39'); /* Death Zone */
/* @teleloc 0x039D01DB [84.853394 -59.833549 -18.000000] 0.600244 0.000000 0.000000 0.799817 */
