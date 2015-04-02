
module GameShuffleCards
	class ValidateGame
		class << self
			def parse_and_validate(players, cards_per_player)
				begin
					players = Integer(players)
					cards_per_player= Integer(cards_per_player)

				rescue
					raise TypeError
				end
				raise GameShuffleCards::ToManyPlayersError if players > GameShuffleCards::Game::MAXIMUN_PLAYERS
				raise GameShuffleCards::NotEnoughPlayersError if players < GameShuffleCards::Game::MINIMUN_PLAYERS
				raise GameShuffleCards::ToManyCardsPerPlayerError if cards_per_player > GameShuffleCards::Game::TOTAL_CARDS
				raise GameShuffleCards::NotEnoughCardsPerPlayersError if cards_per_player < GameShuffleCards::Game::MINIMUN_CARDS
				raise GameShuffleCards::TooManyCardsDemandedError if (players * cards_per_player) > GameShuffleCards::Game::TOTAL_CARDS
				[players,cards_per_player]
			end
			def parse_and_validate_players(players)
				begin
					players = Integer(players)
				rescue
					raise TypeError
				end
				raise GameShuffleCards::ToManyPlayersError if players > GameShuffleCards::Game::MAXIMUN_PLAYERS
				raise GameShuffleCards::NotEnoughPlayersError if players < GameShuffleCards::Game::MINIMUN_PLAYERS
				players
			end
		end
	end
end