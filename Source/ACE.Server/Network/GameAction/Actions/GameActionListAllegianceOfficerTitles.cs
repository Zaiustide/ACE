namespace ACE.Server.Network.GameAction.Actions
{
    public static class GameActionListAllegianceOfficerTitles
    {
        [GameAction(GameActionType.ListAllegianceOfficerTitles)]
        public static void Handle(ClientMessage message, Session session)
        {
            if (!Command.Handlers.PlayerCommands.CheckPlayerCommandRateLimit(session))
            {
                return;
            }

            session.Player.HandleActionListAllegianceOfficerTitles();
        }
    }
}
