using ACE.Common.Extensions;
using ACE.Server.Command.Handlers;

namespace ACE.Server.Network.GameAction.Actions
{
    public static class GameActionAddPlayerPermission
    {
        [GameAction(GameActionType.AddPlayerPermission)]
        public static void Handle(ClientMessage message, Session session)
        {
            if (!PlayerCommands.CheckPlayerCommandRateLimit(session))
            {
                return;
            }

            // player to grant corpse looting permissions to
            var playerName = message.Payload.ReadString16L();

            session.Player.HandleActionAddPlayerPermission(playerName);
        }
    }
}
