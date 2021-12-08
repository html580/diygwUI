<template>
	<view class="container">
		<diy-navbar bgColor="gradual-pink" :isHome="true" :isBack="true">
			<!-- #ifndef VUE3 -->
			<block slot="backText"> 返回 </block>
			<block slot="content"> 顶部自定义标题 </block>
			<!-- #endif -->
			<!-- #ifdef VUE3 -->
			<template v-slot:backText> 返回 </template>
			<template v-slot:content> 顶部自定义标题 </template>
			<!-- #endif -->
		</diy-navbar>
		<view style="" class="diygw-title flex diygw-col-24 red">
			<view class="title font-normal"> <text class="diy-icon-settings"></text> 标题 </view>
			<view class="more">
				更多
				<text class="diy-icon-right"></text>
			</view>
		</view>
		<view style="" class="diygw-title flex diygw-col-24 green">
			<view class="title font-normal"> <text class="diy-icon-skin"></text> 标题 </view>
			<view class="more">
				更多
				<text class="diy-icon-right"></text>
			</view>
		</view>
		<view style="" class="diygw-title flex diygw-col-24 orange">
			<view class="title font-normal"> <text class="diy-icon-subscription"></text> 标题 </view>
			<view class="more">
				更多
				<text class="diy-icon-right"></text>
			</view>
		</view>
		<view style="" class="diygw-title flex diygw-col-24 gradual-red">
			<view class="title font-normal"> <text class="diy-icon-tag"></text> 没有更多 </view>
		</view>
		<view style="" class="diygw-title flex diygw-col-24 gradual-orange">
			<view class="title font-normal"> <text class="diy-icon-home"></text> 自定义样式 </view>
			<view class="more">
				更多
				<text class="diy-icon-right"></text>
			</view>
		</view>
		<view style="" class="diygw-title flex diygw-col-24 gradual-green">
			<view class="title font-normal"> <text class="diy-icon-home"></text> 标题 </view>
			<view class="more">
				更多
				<text class="diy-icon-right"></text>
			</view>
		</view>
		<view style="" class="diygw-title flex diygw-col-24 gradual-blue">
			<view class="title font-normal"> <text class="diy-icon-home"></text> 标题 </view>
			<view class="more">
				更多
				<text class="diy-icon-right"></text>
			</view>
		</view>
		<view style="" class="diygw-title flex diygw-col-24 gradual-purple">
			<view class="title font-normal"> <text class="diy-icon-home"></text> 标题 </view>
			<view class="more">
				更多
				<text class="diy-icon-right"></text>
			</view>
		</view>
		<view style="" class="diygw-title flex diygw-col-24 gradual-pink">
			<view class="title font-normal"> <text class="diy-icon-home"></text> 标题 </view>
			<view class="more">
				更多
				<text class="diy-icon-right"></text>
			</view>
		</view>
		<view style="" class="diygw-title flex diygw-col-24 gradual-green title9-clz">
			<view class="title font-normal"> <text class="diy-icon-home"></text> 设置边距圆角阴影 </view>
			<view class="more">
				更多
				<text class="diy-icon-right"></text>
			</view>
		</view>
		<view class="clearfix"></view>
	</view>
</template>

<script>
	//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIYGW可视化设计一键生成源码
	export default {
		data() {
			return {};
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

<style lang="scss">
	.title9-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
</style>
