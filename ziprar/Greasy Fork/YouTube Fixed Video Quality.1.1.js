// ==UserScript==
// @name         YouTube Fixed Video Quality
// @name:zh-TW   YouTube固定影片畫質
// @name:zh-CN   YouTube固定视频画质

// @description          Remember video quality without any additional user interface.
// @description:zh-TW    記住選取的 YouTube 影片畫質，不需任何額外的操作介面。
// @description:zh-CN    记住选取的 YouTube 视频画质，不需任何额外的操作介面。

// @license MIT
// @namespace    https://greasyfork.org/users/1086571
// @version      1.1
// @author       IzsKon
// @match        https://www.youtube.com/*
// @icon         data:image/png;base64,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
// @grant        GM.getValue
// @grant        GM.setValue
// ==/UserScript==

(async function() {
	'use strict';
	let vidQuality = await GM.getValue( 'videoQuality', 1 );

	document.addEventListener('yt-player-updated', () => {

		/* Check page type. */
		if ( window.location.pathname != '/watch' ) {
			return;
		}

		/* Load settings panel. */
		let settingsBtn = document.querySelector('.ytp-settings-button');
		settingsBtn.click();
		settingsBtn.click();

		/* Open quality selection panel. */
		let qualityBtn = document.querySelector('.ytp-menuitem-content div:not(.ytp-menuitem-toggle-checkbox)');
		qualityBtn.click();
		let qualityOptions = document.querySelectorAll('.ytp-quality-menu .ytp-menuitem:not(:has(.ytp-premium-label))');

		/* Close quality selection panel. */
		settingsBtn.click();
		settingsBtn.click();

		/* Select video quality. */
		let nth_option = qualityOptions.length - vidQuality;
		qualityOptions[ Math.max(0, nth_option) ].click();

		/* Add event listener to quality selection. */
		for ( let i = 0; i < qualityOptions.length; ++i ) {
			qualityOptions[i].addEventListener('click', () => {
				GM.setValue( 'videoQuality', qualityOptions.length - i );
			});
		}
	});

})();