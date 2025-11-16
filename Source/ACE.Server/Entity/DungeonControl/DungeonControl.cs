using ACE.Database;
using ACE.Database.Models.TownControl;
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
                    shrethCaverns.CaptureScore = 600;
                    shrethCaverns.XpAndLumBonus = 2.0f;
                    shrethCaverns.OwnershipExpirationHours = 8;
                    shrethCaverns.TreasureWeenieId = 514108532;
                    shrethCaverns.TreasureSpawnRateMins = 5;

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
                    //0x00C80269[330.013977 -60.401958 -23.995001] 0.999426 0.000000 0.000000 -0.033876
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C80269, 330.013977f, -60.401958f, -23.995001f, 0f, 0f, -0.033876f, 0.999426f));
                    //0x00C8027D[295.271362 -3.492693 -17.995001] 0.766156 0.000000 0.000000 0.642655
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C8027D, 295.271362f, -3.492693f, -17.995001f, 0f, 0f, 0.642655f, 0.766156f));
                    //0x00C8019B [170.320572 -140.250839 -53.994999] -0.707225 0.000000 0.000000 -0.706988
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C8019B, 170.320572f, -140.250839f, -53.994999f, 0f, 0f, -0.706988f, -0.707225f));
                    //0x00C801D2[195.110458 -170.930405 -45.473469] -0.999451 0.000000 0.000000 -0.033131
                    shrethCaverns.GuardianSpawnLocs.Add(new Position(0x00C801D2, 195.110458f, -170.930405f, -45.473469f, 0f, 0f, -0.033131f, -0.999451f));

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
                    ancientTemple.GuardianWeenieId = 514108531;
                    ancientTemple.ControlPointCellId = 24379693;
                    ancientTemple.CaptureScore = 600;
                    ancientTemple.XpAndLumBonus = 2.0f;
                    ancientTemple.OwnershipExpirationHours = 8;
                    ancientTemple.TreasureWeenieId = 514108532;
                    ancientTemple.TreasureSpawnRateMins = 5;
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
                    //0x0174011A [47.233166 - 14.187041 0.005000] - 0.781343 0.000000 0.000000 0.624102
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x0174011A, 47.233166f, -14.187041f, 0.005000f, 0f, 0f, 0.624102f, -0.781343f));
                    //0x0174014B [69.197670 -7.839717 0.005000] -0.538133 0.000000 0.000000 -0.842860
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x0174014B, 69.197670f, -7.839717f, 0.005000f, 0f, 0f, -0.842860f, -0.538133f));
                    //0x0174012F [59.736706 -30.639841 0.005000] -0.999982 0.000000 0.000000 -0.005921
                    ancientTemple.GuardianSpawnLocs.Add(new Position(0x0174012F, 59.736706f, -30.639841f, 0.005000f, 0f, 0f, -0.005921f, -0.999982f));

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
                    miteHole.GuardianWeenieId = 514108531;
                    miteHole.ControlPointCellId = 14746276;
                    miteHole.CaptureScore = 600;
                    miteHole.XpAndLumBonus = 2.0f;
                    miteHole.OwnershipExpirationHours = 8;
                    miteHole.TreasureWeenieId = 514108532;
                    miteHole.TreasureSpawnRateMins = 5;
                    miteHole.GuardianSpawnLocs = new List<Position>();                    
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

                    #region Metos
                    var metos = new OwnableDungeon();
                    metos.DungeonName = "Halls of Metos";
                    metos.LandblockId = 0x02F5;
                    metos.GuardianWeenieId = 514108531;
                    metos.ControlPointCellId = 49611366;
                    metos.CaptureScore = 600;
                    metos.XpAndLumBonus = 2.0f;
                    metos.OwnershipExpirationHours = 6;
                    metos.TreasureWeenieId = 514108532;
                    metos.TreasureSpawnRateMins = 5;

                    metos.GuardianSpawnLocs = new List<Position>();
                    // /teleloc 0x02F50283 [88.871605 -299.631134 0.005000] -0.724229 0.000000 0.000000 0.689560
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50283, 88.871605f, -299.631134f, 0.005000f, 0f, 0f, 0.689560f, -0.724229f));
                    // /teleloc 0x02F5027E [89.080597 -288.928162 0.005000] -0.352766 0.000000 0.000000 0.935711
                    metos.GuardianSpawnLocs.Add(new Position(0x02F5027E, 89.080597f, -288.928162f, 0.005000f, 0f, 0f, 0.935711f, -0.352766f));
                    // /teleloc 0x02F502AA [111.829552 -289.814331 0.005000] 0.430692 0.000000 0.000000 0.902499
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502AA, 111.829552f, -289.814331f, 0.005000f, 0f, 0f, 0.902499f, 0.430692f));
                    // /teleloc 0x02F502AF [111.249413 -302.347900 0.005000] 0.889691 0.000000 0.000000 0.456563
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502AF, 111.249413f, -302.347900f, 0.005000f, 0f, 0f, 0.456563f, 0.889691f));
                    // /teleloc 0x02F502AF [110.328972 -297.683533 0.005000] 0.561120 0.000000 0.000000 0.827735
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502AF, 110.328972f, -297.683533f, 0.005000f, 0f, 0f, 0.827735f, 0.561120f));
                    // /teleloc 0x02F50289 [99.825638 -271.048340 0.005000] 0.020504 0.000000 0.000000 -0.999790
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50289, 99.825638f, -271.048340f, 0.005000f, 0f, 0f, -0.999790f, 0.020504f));
                    // /teleloc 0x02F502A5 [110.184502 -260.391907 0.005000] 0.754066 0.000000 0.000000 0.656799
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502A5, 110.184502f, -260.391907f, 0.005000f, 0f, 0f, 0.656799f, 0.754066f));
                    // /teleloc 0x02F50278 [79.312088 -259.800568 0.005000] 0.653183 0.000000 0.000000 -0.757200
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50278, 79.312088f, -259.800568f, 0.005000f, 0f, 0f, -0.757200f, 0.653183f));
                    // /teleloc 0x02F5026A [62.412987 -279.926270 0.005000] 0.727112 0.000000 0.000000 -0.686519
                    metos.GuardianSpawnLocs.Add(new Position(0x02F5026A, 62.412987f, -279.926270f, 0.005000f, 0f, 0f, -0.686519f, 0.727112f));
                    // /teleloc 0x02F50268 [47.849041 -277.700409 0.005000] -0.522054 0.000000 0.000000 0.852912
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50268, 47.849041f, -277.700409f, 0.005000f, 0f, 0f, 0.852912f, -0.522054f));
                    // /teleloc 0x02F50269 [51.605713 -293.113403 0.005000] -0.945295 0.000000 0.000000 -0.326217
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50269, 51.605713f, -293.113403f, 0.005000f, 0f, 0f, -0.326217f, -0.945295f));
                    // /teleloc 0x02F50266 [35.611382 -283.742279 0.005000] -0.694398 0.000000 0.000000 0.719591
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50266, 35.611382f, -283.742279f, 0.005000f, 0f, 0f, 0.719591f, -0.694398f));
                    // /teleloc 0x02F502BA [132.745361 -269.445648 0.005000] -0.933641 0.000000 0.000000 -0.358210
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502BA, 132.745361f, -269.445648f, 0.005000f, 0f, 0f, -0.358210f, -0.933641f));
                    // /teleloc 0x02F502C7 [149.453506 -278.655884 0.005000] -0.949778 0.000000 0.000000 0.312925
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502C7, 149.453506f, -278.655884f, 0.005000f, 0f, 0f, 0.312925f, -0.949778f));
                    // /teleloc 0x02F502C5 [149.063568 -261.658203 0.005000] -0.373696 0.000000 0.000000 0.927551
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502C5, 149.063568f, -261.658203f, 0.005000f, 0f, 0f, 0.927551f, -0.373696f));
                    // /teleloc 0x02F502D5 [165.450821 -259.452576 0.005000] 0.205791 0.000000 0.000000 0.978596
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502D5, 165.450821f, -259.452576f, 0.005000f, 0f, 0f, 0.978596f, 0.205791f));
                    // /teleloc 0x02F502D7 [166.609497 -279.800476 0.005000] 0.855684 0.000000 0.000000 0.517498
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502D7, 166.609497f, -279.800476f, 0.005000f, 0f, 0f, 0.517498f, 0.855684f));
                    // /teleloc 0x02F502C7 [148.681061 -279.465210 0.005000] -0.970162 0.000000 0.000000 0.242459
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502C7, 148.681061f, -279.465210f, 0.005000f, 0f, 0f, 0.242459f, -0.970162f));
                    // /teleloc 0x02F502D2 [160.518509 -327.323181 0.005000] 0.015382 0.000000 0.000000 0.999882
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502D2, 160.518509f, -327.323181f, 0.005000f, 0f, 0f, 0.999882f, 0.015382f));
                    // /teleloc 0x02F502DA [165.167542 -345.284454 0.005000] -0.999877 0.000000 0.000000 0.015655
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502DA, 165.167542f, -345.284454f, 0.005000f, 0f, 0f, 0.015655f, -0.999877f));
                    // /teleloc 0x02F502DD [179.664215 -345.162689 0.005000] -0.911644 0.000000 0.000000 -0.410982
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502DD, 179.664215f, -345.162689f, 0.005000f, 0f, 0f, -0.410982f, -0.911644f));
                    // /teleloc 0x02F502DB [180.622253 -329.921997 0.005000] -0.674351 0.000000 0.000000 -0.738411
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502DB, 180.622253f, -329.921997f, 0.005000f, 0f, 0f, -0.738411f, -0.674351f));
                    // /teleloc 0x02F502C8 [149.956131 -310.395111 0.005000] -0.768025 0.000000 0.000000 0.640420
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502C8, 149.956131f, -310.395111f, 0.005000f, 0f, 0f, 0.640420f, -0.768025f));
                    // /teleloc 0x02F502A3 [107.533630 -240.129013 0.005000] 0.284874 0.000000 0.000000 -0.958565
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502A3, 107.533630f, -240.129013f, 0.005000f, 0f, 0f, -0.958565f, 0.284874f));
                    // /teleloc 0x02F502A3 [113.364037 -239.360901 0.005000] -0.166606 0.000000 0.000000 -0.986024
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502A3, 113.364037f, -239.360901f, 0.005000f, 0f, 0f, -0.986024f, -0.166606f));
                    // /teleloc 0x02F502A1 [106.941818 -219.497696 0.005000] -0.071268 0.000000 0.000000 0.997457
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502A1, 106.941818f, -219.497696f, 0.005000f, 0f, 0f, 0.997457f, -0.071268f));
                    // /teleloc 0x02F502A1 [113.074860 -220.379333 0.005000] 0.404262 0.000000 0.000000 0.914643
                    metos.GuardianSpawnLocs.Add(new Position(0x02F502A1, 113.074860f, -220.379333f, 0.005000f, 0f, 0f, 0.914643f, 0.404262f));
                    // /teleloc 0x02F50259 [108.969589 -189.285172 -8.995001] 0.202584 0.000000 0.000000 -0.979265
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50259, 108.969589f, -189.285172f, -8.995001f, 0f, 0f, -0.979265f, 0.202584f));
                    // /teleloc 0x02F5023D [117.033951 -171.230743 -11.995001] 0.844963 0.000000 0.000000 -0.534824
                    metos.GuardianSpawnLocs.Add(new Position(0x02F5023D, 117.033951f, -171.230743f, -11.995001f, 0f, 0f, -0.534824f, 0.844963f));
                    // /teleloc 0x02F50247 [142.439209 -172.052078 -11.995001] 0.941780 0.000000 0.000000 0.336229
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50247, 142.439209f, -172.052078f, -11.995001f, 0f, 0f, 0.336229f, 0.941780f));
                    // /teleloc 0x02F50246 [142.852112 -155.895721 -11.995001] 0.606720 0.000000 0.000000 0.794916
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50246, 142.852112f, -155.895721f, -11.995001f, 0f, 0f, 0.794916f, 0.606720f));
                    // /teleloc 0x02F50245 [141.213303 -147.178268 -11.995001] 0.418517 0.000000 0.000000 0.908209
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50245, 141.213303f, -147.178268f, -11.995001f, 0f, 0f, 0.908209f, 0.418517f));
                    // /teleloc 0x02F5023C [124.655754 -157.782272 -11.995001] 0.066240 0.000000 0.000000 0.997804
                    metos.GuardianSpawnLocs.Add(new Position(0x02F5023C, 124.655754f, -157.782272f, -11.995001f, 0f, 0f, 0.997804f, 0.066240f));
                    // /teleloc 0x02F50236 [121.163284 -118.956100 -14.995001] -0.366140 0.000000 0.000000 -0.930560
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50236, 121.163284f, -118.956100f, -14.995001f, 0f, 0f, -0.930560f, -0.366140f));
                    // /teleloc 0x02F50208 [91.137833 -143.370941 -17.995001] -0.926731 0.000000 0.000000 0.375725
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50208, 91.137833f, -143.370941f, -17.995001f, 0f, 0f, 0.375725f, -0.926731f));
                    // /teleloc 0x02F501FC [77.349106 -140.204239 -17.995001] 0.740407 0.000000 0.000000 -0.672159
                    metos.GuardianSpawnLocs.Add(new Position(0x02F501FC, 77.349106f, -140.204239f, -17.995001f, 0f, 0f, -0.672159f, 0.740407f));
                    // /teleloc 0x02F501CA [38.152515 -99.986732 -23.995001] -0.304766 0.000000 0.000000 0.952427
                    metos.GuardianSpawnLocs.Add(new Position(0x02F501CA, 38.152515f, -99.986732f, -23.995001f, 0f, 0f, 0.952427f, -0.304766f));
                    // /teleloc 0x02F501D7 [45.199051 -93.537361 -23.995001] 0.162751 0.000000 0.000000 0.986667
                    metos.GuardianSpawnLocs.Add(new Position(0x02F501D7, 45.199051f, -93.537361f, -23.995001f, 0f, 0f, 0.986667f, 0.162751f));
                    // /teleloc 0x02F501C8 [36.789211 -84.999344 -23.995001] -0.221728 0.000000 0.000000 0.975109
                    metos.GuardianSpawnLocs.Add(new Position(0x02F501C8, 36.789211f, -84.999344f, -23.995001f, 0f, 0f, 0.975109f, -0.221728f));
                    // /teleloc 0x02F501C8 [40.227158 -75.478302 -23.995001] 0.052530 0.000000 0.000000 0.998619
                    metos.GuardianSpawnLocs.Add(new Position(0x02F501C8, 40.227158f, -75.478302f, -23.995001f, 0f, 0f, 0.998619f, 0.052530f));
                    // /teleloc 0x02F501B3 [51.637569 -52.882942 -29.995001] -0.861418 0.000000 0.000000 -0.507896
                    metos.GuardianSpawnLocs.Add(new Position(0x02F501B3, 51.637569f, -52.882942f, -29.995001f, 0f, 0f, -0.507896f, -0.861418f));
                    // /teleloc 0x02F501AB [28.043808 -52.877502 -29.995001] 0.872496 0.000000 0.000000 -0.488621
                    metos.GuardianSpawnLocs.Add(new Position(0x02F501AB, 28.043808f, -52.877502f, -29.995001f, 0f, 0f, -0.488621f, 0.872496f));
                    // /teleloc 0x02F501AA [25.778904 -40.322563 -29.995001] 0.733381 0.000000 0.000000 -0.679818
                    metos.GuardianSpawnLocs.Add(new Position(0x02F501AA, 25.778904f, -40.322563f, -29.995001f, 0f, 0f, -0.679818f, 0.733381f));
                    // /teleloc 0x02F501AE [38.627209 -28.491230 -29.995001] 0.477738 0.000000 0.000000 -0.878502
                    metos.GuardianSpawnLocs.Add(new Position(0x02F501AE, 38.627209f, -28.491230f, -29.995001f, 0f, 0f, -0.878502f, 0.477738f));
                    // /teleloc 0x02F501B1 [52.812222 -33.808918 -29.995001] -0.387282 0.000000 0.000000 -0.921961
                    metos.GuardianSpawnLocs.Add(new Position(0x02F501B1, 52.812222f, -33.808918f, -29.995001f, 0f, 0f, -0.921961f, -0.387282f));
                    // /teleloc 0x02F5019B [40.946705 0.482816 -38.994999] -0.306170 0.000000 0.000000 -0.951977
                    metos.GuardianSpawnLocs.Add(new Position(0x02F5019B, 40.946705f, 0.482816f, -38.994999f, 0f, 0f, -0.951977f, -0.306170f));
                    // /teleloc 0x02F50171 [29.215998 -60.726604 -41.994999] 0.909805 0.000000 0.000000 -0.415035
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50171, 29.215998f, -60.726604f, -41.994999f, 0f, 0f, -0.415035f, 0.909805f));
                    // /teleloc 0x02F50110 [55.708839 -78.901169 -53.994999] 0.955164 0.000000 0.000000 -0.296078
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50110, 55.708839f, -78.901169f, -53.994999f, 0f, 0f, -0.296078f, 0.955164f));
                    // /teleloc 0x02F50113 [65.186844 -80.246071 -53.994999] 0.960637 0.000000 0.000000 0.277806
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50113, 65.186844f, -80.246071f, -53.994999f, 0f, 0f, 0.277806f, 0.960637f));
                    // /teleloc 0x02F50114 [74.707268 -90.009445 -53.994999] 0.891832 0.000000 0.000000 0.452366
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50114, 74.707268f, -90.009445f, -53.994999f, 0f, 0f, 0.452366f, 0.891832f));
                    // /teleloc 0x02F5010C [52.709599 -96.832268 -53.994999] -0.969493 0.000000 0.000000 0.245118
                    metos.GuardianSpawnLocs.Add(new Position(0x02F5010C, 52.709599f, -96.832268f, -53.994999f, 0f, 0f, 0.245118f, -0.969493f));
                    // /teleloc 0x02F5010B [49.778099 -85.651184 -53.994999] -0.956534 0.000000 0.000000 0.291620
                    metos.GuardianSpawnLocs.Add(new Position(0x02F5010B, 49.778099f, -85.651184f, -53.994999f, 0f, 0f, 0.291620f, -0.956534f));
                    // /teleloc 0x02F50105 [61.607750 -102.851524 -65.994995] -0.957309 0.000000 0.000000 -0.289067
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50105, 61.607750f, -102.851524f, -65.994995f, 0f, 0f, -0.289067f, -0.957309f));
                    // /teleloc 0x02F50105 [56.795921 -97.312859 -65.994995] -0.587004 0.000000 0.000000 0.809584
                    metos.GuardianSpawnLocs.Add(new Position(0x02F50105, 56.795921f, -97.312859f, -65.994995f, 0f, 0f, 0.809584f, -0.587004f));

                    metos.TreasureSpawnLocs = new List<Position>();
                    // /teleloc 0x02F502A7 [113.269676 -276.884796 0.005000] -0.326314 0.000000 0.000000 -0.945261
                    metos.TreasureSpawnLocs.Add(new Position(0x02F502A7, 113.269676f, -276.884796f, 0.005000f, 0f, 0f, -0.945261f, -0.326314f));
                    // /teleloc 0x02F50215 [110.001007 -221.584106 -17.995001] 0.002134 0.000000 0.000000 -0.999998
                    metos.TreasureSpawnLocs.Add(new Position(0x02F50215, 110.001007f, -221.584106f, -17.995001f, 0f, 0f, -0.999998f, 0.002134f));
                    // /teleloc 0x02F5014E [95.379074 -269.686279 -47.994999] 0.620298 0.000000 0.000000 0.784366
                    metos.TreasureSpawnLocs.Add(new Position(0x02F5014E, 95.379074f, -269.686279f, -47.994999f, 0f, 0f, 0.784366f, 0.620298f));
                    // /teleloc 0x02F50163 [120.396919 -325.372681 -47.994999] -0.379828 0.000000 0.000000 -0.925057
                    metos.TreasureSpawnLocs.Add(new Position(0x02F50163, 120.396919f, -325.372681f, -47.994999f, 0f, 0f, -0.925057f, -0.379828f));
                    // /teleloc 0x02F50206 [79.822899 -218.752838 -17.995001] -0.039414 0.000000 0.000000 0.999223
                    metos.TreasureSpawnLocs.Add(new Position(0x02F50206, 79.822899f, -218.752838f, -17.995001f, 0f, 0f, 0.999223f, -0.039414f));
                    // /teleloc 0x02F50267 [35.038383 -288.046478 0.005000] -0.852026 0.000000 0.000000 0.523500
                    metos.TreasureSpawnLocs.Add(new Position(0x02F50267, 35.038383f, -288.046478f, 0.005000f, 0f, 0f, 0.523500f, -0.852026f));
                    // /teleloc 0x02F5021D [22.442234 -188.124298 -11.995001] 0.144878 0.000000 0.000000 0.989450
                    metos.TreasureSpawnLocs.Add(new Position(0x02F5021D, 22.442234f, -188.124298f, -11.995001f, 0f, 0f, 0.989450f, 0.144878f));
                    // /teleloc 0x02F50219 [1.184928 -208.252151 -11.995001] 0.847656 0.000000 0.000000 -0.530546
                    metos.TreasureSpawnLocs.Add(new Position(0x02F50219, 1.184928f, -208.252151f, -11.995001f, 0f, 0f, -0.530546f, 0.847656f));
                    // /teleloc 0x02F50245 [143.145035 -146.749054 -11.995001] 0.284208 0.000000 0.000000 0.958763
                    metos.TreasureSpawnLocs.Add(new Position(0x02F50245, 143.145035f, -146.749054f, -11.995001f, 0f, 0f, 0.958763f, 0.284208f));
                    // /teleloc 0x02F50202 [82.597397 -147.257996 -17.995001] 0.402429 0.000000 0.000000 0.915451
                    metos.TreasureSpawnLocs.Add(new Position(0x02F50202, 82.597397f, -147.257996f, -17.995001f, 0f, 0f, 0.915451f, 0.402429f));
                    // /teleloc 0x02F501D8 [54.424690 -97.043083 -23.995001] -0.705120 0.000000 0.000000 -0.709088
                    metos.TreasureSpawnLocs.Add(new Position(0x02F501D8, 54.424690f, -97.043083f, -23.995001f, 0f, 0f, -0.709088f, -0.705120f));
                    // /teleloc 0x02F501A8 [17.149738 -38.537998 -29.995001] 0.709756 0.000000 0.000000 -0.704447
                    metos.TreasureSpawnLocs.Add(new Position(0x02F501A8, 17.149738f, -38.537998f, -29.995001f, 0f, 0f, -0.704447f, 0.709756f));
                    // /teleloc 0x02F50187 [59.439247 -29.056589 -44.994999] 0.316752 0.000000 0.000000 -0.948508
                    metos.TreasureSpawnLocs.Add(new Position(0x02F50187, 59.439247f, -29.056589f, -44.994999f, 0f, 0f, -0.948508f, 0.316752f));
                    // /teleloc 0x02F50116 [77.659271 -83.549133 -53.994999] -0.259966 0.000000 0.000000 -0.965618
                    metos.TreasureSpawnLocs.Add(new Position(0x02F50116, 77.659271f, -83.549133f, -53.994999f, 0f, 0f, -0.965618f, -0.259966f));
                    // /teleloc 0x02F50105 [63.208141 -104.100807 -65.994995] -0.957700 0.000000 0.000000 -0.287768
                    metos.TreasureSpawnLocs.Add(new Position(0x02F50105, 63.208141f, -104.100807f, -65.994995f, 0f, 0f, -0.287768f, -0.957700f));

                    _dungeons.Add(metos.LandblockId, metos);

                    #endregion Metos

                    #region BSD
                    var bsd = new OwnableDungeon();
                    bsd.DungeonName = "Black Spawn Den";
                    bsd.LandblockId = 0x0105;
                    bsd.GuardianWeenieId = 514108531;
                    bsd.ControlPointCellId = 17105476;
                    bsd.CaptureScore = 600;
                    bsd.XpAndLumBonus = 2.0f;
                    bsd.OwnershipExpirationHours = 6;
                    bsd.TreasureWeenieId = 514108532;
                    bsd.TreasureSpawnRateMins = 5;

                    bsd.GuardianSpawnLocs = new List<Position>();
                    // /teleloc 0x01050382 [106.982262 -213.399200 0.005000] 0.870059 0.000000 0.000000 0.492947
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050382, 106.982262f, -213.399200f, 0.005000f, 0f, 0f, 0.492947f, 0.870059f));
                    // /teleloc 0x01050382 [107.430519 -206.749954 0.005000] 0.609277 0.000000 0.000000 0.792958
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050382, 107.430519f, -206.749954f, 0.005000f, 0f, 0f, 0.792958f, 0.609277f));
                    // /teleloc 0x01050375 [96.862022 -207.855438 0.005000] -0.623055 0.000000 0.000000 0.782178
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050375, 96.862022f, -207.855438f, 0.005000f, 0f, 0f, 0.782178f, -0.623055f));
                    // /teleloc 0x01050375 [97.681602 -213.066422 0.005000] -0.931182 0.000000 0.000000 0.364554
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050375, 97.681602f, -213.066422f, 0.005000f, 0f, 0f, 0.364554f, -0.931182f));
                    // /teleloc 0x01050381 [110.196869 -195.746582 0.005000] -0.036704 0.000000 0.000000 0.999326
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050381, 110.196869f, -195.746582f, 0.005000f, 0f, 0f, 0.999326f, -0.036704f));
                    // /teleloc 0x0105037E [107.411026 -168.641006 0.005000] 0.446231 0.000000 0.000000 -0.894918
                    bsd.GuardianSpawnLocs.Add(new Position(0x0105037E, 107.411026f, -168.641006f, 0.005000f, 0f, 0f, -0.894918f, 0.446231f));
                    // /teleloc 0x01050384 [121.251007 -180.069199 0.005000] -0.908467 0.000000 0.000000 -0.417956
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050384, 121.251007f, -180.069199f, 0.005000f, 0f, 0f, -0.417956f, -0.908467f));
                    // /teleloc 0x01050351 [89.590607 -129.385300 0.005000] 0.248015 0.000000 0.000000 -0.968756
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050351, 89.590607f, -129.385300f, 0.005000f, 0f, 0f, -0.968756f, 0.248015f));
                    // /teleloc 0x01050362 [100.968964 -109.672966 0.005000] 0.210436 0.000000 0.000000 0.977608
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050362, 100.968964f, -109.672966f, 0.005000f, 0f, 0f, 0.977608f, 0.210436f));
                    // /teleloc 0x0105031D [68.951614 -109.174858 0.005000] -0.523641 0.000000 0.000000 0.851939
                    bsd.GuardianSpawnLocs.Add(new Position(0x0105031D, 68.951614f, -109.174858f, 0.005000f, 0f, 0f, 0.851939f, -0.523641f));
                    // /teleloc 0x010502FE [60.015694 -89.578835 0.005000] 0.260217 0.000000 0.000000 -0.965550
                    bsd.GuardianSpawnLocs.Add(new Position(0x010502FE, 60.015694f, -89.578835f, 0.005000f, 0f, 0f, -0.965550f, 0.260217f));
                    // /teleloc 0x01050323 [79.541016 -58.495773 0.005000] 0.149602 0.000000 0.000000 -0.988746
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050323, 79.541016f, -58.495773f, 0.005000f, 0f, 0f, -0.988746f, 0.149602f));
                    // /teleloc 0x0105035E [100.924919 -60.076706 0.005000] -0.423947 0.000000 0.000000 -0.905687
                    bsd.GuardianSpawnLocs.Add(new Position(0x0105035E, 100.924919f, -60.076706f, 0.005000f, 0f, 0f, -0.905687f, -0.423947f));
                    // /teleloc 0x010502A5 [99.817940 -110.610634 -5.995000] 0.999003 0.000000 0.000000 0.044646
                    bsd.GuardianSpawnLocs.Add(new Position(0x010502A5, 99.817940f, -110.610634f, -5.995000f, 0f, 0f, 0.044646f, 0.999003f));
                    // /teleloc 0x010502AA [99.074478 -122.155602 -5.995000] 0.999986 0.000000 0.000000 -0.005339
                    bsd.GuardianSpawnLocs.Add(new Position(0x010502AA, 99.074478f, -122.155602f, -5.995000f, 0f, 0f, -0.005339f, 0.999986f));
                    // /teleloc 0x010502B4 [99.949585 -139.683441 -5.995000] -0.999826 0.000000 0.000000 -0.018649
                    bsd.GuardianSpawnLocs.Add(new Position(0x010502B4, 99.949585f, -139.683441f, -5.995000f, 0f, 0f, -0.018649f, -0.999826f));
                    // /teleloc 0x010502D0 [109.457008 -165.432861 -5.995000] -0.933671 0.000000 0.000000 -0.358132
                    bsd.GuardianSpawnLocs.Add(new Position(0x010502D0, 109.457008f, -165.432861f, -5.995000f, 0f, 0f, -0.358132f, -0.933671f));
                    // /teleloc 0x010502D6 [139.996246 -176.757462 -5.995000] 0.957271 0.000000 0.000000 0.289191
                    bsd.GuardianSpawnLocs.Add(new Position(0x010502D6, 139.996246f, -176.757462f, -5.995000f, 0f, 0f, 0.289191f, 0.957271f));
                    // /teleloc 0x010502D5 [144.332703 -166.648224 -5.995000] 0.425021 0.000000 0.000000 0.905184
                    bsd.GuardianSpawnLocs.Add(new Position(0x010502D5, 144.332703f, -166.648224f, -5.995000f, 0f, 0f, 0.905184f, 0.425021f));
                    // /teleloc 0x010502F1 [49.123032 -110.024681 0.005000] -0.998950 0.000000 0.000000 0.045811
                    bsd.GuardianSpawnLocs.Add(new Position(0x010502F1, 49.123032f, -110.024681f, 0.005000f, 0f, 0f, 0.045811f, -0.998950f));
                    // /teleloc 0x010502E6 [49.515961 -79.277931 0.005000] -0.681659 0.000000 0.000000 0.731670
                    bsd.GuardianSpawnLocs.Add(new Position(0x010502E6, 49.515961f, -79.277931f, 0.005000f, 0f, 0f, 0.731670f, -0.681659f));
                    // /teleloc 0x010502D8 [30.053665 -60.442623 0.005000] 0.615670 0.000000 0.000000 -0.788004
                    bsd.GuardianSpawnLocs.Add(new Position(0x010502D8, 30.053665f, -60.442623f, 0.005000f, 0f, 0f, -0.788004f, 0.615670f));
                    // /teleloc 0x01050262 [29.789368 -79.660782 -5.995000] 0.999877 0.000000 0.000000 0.015694
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050262, 29.789368f, -79.660782f, -5.995000f, 0f, 0f, 0.015694f, 0.999877f));
                    // /teleloc 0x01050265 [40.203693 -100.726135 -5.995000] -0.790586 0.000000 0.000000 -0.612351
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050265, 40.203693f, -100.726135f, -5.995000f, 0f, 0f, -0.612351f, -0.790586f));
                    // /teleloc 0x01050241 [49.739769 -120.256248 -11.995001] -0.999990 0.000000 0.000000 -0.004380
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050241, 49.739769f, -120.256248f, -11.995001f, 0f, 0f, -0.004380f, -0.999990f));
                    // /teleloc 0x0105024B [58.928005 -133.674011 -11.995001] 0.342678 0.000000 0.000000 0.939453
                    bsd.GuardianSpawnLocs.Add(new Position(0x0105024B, 58.928005f, -133.674011f, -11.995001f, 0f, 0f, 0.939453f, 0.342678f));
                    // /teleloc 0x0105023E [41.956902 -157.960999 -11.995001] -0.949989 0.000000 0.000000 0.312284
                    bsd.GuardianSpawnLocs.Add(new Position(0x0105023E, 41.956902f, -157.960999f, -11.995001f, 0f, 0f, 0.312284f, -0.949989f));
                    // /teleloc 0x0105024E [56.200138 -156.295914 -11.995001] -0.931899 0.000000 0.000000 -0.362718
                    bsd.GuardianSpawnLocs.Add(new Position(0x0105024E, 56.200138f, -156.295914f, -11.995001f, 0f, 0f, -0.362718f, -0.931899f));
                    // /teleloc 0x0105023C [40.638165 -136.619370 -11.995001] -0.415604 0.000000 0.000000 0.909546
                    bsd.GuardianSpawnLocs.Add(new Position(0x0105023C, 40.638165f, -136.619370f, -11.995001f, 0f, 0f, 0.909546f, -0.415604f));
                    // /teleloc 0x010501A3 [9.729574 -149.609772 -17.995001] 0.698704 0.000000 0.000000 -0.715411
                    bsd.GuardianSpawnLocs.Add(new Position(0x010501A3, 9.729574f, -149.609772f, -17.995001f, 0f, 0f, -0.715411f, 0.698704f));
                    // /teleloc 0x01050192 [-1.317968 -178.440674 -17.995001] 0.555087 0.000000 0.000000 -0.831792
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050192, -1.317968f, -178.440674f, -17.995001f, 0f, 0f, -0.831792f, 0.555087f));
                    // /teleloc 0x010501A6 [5.385244 -198.664139 -17.995001] 0.999373 0.000000 0.000000 -0.035402
                    bsd.GuardianSpawnLocs.Add(new Position(0x010501A6, 5.385244f, -198.664139f, -17.995001f, 0f, 0f, -0.035402f, 0.999373f));
                    // /teleloc 0x010501C1 [21.077938 -197.637421 -17.995001] 0.934249 0.000000 0.000000 0.356621
                    bsd.GuardianSpawnLocs.Add(new Position(0x010501C1, 21.077938f, -197.637421f, -17.995001f, 0f, 0f, 0.356621f, 0.934249f));
                    // /teleloc 0x01050249 [50.051777 -179.805069 -11.995001] 0.999589 0.000000 0.000000 -0.028661
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050249, 50.051777f, -179.805069f, -11.995001f, 0f, 0f, -0.028661f, 0.999589f));
                    // /teleloc 0x010501E8 [70.129784 -180.133667 -17.995001] -0.576974 0.000000 0.000000 -0.816762
                    bsd.GuardianSpawnLocs.Add(new Position(0x010501E8, 70.129784f, -180.133667f, -17.995001f, 0f, 0f, -0.816762f, -0.576974f));
                    // /teleloc 0x010501ED [82.453621 -189.613358 -17.995001] 0.402853 0.000000 0.000000 -0.915265
                    bsd.GuardianSpawnLocs.Add(new Position(0x010501ED, 82.453621f, -189.613358f, -17.995001f, 0f, 0f, -0.915265f, 0.402853f));
                    // /teleloc 0x01050222 [99.913826 -197.250259 -17.995001] 0.895924 0.000000 0.000000 0.444207
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050222, 99.913826f, -197.250259f, -17.995001f, 0f, 0f, 0.444207f, 0.895924f));
                    // /teleloc 0x010501FF [90.924118 -178.216080 -17.995001] 0.250313 0.000000 0.000000 -0.968165
                    bsd.GuardianSpawnLocs.Add(new Position(0x010501FF, 90.924118f, -178.216080f, -17.995001f, 0f, 0f, -0.968165f, 0.250313f));
                    // /teleloc 0x0105021E [100.870636 -163.856628 -17.995001] 0.019692 0.000000 0.000000 0.999806
                    bsd.GuardianSpawnLocs.Add(new Position(0x0105021E, 100.870636f, -163.856628f, -17.995001f, 0f, 0f, 0.999806f, 0.019692f));
                    // /teleloc 0x0105021C [99.405670 -149.784454 -17.995001] 0.337635 0.000000 0.000000 0.941277
                    bsd.GuardianSpawnLocs.Add(new Position(0x0105021C, 99.405670f, -149.784454f, -17.995001f, 0f, 0f, 0.941277f, 0.337635f));
                    // /teleloc 0x01050250 [71.085350 -150.458267 -11.995001] 0.745805 0.000000 0.000000 0.666164
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050250, 71.085350f, -150.458267f, -11.995001f, 0f, 0f, 0.666164f, 0.745805f));
                    // /teleloc 0x010501B0 [9.831750 -230.491394 -17.995001] 0.999836 0.000000 0.000000 -0.018096
                    bsd.GuardianSpawnLocs.Add(new Position(0x010501B0, 9.831750f, -230.491394f, -17.995001f, 0f, 0f, -0.018096f, 0.999836f));
                    // /teleloc 0x010501B5 [9.572132 -239.896729 -17.995001] -0.999948 0.000000 0.000000 -0.010181
                    bsd.GuardianSpawnLocs.Add(new Position(0x010501B5, 9.572132f, -239.896729f, -17.995001f, 0f, 0f, -0.010181f, -0.999948f));
                    // /teleloc 0x010501BE [9.806118 -269.939148 -17.995001] 0.994666 0.000000 0.000000 -0.103146
                    bsd.GuardianSpawnLocs.Add(new Position(0x010501BE, 9.806118f, -269.939148f, -17.995001f, 0f, 0f, -0.103146f, 0.994666f));
                    // /teleloc 0x01050136 [40.364254 -270.609558 -23.995001] 0.936005 0.000000 0.000000 0.351987
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050136, 40.364254f, -270.609558f, -23.995001f, 0f, 0f, 0.351987f, 0.936005f));
                    // /teleloc 0x01050162 [50.027950 -249.767548 -23.995001] 0.143513 0.000000 0.000000 0.989648
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050162, 50.027950f, -249.767548f, -23.995001f, 0f, 0f, 0.989648f, 0.143513f));
                    // /teleloc 0x01050185 [59.254860 -270.294281 -23.995001] -0.908440 0.000000 0.000000 0.418016
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050185, 59.254860f, -270.294281f, -23.995001f, 0f, 0f, 0.418016f, -0.908440f));
                    // /teleloc 0x01050217 [89.580109 -257.643585 -17.995001] -0.999022 0.000000 0.000000 0.044211
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050217, 89.580109f, -257.643585f, -17.995001f, 0f, 0f, 0.044211f, -0.999022f));
                    // /teleloc 0x01050210 [89.611229 -239.883865 -17.995001] -0.999046 0.000000 0.000000 -0.043668
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050210, 89.611229f, -239.883865f, -17.995001f, 0f, 0f, -0.043668f, -0.999046f));
                    // /teleloc 0x01050206 [90.042542 -219.229919 -17.995001] -0.999499 0.000000 0.000000 0.031661
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050206, 90.042542f, -219.229919f, -17.995001f, 0f, 0f, 0.031661f, -0.999499f));
                    // /teleloc 0x010501B0 [9.510007 -230.710739 -17.995001] -0.999903 0.000000 0.000000 0.013934
                    bsd.GuardianSpawnLocs.Add(new Position(0x010501B0, 9.510007f, -230.710739f, -17.995001f, 0f, 0f, 0.013934f, -0.999903f));
                    // /teleloc 0x010501B5 [10.182962 -240.535782 -17.995001] -0.999956 0.000000 0.000000 -0.009380
                    bsd.GuardianSpawnLocs.Add(new Position(0x010501B5, 10.182962f, -240.535782f, -17.995001f, 0f, 0f, -0.009380f, -0.999956f));
                    // /teleloc 0x0105015D [50.247765 -240.213120 -23.995001] 0.040511 0.000000 0.000000 0.999179
                    bsd.GuardianSpawnLocs.Add(new Position(0x0105015D, 50.247765f, -240.213120f, -23.995001f, 0f, 0f, 0.999179f, 0.040511f));
                    // /teleloc 0x01050158 [50.050488 -225.567612 -23.995001] 0.018835 0.000000 0.000000 0.999823
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050158, 50.050488f, -225.567612f, -23.995001f, 0f, 0f, 0.999823f, 0.018835f));
                    // /teleloc 0x01050154 [50.049313 -212.022400 -23.995001] 0.007557 0.000000 0.000000 0.999971
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050154, 50.049313f, -212.022400f, -23.995001f, 0f, 0f, 0.999971f, 0.007557f));
                    // /teleloc 0x0105014E [50.066589 -190.944412 -23.995001] -0.005557 0.000000 0.000000 -0.999985
                    bsd.GuardianSpawnLocs.Add(new Position(0x0105014E, 50.066589f, -190.944412f, -23.995001f, 0f, 0f, -0.999985f, -0.005557f));
                    // /teleloc 0x01050142 [49.661308 -148.904083 -23.995001] -0.006513 0.000000 0.000000 0.999979
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050142, 49.661308f, -148.904083f, -23.995001f, 0f, 0f, 0.999979f, -0.006513f));
                    // /teleloc 0x0105010E [50.164330 -127.659859 -29.995001] -0.006513 0.000000 0.000000 0.999979
                    bsd.GuardianSpawnLocs.Add(new Position(0x0105010E, 50.164330f, -127.659859f, -29.995001f, 0f, 0f, 0.999979f, -0.006513f));
                    // /teleloc 0x0105010B [50.335278 -104.437843 -29.995001] -0.006513 0.000000 0.000000 0.999979
                    bsd.GuardianSpawnLocs.Add(new Position(0x0105010B, 50.335278f, -104.437843f, -29.995001f, 0f, 0f, 0.999979f, -0.006513f));
                    // /teleloc 0x0105010A [50.024918 -89.436157 -29.995001] -0.006513 0.000000 0.000000 0.999979
                    bsd.GuardianSpawnLocs.Add(new Position(0x0105010A, 50.024918f, -89.436157f, -29.995001f, 0f, 0f, 0.999979f, -0.006513f));
                    // /teleloc 0x01050108 [49.847786 -72.971733 -29.995001] -0.006513 0.000000 0.000000 0.999979
                    bsd.GuardianSpawnLocs.Add(new Position(0x01050108, 49.847786f, -72.971733f, -29.995001f, 0f, 0f, 0.999979f, -0.006513f));

                    bsd.TreasureSpawnLocs = new List<Position>();
                    // /teleloc 0x0105024B [57.264206 -133.138992 -11.995001] 0.490619 0.000000 0.000000 0.871374
                    bsd.TreasureSpawnLocs.Add(new Position(0x0105024B, 57.264206f, -133.138992f, -11.995001f, 0f, 0f, 0.871374f, 0.490619f));
                    // /teleloc 0x010502D8 [28.942432 -58.534222 0.005000] 0.458286 0.000000 0.000000 -0.888805
                    bsd.TreasureSpawnLocs.Add(new Position(0x010502D8, 28.942432f, -58.534222f, 0.005000f, 0f, 0f, -0.888805f, 0.458286f));
                    // /teleloc 0x01050314 [70.394791 -89.211647 0.005000] 0.726884 0.000000 0.000000 -0.686761
                    bsd.TreasureSpawnLocs.Add(new Position(0x01050314, 70.394791f, -89.211647f, 0.005000f, 0f, 0f, -0.686761f, 0.726884f));
                    // /teleloc 0x0105035E [101.713226 -59.182182 0.005000] -0.128714 0.000000 0.000000 -0.991682
                    bsd.TreasureSpawnLocs.Add(new Position(0x0105035E, 101.713226f, -59.182182f, 0.005000f, 0f, 0f, -0.991682f, -0.128714f));
                    // /teleloc 0x01050296 [89.060234 -141.132599 -5.995000] 0.935060 0.000000 0.000000 -0.354489
                    bsd.TreasureSpawnLocs.Add(new Position(0x01050296, 89.060234f, -141.132599f, -5.995000f, 0f, 0f, -0.354489f, 0.935060f));
                    // /teleloc 0x010502D6 [143.660416 -177.990982 -5.995000] 0.903073 0.000000 0.000000 0.429487
                    bsd.TreasureSpawnLocs.Add(new Position(0x010502D6, 143.660416f, -177.990982f, -5.995000f, 0f, 0f, 0.429487f, 0.903073f));
                    // /teleloc 0x01050362 [101.436111 -108.670799 0.005000] 0.235489 0.000000 0.000000 0.971877
                    bsd.TreasureSpawnLocs.Add(new Position(0x01050362, 101.436111f, -108.670799f, 0.005000f, 0f, 0f, 0.971877f, 0.235489f));
                    // /teleloc 0x010502C5 [110.420364 -120.942001 -5.995000] 0.483081 0.000000 0.000000 0.875576
                    bsd.TreasureSpawnLocs.Add(new Position(0x010502C5, 110.420364f, -120.942001f, -5.995000f, 0f, 0f, 0.875576f, 0.483081f));
                    // /teleloc 0x0105018E [-1.169175 -148.673828 -17.995001] -0.284987 0.000000 0.000000 0.958531
                    bsd.TreasureSpawnLocs.Add(new Position(0x0105018E, -1.169175f, -148.673828f, -17.995001f, 0f, 0f, 0.958531f, -0.284987f));
                    // /teleloc 0x010501A4 [12.529127 -177.477036 -17.995001] 0.288271 0.000000 0.000000 0.957549
                    bsd.TreasureSpawnLocs.Add(new Position(0x010501A4, 12.529127f, -177.477036f, -17.995001f, 0f, 0f, 0.957549f, 0.288271f));
                    // /teleloc 0x010501CB [21.116800 -239.951202 -17.995001] 0.626234 0.000000 0.000000 0.779635
                    bsd.TreasureSpawnLocs.Add(new Position(0x010501CB, 21.116800f, -239.951202f, -17.995001f, 0f, 0f, 0.779635f, 0.626234f));
                    // /teleloc 0x01050123 [41.540836 -168.604294 -23.995001] -0.573837 0.000000 0.000000 0.818970
                    bsd.TreasureSpawnLocs.Add(new Position(0x01050123, 41.540836f, -168.604294f, -23.995001f, 0f, 0f, 0.818970f, -0.573837f));
                    // /teleloc 0x01050109 [53.153202 -75.221466 -29.995001] 0.265176 0.000000 0.000000 0.964200
                    bsd.TreasureSpawnLocs.Add(new Position(0x01050109, 53.153202f, -75.221466f, -29.995001f, 0f, 0f, 0.964200f, 0.265176f));
                    // /teleloc 0x0105016E [63.116505 -85.019211 -23.995001] -0.729014 0.000000 0.000000 -0.684499
                    bsd.TreasureSpawnLocs.Add(new Position(0x0105016E, 63.116505f, -85.019211f, -23.995001f, 0f, 0f, -0.684499f, -0.729014f));
                    // /teleloc 0x01050121 [38.737038 -112.939438 -23.995001] 0.977720 0.000000 0.000000 -0.209914
                    bsd.TreasureSpawnLocs.Add(new Position(0x01050121, 38.737038f, -112.939438f, -23.995001f, 0f, 0f, -0.209914f, 0.977720f));
                    // /teleloc 0x01050279 [63.550301 -46.791283 -5.995000] -0.198687 0.000000 0.000000 -0.980063
                    bsd.TreasureSpawnLocs.Add(new Position(0x01050279, 63.550301f, -46.791283f, -5.995000f, 0f, 0f, -0.980063f, -0.198687f));
                    _dungeons.Add(bsd.LandblockId, bsd);

                    #endregion BSD
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

        private static List<uint> _guardianList;
        public static List<uint> GuardianList
        {
            get
            {
                if (_guardianList == null)
                {
                    _guardianList = new List<uint>();
                    _guardianList.Add(514108531); //Empyrean Guardian
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

                DungeonControl.PKQuest_Score(allegianceId, landblock);

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
                if (dungeon.AllegianceScoreBoard[allegianceId].Score >= dungeon.CaptureScore)
                {
                    //Declare a winner
                    dungeon.OwningAllegianceId = allegianceId;
                    dungeon.OwningAllegianceName = monarch?.Name;
                    dungeon.AllegianceScoreBoard = new Dictionary<uint, DungeonControlScoreboardItem>();
                    dungeon.CaptureTime = DateTime.UtcNow;

                    //Spawn Guardians
                    SpawnGuardians(dungeon, allegianceId, landblock);

                    PKQuest_Win(allegianceId, landblock);

                    //Broadcast the win                    
                    PlayerManager.BroadcastToAll(new GameMessageSystemChat($"{dungeon.OwningAllegianceName} has gained control of the {dungeon.DungeonName} dungeon and summoned its protectors.", ChatMessageType.Broadcast));                    
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
                treasureWorldObj.Name = $"{dungeon.OwningAllegianceName}'s Treasure";
                treasureWorldObj.EnterWorld();

                dungeon.LastTreasureSpawnTime  = DateTime.UtcNow;

                return true;
            }

            return false;
        }

        public static void PKQuest_Win(uint allegianceId, Landblock landblock)
        {
            foreach(var player in landblock.GetCurrentLandblockPlayers())
            {
                if (player.Allegiance?.MonarchId == allegianceId)
                {
                    player.CompletePkQuestTasks(PKQuests.PKQuests.PKQuests_DungeonControl_Win);
                }
            }            
        }

        public static void PKQuest_Score(uint allegianceId, Landblock landblock)
        {
            foreach (var player in landblock.GetCurrentLandblockPlayers())
            {
                if (player.Allegiance?.MonarchId == allegianceId)
                {
                    player.CompletePkQuestTasks(PKQuests.PKQuests.PKQuests_DungeonControl_ScorePoints, 5);
                }
            }
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

        private int _captureScore = 0;
        public int CaptureScore
        {
            get
            {
                return Convert.ToInt32(Math.Round(PropertyManager.GetDouble("dungeoncontrol_capturescore_mod").Item * _captureScore));
            }
            set
            {
                _captureScore = value;
            }
        }

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
