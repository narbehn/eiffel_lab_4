note
	description: "Summary description for {GAME_ACCESS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

expanded class
	GAME_ACCESS

feature -- Games
	game: GAME
		once
			create Result.make_from_board (
				create {BOARD}.make_default)
		end

invariant
singleton_game:
	game = game
end
