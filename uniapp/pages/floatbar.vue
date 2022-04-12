<template>
	<view class="container">
		<view class="flex diygw-col-0 left-top floatbar-clz">
			<view class="diygw-grid diygw-actions">
				<button class="diygw-action radius-top bg-green">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar diy-icon-friendfamous"> </view>
						<view class="diygw-grid-title"> 客服 </view>
					</view>
				</button>
				<button class="diygw-action radius-bottom bg-blue">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar diy-icon-phone"> </view>
						<view class="diygw-grid-title"> 电话 </view>
					</view>
				</button>
			</view>
		</view>
		<view class="flex diygw-col-0 right-top floatbar3-clz">
			<view class="diygw-grid diygw-actions">
				<button class="diygw-action">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar diy-icon-friendfamous"> </view>
						<view class="diygw-grid-title"> 客服 </view>
					</view>
				</button>
				<button class="diygw-action">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar diy-icon-phone"> </view>
						<view class="diygw-grid-title"> 电话 </view>
					</view>
				</button>
			</view>
		</view>
		<view class="flex diygw-col-0 left-bottom floatbar2-clz">
			<view class="diygw-grid diygw-actions">
				<button class="diygw-action radius-top bg-green">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar diy-icon-friendfamous"> </view>
						<view class="diygw-grid-title"> 客服 </view>
					</view>
				</button>
				<button class="diygw-action radius-bottom bg-blue">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar diy-icon-phone"> </view>
						<view class="diygw-grid-title"> 电话 </view>
					</view>
				</button>
			</view>
		</view>
		<view class="flex diygw-col-0 right-bottom floatbar1-clz">
			<view class="diygw-grid diygw-actions">
				<button class="diygw-action radius-top bg-green">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar diy-icon-friendfamous"> </view>
						<view class="diygw-grid-title"> 客服 </view>
					</view>
				</button>
				<button class="diygw-action radius-bottom bg-blue">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar diy-icon-phone"> </view>
						<view class="diygw-grid-title"> 电话 </view>
					</view>
				</button>
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
	.floatbar-clz {
		left: 10px;
		width: 40px; /*  #ifdef  MP */
		top: 50px; /*  #endif  */ /*  #ifndef  MP */
		top: calc(45px + 50px); /*  #endif  */
	}
	.floatbar3-clz {
		top: 20px;
		width: 50px;
		right: 10px;
	}
	.floatbar2-clz {
		left: 10px;
		bottom: 50px;
		width: 40px;
	}
	.floatbar1-clz {
		bottom: 20px;
		width: 40px;
		right: 10px;
	}
	.container {
		padding-left: 0px;
		padding-right: 0px;
	}
</style>
