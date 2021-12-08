<template>
	<view class="container">
		<view class="flex diygw-col-24">
			<swiper class="swiper" indicator-dots="true" autoplay="true" interval="3000" circular="true" style="height: 150px">
				<swiper-item>
					<image src="/static/pic1.jpg" class="slide-image"></image>
					<view class="swiper-slider-title"> 轮播带标题 </view>
				</swiper-item>
				<swiper-item>
					<image src="/static/pic2.jpg" class="slide-image"></image>
					<view class="swiper-slider-title"> 滑块二 </view>
				</swiper-item>
				<swiper-item>
					<image src="/static/pic3.jpg" class="slide-image"></image>
					<view class="swiper-slider-title"> 滑块三 </view>
				</swiper-item>
			</swiper>
		</view>
		<view class="flex diygw-col-24 swiper1-clz">
			<swiper class="swiper" indicator-dots="true" autoplay="true" interval="3000" circular="true" style="height: 150px">
				<swiper-item>
					<image src="/static/pic1.jpg" class="slide-image"></image>
					<view class="swiper-slider-title"> 轮播带标题 </view>
				</swiper-item>
				<swiper-item>
					<image src="/static/pic2.jpg" class="slide-image"></image>
					<view class="swiper-slider-title"> 滑块二 </view>
				</swiper-item>
				<swiper-item>
					<image src="/static/pic3.jpg" class="slide-image"></image>
					<view class="swiper-slider-title"> 滑块三 </view>
				</swiper-item>
			</swiper>
		</view>
		<view class="flex diygw-col-24 swiper2-clz">
			<swiper class="swiper" indicator-dots="true" autoplay="true" interval="3000" vertical="true" circular="true" style="height: 150px">
				<swiper-item>
					<image src="/static/pic1.jpg" class="slide-image"></image>
					<view class="swiper-slider-title"> 轮播带标题垂直方向 </view>
				</swiper-item>
				<swiper-item>
					<image src="/static/pic2.jpg" class="slide-image"></image>
					<view class="swiper-slider-title"> 滑块二 </view>
				</swiper-item>
				<swiper-item>
					<image src="/static/pic3.jpg" class="slide-image"></image>
					<view class="swiper-slider-title"> 滑块三 </view>
				</swiper-item>
			</swiper>
		</view>
		<view class="flex diygw-col-24 swiper3-clz">
			<swiper class="swiper" indicator-dots="true" autoplay="true" interval="3000" vertical="true" circular="true" style="height: 150px">
				<swiper-item>
					<image src="/static/pic1.jpg" class="slide-image"></image>
				</swiper-item>
				<swiper-item>
					<image src="/static/pic2.jpg" class="slide-image"></image>
				</swiper-item>
				<swiper-item>
					<image src="/static/pic3.jpg" class="slide-image"></image>
				</swiper-item>
			</swiper>
		</view>
		<view class="flex diygw-col-24 swiper4-clz">
			<swiper class="swiper" interval="3000" circular="true" style="height: 40px">
				<swiper-item>
					<view class="swiper-slider-title not-mask"> 轮播标题水平方向 </view>
				</swiper-item>
				<swiper-item>
					<view class="swiper-slider-title not-mask"> 滑块二 </view>
				</swiper-item>
				<swiper-item>
					<view class="swiper-slider-title not-mask"> 滑块三 </view>
				</swiper-item>
			</swiper>
		</view>
		<view class="flex diygw-col-24 swiper5-clz">
			<swiper class="swiper" interval="3000" vertical="true" circular="true" style="height: 40px">
				<swiper-item>
					<view class="swiper-slider-title not-mask"> 轮播标题垂直方向 </view>
				</swiper-item>
				<swiper-item>
					<view class="swiper-slider-title not-mask"> 滑块二 </view>
				</swiper-item>
				<swiper-item>
					<view class="swiper-slider-title not-mask"> 滑块三 </view>
				</swiper-item>
			</swiper>
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
	.swiper1-clz {
		margin-left: 5px;
		border-bottom-left-radius: 8px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 8px;
		margin-top: 5px;
		border-top-right-radius: 8px;
		border-bottom-right-radius: 8px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.swiper2-clz {
		margin-left: 5px;
		border-bottom-left-radius: 8px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 8px;
		margin-top: 5px;
		border-top-right-radius: 8px;
		border-bottom-right-radius: 8px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.swiper3-clz {
		margin-left: 5px;
		border-bottom-left-radius: 8px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 8px;
		margin-top: 5px;
		border-top-right-radius: 8px;
		border-bottom-right-radius: 8px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.swiper4-clz {
		margin-left: 5px;
		border-bottom-left-radius: 8px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 8px;
		margin-top: 5px;
		border-top-right-radius: 8px;
		border-bottom-right-radius: 8px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.swiper5-clz {
		margin-left: 5px;
		border-bottom-left-radius: 8px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 8px;
		margin-top: 5px;
		border-top-right-radius: 8px;
		border-bottom-right-radius: 8px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
</style>
