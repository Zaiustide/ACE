using ACE.Database;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Factories;
using ACE.Server.Managers;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.WorldObjects;
using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;

namespace ACE.Server.Entity.DungeonControl
{
    public static class DungeonControl
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private static Dictionary<uint, OwnableDungeon> _dungeons;
        public static Dictionary<uint, OwnableDungeon> OwnableDungeonMap
        {
            get
            {
                if (_dungeons == null)
                {
                    _dungeons = new Dictionary<uint, OwnableDungeon>();

                    #region Shreth Caverns
                    var shrethCaverns = new OwnableDungeon();
                    shrethCaverns.DungeonName = "Shreth Caverns";
                    shrethCaverns.LandblockId = 0x00C8;
                    shrethCaverns.GuardianWeenieId = 514108531;                    
                    shrethCaverns.ControlPointCellId = 13107625;
                    shrethCaverns.XpAndLumBonus = 2.0f;
                    shrethCaverns.OwnershipExpirationHours = 8;
                    shrethCaverns.TreasureWeenieId = 514108532;
                    shrethCaverns.TreasureSpawnRateMins = 15;

                    shrethCaverns.GuardianSpawnLocs = new List<Position>();
                    //drop
                    //0x00C80371 [461.910278 -171.192596 0.005000] 0.576070 0.000000 0.000000 0.817400
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C80371, 461.910278f, -171.192596f, 0.005000f, 0f, 0f, 0.817400f, 0.576070f));
                    //0x00C80371 [458.514893 -169.363052 0.005000] 0.063869 0.000000 0.000000 0.997958
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C80371, 458.514893f, -169.363052f, 0.005000f, 0f, 0f, 0.997958f, 0.063869f));
                    //0x00C80376 [466.369293 -164.235687 0.005000] 0.408997 0.000000 0.000000 0.912536
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C80376, 466.369293f, -164.235687f, 0.005000f, 0f, 0f, 0.912536f, 0.408997f));
                    //first level halls
                    //0x00C80354 [461.047363 -118.999664 -5.995000] -0.143692 0.000000 0.000000 -0.989623
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C80354, 461.047363f, -118.999664f, -5.995000f, 0f, 0f, -0.989623f, -0.143692f));
                    //0x00C802F2 [417.477997 -97.697594 -11.995001] 0.499164 0.000000 0.000000 -0.866507
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C802F2, 417.477997f, -97.697594f, -11.995001f, 0f, 0f, -0.866507f, 0.499164f));
                    //0x00C802F8 [430.545227 -80.456017 -11.995001] -0.277818 0.000000 0.000000 0.960634
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C802F8, 430.545227f, -80.456017f, -11.995001f, 0f, 0f, 0.960634f, -0.277818f));
                    //first level North room
                    //0x00C802EA [416.556610 -41.975758 -11.995001] -0.521024 0.000000 0.000000 -0.853542
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C802EA, 416.556610f, -41.975758f, -11.995001f, 0f, 0f, -0.853542f, -0.521024f));
                    //Ramp room
                    //0x00C802CA[358.457855 - 125.204323 - 11.995001] - 0.999412 0.000000 0.000000 0.034288
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C802CA, 358.457855f, -125.204323f, -11.995001f, 0f, 0f, 0.034288f, -0.999412f));
                    //Lower Level
                    //0x00C80293 [318.009521 -120.437729 -17.995001] -0.172779 0.000000 0.000000 0.984961
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C80293, 318.009521f, -120.437729f, -17.995001f, 0f, 0f, 0.984961f, -0.172779f));
                    //0x00C8029A [320.421021 -141.742935 -17.995001] 0.295414 0.000000 0.000000 0.955369
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C8029A, 320.421021f, -141.742935f, -17.995001f, 0f, 0f, 0.955369f, 0.295414f));
                    //0x00C80235 [293.433777 -160.344742 -23.995001] -0.718616 0.000000 0.000000 0.695407
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C80235, 293.433777f, -160.344742f, -23.995001f, 0f, 0f, 0.695407f, -0.718616f));
                    //0x00C80202 [249.208115 -139.096359 -23.995001] 0.992090 0.000000 0.000000 -0.125527
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C80202, 249.208115f, -139.096359f, -23.995001f, 0f, 0f, -0.125527f, 0.992090f));
                    //0x00C801E0 [220.851151 -119.758179 -35.994999] 0.666634 0.000000 0.000000 -0.745385
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C801E0, 220.851151f, -119.758179f, -35.994999f, 0f, 0f, -0.745385f, 0.666634f));
                    //Pit
                    //0x00C801AA[189.928009 - 111.176552 - 53.994999] - 0.999366 0.000000 0.000000 0.035608
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C801AA, 189.928009f, -111.176552f, -53.994999f, 0f, 0f, 0.035608f, -0.999366f));
                    //0x00C801AE [198.228073 -103.933556 -53.994999] -0.635938 0.000000 0.000000 -0.771740
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C801AE, 198.228073f, -103.933556f, -53.994999f, 0f, 0f, -0.771740f, -0.635938f));
                    //0x00C8012F [73.314804 -134.970505 -59.994999] 0.716723 0.000000 0.000000 -0.697358
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C8012F, 73.314804f, -134.970505f, -59.994999f, 0f, 0f, -0.697358f, 0.716723f));
                    //0x00C80105[23.040258 - 122.933289 - 59.994999] - 0.537699 0.000000 0.000000 0.843137
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C80105, 23.040258f, -122.933289f, -59.994999f, 0f, 0f, 0.843137f, -0.537699f));
                    
                    shrethCaverns.TreasureSpawnLocs = new List<Position>();
                    //0x00C801FB [219.930649 -132.701904 -23.995001] 0.039612 0.000000 0.000000 0.999215
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C801FB, 219.930649f, -132.701904f, -23.995001f, 0f, 0f, 0.999215f, 0.039612f));
                    //0x00C801CD [194.962830 -161.862717 -41.994999] -0.010912 0.000000 0.000000 0.999940
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C801CD, 194.962830f, -161.862717f, -41.994999f, 0f, 0f, 0.999940f, -0.010912f));
                    //0x00C80174 [140.361832 -150.004654 -53.994999] 0.693593 0.000000 0.000000 -0.720367
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C80174, 140.361832f, -150.004654f, -53.994999f, 0f, 0f, -0.720367f, 0.693593f));
                    //0x00C80151 [87.759888 -134.643005 -53.994999] -0.022061 0.000000 0.000000 -0.999757
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C80151, 87.759888f, -134.643005f, -53.994999f, 0f, 0f, -0.999757f, -0.022061f));
                    //0x00C80119 [50.525906 -99.876717 -59.994999] 0.160918 0.000000 0.000000 -0.986968
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C80119, 50.525906f, -99.876717f, -59.994999f, 0f, 0f, -0.986968f, 0.160918f));
                    //0x00C80108 [19.815598 -136.753098 -59.994999] -0.997762 0.000000 0.000000 0.066859
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C80108, 19.815598f, -136.753098f, -59.994999f, 0f, 0f, 0.066859f, -0.997762f));
                    //0x00C80125 [58.967598 -160.201065 -59.994999] -0.999991 0.000000 0.000000 0.004297
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C80125, 58.967598f, -160.201065f, -59.994999f, 0f, 0f, 0.004297f, -0.999991f));
                    //0x00C801A3 [183.377899 -110.838486 -53.994999] -0.909412 0.000000 0.000000 0.415896
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C801A3, 183.377899f, -110.838486f, -53.994999f, 0f, 0f, 0.415896f, -0.909412f));
                    //0x00C801E7 [227.097046 -122.679276 -35.994999] -0.999241 0.000000 0.000000 0.038950
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C801E7, 227.097046f, -122.679276f, -35.994999f, 0f, 0f, 0.038950f, -0.999241f));
                    //0x00C801FE [240.663345 -138.887253 -23.995001] 0.647265 0.000000 0.000000 -0.762265
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C801FE, 240.663345f, -138.887253f, -23.995001f, 0f, 0f, -0.762265f, 0.647265f));
                    //0x00C8021F [280.397552 -168.185608 -23.995001] -0.954809 0.000000 0.000000 -0.297222
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C8021F, 280.397552f, -168.185608f, -23.995001f, 0f, 0f, -0.297222f, -0.954809f));
                    //0x00C80225 [280.118591 -190.267136 -23.995001] -0.988889 0.000000 0.000000 0.148659
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C80225, 280.118591f, -190.267136f, -23.995001f, 0f, 0f, 0.148659f, -0.988889f));
                    //0x00C80265 [322.510284 -59.918320 -23.995001] -0.765203 0.000000 0.000000 -0.643789
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C80265, 322.510284f, -59.918320f, -23.995001f, 0f, 0f, -0.643789f, -0.765203f));
                    //0x00C8027D [295.179901 -4.543945 -17.995001] 0.338157 0.000000 0.000000 0.941090
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C8027D, 295.179901f, -4.543945f, -17.995001f, 0f, 0f, 0.941090f, 0.338157f));
                    //0x00C80216 [283.844391 -89.922173 -23.995001] 0.705994 0.000000 0.000000 -0.708218
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C80216, 283.844391f, -89.922173f, -23.995001f, 0f, 0f, -0.708218f, 0.705994f));
                    //0x00C802BD [343.226715 -122.925865 -11.995001] 0.439571 0.000000 0.000000 -0.898208
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C802BD, 343.226715f, -122.925865f, -11.995001f, 0f, 0f, -0.898208f, 0.439571f));
                    //0x00C802F6 [416.187561 -120.269005 -11.995001] 0.761580 0.000000 0.000000 0.648071
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C802F6, 416.187561f, -120.269005f, -11.995001f, 0f, 0f, 0.648071f, 0.761580f));
                    //0x00C80354 [459.317688 -119.239388 -5.995000] -0.041888 0.000000 0.000000 0.999122
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C80354, 459.317688f, -119.239388f, -5.995000f, 0f, 0f, 0.999122f, -0.041888f));
                    //0x00C80334 [517.922791 -87.388618 -11.995001] 0.928022 0.000000 0.000000 0.372524
                    shrethCaverns.TreasureSpawnLocs.Add(new Position(0x00C80334, 517.922791f, -87.388618f, -11.995001f, 0f, 0f, 0.372524f, 0.928022f));

                    _dungeons.Add(shrethCaverns.LandblockId, shrethCaverns);

                    #endregion Shreth Caverns

                    #region Ancient Temple

                    var ancientTemple = new OwnableDungeon();
                    ancientTemple.DungeonName = "Ancient Temple";
                    ancientTemple.LandblockId = 0x0174;
                    ancientTemple.GuardianWeenieId = 514108541;
                    ancientTemple.ControlPointCellId = 24379693;
                    ancientTemple.XpAndLumBonus = 2.0f;
                    ancientTemple.OwnershipExpirationHours = 8;
                    ancientTemple.TreasureWeenieId = 514108532;
                    ancientTemple.TreasureSpawnRateMins = 15;
                    ancientTemple.GuardianSpawnLocs = new List<Position>();
                    //0x0174015C [67.659897 -110.523407 0.005000] 0.719811 0.000000 0.000000 0.694170
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x0174015C, 67.659897f, -110.523407f, 0.005000f, 0f, 0f, 0.694170f, 0.719811f));
                    //0x0174012B [52.837780 -109.980942 0.005000] 0.708884 0.000000 0.000000 -0.705325
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x0174012B, 52.837780f, -109.980942f, 0.005000f, 0f, 0f, -0.705325f, 0.708884f));
                    //0x01740138 [59.689198 -88.877686 0.005000] 0.999956 0.000000 0.000000 -0.009348
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x01740138, 59.689198f, -88.877686f, 0.005000f, 0f, 0f, -0.009348f, 0.999956f));
                    //0x01740155 [68.766853 -79.322884 0.005000] 0.696479 0.000000 0.000000 0.717577
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x01740155, 68.766853f, -79.322884f, 0.005000f, 0f, 0f, 0.717577f, 0.696479f));
                    //0x01740136 [60.157482 -65.361900 0.005000] 0.017172 0.000000 0.000000 0.999853
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x01740136, 60.157482f, -65.361900f, 0.005000f, 0f, 0f, 0.999853f, 0.017172f));
                    //0x0174010A [38.610222 -69.635849 0.005000] -0.693281 0.000000 0.000000 0.720668
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x0174010A, 38.610222f, -69.635849f, 0.005000f, 0f, 0f, 0.720668f, -0.693281f));
                    //0x017401F9 [19.929838 -23.920444 18.004999] 0.004812 0.000000 0.000000 0.999988
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x017401F9, 19.929838f, -23.920444f, 18.004999f, 0f, 0f, 0.999988f, 0.004812f));
                    //0x017401F1 [0.118613 -52.775227 18.004999] -0.005625 0.000000 0.000000 0.999984
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x017401F1, 0.118613f, -52.775227f, 18.004999f, 0f, 0f, 0.999984f, -0.005625f));
                    //0x0174011D [49.022335 -48.836388 0.005000] -0.887018 0.000000 0.000000 0.461736
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x0174011D, 49.022335f, -48.836388f, 0.005000f, 0f, 0f, 0.461736f, -0.887018f));
                    //0x0174014E [69.059799 -45.135056 0.005000] 0.198552 0.000000 0.000000 0.980090
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x0174014E, 69.059799f, -45.135056f, 0.005000f, 0f, 0f, 0.980090f, 0.198552f));
                    //0x0174012E [60.248775 -19.664410 0.005000] 0.010791 0.000000 0.000000 0.999942
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x0174012E, 60.248775f, -19.664410f, 0.005000f, 0f, 0f, 0.999942f, 0.010791f));
                    //0x0174015F [83.374771 -49.907143 0.005000] 0.681615 0.000000 0.000000 0.731711
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x0174015F, 83.374771f, -49.907143f, 0.005000f, 0f, 0f, 0.731711f, 0.681615f));
                    //0x01740213 [101.160179 -18.533621 18.004999] -0.245403 0.000000 0.000000 -0.969421
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x01740213, 101.160179f, -18.533621f, 18.004999f, 0f, 0f, -0.969421f, -0.245403f));
                    //0x01740223 [120.285995 -51.137211 18.004999] -0.046474 0.000000 0.000000 -0.998920
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x01740223, 120.285995f, -51.137211f, 18.004999f, 0f, 0f, -0.998920f, -0.046474f));
                    //0x0174018B [48.589046 -58.747704 6.005000] 0.202319 0.000000 0.000000 -0.979320
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x0174018B, 48.589046f, -58.747704f, 6.005000f, 0f, 0f, -0.979320f, 0.202319f));
                    //0x0174018F [50.070087 -99.683655 6.005000] 0.999575 0.000000 0.000000 -0.029148
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x0174018F, 50.070087f, -99.683655f, 6.005000f, 0f, 0f, -0.029148f, 0.999575f));
                    //0x017401A3 [69.616386 -101.653542 6.005000] 0.999367 0.000000 0.000000 0.035575
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x017401A3, 69.616386f, -101.653542f, 6.005000f, 0f, 0f, 0.035575f, 0.999367f));
                    //0x0174019F [70.392853 -59.305885 6.005000] 0.097199 0.000000 0.000000 0.995265
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x0174019F, 70.392853f, -59.305885f, 6.005000f, 0f, 0f, 0.995265f, 0.097199f));
                    //0x0174021F [99.790634 -137.671799 18.004999] -0.999042 0.000000 0.000000 -0.043768
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x0174021F, 99.790634f, -137.671799f, 18.004999f, 0f, 0f, -0.043768f, -0.999042f));
                    //0x01740134 [60.108665 -59.782345 0.005000] 0.017292 0.000000 0.000000 -0.999850
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x01740134, 60.108665f, -59.782345f, 0.005000f, 0f, 0f, -0.999850f, 0.017292f));
                    //0x01740205 [19.642527 -140.577148 18.004999] 0.999656 0.000000 0.000000 0.026234
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x01740205, 19.642527f, -140.577148f, 18.004999f, 0f, 0f, 0.026234f, 0.999656f));

                    ancientTemple.TreasureSpawnLocs = new List<Position>();                    
                    //0x01740137 [57.894352 -76.899010 0.005000] -0.412681 0.000000 0.000000 0.910876
                    ancientTemple.TreasureSpawnLocs.Add(new Position(0x01740137, 57.894352f, -76.899010f, 0.005000f, 0f, 0f, 0.910876f, -0.412681f));
                    //0x017401F9 [18.852371 -18.371914 18.004999] -0.327275 0.000000 0.000000 0.944929
                    ancientTemple.TreasureSpawnLocs.Add(new Position(0x017401F9, 18.852371f, -18.371914f, 18.004999f, 0f, 0f, 0.944929f, -0.327275f));
                    //0x01740207 [33.684246 -23.577063 18.004999] 0.999675 0.000000 0.000000 0.025477
                    ancientTemple.TreasureSpawnLocs.Add(new Position(0x01740207, 33.684246f, -23.577063f, 18.004999f, 0f, 0f, 0.025477f, 0.999675f));
                    //0x017401F7 [13.222341 -53.778004 18.004999] 0.717178 0.000000 0.000000 0.696890
                    ancientTemple.TreasureSpawnLocs.Add(new Position(0x017401F7, 13.222341f, -53.778004f, 18.004999f, 0f, 0f, 0.696890f, 0.717178f));
                    //0x0174011C [52.805523 -35.646061 0.005000] -0.193520 0.000000 0.000000 0.981096
                    ancientTemple.TreasureSpawnLocs.Add(new Position(0x0174011C, 52.805523f, -35.646061f, 0.005000f, 0f, 0f, 0.981096f, -0.193520f));
                    //0x0174012C [60.219784 -2.012308 0.005000] 0.007843 0.000000 0.000000 -0.999969
                    ancientTemple.TreasureSpawnLocs.Add(new Position(0x0174012C, 60.219784f, -2.012308f, 0.005000f, 0f, 0f, -0.999969f, 0.007843f));
                    //0x0174020D [86.300636 -22.967760 18.004999] 0.999907 0.000000 0.000000 -0.013606
                    ancientTemple.TreasureSpawnLocs.Add(new Position(0x0174020D, 86.300636f, -22.967760f, 18.004999f, 0f, 0f, -0.013606f, 0.999907f));
                    //0x01740216 [100.326782 -40.101334 18.004999] -0.044340 0.000000 0.000000 -0.999017
                    ancientTemple.TreasureSpawnLocs.Add(new Position(0x01740216, 100.326782f, -40.101334f, 18.004999f, 0f, 0f, -0.999017f, -0.044340f));
                    //0x01740221 [106.221275 -53.487171 18.004999] 0.714280 0.000000 0.000000 -0.699860
                    ancientTemple.TreasureSpawnLocs.Add(new Position(0x01740221, 106.221275f, -53.487171f, 18.004999f, 0f, 0f, -0.699860f, 0.714280f));
                    //0x0174018B [53.768780 -56.340416 6.005000] -0.308354 0.000000 0.000000 -0.951272
                    ancientTemple.TreasureSpawnLocs.Add(new Position(0x0174018B, 53.768780f, -56.340416f, 6.005000f, 0f, 0f, -0.951272f, -0.308354f));
                    //0x01740185 [43.877960 -103.578484 6.005000] 0.987387 0.000000 0.000000 -0.158327
                    ancientTemple.TreasureSpawnLocs.Add(new Position(0x01740185, 43.877960f, -103.578484f, 6.005000f, 0f, 0f, -0.158327f, 0.987387f));
                    //0x01740138 [60.170860 -92.024040 5.055000] 0.022281 0.000000 0.000000 -0.999752
                    ancientTemple.TreasureSpawnLocs.Add(new Position(0x01740138, 60.170860f, -92.024040f, 5.055000f, 0f, 0f, -0.999752f, 0.022281f));
                    //0x017401E6 [100.209023 -79.783699 12.004999] 0.694432 0.000000 0.000000 0.719558
                    ancientTemple.TreasureSpawnLocs.Add(new Position(0x017401E6, 100.209023f, -79.783699f, 12.004999f, 0f, 0f, 0.719558f, 0.694432f));
                    //0x01740212 [93.835419 -137.291946 18.004999] 0.017124 0.000000 0.000000 0.999853
                    ancientTemple.TreasureSpawnLocs.Add(new Position(0x01740212, 93.835419f, -137.291946f, 18.004999f, 0f, 0f, 0.999853f, 0.017124f));
                    //0x0174020C[33.677044 - 136.567886 18.004999] - 0.022360 0.000000 0.000000 0.999750
                    ancientTemple.TreasureSpawnLocs.Add(new Position(0x0174020C, 33.677044f, -136.567886f, 18.004999f, 0f, 0f, 0.999750f, -0.022360f));

                    _dungeons.Add(ancientTemple.LandblockId, ancientTemple);

                    #endregion Ancient Temple

                    #region Mite Hole
                    var miteHole = new OwnableDungeon();
                    miteHole.DungeonName = "Mite Hole";
                    miteHole.LandblockId = 0x00E1;
                    miteHole.GuardianWeenieId = 514108551;
                    miteHole.ControlPointCellId = 24379693;
                    miteHole.XpAndLumBonus = 2.0f;
                    miteHole.OwnershipExpirationHours = 8;
                    miteHole.TreasureWeenieId = 514108532;
                    miteHole.TreasureSpawnRateMins = 15;
                    miteHole.GuardianSpawnLocs = new List<Position>();
                    //0x0174015C [67.659897 -110.523407 0.005000] 0.719811 0.000000 0.000000 0.694170
                    miteHole.GuardianSpawnLocs.Add(new Position(0x0174015C, 67.659897f, -110.523407f, 0.005000f, 0f, 0f, 0.694170f, 0.719811f));
                    //0x00E1034A [51.393631 -248.015274 0.005000] 0.887417 0.000000 0.000000 -0.460967
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E1034A, 51.393631f, -248.015274f, 0.005000f, 0f, 0f, -0.460967f, 0.887417f));
                    //0x00E10327 [58.519081 -228.326736 -5.995000] 0.193848 0.000000 0.000000 0.981031
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E10327, 58.519081f, -228.326736f, -5.995000f, 0f, 0f, 0.981031f, 0.193848f));
                    //0x00E10256 [82.081947 -213.765228 -11.995001] 0.465972 0.000000 0.000000 0.884799
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E10256, 82.081947f, -213.765228f, -11.995001f, 0f, 0f, 0.884799f, 0.465972f));
                    //0x00E1029A [103.876648 -195.609741 -11.995001] -0.237972 0.000000 0.000000 -0.971272
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E1029A, 103.876648f, -195.609741f, -11.995001f, 0f, 0f, -0.971272f, -0.237972f));
                    //0x00E10270 [89.623466 -150.558670 -11.995001] 0.119110 0.000000 0.000000 -0.992881
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E10270, 89.623466f, -150.558670f, -11.995001f, 0f, 0f, -0.992881f, 0.119110f));
                    //0x00E101D0[153.539230 - 113.304695 - 17.995001] 0.146374 0.000000 0.000000 0.989229
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E101D0, 153.539230f, -113.304695f, -17.995001f, 0f, 0f, 0.989229f, 0.146374f));
                    //0x00E101DC [159.434311 -131.043839 -17.995001] -0.891962 0.000000 0.000000 -0.452110
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E101DC, 159.434311f, -131.043839f, -17.995001f, 0f, 0f, -0.452110f, -0.891962f));
                    //0x00E1026C [87.877068 -139.727386 -11.995001] 0.871655 0.000000 0.000000 -0.490120
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E1026C, 87.877068f, -139.727386f, -11.995001f, 0f, 0f, -0.490120f, 0.871655f));
                    //0x00E101B0 [60.072212 -150.694794 -17.995001] 0.865487 0.000000 0.000000 -0.500932
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E101B0, 60.072212f, -150.694794f, -17.995001f, 0f, 0f, -0.500932f, 0.865487f));
                    //0x00E101A1 [47.085064 -108.196068 -17.995001] 0.384512 0.000000 0.000000 -0.923120
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E101A1, 47.085064f, -108.196068f, -17.995001f, 0f, 0f, -0.923120f, 0.384512f));
                    //0x00E1014E [52.475048 -99.904167 -35.994999] 0.638868 0.000000 0.000000 0.769316
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E1014E, 52.475048f, -99.904167f, -35.994999f, 0f, 0f, 0.769316f, 0.638868f));
                    //0x00E10217 [45.021820 -120.613235 -11.995001] -0.999042 0.000000 0.000000 -0.043760
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E10217, 45.021820f, -120.613235f, -11.995001f, 0f, 0f, -0.043760f, -0.999042f));
                    //0x00E10217 [54.032246 -119.495018 -11.995001] -0.795855 0.000000 0.000000 -0.605487
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E10217, 54.032246f, -119.495018f, -11.995001f, 0f, 0f, -0.605487f, -0.795855f));
                    //0x00E1021D [56.357952 -50.666775 -11.995001] 0.861126 0.000000 0.000000 0.508391
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E1021D, 56.357952f, -50.666775f, -11.995001f, 0f, 0f, 0.508391f, 0.861126f));
                    //0x00E10284 [102.994781 -8.563788 -11.995001] -0.583448 0.000000 0.000000 -0.812150
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E10284, 102.994781f, -8.563788f, -11.995001f, 0f, 0f, -0.812150f, -0.583448f));
                    //0x00E1025F [89.777222 -22.063337 -11.995001] -0.023744 0.000000 0.000000 -0.999718
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E1025F, 89.777222f, -22.063337f, -11.995001f, 0f, 0f, -0.999718f, -0.023744f));
                    //0x00E10194 [39.264076 -19.988462 -17.995001] -0.722485 0.000000 0.000000 -0.691387
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E10194, 39.264076f, -19.988462f, -17.995001f, 0f, 0f, -0.691387f, -0.722485f));
                    //0x00E1017D [11.335061 -12.689894 -17.995001] 0.782773 0.000000 0.000000 -0.622308
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E1017D, 11.335061f, -12.689894f, -17.995001f, 0f, 0f, -0.622308f, 0.782773f));
                    //0x00E1017E [10.051933 -24.680477 -17.995001] 0.935091 0.000000 0.000000 0.354408
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E1017E, 10.051933f, -24.680477f, -17.995001f, 0f, 0f, 0.354408f, 0.935091f));
                    //0x00E102B7 [119.339981 -223.021667 -11.995001] -0.999713 0.000000 0.000000 -0.023951
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E102B7, 119.339981f, -223.021667f, -11.995001f, 0f, 0f, -0.023951f, -0.999713f));
                    //0x00E102DA [136.083542 -244.899200 -11.995001] 0.977893 0.000000 0.000000 0.209106
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E102DA, 136.083542f, -244.899200f, -11.995001f, 0f, 0f, 0.209106f, 0.977893f));
                    //0x00E102FC [160.490768 -240.076584 -11.995001] -0.001344 0.000000 0.000000 -0.999999
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E102FC, 160.490768f, -240.076584f, -11.995001f, 0f, 0f, -0.999999f, -0.001344f));
                    //0x00E10326 [62.661293 -216.291138 -5.995000] 0.326218 0.000000 0.000000 0.945294
                    miteHole.GuardianSpawnLocs.Add(new Position(0x00E10326, 62.661293f, -216.291138f, -5.995000f, 0f, 0f, 0.945294f, 0.326218f));

                    miteHole.TreasureSpawnLocs = new List<Position>();
                    //0x0174015C [67.659897 -110.523407 0.005000] 0.719811 0.000000 0.000000 0.694170
                    miteHole.TreasureSpawnLocs.Add(new Position(0x0174015C, 67.659897f, -110.523407f, 0.005000f, 0f, 0f, 0.694170f, 0.719811f));
                    //0x00E101E3 [169.814545 -109.413879 -17.995001] -0.593973 0.000000 0.000000 -0.804485
                    miteHole.TreasureSpawnLocs.Add(new Position(0x00E101E3, 169.814545f, -109.413879f, -17.995001f, 0f, 0f, -0.804485f, -0.593973f));
                    //0x00E10263 [89.904701 -120.080444 -11.995001] 0.023936 0.000000 0.000000 -0.999713
                    miteHole.TreasureSpawnLocs.Add(new Position(0x00E10263, 89.904701f, -120.080444f, -11.995001f, 0f, 0f, -0.999713f, 0.023936f));
                    //0x00E10193 [30.014599 -146.325821 -17.995001] -0.999732 0.000000 0.000000 0.023153
                    miteHole.TreasureSpawnLocs.Add(new Position(0x00E10193, 30.014599f, -146.325821f, -17.995001f, 0f, 0f, 0.023153f, -0.999732f));
                    //0x00E10198 [38.069019 -112.426590 -17.995001] 0.935461 0.000000 0.000000 -0.353430
                    miteHole.TreasureSpawnLocs.Add(new Position(0x00E10198, 38.069019f, -112.426590f, -17.995001f, 0f, 0f, -0.353430f, 0.935461f));
                    //0x00E10139 [34.950359 -109.943405 -35.994999] -0.827645 0.000000 0.000000 0.561251
                    miteHole.TreasureSpawnLocs.Add(new Position(0x00E10139, 34.950359f, -109.943405f, -35.994999f, 0f, 0f, 0.561251f, -0.827645f));
                    //0x00E10127 [66.919670 -100.935020 -41.994999] -0.986483 0.000000 0.000000 -0.163863
                    miteHole.TreasureSpawnLocs.Add(new Position(0x00E10127, 66.919670f, -100.935020f, -41.994999f, 0f, 0f, -0.163863f, -0.986483f));
                    //0x00E1018B [30.183002 -99.795235 -17.995001] 0.153720 0.000000 0.000000 0.988114
                    miteHole.TreasureSpawnLocs.Add(new Position(0x00E1018B, 30.183002f, -99.795235f, -17.995001f, 0f, 0f, 0.988114f, 0.153720f));
                    //0x00E1023A [69.713745 -80.039513 -11.995001] -0.961419 0.000000 0.000000 -0.275090
                    miteHole.TreasureSpawnLocs.Add(new Position(0x00E1023A, 69.713745f, -80.039513f, -11.995001f, 0f, 0f, -0.275090f, -0.961419f));
                    //0x00E10201 [41.468105 -68.701660 -11.995001] 0.947522 0.000000 0.000000 -0.319691
                    miteHole.TreasureSpawnLocs.Add(new Position(0x00E10201, 41.468105f, -68.701660f, -11.995001f, 0f, 0f, -0.319691f, 0.947522f));
                    //0x00E10283 [104.809067 0.040105 -11.995001] -0.184167 0.000000 0.000000 -0.982895
                    miteHole.TreasureSpawnLocs.Add(new Position(0x00E10283, 104.809067f, 0.040105f, -11.995001f, 0f, 0f, -0.982895f, -0.184167f));
                    //0x00E1017C [-3.161313 -25.169914 -17.995001] 0.812809 0.000000 0.000000 -0.582531
                    miteHole.TreasureSpawnLocs.Add(new Position(0x00E1017C, -3.161313f, -25.169914f, -17.995001f, 0f, 0f, -0.582531f, 0.812809f));
                    //0x00E102A1 [104.914757 -239.946777 -11.995001] -0.934290 0.000000 0.000000 0.356514
                    miteHole.TreasureSpawnLocs.Add(new Position(0x00E102A1, 104.914757f, -239.946777f, -11.995001f, 0f, 0f, 0.356514f, -0.934290f));
                    //0x00E102C4 [122.476906 -256.211090 -11.995001] -0.719333 0.000000 0.000000 0.694666
                    miteHole.TreasureSpawnLocs.Add(new Position(0x00E102C4, 122.476906f, -256.211090f, -11.995001f, 0f, 0f, 0.694666f, -0.719333f));
                    //0x00E10312 [175.881424 -219.815521 -11.995001] 0.685179 0.000000 0.000000 0.728374
                    miteHole.TreasureSpawnLocs.Add(new Position(0x00E10312, 175.881424f, -219.815521f, -11.995001f, 0f, 0f, 0.728374f, 0.685179f));

                    _dungeons.Add(miteHole.LandblockId, miteHole);

                    #endregion Mite Hole
                }

                return _dungeons;
            }
        }        

        public static bool IsOwnableDungeon(uint landblockId)
        {
            return OwnableDungeonMap.ContainsKey(landblockId);
        }

        public static OwnableDungeon GetOwnableDungeonByLandblockId(uint landblockId)
        {
            if (OwnableDungeonMap.TryGetValue(landblockId, out OwnableDungeon value))
            {
                return value;
            }

            return null;
        }

        private static List<uint> _controlPointList;
        public static List<uint> ControlPointList
        {
            get
            {
                if(_controlPointList == null)
                {
                    _controlPointList = new List<uint>();
                    _controlPointList.Add(514108530); //Peddler's Outpost
                }

                return _controlPointList;
            }
        }

        public static bool IsDungeonControlPoint(uint weenieId)
        {
            return ControlPointList.Contains(weenieId);
        }

        private static List<uint> _guardianList;
        public static List<uint> GuardianList
        {
            get
            {
                if (_guardianList == null)
                {
                    _guardianList = new List<uint>();
                    _guardianList.Add(514108531); //Peddler's Outpost - Shreth Caverns
                    _guardianList.Add(514108541); //Peddler's Outpost - Ancient Temple
                }

                return _guardianList;
            }
        }

        public static bool IsDungeonControlGuardian(uint weenieId)
        {
            return GuardianList.Contains(weenieId);
        }

        public static void EarnAllegiancePoints(uint allegianceId, uint landblockId)
        {
            var dungeon = GetOwnableDungeonByLandblockId(landblockId);
            if (dungeon.OwningAllegianceId == allegianceId)
            {
                return;
            }

            var landblock = LandblockManager.GetLandblock(new LandblockId(landblockId << 16), false, true, DateTime.UtcNow.AddHours(8));
            IPlayer monarch = PlayerManager.GetOnlinePlayer(allegianceId);
            if (monarch == null)
            {
                monarch = PlayerManager.GetOfflinePlayer(allegianceId);
            }

            if(monarch == null)
            {
                //TODO - what do we do here?
                return;
            }            

            if (dungeon != null)
            {
                //Grant 5 points to the allegiance earning points
                if (!dungeon.AllegianceScoreBoard.ContainsKey(allegianceId))
                {
                    dungeon.AllegianceScoreBoard.Add(allegianceId, new DungeonControlScoreboardItem() { AllegianceId = allegianceId, AllegianceName = monarch.Name, Score = 5});
                }
                else
                {
                    dungeon.AllegianceScoreBoard[allegianceId].Score += 5;
                }

                foreach (var alleg in dungeon.AllegianceScoreBoard)
                {
                    //Remove 2 points from all other allegiances
                    if (alleg.Key != allegianceId)
                    {
                        var currScore = dungeon.AllegianceScoreBoard[alleg.Key].Score;
                        dungeon.AllegianceScoreBoard[alleg.Key].Score = Math.Max(0, currScore - 2);
                    }
                }

                //Check if there's a winner
                if (dungeon.AllegianceScoreBoard[allegianceId].Score > 30)
                {
                    //Declare a winner
                    dungeon.OwningAllegianceId = allegianceId;
                    dungeon.OwningAllegianceName = monarch?.Name;
                    dungeon.AllegianceScoreBoard = new Dictionary<uint, DungeonControlScoreboardItem>();
                    dungeon.CaptureTime = DateTime.UtcNow;

                    //Spawn Guardians
                    SpawnGuardians(dungeon, allegianceId, landblock);

                    //Broadcast the win
                    landblock.EnqueueBroadcast(null, false, null, null, new GameMessageSystemChat($"{dungeon.OwningAllegianceName} has gained control of the dungeon and summoned its protectors.", ChatMessageType.Broadcast));
                }
                else
                {
                    //Announce scores as landblock broadcast                    
                    landblock.EnqueueBroadcast(null, false, null, null, new GameMessageSystemChat(GetScoreBoardMessage(dungeon.AllegianceScoreBoard), ChatMessageType.Broadcast));
                }
            }
        }

        public static string GetScoreBoardMessage(Dictionary<uint, DungeonControlScoreboardItem> scoreboard)
        {
            string msg = string.Empty;
            foreach (var item in scoreboard.Values)
            {
                msg += $"Allegiance: {item.AllegianceName}, Score: {item.Score}\n";
            }

            return msg;
        }

        public static void SpawnGuardians(OwnableDungeon dungeon, uint allegianceId, Landblock landblock = null)
        {            
            var guardianWeenie = DatabaseManager.World.GetCachedWeenie(dungeon.GuardianWeenieId);

            //Load the landblock                
            var guardianLandblock = landblock ?? LandblockManager.GetLandblock(new LandblockId(dungeon.LandblockId << 16), false, true, DateTime.UtcNow.AddHours(8));

            if (guardianWeenie == null || guardianLandblock == null)
            {
                log.Error($"DungeonControl.SpawnGuardians failed. guardianWeenie = {guardianWeenie?.ClassName ?? "NULL"}, guardianLandblock = {(guardianLandblock == null ? "NULL" : dungeon.LandblockId)}");
            }

            //If any guardians already exist, destroy them
            var worldObjects = guardianLandblock.GetAllWorldObjectsForDiagnostics();
            foreach (var worldObject in worldObjects)
            {
                if(worldObject.WeenieClassId == dungeon.GuardianWeenieId)
                {
                    worldObject.FadeOutAndDestroy(false);
                }
            }

            //Spawn new guardians
            foreach (var loc in dungeon.GuardianSpawnLocs)
            {                
                //Create statue in world
                var guardianWorldObj = WorldObjectFactory.CreateNewWorldObject(guardianWeenie);
                guardianWorldObj.Location = loc;
                guardianWorldObj.CurrentLandblock = guardianLandblock;
                guardianWorldObj.TimeToRot = -1;
                guardianWorldObj.Lifespan = 28800;
                guardianWorldObj.GuardianAllegianceId = (int)allegianceId;

                guardianWorldObj.EnterWorld();
            }
        }

        public static bool SpawnTreasure(uint landblockId)
        {
            var dungeon = GetOwnableDungeonByLandblockId(landblockId);
            if (dungeon == null)
                return false;

            if (!dungeon.OwningAllegianceId.HasValue)
                return false;

            if (dungeon.CaptureTime.HasValue && dungeon.CaptureTime < DateTime.UtcNow.AddHours(-1 * dungeon.OwnershipExpirationHours))
            {
                return false;
            }

            //Only spawn one treasure every X mins
            if(!dungeon.LastTreasureSpawnTime.HasValue || dungeon.LastTreasureSpawnTime.Value < DateTime.UtcNow.AddMinutes(-1 * dungeon.TreasureSpawnRateMins))
            {
                var treasureWeenie = DatabaseManager.World.GetCachedWeenie(dungeon.TreasureWeenieId);
                var landblock = LandblockManager.GetLandblock(new LandblockId(dungeon.LandblockId << 16), false, true, DateTime.UtcNow.AddHours(2));

                var random = new Random();
                var loc = dungeon.TreasureSpawnLocs[random.Next(dungeon.TreasureSpawnLocs.Count)];

                var treasureWorldObj = WorldObjectFactory.CreateNewWorldObject(treasureWeenie);
                treasureWorldObj.Location = loc;
                treasureWorldObj.CurrentLandblock = landblock;
                treasureWorldObj.TimeToRot = -1;
                treasureWorldObj.Lifespan = 900;
                treasureWorldObj.EnterWorld();

                dungeon.LastTreasureSpawnTime  = DateTime.UtcNow;

                return true;
            }

            return false;
        }

        public static void ExpireOwnership(uint landblockId)
        {
            var dungeon = GetOwnableDungeonByLandblockId(landblockId);
            if (dungeon == null)
                return;

            //If the dungeon has been owned for more than X hours without changing hands, clear ownership
            if(dungeon.OwningAllegianceId.HasValue && dungeon.CaptureTime < DateTime.UtcNow.AddHours(-1 * dungeon.OwnershipExpirationHours))
            {
                ClearOwnership(dungeon);
            }
        }

        public static void ClearOwnership()
        {
            foreach(var dungeon in OwnableDungeonMap.Values)
            {
                ClearOwnership(dungeon);
            }
        }

        public static void ClearOwnership(uint landblockId)
        {
            ClearOwnership(GetOwnableDungeonByLandblockId(landblockId));            
        }

        public static void ClearOwnership(OwnableDungeon dungeon)
        {
            if (dungeon == null)
                return;

            dungeon.OwningAllegianceId = null;
            dungeon.OwningAllegianceName = null;
            dungeon.LastTreasureSpawnTime = null;
            dungeon.AllegianceScoreBoard = new Dictionary<uint, DungeonControlScoreboardItem>();
            dungeon.CaptureTime = null;

            //Clear all treasures and guardians
            try
            {
                var landblock = LandblockManager.GetLandblock(new LandblockId(dungeon.LandblockId << 16), false, false);
                foreach (var wo in landblock.GetAllWorldObjectsForDiagnostics())
                {
                    if(wo.WeenieClassId == dungeon.GuardianWeenieId || wo.WeenieClassId == dungeon.TreasureWeenieId)
                    {
                        wo.FadeOutAndDestroy(false);
                    }
                }
            }
            catch(Exception ex)
            {
                log.Error($"Exception in DungeonControl.ClearOwnership while destroying Guardian and Treasure objects. Ex: {ex}");
            }
        }
    }

    public class OwnableDungeon
    {
        public string DungeonName { get; set; }
        
        public uint LandblockId { get; set; }

        public uint ControlPointCellId { get; set; }

        public uint? OwningAllegianceId { get; set; }

        public string OwningAllegianceName { get; set; }

        public int OwnershipExpirationHours { get; set; }

        public DateTime? CaptureTime { get; set; }

        public uint GuardianWeenieId { get; set; }

        public List<Position> GuardianSpawnLocs { get; set; }

        public uint TreasureWeenieId { get; set; }

        public List<Position> TreasureSpawnLocs { get; set; }

        public DateTime? LastTreasureSpawnTime { get; set; }
        public int TreasureSpawnRateMins { get; set; }

        public float XpAndLumBonus { get; set; }

        public Dictionary<uint, DungeonControlScoreboardItem> AllegianceScoreBoard { get; set; } = new Dictionary<uint, DungeonControlScoreboardItem>();

    }

    public class DungeonControlScoreboardItem
    {
        public uint AllegianceId { get; set; }

        public string AllegianceName { get; set; }

        public uint Score { get; set; }
    }
}
