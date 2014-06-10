class FeatType < ClassyEnum::Base
end

class FeatType::General < FeatType
end

class FeatType::Combat < FeatType
end

class FeatType::Critical < FeatType
end

class FeatType::ItemCreation < FeatType
end

class FeatType::Metamagic < FeatType
end
