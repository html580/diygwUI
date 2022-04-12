<template>
	<view class="container">
		<diy-navbar bgColor="gradual-green" :isBack="true">
			<!-- #ifndef VUE3 -->
			<block slot="backText"> 返回 </block>
			<block slot="content"> 知识付费个人中心 </block>
			<!-- #endif -->
			<!-- #ifdef VUE3 -->
			<template v-slot:backText> 返回 </template>
			<template v-slot:content> 知识付费个人中心 </template>
			<!-- #endif -->
		</diy-navbar>
		<view class="flex diygw-col-24 justify-between items-center flex-nowrap flex3-clz">
			<image src="https://libs.diygw.com/upload/2022/02/15/715c6f0e-3c0f-4d27-8a3f-80c50e7c366a/smpng" class="diygw-image diygw-col-0 image-clz" style="height: 24px; width: 24px" mode="aspectFit"></image>
			<view class="flex diygw-col-17 justify-end items-center flex-nowrap flex4-clz">
				<image src="https://libs.diygw.com/upload/2022/02/15/5492874a-2f29-42d1-ab4e-a14519e86334/sfpng" class="diygw-image diygw-col-0" style="height: 24px; width: 24px" mode="aspectFit"></image>
				<image src="https://libs.diygw.com/upload/2022/02/15/5a3dbd5e-f64b-4314-9ff5-0c98e91a73f9/szpng" class="diygw-image diygw-col-0 image3-clz" style="height: 24px; width: 24px" mode="aspectFit"></image>
				<view class="flex diygw-col-0">
					<view class="diygw-tag margin-xs radius">
						<image class="diygw-tag-img" src="https://lib.diygw.com/static/icon/icon8/icon8_qd.png"></image>
						<text> 签到 </text>
					</view>
				</view>
			</view>
		</view>
		<view class="flex diygw-col-24 items-center flex-nowrap flex5-clz">
			<view class="flex diygw-col-0 avatar2-clz">
				<view class="diygw-avatar radius bg-none">
					<image mode="aspectFit" class="diygw-avatar-img radius" src="https://libs.diygw.com/upload/2021/11/24/bbfb37c1-cd30-406c-ac3f-6edbcf15a4d4/favicon.png"></image>
				</view>
			</view>
			<view class="flex flex-wrap diygw-col-17 flex-direction-column flex7-clz">
				<view class="diygw-col-24 diygw-text-lg"> DIY可视化 </view>
				<view class="flex diygw-col-24">
					<view class="diygw-tag margin-xs xs radius bg-orange">
						<text> 勋章 2 </text>
					</view>
					<view class="diygw-tag margin-xs xs radius bg-orange">
						<text> 证书 2 </text>
					</view>
				</view>
			</view>
			<image src="https://libs.diygw.com/upload/2022/02/15/f15ba33b-4ee7-4596-a029-6bdc4ff94dd4/rightpng" class="diygw-image diygw-col-0" style="height: 30px; width: 30px" mode="aspectFit"></image>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-list">
				<view style="" class="diygw-item col-25 flex-direction-column list1-item-clz">
					<view class="content">
						<view class="title"> 100 </view>
						<view class="text-sm remark"> 我的笔记 </view>
					</view>
				</view>
				<view style="" class="diygw-item col-25 flex-direction-column list1-item-clz">
					<view class="content">
						<view class="title"> 9999 </view>
						<view class="text-sm remark"> 获赞 </view>
					</view>
				</view>
				<view style="" class="diygw-item col-25 flex-direction-column list1-item-clz">
					<view class="content">
						<view class="title"> 9999 </view>
						<view class="text-sm remark"> 关注我的人 </view>
					</view>
				</view>
				<view style="" class="diygw-item col-25 flex-direction-column list1-item-clz">
					<view class="content">
						<view class="title"> 500 </view>
						<view class="text-sm remark"> 关注我的人 </view>
					</view>
				</view>
			</view>
		</view>
		<view class="flex flex-wrap diygw-col-24 flex-direction-column flex2-clz">
			<view class="diygw-title flex diygw-col-24">
				<view class="title font-normal"> 我的账户 </view>
			</view>
			<view class="flex diygw-col-24">
				<view class="diygw-grid col-4">
					<view class="diygw-grid-item">
						<view class="diygw-grid-inner grid4-item-clz">
							<view class="diygw-grid-icon diygw-avatar radius grid4-icon-clz diy-icon-creative"> </view>
							<view class="diygw-grid-title"> 创作首页 </view>
						</view>
					</view>
					<view class="diygw-grid-item">
						<view class="diygw-grid-inner grid4-item-clz">
							<view class="diygw-grid-icon diygw-avatar radius grid4-icon-clz diy-icon-rank"> </view>
							<view class="diygw-grid-title"> 数据助手 </view>
						</view>
					</view>
					<view class="diygw-grid-item">
						<view class="diygw-grid-inner grid4-item-clz">
							<view class="diygw-grid-icon diygw-avatar radius grid4-icon-clz diy-icon-moneybag"> </view>
							<view class="diygw-grid-title"> 收益提现 </view>
						</view>
					</view>
					<view class="diygw-grid-item">
						<view class="diygw-grid-inner grid4-item-clz">
							<view class="diygw-grid-icon diygw-avatar radius grid4-icon-clz diy-icon-new"> </view>
							<view class="diygw-grid-title"> 草稿箱 </view>
						</view>
					</view>
				</view>
			</view>
		</view>
		<view class="flex flex-wrap diygw-col-24 flex-direction-column flex1-clz">
			<view class="diygw-title flex diygw-col-24">
				<view class="title font-normal"> 更多服务 </view>
			</view>
			<view class="flex diygw-col-24">
				<view class="diygw-grid col-4">
					<view class="diygw-grid-item">
						<view class="diygw-grid-inner grid3-item-clz">
							<view class="diygw-grid-icon diygw-avatar radius grid3-icon-clz diy-icon-clothes"> </view>
							<view class="diygw-grid-title"> 皮肤 </view>
						</view>
					</view>
					<view class="diygw-grid-item">
						<view class="diygw-grid-inner grid3-item-clz">
							<view class="diygw-grid-icon diygw-avatar radius grid3-icon-clz diy-icon-cart"> </view>
							<view class="diygw-grid-title"> 订单 </view>
						</view>
					</view>
					<view class="diygw-grid-item">
						<view class="diygw-grid-inner grid3-item-clz">
							<view class="diygw-grid-icon diygw-avatar radius grid3-icon-clz diy-icon-write"> </view>
							<view class="diygw-grid-title"> 反馈 </view>
						</view>
					</view>
					<view class="diygw-grid-item">
						<view class="diygw-grid-inner grid3-item-clz">
							<view class="diygw-grid-icon diygw-avatar radius grid3-icon-clz diy-icon-moneybag"> </view>
							<view class="diygw-grid-title"> 钱包 </view>
						</view>
					</view>
					<view class="diygw-grid-item">
						<view class="diygw-grid-inner grid3-item-clz">
							<view class="diygw-grid-icon diygw-avatar radius grid3-icon-clz diy-icon-comment"> </view>
							<view class="diygw-grid-title"> 评论 </view>
						</view>
					</view>
					<view class="diygw-grid-item">
						<view class="diygw-grid-inner grid3-item-clz">
							<view class="diygw-grid-icon diygw-avatar radius grid3-icon-clz diy-icon-safe"> </view>
							<view class="diygw-grid-title"> 安全 </view>
						</view>
					</view>
					<view class="diygw-grid-item">
						<view class="diygw-grid-inner grid3-item-clz">
							<view class="diygw-grid-icon diygw-avatar radius grid3-icon-clz diy-icon-profile"> </view>
							<view class="diygw-grid-title"> 隐私 </view>
						</view>
					</view>
					<view class="diygw-grid-item">
						<view class="diygw-grid-inner grid3-item-clz">
							<view class="diygw-grid-icon diygw-avatar radius grid3-icon-clz diy-icon-evaluate"> </view>
							<view class="diygw-grid-title"> 公益 </view>
						</view>
					</view>
				</view>
			</view>
		</view>
		<view class="flex flex-wrap diygw-col-24 flex-direction-column flex-clz">
			<view class="diygw-title flex diygw-col-24">
				<view class="title font-normal"> 学习成就 </view>
			</view>
			<view class="flex diygw-col-24">
				<view class="diygw-list">
					<view style="" class="diygw-item col-25 flex-direction-column list-item-clz">
						<view class="diygw-avatar list-icon-clz diy-icon-time"> </view>
						<view class="content">
							<view class="title"> 学习数据 </view>
							<view class="text-sm remark"> 100天 </view>
						</view>
					</view>
					<view style="" class="diygw-item col-25 flex-direction-column list-item-clz">
						<view class="diygw-avatar list-icon-clz diy-icon-medal"> </view>
						<view class="content">
							<view class="title"> 勋章 </view>
							<view class="text-sm remark"> 2枚 </view>
						</view>
					</view>
					<view style="" class="diygw-item col-25 flex-direction-column list-item-clz">
						<view class="diygw-avatar list-icon-clz diy-icon-selection"> </view>
						<view class="content">
							<view class="title"> 证书 </view>
							<view class="text-sm remark"> </view>
						</view>
					</view>
					<view style="" class="diygw-item col-25 flex-direction-column list-item-clz">
						<view class="diygw-avatar list-icon-clz diy-icon-coin">
							<view class="diygw-tag badge empty list-badge-3 red"></view>
						</view>
						<view class="content">
							<view class="title"> 积分 </view>
							<view class="text-sm remark"> 100分 </view>
						</view>
					</view>
				</view>
			</view>
		</view>
		<view class="flex flex-wrap diygw-col-24 flex-direction-column flex6-clz">
			<view class="flex diygw-col-24">
				<view class="diygw-list small">
					<view style="" class="diygw-item col-100 row arrow solid-bottom solid-small-bottom list4-item-clz">
						<view class="content">
							<view class="title"> 推荐给好友 </view>
							<view class="text-sm remark"> 邀请即可得20元优惠券 </view>
						</view>
					</view>
					<view style="" class="diygw-item col-100 row arrow solid-bottom solid-small-bottom list4-item-clz">
						<view class="content">
							<view class="title"> 关于DIY可视化 </view>
							<view class="text-sm remark"> </view>
						</view>
					</view>
					<view style="" class="diygw-item col-100 row arrow solid-bottom solid-small-bottom list4-item-clz">
						<view class="content">
							<view class="title"> 帮助中心 </view>
							<view class="text-sm remark"> </view>
						</view>
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
	.flex3-clz {
		z-index: 1000;
	}
	.image-clz {
		margin-left: 10px;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.flex4-clz {
		z-index: 1000;
	}
	.image3-clz {
		margin-left: 15px;
		margin-top: 0px;
		margin-bottom: 0px;
		margin-right: 0px;
	}
	.flex5-clz {
		z-index: 1000;
	}
	.avatar2-clz {
		padding-top: 2px;
		border-bottom-left-radius: 50%;
		padding-left: 2px;
		padding-bottom: 2px;
		border-top-right-radius: 50%;
		margin-right: 5px;
		margin-left: 10px;
		box-shadow: 0px 1px 3px 1px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		border-top-left-radius: 50%;
		margin-top: 5px;
		border-bottom-right-radius: 50%;
		margin-bottom: 5px;
		padding-right: 2px;
	}
	.flex7-clz {
		z-index: 1000;
	}
	.flex2-clz {
		margin-left: 15px;
		border-bottom-left-radius: 10px;
		box-shadow: 0px 1px 3px 2px rgba(149, 149, 149, 0.26);
		z-index: 1000;
		overflow: hidden;
		width: calc(100% - 15px - 15px) !important;
		border-top-left-radius: 10px;
		margin-top: 8px;
		border-top-right-radius: 10px;
		border-bottom-right-radius: 10px;
		margin-bottom: 8px;
		margin-right: 15px;
	}
	.grid4-item-clz {
		margin: 0px;
		padding: 10px;
	}
	.grid4-icon-clz {
		width: 40px;
		height: 40px;
		font-size: calc(40px - 10px) !important;
	}
	.flex1-clz {
		margin-left: 15px;
		border-bottom-left-radius: 10px;
		box-shadow: 0px 1px 3px 2px rgba(149, 149, 149, 0.26);
		z-index: 1000;
		overflow: hidden;
		width: calc(100% - 15px - 15px) !important;
		border-top-left-radius: 10px;
		margin-top: 8px;
		border-top-right-radius: 10px;
		border-bottom-right-radius: 10px;
		margin-bottom: 8px;
		margin-right: 15px;
	}
	.grid3-item-clz {
		margin: 0px;
		padding: 10px;
	}
	.grid3-icon-clz {
		width: 40px;
		height: 40px;
		font-size: calc(40px - 10px) !important;
	}
	.flex-clz {
		margin-left: 15px;
		border-bottom-left-radius: 10px;
		box-shadow: 0px 1px 3px 2px rgba(149, 149, 149, 0.26);
		z-index: 1000;
		overflow: hidden;
		width: calc(100% - 15px - 15px) !important;
		border-top-left-radius: 10px;
		margin-top: 8px;
		border-top-right-radius: 10px;
		border-bottom-right-radius: 10px;
		margin-bottom: 8px;
		margin-right: 15px;
	}
	.list-item-clz {
		margin: 0px;
		padding: 10px;
	}
	.list-icon-clz {
		width: 40px;
		height: 40px;
		font-size: calc(40px - 10px) !important;
	}

	.list-badge-3 {
		right: 4rpx !important;
		top: 4rpx !important;
	}
	.flex6-clz {
		margin-left: 15px;
		border-bottom-left-radius: 10px;
		box-shadow: 0px 1px 3px 2px rgba(149, 149, 149, 0.26);
		z-index: 1000;
		overflow: hidden;
		width: calc(100% - 15px - 15px) !important;
		border-top-left-radius: 10px;
		margin-top: 8px;
		border-top-right-radius: 10px;
		border-bottom-right-radius: 10px;
		margin-bottom: 8px;
		margin-right: 15px;
	}
	.list4-item-clz {
		margin: 0px;
		padding: 10px;
	}
	.list4-icon-clz {
		width: 40px;
		height: 40px;
		font-size: calc(40px - 10px) !important;
	}
	.container {
		padding-left: 0px;
		padding-right: 0px;
	}
</style>
