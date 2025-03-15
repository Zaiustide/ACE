using ACE.Common.Extensions;
using ACE.Server.Command.Handlers;

namespace ACE.Server.Network.GameAction.Actions
{
    public static class GameActionRemoveAllegianceBan
    {
        [GameAction(GameActionType.RemoveAllegianceBan)]
        public static void Handle(ClientMessage message, Session session)
        {
            if (!PlayerCommands.CheckPlayerCommandRateLimit(session, 1))
            {
                return;
            }

            var playerName = message.Payload.ReadString16L();

            session.Player.HandleActionRemoveAllegianceBan(playerName);
        }
    }
}
