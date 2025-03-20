using System;
using ACE.Common.Extensions;
using ACE.Entity.Enum;
using ACE.Server.Command.Handlers;

namespace ACE.Server.Network.GameAction.Actions
{
    public static class GameActionModifyCharacterSquelch
    {
        [GameAction(GameActionType.ModifyCharacterSquelch)]
        public static void Handle(ClientMessage message, Session session)
        {
            if (!PlayerCommands.CheckPlayerCommandRateLimit(session))
            {
                return;
            }

            var squelch = Convert.ToBoolean(message.Payload.ReadUInt32());
            var playerGuid = message.Payload.ReadUInt32();
            var playerName = message.Payload.ReadString16L();
            var messageType = (ChatMessageType)message.Payload.ReadUInt32();

            session.Player.SquelchManager.HandleActionModifyCharacterSquelch(squelch, playerGuid, playerName, messageType);
        }
    }
}
