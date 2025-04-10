using ACE.Server.Command.Handlers;
using System;

namespace ACE.Server.Network.GameAction.Actions
{
    /// <summary>
    /// Teleports you to your house, /house recall
    /// </summary>
    public static class GameActionTeleToHouse
    {
        [GameAction(GameActionType.TeleToHouse)]
        public static void Handle(ClientMessage message, Session session)
        {
            //Console.WriteLine("Received 0x262 - TeleToHouse");

            if (!PlayerCommands.CheckPlayerCommandRateLimit(session, 1))
            {
                return;
            }

            session.Player.HandleActionTeleToHouse();
        }
    }
}
