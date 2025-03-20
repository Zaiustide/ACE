using ACE.Server.Command.Handlers;

namespace ACE.Server.Network.GameAction.Actions
{
    public static class GameActionListAllegianceOfficers
    {
        [GameAction(GameActionType.ListAllegianceOfficers)]
        public static void Handle(ClientMessage message, Session session)
        {
            if (!PlayerCommands.CheckPlayerCommandRateLimit(session))
            {
                return;
            }

            session.Player.HandleActionListAllegianceOfficers();
        }
    }
}
