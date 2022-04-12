<template>
	<view class="container">
		<diy-navbar bgColor="gradual-green" :isBack="true">
			<!-- #ifndef VUE3 -->
			<block slot="backText"> 返回 </block>
			<block slot="content"> 知识付费朋友圈 </block>
			<!-- #endif -->
			<!-- #ifdef VUE3 -->
			<template v-slot:backText> 返回 </template>
			<template v-slot:content> 知识付费朋友圈 </template>
			<!-- #endif -->
		</diy-navbar>
		<view class="flex diygw-col-24 justify-between items-center flex-nowrap flex-clz">
			<view class="diygw-col-19">
				<view class="diygw-search">
					<view class="flex1 flex padding-xs solid radius">
						<text style="color: #555 !important" class="diy-icon-search"></text>
						<input class="flex1" name="search" type="" v-model="search" placeholder="请输入关键字" />
					</view>
				</view>
			</view>
			<view class="flex diygw-col-0">
				<view class="diygw-avatar xs radius bg-none">
					<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon15/icon15_yj.png"></image>
					<view class="diygw-tag badge avatar1-badge-0 red"> 1 </view>
				</view>
			</view>
			<view class="flex diygw-col-0">
				<view class="diygw-tag margin-xs radius">
					<image class="diygw-tag-img" src="https://lib.diygw.com/static/icon/icon8/icon8_qd.png"></image>
					<text> 签到 </text>
				</view>
			</view>
		</view>
		<view class="diygw-title flex diygw-col-24">
			<view class="title font-normal"> 推荐话题 </view>
			<view class="more">
				全部话题
				<text class="diy-icon-right"></text>
			</view>
		</view>
		<scroll-view scroll-x scroll-with-animation class="flex scroll-view diygw-col-24 items-center flex-nowrap flex1-clz">
			<view class="flex flex-nowrap">
				<view class="flex diygw-col-20">
					<view class="diygw-list">
						<view style="" class="diygw-item col-100 row solid-bottom list-item-clz">
							<view class="diygw-avatar">
								<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon4/icon4_bf.png"></image>
							</view>
							<view class="content">
								<view class="title"> 我看2022冬奥 </view>
								<view class="text-sm remark"> 阅读32077 讨论10937 </view>
							</view>
						</view>
						<view style="" class="diygw-item col-100 row solid-bottom list-item-clz">
							<view class="diygw-avatar">
								<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon4/icon4_wg.png"></image>
							</view>
							<view class="content">
								<view class="title"> 礼物会说话 </view>
								<view class="text-sm remark"> 阅读32077 讨论10937 </view>
							</view>
						</view>
					</view>
				</view>
				<view class="flex diygw-col-20">
					<view class="diygw-list">
						<view style="" class="diygw-item col-100 row solid-bottom list1-item-clz">
							<view class="diygw-avatar">
								<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon4/icon4_fx.png"></image>
							</view>
							<view class="content">
								<view class="title"> 一起旅游吧 </view>
								<view class="text-sm remark"> 阅读32077 讨论10937 </view>
							</view>
						</view>
						<view style="" class="diygw-item col-100 row solid-bottom list1-item-clz">
							<view class="diygw-avatar">
								<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon4/icon4_sz.png"></image>
							</view>
							<view class="content">
								<view class="title"> 我有一个愿望 </view>
								<view class="text-sm remark"> 阅读32077 讨论10937 </view>
							</view>
						</view>
					</view>
				</view>
			</view>
		</scroll-view>
		<view class="flex flex-wrap diygw-col-24 flex-direction-column flex4-clz">
			<view class="flex diygw-col-24">
				<view class="diygw-list">
					<view style="" class="diygw-item col-100 row solid-bottom solid-small-bottom list4-item-clz">
						<view class="diygw-avatar">
							<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon12/icon12_et.png"></image>
						</view>
						<view class="content">
							<view class="title"> DIY可视化 </view>
							<view class="text-sm remark"> 3天前 DIY可视化公司 </view>
						</view>
					</view>
				</view>
			</view>
			<view class="diygw-col-24 text-clz"> DIY官网可视化工具做好的可视化拖拽开发工具，无须编程、零代码基础、所见即所得设计工具，轻松制作微信小程序、支付宝小程序、Vue3、H5、WebApp、UNIAPP、单页动画 </view>
			<image src="https://libs.diygw.com/upload/2022/02/12/c4c7f8ca-4c3d-40d1-a111-9305fabad17c/diygwjpg" class="response diygw-col-24 image-clz" mode="widthFix"></image>
			<view class="flex diygw-col-24 justify-between">
				<view class="diygw-tag margin-xs md radius">
					<text class="icon diy-icon-share"></text>
					<text> 分享 </text>
				</view>
				<view class="diygw-tag margin-xs md radius">
					<text class="icon diy-icon-comment"></text>
					<text> 100 </text>
				</view>
				<view class="diygw-tag margin-xs md radius">
					<text class="icon diy-icon-appreciate"></text>
					<text> 1000 </text>
				</view>
			</view>
			<view class="flex diygw-col-24">
				<view class="diygw-pzx" style="border-bottom: 5px solid #eee"></view>
			</view>
		</view>
		<view class="flex flex-wrap diygw-col-24 flex-direction-column flex5-clz">
			<view class="flex diygw-col-24">
				<view class="diygw-list">
					<view style="" class="diygw-item col-100 row solid-bottom solid-small-bottom list6-item-clz">
						<view class="diygw-avatar">
							<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon12/icon12_ty.png"></image>
						</view>
						<view class="content">
							<view class="title"> DIY可视化 </view>
							<view class="text-sm remark"> 3天前 DIY可视化公司 </view>
						</view>
					</view>
				</view>
			</view>
			<view class="diygw-col-24 text1-clz"> DIY官网可视化工具做好的可视化拖拽开发工具，无须编程、零代码基础、所见即所得设计工具，轻松制作微信小程序、支付宝小程序、Vue3、H5、WebApp、UNIAPP、单页动画 </view>
			<view class="flex flex-wrap diygw-col-24 flex7-clz">
				<image src="/static/pic1.jpg" class="response diygw-col-12 image2-clz" mode="widthFix"></image>
				<image src="https://libs.diygw.com/upload/2022/02/12/c4c7f8ca-4c3d-40d1-a111-9305fabad17c/diygwjpg" class="response diygw-col-12 image4-clz" mode="widthFix"></image>
			</view>
			<view class="flex diygw-col-24 justify-between">
				<view class="diygw-tag margin-xs md radius">
					<text class="icon diy-icon-share"></text>
					<text> 分享 </text>
				</view>
				<view class="diygw-tag margin-xs md radius">
					<text class="icon diy-icon-comment"></text>
					<text> 100 </text>
				</view>
				<view class="diygw-tag margin-xs md radius">
					<text class="icon diy-icon-appreciate"></text>
					<text> 1000 </text>
				</view>
			</view>
			<view class="flex diygw-col-24">
				<view class="diygw-pzx" style="border-bottom: 5px solid #eee"></view>
			</view>
		</view>
		<view class="flex flex-wrap diygw-col-24 flex-direction-column flex2-clz">
			<view class="flex diygw-col-24">
				<view class="diygw-list">
					<view style="" class="diygw-item col-100 row solid-bottom solid-small-bottom list3-item-clz">
						<view class="diygw-avatar">
							<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon12/icon12_qc.png"></image>
						</view>
						<view class="content">
							<view class="title"> DIY可视化 </view>
							<view class="text-sm remark"> 3天前 DIY可视化公司 </view>
						</view>
					</view>
				</view>
			</view>
			<view class="flex diygw-col-24">
				<view class="diygw-list">
					<view style="" class="diygw-item col-100 flex-direction-row-reverse solid-bottom list5-item-clz">
						<view class="diygw-avatar list5-icon-clz">
							<image mode="aspectFit" class="diygw-avatar-img" src="https://libs.diygw.com/upload/2022/01/22/e71a0c81-3923-46e4-a744-2af215a25781/miniprogramcode_177png"></image>
						</view>
						<view class="content">
							<view class="title"> DIY可视化开源推荐 </view>
							<view class="text-sm remark"> DIY官网可视化工具做好的可视化拖拽开发工具，无须编程、零代码基础、所见即所得设计工具，轻松制作微信小程序、支付宝小程序、Vue3、H5、WebApp、UNIAPP、单页动画 </view>
						</view>
					</view>
				</view>
			</view>
			<view class="flex diygw-col-24 justify-between">
				<view class="diygw-tag margin-xs md radius">
					<text class="icon diy-icon-share"></text>
					<text> 分享 </text>
				</view>
				<view class="diygw-tag margin-xs md radius">
					<text class="icon diy-icon-comment"></text>
					<text> 100 </text>
				</view>
				<view class="diygw-tag margin-xs md radius">
					<text class="icon diy-icon-appreciate"></text>
					<text> 1000 </text>
				</view>
			</view>
			<view class="flex diygw-col-24">
				<view class="diygw-pzx" style="border-bottom: 5px solid #eee"></view>
			</view>
		</view>
		<view class="flex flex-wrap diygw-col-24 flex-direction-column flex3-clz">
			<view class="flex diygw-col-24">
				<view class="diygw-list">
					<view style="" class="diygw-item col-100 flex-direction-row-reverse solid-bottom list7-item-clz">
						<view class="diygw-avatar list7-icon-clz">
							<image mode="aspectFit" class="diygw-avatar-img" src="https://libs.diygw.com/upload/2022/01/22/e71a0c81-3923-46e4-a744-2af215a25781/miniprogramcode_177png"></image>
						</view>
						<view class="content">
							<view class="title"> DIY可视化开源推荐 </view>
							<view class="text-sm remark"> DIY官网可视化工具做好的可视化拖拽开发工具，无须编程、零代码基础、所见即所得设计工具，轻松制作微信小程序、支付宝小程序、Vue3、H5、WebApp、UNIAPP、单页动画 </view>
						</view>
					</view>
				</view>
			</view>
			<view class="flex diygw-col-24 justify-between">
				<view class="diygw-tag margin-xs md radius">
					<text class="icon diy-icon-share"></text>
					<text> 分享 </text>
				</view>
				<view class="diygw-tag margin-xs md radius">
					<text class="icon diy-icon-comment"></text>
					<text> 100 </text>
				</view>
				<view class="diygw-tag margin-xs md radius">
					<text class="icon diy-icon-appreciate"></text>
					<text> 1000 </text>
				</view>
			</view>
			<view class="flex diygw-col-24">
				<view class="diygw-pzx" style="border-bottom: 5px solid #eee"></view>
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
				search: ''
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

<style lang="scss" scoped>
	.flex-clz {
		margin-left: 10px;
		z-index: 1000;
		width: calc(100% - 10px - 10px) !important;
		margin-top: 10px;
		margin-bottom: 0px;
		margin-right: 10px;
	}
	.avatar1-badge-0 {
		right: -10rpx !important;
		top: -10rpx !important;
	}
	.flex1-clz {
		z-index: 1000;
	}
	.flex4-clz {
		z-index: 1000;
	}
	.text-clz {
		margin-left: 0px;
		padding-top: 0px;
		padding-left: 10px;
		width: calc(100% - 0px - 0px) !important;
		padding-bottom: 0px;
		margin-top: 5px;
		margin-bottom: 0px;
		margin-right: 0px;
		padding-right: 10px;
	}
	.image-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.flex5-clz {
		z-index: 1000;
	}
	.text1-clz {
		margin-left: 0px;
		padding-top: 0px;
		padding-left: 10px;
		width: calc(100% - 0px - 0px) !important;
		padding-bottom: 0px;
		margin-top: 5px;
		margin-bottom: 0px;
		margin-right: 0px;
		padding-right: 10px;
	}
	.flex7-clz {
		z-index: 1000;
	}
	.image2-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(50% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.image4-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(50% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.flex2-clz {
		z-index: 1000;
	}
	.list5-item-clz {
		margin: 0px;
		padding: 10px;
	}
	.list5-icon-clz {
		width: 100px;
		height: 100px;
		font-size: calc(100px - 10px) !important;
	}
	.flex3-clz {
		z-index: 1000;
	}
	.list7-item-clz {
		margin: 0px;
		padding: 10px;
	}
	.list7-icon-clz {
		width: 100px;
		height: 100px;
		font-size: calc(100px - 10px) !important;
	}
	.container {
		padding-left: 0px;
		padding-right: 0px;
	}
</style>
