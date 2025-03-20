using ACE.Common.Extensions;
using ACE.Server.Command.Handlers;

namespace ACE.Server.Network.GameAction.Actions
{
    public static class GameActionRemoveAllegianceOfficer
    {
        [GameAction(GameActionType.RemoveAllegianceOfficer)]
        public static void Handle(ClientMessage message, Session session)
        {
            if (!PlayerCommands.CheckPlayerCommandRateLimit(session, 1))
            {
                return;
            }

            var officerName = message.Payload.ReadString16L();

            session.Player.HandleActionRemoveAllegianceOfficer(officerName);
        }
    }
}
