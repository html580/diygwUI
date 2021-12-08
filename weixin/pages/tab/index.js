//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIYGW可视化设计一键生成源码
Page({
	data: {
		tabsDatas: [{ text: `菜单一` }, { text: `菜单二` }, { text: `菜单三` }, { text: `菜单四` }],
		tabsIndex: 0,
		text: `内容`,
		tabs1Datas: [{ text: `菜单一` }, { text: `菜单二` }, { text: `菜单三` }, { text: `菜单四` }],
		tabs1Index: 0,
		text1: `内容`,
		tabs2Datas: [{ text: `菜单一` }, { text: `菜单二` }, { text: `菜单三` }, { text: `菜单四` }],
		tabs2Index: 0,
		text2: `内容`,
		tabs3Datas: [{ text: `菜单一` }, { text: `菜单二` }, { text: `菜单三` }, { text: `菜单四` }],
		tabs3Index: 0,
		text3: `内容`,
		tabs4Datas: [{ text: `菜单一` }, { text: `菜单二` }, { text: `菜单三` }, { text: `菜单四` }],
		tabs4Index: 0,
		text4: `内容`,
		tabs5Datas: [{ text: `菜单一` }, { text: `菜单二` }, { text: `菜单三` }, { text: `菜单四` }],
		tabs5Index: 0,
		text5: `内容`
	},
	onLoad(option) {
		if (option) {
			this.setData({
				globalOption: option
			});
		}
	},
	onShow() {
		this.init();
	},
	async init() {},
	changeTabs(evt) {
		let { index } = evt.currentTarget.dataset;
		this.setData({
			tabsIndex: index
		});
	},
	changeTabs1(evt) {
		let { index } = evt.currentTarget.dataset;
		this.setData({
			tabs1Index: index
		});
	},
	changeTabs2(evt) {
		let { index } = evt.currentTarget.dataset;
		this.setData({
			tabs2Index: index
		});
	},
	changeTabs3(evt) {
		let { index } = evt.currentTarget.dataset;
		this.setData({
			tabs3Index: index
		});
	},
	changeTabs4(evt) {
		let { index } = evt.currentTarget.dataset;
		this.setData({
			tabs4Index: index
		});
	},
	changeTabs5(evt) {
		let { index } = evt.currentTarget.dataset;
		this.setData({
			tabs5Index: index
		});
	}
});
