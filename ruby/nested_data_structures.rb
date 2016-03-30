man = {
	clothes: {

		shirt: {
			type: 'tee',
			color: 'blue',
			size: 'XL'
		},
		pants: {
			type: 'jeans',
			color: 'black',
			size: 'L'
		},
		shoes: {
			type: 'sneakers',
			color: 'white',
			size: '10'
		}
	},
	phobias: [
		'cats',
		'outdoors' 
	],
	email_accounts: [
		'aol',
		'gmail'
	]
}

p man[:clothes][:shoes][:type]
p man[:email_accounts][1]
p man[:phobias][0]