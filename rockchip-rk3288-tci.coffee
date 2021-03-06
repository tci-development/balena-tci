deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'rockchip-rk3288-tci'
	aliases: [ 'rockchip-rk3288-tci' ]
	name: 'E04 rk3288'
	arch: 'armv7hf'
	state: 'released'

	instructions: commonImg.instructions

	gettingStartedLink:
		windows: 'https://www.balena.io/'
		osx: 'https://www.balena.io/'
		linux: 'https://www.balena.io/'

	supportsBlink: true

	yocto:
		machine: 'rockchip-rk3288-tci'
		image: 'balena-image'
		fstype: 'balenaos-img'
		version: 'yocto-dunfell'
		deployArtifact: 'balena-image-e04-rk3288.balenaos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
