class WeaponType < ClassyEnum::Base
end

class WeaponType::Simple < WeaponType
end

class WeaponType::Martial < WeaponType
end

class WeaponType::Exotic < WeaponType
end

class WeaponType::Ammunition < WeaponType
end
