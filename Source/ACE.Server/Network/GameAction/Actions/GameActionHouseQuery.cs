using ACE.Server.Command.Handlers;
using System;

namespace ACE.Server.Network.GameAction.Actions
{
    /// <summary>
    /// Query your house info
    /// </summary>
    public static class GameActionHouseQuery
    {
        [GameAction(GameActionType.HouseQuery)]
        public static void Handle(ClientMessage message, Session session)
        {
            //Console.WriteLine("Received 0x21E - GameActionHouseQuery");

            if (!PlayerCommands.CheckPlayerCommandRateLimit(session))
            {
                return;
            }

            session.Player.HandleActionQueryHouse();
        }
    }
}
