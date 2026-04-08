using System.Collections.Generic;
using System.Linq;
using ACE.Server.WorldObjects;

namespace ACE.Server.Entity.Bounties
{
    public class BountyCollection
    {
        private readonly Dictionary<uint, BountyContract> _contracts;

        public BountyCollection(Player owner, List<BountyContract> contracts)
        {
            _contracts = new Dictionary<uint, BountyContract>();
            LoadBountyContracts(owner, contracts);
        }

        private void LoadBountyContracts(Player owner, List<BountyContract> contracts)
        {
            foreach (var contract in contracts)
            {
                if (contract.IsInvalidContract)
                {
                    owner.TryConsumeFromInventoryWithNetworking(contract);
                    continue;
                }

                var targetGuid = (uint)contract.BountyTargetGuid.Value;

                // prevent duplicates
                if (_contracts.ContainsKey(targetGuid))
                {
                    owner.TryConsumeFromInventoryWithNetworking(contract);
                    continue;
                }

                _contracts[targetGuid] = contract;
            }
        }

        public bool TryGetBountyContract(uint targetGuid, out BountyContract contract)
        {
            return _contracts.TryGetValue(targetGuid, out contract);
        }

        public bool TryGetActiveBountyContract(uint targetGuid, Player owner, out BountyContract contract)
        {
            contract = null;

            if (!_contracts.TryGetValue(targetGuid, out var c))
                return false;

            if (c.IsBountyExpired && !c.IsExpiredState)
            {
                c.SetState(BountyContract.BountyContractState.Expired, owner);
                return false;
            }

            if (!c.IsActiveState)
                return false;

            contract = c;
            return true;
        }

        public int GetTotalCount() => _contracts.Count;

        public bool AddBountyContract(uint targetGuid, BountyContract contract)
        {
            if (contract.IsInvalidContract)
            {
                return false;
            }

            if (_contracts.ContainsKey(targetGuid))
                return false;

            _contracts[targetGuid] = contract;
            return true;
        }

        public bool RemoveBountyContract(uint targetGuid)
        {
            return _contracts.Remove(targetGuid);
        }

        public bool CompleteContract(uint targetGuid, Player owner = null)
        {
            if (!_contracts.TryGetValue(targetGuid, out var contract))
                return false;

            if (!contract.IsActiveState)
                return false;

            contract.SetState(BountyContract.BountyContractState.Completed, owner);
            return true;
        }

        public bool ExpireContract(uint targetGuid, Player owner = null)
        {
            if (!_contracts.TryGetValue(targetGuid, out var contract))
                return false;

            if (contract.IsExpiredState)
                return false;

            contract.SetState(BountyContract.BountyContractState.Expired, owner);
            return true;
        }

        public void CheckContracts(Player owner)
        {
            foreach (var kvp in _contracts.ToList())
            {
                var targetGuid = kvp.Key;
                var contract = kvp.Value;

                // remove contracts that are in invalid states (destroyed, pending, no target guid), this should never happen except for during migrations
                if (contract.IsInvalidContract)
                {
                    _contracts.Remove(targetGuid);
                    owner.TryConsumeFromInventoryWithNetworking(contract);
                    continue;
                }

                // expire contracts that are past their expiration time
                var wasExpired = contract.IsExpiredState;

                if (contract.IsBountyExpired && !wasExpired)
                {
                    contract.SetState(BountyContract.BountyContractState.Expired, owner);
                    contract.UpdateUiEffects(owner);
                }
            }
        }
    }
}
