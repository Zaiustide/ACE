using ACE.Common;
using ACE.Entity;
using ACE.Server.Entity.TownControl;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Entity.WorldBoss
{
    public static class WorldBosses
    {
        private static Dictionary<uint, WorldBoss> _worldBossMap;
        public static Dictionary<uint, WorldBoss> WorldBossMap
        {
            get
            {
                if (_worldBossMap == null)
                {
                    _worldBossMap = new Dictionary<uint, WorldBoss>();

                    var townSpawnLocations = new Dictionary<uint, Position>();

                    //Holtburg
                    //0xA9B40019[84.000000 7.100000 94.005005] -0.818531 0.000000 0.000000 0.574462
                    townSpawnLocations.Add(0xA9B4, new Position(0xA9B40019, 84.000000f, 7.100000f, 94.005005f, 0f, 0f, 0.574462f, -0.818531f));
                    //Arwic
                    // 0xC5A90039 [175.435669 2.096370 42.005001] 0.993893 0.000000 0.000000 -0.110345
                    townSpawnLocations.Add(0xC5A, new Position(0xC5A90039, 175.435669f, 2.096370f, 42.005001f, 0f, 0f, -0.110345f, 0.993893f));
                    //Cragstone
                    // 0xBC9F0032 [152.511810 40.966343 32.005001] -0.944500 0.000000 0.000000 0.328510
                    townSpawnLocations.Add(0xBC9, new Position(0xBC9F0032, 152.511810f, 40.966343f, 32.005001f, 0f, 0f, 0.328510f, -0.944500f));
                    //Glenden Wood
                    //0xA1A4001E[84.335281 135.430603 50.005001] 0.624067 0.000000 0.000000 0.781371
                    townSpawnLocations.Add(0xA1A4, new Position(0xA1A4001E, 84.335281f, 135.430603f, 50.005001f, 0f, 0f, 0.781371f, 0.624067f));
                    //Eastham
                    //0xCE950023 [98.732826 67.036369 20.004999] 0.034352 0.000000 0.000000 -0.999410
                    townSpawnLocations.Add(0xCE95, new Position(0xCE950023, 98.732826f, 67.036369f, 20.004999f, 0f, 0f, -0.999410f, 0.034352f));
                    //Rithwic
                    //0xC88C0010 [46.596001 177.504517 22.004999] 0.043750 0.000000 0.000000 0.999043
                    townSpawnLocations.Add(0xC88C, new Position(0xC88C0010, 46.596001f, 177.504517f, 22.004999f, 0f, 0f, 0.999043f, 0.043750f));
                    //Lytelthorpe
                    //0xBF80002A [130.644211 35.077942 34.005001] 0.504443 0.000000 0.000000 0.863445
                    townSpawnLocations.Add(0xBF80, new Position(0xBF80002A, 130.644211f, 35.077942f, 34.005001f, 0f, 0f, 0.863445f, 0.504443f));
                    //Dryreach
                    //0xDA75002B [125.892776 53.390106 18.004999] 0.999874 0.000000 0.000000 0.015896
                    townSpawnLocations.Add(0xDA75, new Position(0xDA75002B, 125.892776f, 53.390106f, 18.004999f, 0f, 0f, 0.015896f, 0.999874f));
                    //Yanshi
                    //0xB4700023 [97.076279 50.973000 42.005001] 0.066429 0.000000 0.000000 -0.997791
                    townSpawnLocations.Add(0xB470, new Position(0xB4700023, 97.076279f, 50.973000f, 42.005001f, 0f, 0f, -0.997791f, 0.066429f));
                    //Sawato
                    //0xC95B0012 [49.561321 47.936050 12.004999] 0.922906 0.000000 0.000000 -0.385025
                    townSpawnLocations.Add(0xC95B, new Position(0xC95B0012, 49.561321f, 47.936050f, 12.004999f, 0f, 0f, -0.385025f, 0.922906f));
                    //Shoushi
                    //0xDA55000F [40.823944 153.379349 20.004999] -0.306876 0.000000 0.000000 0.951749
                    townSpawnLocations.Add(0xDA55, new Position(0xDA55000F, 40.823944f, 153.379349f, 20.004999f, 0f, 0f, 0.951749f, -0.306876f));
                    //Tou-Tou
                    //0xF659000D [32.851986 115.539680 20.004999] -0.486821 0.000000 0.000000 -0.873502
                    townSpawnLocations.Add(0xF659, new Position(0xF659000D, 32.851986f, 115.539680f, 20.004999f, 0f, 0f, -0.873502f, -0.486821f));
                    //Hebian-to
                    //0xE74E0024 [99.442001 89.665710 32.005001] -0.913220 0.000000 0.000000 -0.407468
                    townSpawnLocations.Add(0xE74E, new Position(0xE74E0024, 99.442001f, 89.665710f, 32.005001f, 0f, 0f, -0.407468f, -0.913220f));
                    //Baishi
                    //0xCD41003E [175.597000 137.570847 54.005001] 0.902995 0.000000 0.000000 0.429651
                    townSpawnLocations.Add(0xCD41, new Position(0xCD41003E, 175.597000f, 137.570847f, 54.005001f, 0f, 0f, 0.429651f, 0.902995f));
                    //Nanto
                    //0xE63D001C [82.996132 79.411369 86.005005] -0.950987 0.000000 0.000000 -0.309232
                    townSpawnLocations.Add(0xE63D, new Position(0xE63D001C, 82.996132f, 79.411369f, 86.005005f, 0f, 0f, -0.309232f, -0.950987f));
                    //Lin
                    //0xDB3B0014 [60.044014 84.005684 57.084110] -0.883351 0.000000 0.000000 -0.468712
                    townSpawnLocations.Add(0xDB3B, new Position(0xDB3B0014, 60.044014f, 84.005684f, 57.084110f, 0f, 0f, -0.468712f, -0.883351f));
                    //Mayoi
                    //0xE5320037 [146.308548 159.997742 28.005001] 0.440996 0.000000 0.000000 -0.897509
                    townSpawnLocations.Add(0xE532, new Position(0xE5320037, 146.308548f, 159.997742f, 28.005001f, 0f, 0f, -0.897509f, 0.440996f));
                    //Bobo
                    //0xF7820003 [21.934408 65.497208 58.374767] 0.648404 0.000000 0.000000 0.761296
                    townSpawnLocations.Add(0xF782, new Position(0xF7820003, 21.934408f, 65.497208f, 58.374767f, 0f, 0f, 0.761296f, 0.648404f));
                    //Kryst
                    //0xE7210033 [154.716858 61.738091 28.042912] 0.878418 0.000000 0.000000 -0.477893
                    townSpawnLocations.Add(0xE721, new Position(0xE7210033, 154.716858f, 61.738091f, 28.042912f, 0f, 0f, -0.477893f, 0.878418f));
                    //Kara
                    //0xBA17000A [38.840076 41.283428 132.004990] 0.988712 0.000000 0.000000 -0.149825
                    townSpawnLocations.Add(0xBA17, new Position(0xBA17000A, 38.840076f, 41.283428f, 132.004990f, 0f, 0f, -0.149825f, 0.988712f));
                    //Bandit Castle
                    //0xBDD20034 [155.707336 85.875298 198.004990] -0.026261 0.000000 0.000000 0.999655
                    townSpawnLocations.Add(0xBDD2, new Position(0xBDD20034, 155.707336f, 85.875298f, 198.004990f, 0f, 0f, 0.999655f, -0.026261f));
                    //Zaikhal
                    //0x8090000E [35.038811 132.304123 124.005005] -0.010426 0.000000 0.000000 0.999946
                    townSpawnLocations.Add(0x8090, new Position(0x8090000E, 35.038811f, 132.304123f, 124.005005f, 0f, 0f, 0.999946f, -0.010426f));
                    //Al-Jalima
                    //0x85880027 [106.950928 160.439148 86.005005] -0.135398 0.000000 0.000000 0.990791
                    townSpawnLocations.Add(0x8588, new Position(0x85880027, 106.950928f, 160.439148f, 86.005005f, 0f, 0f, 0.990791f, -0.135398f));
                    //Samsur
                    //0x987B0006 [16.509394 122.500298 0.005000] 0.950834 0.000000 0.000000 0.309700
                    townSpawnLocations.Add(0x987B, new Position(0x987B0006, 16.509394f, 122.500298f, 0.005000f, 0f, 0f, 0.309700f, 0.950834f));
                    //Tufa
                    //0x866E0001 [0.435155 10.220376 -0.445000] -0.273227 0.000000 0.000000 -0.961950
                    townSpawnLocations.Add(0x866E, new Position(0x866E0001, 0.435155f, 10.220376f, -0.445000f, 0f, 0f, -0.961950f, -0.273227f));
                    //Yaraq
                    //0x7D640013 [60.771282 54.519730 12.447500] -0.995155 0.000000 0.000000 -0.098318
                    townSpawnLocations.Add(0x7D64, new Position(0x7D640013, 60.771282f, 54.519730f, 12.447500f, 0f, 0f, -0.098318f, -0.995155f));
                    //Uziz
                    //0xA25F0014 [66.929497 95.122032 11.554999] 0.846659 0.000000 0.000000 -0.532136
                    townSpawnLocations.Add(0xA25F, new Position(0xA25F0014, 66.929497f, 95.122032f, 11.554999f, 0f, 0f, -0.532136f, 0.846659f));
                    //Al-Arqas
                    //0x90580023 [100.073776 70.534561 -0.445000] 0.921922 0.000000 0.000000 0.387376
                    townSpawnLocations.Add(0x9058, new Position(0x90580023, 100.073776f, 70.534561f, -0.445000f, 0f, 0f, 0.387376f, 0.921922f));
                    //Xarabydun
                    //0x934B001B [79.162834 63.908718 12.679274] 0.145297 0.000000 0.000000 0.989388
                    townSpawnLocations.Add(0x934B, new Position(0x934B001B, 79.162834f, 63.908718f, 12.679274f, 0f, 0f, 0.989388f, 0.145297f));
                    //Khayyaban
                    //0x9E43001E[82.985428 131.354202 34.005001] -0.959535 0.000000 0.000000 0.281588
                    townSpawnLocations.Add(0x9E43, new Position(0x9E43001E, 82.985428f, 131.354202f, 34.005001f, 0f, 0f, 0.281588f, -0.959535f));
                    //Qalabar
                    //0x97220024 [104.521904 85.273285 102.005013] -0.397115 0.000000 0.000000 0.917769
                    townSpawnLocations.Add(0x9722, new Position(0x97220024, 104.521904f, 85.273285f, 102.005013f, 0f, 0f, 0.917769f, -0.397115f));
                    //Stonehold
                    //0x64D50025 [116.121086 112.557426 78.005005] -0.361277 0.000000 0.000000 -0.932459
                    townSpawnLocations.Add(0x64D5, new Position(0x64D50025, 116.121086f, 112.557426f, 78.005005f, 0f, 0f, -0.932459f, -0.361277f));
                    //Fort Tethena
                    //0x25810022 [98.240387 35.904091 220.004990] -0.985102 0.000000 0.000000 -0.171973
                    townSpawnLocations.Add(0x2581, new Position(0x25810022, 98.240387f, 35.904091f, 220.004990f, 0f, 0f, -0.171973f, -0.985102f));
                    //Ayan
                    //0x11340015 [63.642944 105.882202 42.005001] 0.937045 0.000000 0.000000 -0.349210
                    townSpawnLocations.Add(0x1134, new Position(0x11340015, 63.642944f, 105.882202f, 42.005001f, 0f, 0f, -0.349210f, 0.937045f));
                    //Candeth
                    //0x2B110020 [75.356079 174.433151 48.005001] -0.687882 0.000000 0.000000 0.725823
                    townSpawnLocations.Add(0x2B11, new Position(0x2B110020, 75.356079f, 174.433151f, 48.005001f, 0f, 0f, 0.725823f, -0.687882f));
                    //Redspire
                    //0x17B2002B [130.813599 55.798695 47.656139] -0.014214 0.000000 0.000000 -0.999899
                    townSpawnLocations.Add(0x17B2, new Position(0x17B2002B, 130.813599f, 55.798695f, 47.656139f, 0f, 0f, -0.999899f, -0.014214f));
                    //Greenspire
                    //0x2BB5003D [185.050751 100.927368 0.005000] 0.203369 0.000000 0.000000 -0.979102
                    townSpawnLocations.Add(0x2BB5, new Position(0x2BB5003D, 185.050751f, 100.927368f, 0.005000f, 0f, 0f, -0.979102f, 0.203369f));
                    //Bluespire
                    //0x21B00014 [56.269630 91.845093 0.005000] 0.989987 0.000000 0.000000 0.141158
                    townSpawnLocations.Add(0x21B0, new Position(0x21B00014, 56.269630f, 91.845093f, 0.005000f, 0f, 0f, 0.141158f, 0.989987f));
                    //Timaru
                    //0x1EB60007 [8.295841 155.768005 120.005005] -0.348506 0.000000 0.000000 -0.937307
                    townSpawnLocations.Add(0x1EB6, new Position(0x1EB60007, 8.295841f, 155.768005f, 120.005005f, 0f, 0f, -0.937307f, -0.348506f));
                    //Sanamar
                    //0x33D90003 [12.172110 54.826462 52.005001] 0.783820 0.000000 0.000000 -0.620989
                    townSpawnLocations.Add(0x33D9, new Position(0x33D90003, 12.172110f, 54.826462f, 52.005001f, 0f, 0f, -0.620989f, 0.783820f));
                    //Silyun
                    //0x27EC001C [78.606445 82.675735 80.005005] 0.847683 0.000000 0.000000 0.530502
                    townSpawnLocations.Add(0x27EC, new Position(0x27EC001C, 78.606445f, 82.675735f, 80.005005f, 0f, 0f, 0.530502f, 0.847683f));
                    //Fiun
                    //0x38F7000A [34.456230 28.109114 1.662574] 0.751341 0.000000 0.000000 -0.659914
                    townSpawnLocations.Add(0x38F7, new Position(0x38F7000A, 34.456230f, 28.109114f, 1.662574f, 0f, 0f, -0.659914f, 0.751341f));

                    //BZ near Ayan
                    var bz = new WorldBoss();
                    bz.WeenieID = 490011;
                    bz.Name = "Bael'Zharon";
                    bz.SpawnMsg = "A sudden burst of deep black and sickly red erupts in the distant sky, unimaginably bright yet devoid of light. Seconds later the ground lurches chaotically around you as the air grows thick and oily with the taste of rot. Pain rips through your consciousness like a searing electrical surge and an unwelcome image of a terrible visage thrashes loose in your mind. The image cannot be mistaken; Bael'Zharon roams the lands, thirsting for the blood of all challengers.";
                    bz.SpawnLocations = townSpawnLocations;
                    _worldBossMap.Add(490011, bz);

                    //Martine south of Candeth
                    var martine = new WorldBoss();
                    martine.WeenieID = 490039;
                    martine.Name = "Martine";
                    martine.SpawnMsg = "A distant shriek of madness echoes through the air, seeming to come from both nowhere and everywhere. The shriek resolves into a voice, hollow and intense, desparately searching for something long lost. The sound fades to a whisper, almost a whimper and then a sob. Through the tortured sounds floats a name; Melanay. With a timbre of deep desire that flashes to lost hope, Sir Candeth Martine scours the lands in search of his beloved, thirsting for revenge against every soul who has ever stood in his way.";
                    martine.SpawnLocations = townSpawnLocations;
                    _worldBossMap.Add(490039, martine);

                    //Olthoi King in ML Plateau
                    var ok = new WorldBoss();
                    ok.WeenieID = 490010;
                    ok.Name = "Olthoi King";
                    ok.SpawnMsg = "A sudden acidic stench fills the air, presaging the emergence of a terrible beast. A deluge of unmistakably insectoid shrieks and rattles pours fourth; an acrid cacophony of pestilence and a challenge to the temerity of man. From deep within the caustic land of the Olthoi, a King has risen. Go forth to steal glory from the clutches of certain death.";
                    ok.SpawnLocations = townSpawnLocations;                    
                    _worldBossMap.Add(490010, ok);
                }

                return _worldBossMap;
            }
        }

        public static bool IsWorldBoss(uint weenieId)
        {
            return WorldBosses.WorldBossMap.ContainsKey(weenieId);
        }

        public static WorldBoss GetRandomWorldBoss()
        {
            var i = ThreadSafeRandom.Next(0, WorldBosses.WorldBossMap.Count - 1);
            return WorldBosses.WorldBossMap.Values.ElementAt(i);
        }        
    }

    public class WorldBoss
    {
        public uint WeenieID { get; set; }

        public string Name { get; set; }

        public string SpawnMsg { get; set; }

        public Position Location { get; set; }

        public Dictionary<uint, Position> SpawnLocations { get; set; }

        public KeyValuePair<uint, Position> RollRandomSpawnLocation()
        {
            var randomKey = SpawnLocations.Keys.OrderBy(x => Guid.NewGuid()).First();
            return new KeyValuePair<uint,Position>(randomKey, SpawnLocations[randomKey]);
        }        
    }
}
