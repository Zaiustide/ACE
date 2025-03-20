using System;

using ACE.Entity.Enum;
using ACE.Server.Command.Handlers;

namespace ACE.Server.Network.GameAction.Actions
{
    /// <summary>
    /// List available houses - /house available
    /// </summary>
    public static class GameActionHouseListAvailable
    {
        [GameAction(GameActionType.ListAvailableHouses)]
        public static void Handle(ClientMessage message, Session session)
        {
            //Console.WriteLine("Received 0x270 - ListAvailableHouses");

            if (!PlayerCommands.CheckPlayerCommandRateLimit(session))
            {
                return;
            }

            // type of house being listed
            var houseType = (HouseType)message.Payload.ReadUInt32();

            session.Player.HandleActionListAvailable(houseType);
        }
    }
}
