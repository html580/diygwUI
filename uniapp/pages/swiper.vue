<template>
	<view class="container">
		<view class="flex diygw-col-24">
			<swiper class="swiper" indicator-dots="true" autoplay interval="3000" circular="true" style="height: 150px">
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<image src="/static/pic1.jpg" class="diygw-swiper-image"></image>
						<view class="diygw-swiper-item-title"> 轮播带标题 </view>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<image src="/static/pic2.jpg" class="diygw-swiper-image"></image>
						<view class="diygw-swiper-item-title"> 滑块二 </view>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<image src="/static/pic3.jpg" class="diygw-swiper-image"></image>
						<view class="diygw-swiper-item-title"> 滑块三 </view>
					</view>
				</swiper-item>
			</swiper>
		</view>
		<view class="flex diygw-col-24 swiper1-clz">
			<swiper class="swiper" indicator-dots="true" autoplay interval="3000" circular="true" style="height: 150px">
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<image src="/static/pic1.jpg" class="diygw-swiper-image"></image>
						<view class="diygw-swiper-item-title"> 轮播带标题 </view>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<image src="/static/pic2.jpg" class="diygw-swiper-image"></image>
						<view class="diygw-swiper-item-title"> 滑块二 </view>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<image src="/static/pic3.jpg" class="diygw-swiper-image"></image>
						<view class="diygw-swiper-item-title"> 滑块三 </view>
					</view>
				</swiper-item>
			</swiper>
		</view>
		<view class="flex diygw-col-24 swiper2-clz">
			<swiper class="swiper" indicator-dots="true" autoplay interval="3000" vertical="true" circular="true" style="height: 150px">
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<image src="/static/pic1.jpg" class="diygw-swiper-image"></image>
						<view class="diygw-swiper-item-title"> 轮播带标题垂直方向 </view>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<image src="/static/pic2.jpg" class="diygw-swiper-image"></image>
						<view class="diygw-swiper-item-title"> 滑块二 </view>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<image src="/static/pic3.jpg" class="diygw-swiper-image"></image>
						<view class="diygw-swiper-item-title"> 滑块三 </view>
					</view>
				</swiper-item>
			</swiper>
		</view>
		<view class="flex diygw-col-24 swiper3-clz">
			<swiper class="swiper" indicator-dots="true" autoplay interval="3000" vertical="true" circular="true" style="height: 150px">
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<image src="/static/pic1.jpg" class="diygw-swiper-image"></image>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<image src="/static/pic2.jpg" class="diygw-swiper-image"></image>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<image src="/static/pic3.jpg" class="diygw-swiper-image"></image>
					</view>
				</swiper-item>
			</swiper>
		</view>
		<view class="flex diygw-col-24 swiper4-clz">
			<swiper class="swiper" autoplay interval="3000" circular="true" style="height: 40px">
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<view class="diygw-swiper-item-title not-mask"> 轮播标题水平方向 </view>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<view class="diygw-swiper-item-title not-mask"> 滑块二 </view>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<view class="diygw-swiper-item-title not-mask"> 滑块三 </view>
					</view>
				</swiper-item>
			</swiper>
		</view>
		<view class="flex diygw-col-24 swiper5-clz">
			<swiper class="swiper" autoplay interval="3000" vertical="true" circular="true" style="height: 40px">
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<view class="diygw-swiper-item-title not-mask"> 轮播标题垂直方向 </view>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<view class="diygw-swiper-item-title not-mask"> 滑块二 </view>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<view class="diygw-swiper-item-title not-mask"> 滑块三 </view>
					</view>
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

<style lang="scss" scoped>
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
