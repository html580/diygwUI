<template>
	<view class="container">
		<view class="flex diygw-col-24 progress13-clz">
			<view class="diygw-progress flex1 radius" style="height: 24px">
				<view class="diygw-progress-content green" style="width: 80%"> 80% </view>
			</view>
		</view>
		<view class="flex diygw-col-24 progress14-clz">
			<view class="diygw-progress flex1 radius striped" style="height: 24px">
				<view class="diygw-progress-content green" style="width: 80%"> 80% </view>
			</view>
		</view>
		<view class="flex diygw-col-24 progress1-clz">
			<view class="diygw-progress flex1 radius striped active" style="height: 24px">
				<view class="diygw-progress-content green" style="width: 80%"> 80% </view>
			</view>
		</view>
		<view class="flex diygw-col-24 progress2-clz">
			<view class="diygw-progress flex1 radius" style="height: 24px">
				<view class="diygw-progress-content red" style="width: 80%"> 80% </view>
			</view>
		</view>
		<view class="flex diygw-col-24 progress3-clz">
			<view class="diygw-progress flex1 radius" style="height: 24px">
				<view class="diygw-progress-content orange" style="width: 80%"> 80% </view>
			</view>
		</view>
		<view class="flex diygw-col-24 progress4-clz">
			<view class="diygw-progress flex1 radius" style="height: 24px">
				<view class="diygw-progress-content olive" style="width: 80%"> 80% </view>
			</view>
		</view>
		<view class="flex diygw-col-24 progress5-clz">
			<view class="diygw-progress flex1 radius" style="height: 24px">
				<view class="diygw-progress-content cyan" style="width: 80%"> 80% </view>
			</view>
		</view>
		<view class="flex diygw-col-24 progress6-clz">
			<view class="diygw-progress flex1 radius" style="height: 24px">
				<view class="diygw-progress-content blue" style="width: 80%"> 80% </view>
			</view>
		</view>
		<view class="flex diygw-col-24 progress7-clz">
			<view class="diygw-progress flex1 radius" style="height: 24px">
				<view class="diygw-progress-content purple" style="width: 50%"> 50% </view>
			</view>
		</view>
		<view class="flex diygw-col-24 progress8-clz">
			<view class="diygw-progress flex1 radius" style="height: 24px">
				<view class="diygw-progress-content mauve" style="width: 60%"> 60% </view>
			</view>
		</view>
		<view class="flex diygw-col-24 progress9-clz">
			<view class="diygw-progress flex1 radius" style="height: 24px">
				<view class="diygw-progress-content gradual-blue" style="width: 90%"> 90% </view>
			</view>
		</view>
		<view class="flex diygw-col-24 progress11-clz">
			<view class="diygw-progress flex1 radius" style="height: 24px">
				<view class="diygw-progress-content gradual-purple" style="width: 100%"> 100% </view>
			</view>
		</view>
		<view class="flex diygw-col-24 progress-clz">
			<view class="diygw-progress flex1 radius" style="height: 24px">
				<view class="diygw-progress-content gradual-pink" style="width: 60%"> 60% </view>
			</view>
		</view>
		<view class="flex diygw-col-24 progress12-clz">
			<view class="diygw-progress flex1 radius" style="height: 30px">
				<view class="diygw-progress-content gradual-purple" style="width: 100%"> 100% </view>
			</view>
		</view>
		<view class="flex diygw-col-24 progress10-clz">
			<view class="diygw-progress flex1 radius" style="height: 40px">
				<view class="diygw-progress-content gradual-green" style="width: 100%"> 100% </view>
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
	.progress13-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.progress14-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.progress1-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.progress2-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.progress3-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.progress4-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.progress5-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.progress6-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.progress7-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.progress8-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.progress9-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.progress11-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.progress-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.progress12-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.progress10-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
</style>
