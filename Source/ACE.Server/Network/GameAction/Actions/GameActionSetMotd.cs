using ACE.Common.Extensions;
using ACE.Server.Command.Handlers;

namespace ACE.Server.Network.GameAction.Actions
{
    public static class GameActionSetMotd
    {
        [GameAction(GameActionType.SetMotd)]
        public static void Handle(ClientMessage message, Session session)
        {
            if (!PlayerCommands.CheckPlayerCommandRateLimit(session, 1))
            {
                return;
            }

            var motd = message.Payload.ReadString16L();

            session.Player.HandleActionSetMotd(motd);
        }
    }
}
