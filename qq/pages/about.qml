<view class="container">
	<image src="https://libs.diygw.com/upload/2022/02/12/c4c7f8ca-4c3d-40d1-a111-9305fabad17c/diygwjpg" catchtap="navigateTo" data-type="href" data-url="https://www.diygw.com" class="response diygw-col-24" mode="widthFix"></image>
	<rich-text nodes="{{text2}}" class="diygw-col-24 text2-clz diygw-text-md"></rich-text>
	<view class="flex diygw-col-24 list2-clz">
		<view class="diygw-list small not-remark">
			<view catchtap="navigateTo" data-type="openmodal" data-id="modal" style="" class="diygw-item col-100 row arrow solid-bottom list2-item-clz">
				<view class="diygw-avatar radius">
					<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_weixin.png"></image>
				</view>
				<view class="content">
					<view class="title"> 勾搭合作 </view>
				</view>
			</view>
			<view catchtap="navigateTo" data-type="href" data-url="https://www.diygw.com" style="" class="diygw-item col-100 row arrow solid-bottom list2-item-clz">
				<view class="diygw-avatar radius">
					<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon4/icon4_bq.png"></image>
				</view>
				<view class="content">
					<view class="title"> 在线设计 </view>
				</view>
			</view>
			<view catchtap="navigateTo" data-type="page" data-url="/pages/page/page" style="" class="diygw-item col-100 row arrow solid-bottom list2-item-clz">
				<view class="diygw-avatar radius">
					<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gd.png"></image>
				</view>
				<view class="content">
					<view class="title"> 页面演示 </view>
				</view>
			</view>
		</view>
	</view>
	<view class="flex diygw-col-24 list1-clz">
		<view class="diygw-list small not-remark">
			<view catchtap="navigateTo" data-type="page" data-url="/pages/zsff/zsff" style="" class="diygw-item col-100 row arrow solid-bottom list1-item-clz">
				<view class="diygw-avatar radius">
					<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon4/icon4_bf.png"></image>
				</view>
				<view class="content">
					<view class="title"> 知识付费首页 </view>
				</view>
			</view>
			<view catchtap="navigateTo" data-type="page" data-url="/pages/zsff/zsfflb" style="" class="diygw-item col-100 row arrow solid-bottom list1-item-clz">
				<view class="diygw-avatar radius">
					<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon4/icon4_bq.png"></image>
				</view>
				<view class="content">
					<view class="title"> 知识付费列表 </view>
				</view>
			</view>
			<view catchtap="navigateTo" data-type="page" data-url="/pages/zsff/zsffsq" style="" class="diygw-item col-100 row arrow solid-bottom list1-item-clz">
				<view class="diygw-avatar radius">
					<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon4/icon4_xx.png"></image>
				</view>
				<view class="content">
					<view class="title"> 知识付费朋友圈 </view>
				</view>
			</view>
			<view catchtap="navigateTo" data-type="page" data-url="/pages/zsff/zsffgl" style="" class="diygw-item col-100 row arrow solid-bottom list1-item-clz">
				<view class="diygw-avatar radius">
					<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_aq.png"></image>
				</view>
				<view class="content">
					<view class="title"> 知识付费个人中心 </view>
				</view>
			</view>
		</view>
	</view>
	<view class="diygw-modal basic {{modal}}" style="z-index: 1000000">
		<view class="diygw-dialog basis-lg">
			<view class="justify-end diygw-bar">
				<view class="content"> 勾搭合作 </view>
				<view class="action" data-type="closemodal" data-id="modal" catchtap="navigateTo">
					<i class="diygwui diy-icon-close"></i>
				</view>
			</view>
			<view>
				<view class="flex diygw-dialog-content diygw-col-24 flex-direction-column items-center modal-clz">
					<view catchtap="navigateTo" data-type="copy" data-copy="15913132246" data-tip="" class="diygw-col-0 diygw-text-lg"> 微信号：15913132246 </view>
					<view catchtap="navigateTo" data-type="copy" data-copy="15913132246" data-tip="" class="diygw-col-0 diygw-text-sm"> 点击复制微信号 </view>
				</view>
			</view>
			<view class="flex justify-end">
				<button data-type="closemodal" catchtap="navigateTo" data-id="modal" class="diygw-btn green flex1 margin-xs">关闭</button>
				<button catchtap="navigateTo" data-type="copy" data-copy="15913132246" data-tip="复制成功，前往微信查找" class="diygw-btn gradual-red flex1 margin-xs">点击复制</button>
			</view>
		</view>
	</view>
	<view class="clearfix"></view>
</view>
