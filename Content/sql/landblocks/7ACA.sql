DELETE FROM `landblock_instance` WHERE `landblock` = 0x7ACA;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x77ACA000,   412, 0x7ACA011D, 63.36, 27.2242, 200.002, -1, 0, 0, 0, False, '2021-11-01 00:00:00'); /* Door */
/* @teleloc 0x7ACA011D [63.360001 27.224199 200.001999] -1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x77ACA001,   509, 0x7ACA0000, 43.5416, 27.8085, 200.005, 0.999113, 0, 0, -0.042109, False, '2021-11-01 00:00:00'); /* Life Stone */
/* @teleloc 0x7ACA0000 [43.541599 27.808500 200.005005] 0.999113 0.000000 0.000000 -0.042109 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x77ACA002,  1387, 0x7ACA0110, 34.0357, 36.0242, 200.005, 0.728293, 0, 0, -0.685266, False, '2021-11-01 00:00:00'); /* Merchant */
/* @teleloc 0x7ACA0110 [34.035702 36.024200 200.005005] 0.728293 0.000000 0.000000 -0.685266 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x77ACA003,  1370, 0x7ACA0117, 65.8862, 32.8783, 200.005, 0.329302, 0, 0, 0.944225, False, '2021-11-01 00:00:00'); /* Archmage */
/* @teleloc 0x7ACA0117 [65.886200 32.878300 200.005005] 0.329302 0.000000 0.000000 0.944225 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x77ACA004,  1380, 0x7ACA013C, 54.4577, 12.2643, 200.005, -0.741899, 0, 0, -0.670512, False, '2021-11-01 00:00:00'); /* Wandering Bowyer */
/* @teleloc 0x7ACA013C [54.457699 12.264300 200.005005] -0.741899 0.000000 0.000000 -0.670512 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x77ACA00A,  3917, 0x7ACA0135, 67.0824, 15.544, 200.005, -0.151709, 0, 0, 0.988425,  True, '2021-11-01 00:00:00'); /* Collector */
/* @teleloc 0x7ACA0135 [67.082397 15.544000 200.005005] -0.151709 0.000000 0.000000 0.988425 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x77ACA00B,  1154, 0x7ACA0135, 68.3721, 15.9495, 200.005, -0.151709, 0, 0, 0.988425, False, '2021-11-01 00:00:00'); /* Linkable Monster Generator */
/* @teleloc 0x7ACA0135 [68.372101 15.949500 200.005005] -0.151709 0.000000 0.000000 0.988425 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x77ACA00B, 0x77ACA00A, '2021-11-01 00:00:00') /* Collector (3917) */
     , (0x77ACA00B, 0x77ACA00D, '2021-11-01 00:00:00');

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x77ACA00C,  8377, 0x7ACA0110, 33.25, 38.75, 201.075, 1, 0, 0, 0, False, '2021-11-01 00:00:00'); /* Beer Keg */
/* @teleloc 0x7ACA0110 [33.250000 38.750000 201.074997] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x77ACA014, 4200139, 0x7ACA0019, 75.1214, 5.71943, 199.937, -1, 0, 0, -0.000846, False, '2025-11-22 14:49:42'); /* Abandoned Mine */
/* @teleloc 0x7ACA0019 [75.121399 5.719430 199.936996] -1.000000 0.000000 0.000000 -0.000846 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x77ACA015, 490085, 0x7ACA0009, 28.6176, 21.4333, 200, 0.944699, 0, 0, -0.32794, False, '2025-11-22 15:16:11'); /* Gate */
/* @teleloc 0x7ACA0009 [28.617599 21.433300 200.000000] 0.944699 0.000000 0.000000 -0.327940 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x77ACA016, 42852, 0x7ACA0009, 28.6176, 21.4333, 199.937, 0.707107, 0, 0, -0.707107, False, '2025-11-22 15:16:41'); /* Portal to Town Network */
/* @teleloc 0x7ACA0009 [28.617599 21.433300 199.936996] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x77ACA017, 600057, 0x7ACA0135, 68.8029, 13.9339, 200.005, -0.712168, 0, 0, -0.702009, False, '2025-11-22 16:37:57');
/* @teleloc 0x7ACA0135 [68.802902 13.933900 200.005005] -0.712168 0.000000 0.000000 -0.702009 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x77ACA018, 600055, 0x7ACA0135, 67.68677, 12.47681, 200.005, -0.976977, 0, 0, -0.213345, False, '2025-11-22 16:38:31');
/* @teleloc 0x7ACA0135 [67.686768 12.476810 200.005005] -0.976977 0.000000 0.000000 -0.213345 */
