require_relative 'depleting'

describe 'playing plant back' do
	subject {Depleting.new}

	it 'gives player option to hunt or gather food' do
	  expect(subject.aquire_food_by).to satisfy{ |s| ['You would like to hunt.', ' You would like to gather.'].include?(s) }
	end
	#it 'tells player if food has been succesfully aquired'
	#it 'gives option to plant food'
	#it 'gives option to fish or track or trap after hunt option chosen'
end