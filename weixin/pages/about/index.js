//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIYGW可视化设计一键生成源码
Page({
	data: {
		text2: `<p>DIY官网可视化工具做好的可视化拖拽开发工具无须编程、零代码基础、所见即所得设计工具</p>
<p>目标支持轻松在线可视化导出微信小程序、支付宝小程序、头条小程序、H5、WebApp、UNIAPP等源码</p>
<p>请记住我们的官方网址：https://www.diygw.com</p>
<p><span style="color: #2dc26b;"><a style="color: #2dc26b;" href="https://www.diygw.com" target="_blank" rel="noopener">点击进入设计 http://www.diygw.com</a></span></p>`
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
	async init() {}
});
