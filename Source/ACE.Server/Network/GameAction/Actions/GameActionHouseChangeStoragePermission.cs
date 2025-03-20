using System;

using ACE.Common.Extensions;
using ACE.Server.Command.Handlers;

namespace ACE.Server.Network.GameAction.Actions
{
    /// <summary>
    /// Changes a specific player's storage permission, /house storage add/remove
    /// </summary>
    public static class GameActionHouseChangeStoragePermission
    {
        [GameAction(GameActionType.ChangeStoragePermission)]
        public static void Handle(ClientMessage message, Session session)
        {
            //Console.WriteLine("Received 0x249 - House - ChangeStoragePermissions");

            if (!PlayerCommands.CheckPlayerCommandRateLimit(session))
            {
                return;
            }

            var guestName = message.Payload.ReadString16L();
            var hasPermission = Convert.ToBoolean(message.Payload.ReadUInt32());

            session.Player.HandleActionModifyStorage(guestName, hasPermission);
        }
    }
}
