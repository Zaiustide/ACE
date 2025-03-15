using System;

using ACE.Common.Extensions;
using ACE.Server.Command.Handlers;

namespace ACE.Server.Network.GameAction.Actions
{
    /// <summary>
    /// Removes a specific player from your house guest list, /house guest remove
    /// </summary>
    public static class GameActionHouseRemovePermanentGuest
    {
        [GameAction(GameActionType.RemovePermanentGuest)]
        public static void Handle(ClientMessage message, Session session)
        {
            //Console.WriteLine("Received 0x246 - HouseRemovePermanentGuest");

            if (!PlayerCommands.CheckPlayerCommandRateLimit(session))
            {
                return;
            }

            var guestName = message.Payload.ReadString16L();

            session.Player.HandleActionRemoveGuest(guestName);
        }
    }
}
