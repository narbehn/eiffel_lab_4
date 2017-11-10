note
	description: "A history of executed commands."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HISTORY

create
	make

feature {SOLITAIRE_USER_INTERFACE}
	make
		do
			-- Hint. Consider instantiating the history
			-- using an ARRAYED_LIST.
			history := create {ARRAYED_LIST[COMMAND]}.make (0)
		end

feature -- history
	history: LIST[COMMAND]

	extend_history(new_cmd: COMMAND)
			-- Remove all operations to the right of the current
			-- cursor to history, then extend with the new command.
		do
		end

	remove_right
			--Remove all elements to the right of the current cursor in history.
		local
			curse: INTEGER
			current_cursor: INTEGER
		do
			current_cursor := history.index
			from
				curse := history.count
			until
				curse = current_cursor
			loop
				history.go_i_th (curse)
				history.remove
				curse := curse - 1
			end
		end

	item: COMMAND
			-- Item at the current cursor position.
		do
			Result := history[history.index]
		end

	on_item: BOOLEAN
			-- Is cursor at a valid position?
		do
			Result := history.index < history.count and history.index >= history.lower
		end

	forth
			-- Move the cursor forward.
		do
			history.forth
		end

	back
			-- Move the cursor backward.
		do
			history.back
		end

	is_empty: BOOLEAN
			-- Is there at least one command in the history?
		do
			Result := history.is_empty
		end

	is_last: BOOLEAN
			-- Is cursor at the last position?
		do
			Result := history.islast
		end

end
