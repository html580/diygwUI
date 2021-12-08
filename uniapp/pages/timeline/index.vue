<template>
	<view class="container">
		<view class="flex diygw-col-24">
			<view class="diygw-timeline">
				<view v-for="(item, index) in timelineDatas" :class="item.clazz" :style="item.style">
					<view class="content shadow-blur" :class="item.backgroundClazz" :style="item.backgroundStyle">
						<view v-html="item.content"></view>
					</view>
				</view>
			</view>
		</view>
		<view class="clearfix"></view>
	</view>
</template>

<script>
	//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIYGW可视化设计一键生成源码
	export default {
		data() {
			return {
				timelineDatas: [
					{ content: `2021/11/20  新版本Vite可视化设计上线`, style: 'color:#39b54a', backgroundClazz: 'gradual-green', backgroundStyle: '', clazz: 'diygw-item  diy-icon-home' },
					{ content: `2020—01—20`, style: 'color:#39b54a', backgroundClazz: '', backgroundStyle: '', clazz: 'diygw-time  ' },
					{ content: `2019/11/20 上线UNIAPP可视化设计导出版`, style: '', backgroundClazz: 'gradual-red', backgroundStyle: 'background-color:#e54d42;', clazz: 'diygw-item  diy-icon-apps' },
					{ content: `2018/11/15  上线一键应用平台`, style: '', backgroundClazz: 'gradual-blue', backgroundStyle: '', clazz: 'diygw-item  diy-icon-title' },
					{ content: `2018/08/06 DIY官网整合微擎应用插件上线`, style: '', backgroundClazz: 'gradual-purple', backgroundStyle: '', clazz: 'diygw-item  diy-icon-title' },
					{ content: `2017/05/18 DIY可视化官网上线,支持导出H5、微信小程序源码`, style: 'color:#e03997', backgroundClazz: 'gradual-pink', backgroundStyle: '', clazz: 'diygw-item  diy-icon-home' }
				]
			};
		},
		onShareAppMessage: function () {},
		onLoad(option) {
			this.setCurrentPage(this);
			if (option) {
				this.setData({
					globalOption: option
				});
			}
		},
		mounted() {
			this.init();
		},
		methods: {
			async init() {}
		}
	};
</script>

<style lang="scss"></style>
