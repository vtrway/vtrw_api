// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract StakeToken is ERC20 {
    uint256 public constant MIN_STAKE = 10000; // Minimum 10 blok
    uint256 public constant STAKING_DURATION = 15 * 365 days; // 15 yıllık staking süresi
    uint256 public startTimestamp; // Staking başlangıç zamanı

    mapping(uint256 => uint256) public periodRewards; // Periyod başına ödül miktarları
    mapping(uint256 => uint256) public periodLengths; // Periyod süreleri
    mapping(address => mapping(uint256 => uint256)) public stakes; // Kullanıcı stake miktarları
    mapping(uint256 => uint256) public totalStakes; // Her periyod için toplam stake miktarları
    address[] public stakers; // Stake yapan kullanıcıların listesi

    // Yapılandırıcı
    constructor()
    ERC20("Virtual To Reality Way", "VTRW")
    {
        periodLengths[32] = 32 days;
        periodLengths[90] = 90 days;
        periodRewards[32] = uint256(3105023) * 10 ** decimals() / 10**5;
        periodRewards[90] = uint256(15159817) * 10 ** decimals() / 100;
        _mint(msg.sender, 9000000000 * 10 ** decimals());
        _mint(address(this), 1000000000 * 10 ** decimals()); // 1 milyar token staking için ayrıldı
        startTimestamp = block.timestamp; // Staking başlangıç zamanı
    }

    // Stake fonksiyonu
    function stake(uint256 amount, uint256 period) public {
        require(block.timestamp < startTimestamp + STAKING_DURATION, "Staking period has ended");
        require(amount >= MIN_STAKE, "min_10_blocks_required");
        require(period == 32 || period == 90, "period_not_defined");
        _transfer(msg.sender, address(this), amount); // Token'ları sözleşmeye transfer et
        stakes[msg.sender][period] += amount; // Stake miktarını kaydet
        totalStakes[period] += amount; // Toplam stake miktarını güncelle

        // Kullanıcıyı stakers listesine ekle (eğer daha önce eklenmemişse)
        bool isStaker = false;
        for (uint256 i = 0; i < stakers.length; i++) {
            if (stakers[i] == msg.sender) {
                isStaker = true;
                break;
            }
        }
        if (!isStaker) {
            stakers.push(msg.sender);
        }
    }

    // Ödül dağıtımı
    function distributeRewards(uint256 period) public {
        require(block.timestamp < startTimestamp + STAKING_DURATION, "Staking period has ended");
        uint256 totalStaked = totalStakes[period];
        require(totalStaked > 0, "No stakes in this period");

        uint256 rewardPool = periodRewards[period];

        // Ödülleri hesapla ve dağıt
        for (uint256 i = 0; i < stakers.length; i++) {
            if (stakes[stakers[i]][period] > 0) {
                uint256 reward = (stakes[stakers[i]][period] * rewardPool) / totalStaked;
                _transfer(address(this), stakers[i], reward);
                stakes[stakers[i]][period] = 0; // Ödüller dağıtıldıktan sonra stake miktarını sıfırla
            }
        }

        totalStakes[period] = 0; // Toplam stake miktarını sıfırla
    }

    // Stake bilgilerini görüntüleme
    function getStakeInfo(address staker, uint256 period) public view returns (uint256) {
        return stakes[staker][period];
    }
}