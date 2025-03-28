using ACE.Server.Command.Handlers;
using System;

namespace ACE.Server.Network.GameAction.Actions
{
    /// <summary>
    /// Removes all guests, /house guest remove_all
    /// </summary>
    public static class GameActionHouseRemoveAllPermanentGuests
    {
        [GameAction(GameActionType.RemoveAllPermanentGuests)]
        public static void Handle(ClientMessage message, Session session)
        {
            //Console.WriteLine("Received 0x25E - House - RemoveAllPermanentGuests");

            if (!PlayerCommands.CheckPlayerCommandRateLimit(session))
            {
                return;
            }

            session.Player.HandleActionRemoveAllGuests();
        }
    }
}
