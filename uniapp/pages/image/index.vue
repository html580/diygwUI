<template>
	<view class="container">
		<image class="diygw-image diygw-col-24" src="/static/pic1.jpg" style="height: 150px; width: 100%" mode="aspectFit"></image>
		<view class="diygw-col-24" v-html="text"></view>
		<view style="" class="diygw-title flex diygw-col-24 blue title-clz">
			<view class="title font-normal"> <text class="diy-icon-home"></text> 用户完全自定义圆角阴影 </view>
		</view>
		<image class="diygw-image diygw-col-24 image3-clz" src="/static/pic1.jpg" style="height: 150px; width: 100%" mode="aspectFit"></image>
		<image class="diygw-image diygw-col-12 image1-clz" src="/static/pic1.jpg" style="height: 100px; width: 100%" mode="aspectFit"></image>
		<image class="diygw-image diygw-col-12 image2-clz" src="/static/pic1.jpg" style="height: 100px; width: 100%" mode="aspectFit"></image>
		<image class="diygw-image diygw-col-12 image4-clz" src="/static/pic1.jpg" style="height: 100px; width: 100%" mode="aspectFit"></image>
		<image class="diygw-image diygw-col-12 image5-clz" src="/static/pic1.jpg" style="height: 100px; width: 100%" mode="aspectFit"></image>
		<image class="diygw-image diygw-col-12 image8-clz" src="/static/pic1.jpg" style="height: 100px; width: 100%" mode="aspectFit"></image>
		<image class="diygw-image diygw-col-12 image9-clz" src="/static/pic1.jpg" style="height: 100px; width: 100%" mode="aspectFit"></image>
		<image class="diygw-image diygw-col-12 image6-clz" src="/static/pic1.jpg" style="height: 100px; width: 100%" mode="aspectFit"></image>
		<image class="diygw-image diygw-col-12 image7-clz" src="/static/pic1.jpg" style="height: 100px; width: 100%" mode="aspectFit"></image>
		<view class="clearfix"></view>
	</view>
</template>

<script>
	//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIYGW可视化设计一键生成源码
	export default {
		data() {
			return {
				text: ``
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

<style lang="scss">
	.title-clz {
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
	.image3-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 4px 15px 51px rgba(31, 31, 31, 0.16), 0px 1px 3px 2px rgba(218, 72, 72, 0.51);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.image1-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(50% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.image2-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(50% - 5px - 5px) !important;
		border-top-left-radius: 39px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.image4-clz {
		margin-left: 5px;
		border-bottom-left-radius: 2px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(50% - 5px - 5px) !important;
		border-top-left-radius: 39px;
		margin-top: 5px;
		border-top-right-radius: 24px;
		border-bottom-right-radius: 15px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.image5-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(50% - 5px - 5px) !important;
		border-top-left-radius: 39px;
		margin-top: 5px;
		border-top-right-radius: 39px;
		border-bottom-right-radius: 45px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.image8-clz {
		margin-left: 5px;
		border-bottom-left-radius: 0px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(50% - 5px - 5px) !important;
		border-top-left-radius: 0px;
		margin-top: 5px;
		border-top-right-radius: 58px;
		border-bottom-right-radius: 0px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.image9-clz {
		margin-left: 5px;
		border-bottom-left-radius: -6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(50% - 5px - 5px) !important;
		border-top-left-radius: 58px;
		margin-top: 5px;
		border-top-right-radius: 0px;
		border-bottom-right-radius: 2px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.image6-clz {
		margin-left: 5px;
		border-bottom-left-radius: 0px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(50% - 5px - 5px) !important;
		border-top-left-radius: 0px;
		margin-top: 5px;
		border-top-right-radius: 0px;
		border-bottom-right-radius: 58px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.image7-clz {
		margin-left: 5px;
		border-bottom-left-radius: 58px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(50% - 5px - 5px) !important;
		border-top-left-radius: 0px;
		margin-top: 5px;
		border-top-right-radius: 0px;
		border-bottom-right-radius: 0px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
</style>
