<view class="container">
	<view class="flex diygw-col-24 flex-direction-column">
		<scroll-view scroll-x scroll-into-view="{{'scroll-' + tabsIndex}}" scroll-with-animation class="diygw-tabs text-center justify-start scale-title small-border">
			<view id="{{'scroll-' + index}}" class="diygw-tab-item {{index==tabsIndex?'cur text-green':''}}" qq:for="{{tabsDatas}}" qq:for-item="item" qq:for-index="index" data-key="index" data-index="{{index}}" catchtap="changeTabs"> {{item.text}} </view>
		</scroll-view>
	</view>
	<view class="flex diygw-col-24">
		<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
	</view>
	<view class="flex diygw-col-24 flex-direction-column">
		<scroll-view scroll-x scroll-into-view="{{'scroll-' + tabs1Index}}" scroll-with-animation class="diygw-tabs text-center justify-start scale-title small-border">
			<view id="{{'scroll-' + index}}" class="diygw-tab-item {{index==tabs1Index?'cur text-red':''}}" qq:for="{{tabs1Datas}}" qq:for-item="item" qq:for-index="index" data-key="index" data-index="{{index}}" catchtap="changeTabs1"> {{item.text}} </view>
		</scroll-view>
	</view>
	<view class="flex diygw-col-24">
		<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
	</view>
	<view class="flex diygw-col-24 flex-direction-column">
		<scroll-view scroll-x scroll-into-view="{{'scroll-' + tabs4Index}}" scroll-with-animation class="diygw-tabs text-center justify-start gradual-orange scale-title small-border">
			<view id="{{'scroll-' + index}}" class="diygw-tab-item {{index==tabs4Index?'radius cur':''}}" qq:for="{{tabs4Datas}}" qq:for-item="item" qq:for-index="index" data-key="index" data-index="{{index}}" catchtap="changeTabs4"> {{item.text}} </view>
		</scroll-view>
	</view>
	<view class="flex diygw-col-24">
		<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
	</view>
	<view class="flex diygw-col-24 flex-direction-column">
		<scroll-view scroll-x scroll-into-view="{{'scroll-' + tabs11Index}}" scroll-with-animation class="diygw-tabs text-center justify-start gradual-red small-border">
			<view id="{{'scroll-' + index}}" class="diygw-tab-item {{index==tabs11Index?'cur':''}}" qq:for="{{tabs11Datas}}" qq:for-item="item" qq:for-index="index" data-key="index" data-index="{{index}}" catchtap="changeTabs11"> {{item.text}} </view>
		</scroll-view>
	</view>
	<view class="flex diygw-col-24">
		<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
	</view>
	<view class="flex diygw-col-24 flex-direction-column">
		<scroll-view scroll-x scroll-into-view="{{'scroll-' + tabs5Index}}" scroll-with-animation class="diygw-tabs text-center justify-start gradual-green scale-title small-border">
			<view id="{{'scroll-' + index}}" class="diygw-tab-item {{index==tabs5Index?'radius cur':''}}" qq:for="{{tabs5Datas}}" qq:for-item="item" qq:for-index="index" data-key="index" data-index="{{index}}" catchtap="changeTabs5"> {{item.text}} </view>
		</scroll-view>
	</view>
	<view class="flex diygw-col-24">
		<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
	</view>
	<view class="flex diygw-col-24 flex-direction-column">
		<scroll-view scroll-x scroll-into-view="{{'scroll-' + tabs2Index}}" scroll-with-animation class="diygw-tabs text-center justify-start">
			<view id="{{'scroll-' + index}}" class="diygw-tab-item {{index==tabs2Index?'cur text-gradual-green':''}}" qq:for="{{tabs2Datas}}" qq:for-item="item" qq:for-index="index" data-key="index" data-index="{{index}}" catchtap="changeTabs2"> {{item.text}} </view>
		</scroll-view>
	</view>
	<view class="flex diygw-col-24">
		<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
	</view>
	<view class="flex diygw-col-24 flex-direction-column">
		<scroll-view scroll-x scroll-into-view="{{'scroll-' + tabs3Index}}" scroll-with-animation class="diygw-tabs text-center justify-start scale-title small-border">
			<view id="{{'scroll-' + index}}" class="diygw-tab-item {{index==tabs3Index?'bg-gradual-orange radius':''}}" qq:for="{{tabs3Datas}}" qq:for-item="item" qq:for-index="index" data-key="index" data-index="{{index}}" catchtap="changeTabs3"> {{item.text}} </view>
		</scroll-view>
	</view>
	<view class="flex diygw-col-24">
		<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
	</view>
	<view class="flex diygw-col-24 flex-direction-column">
		<view class="diygw-tabs text-center solid-bottom justify-center small-border">
			<view class="diygw-tab-item {{index==tabs7Index?'cur text-gradual-green':''}}" qq:for="{{tabs7Datas}}" qq:for-item="item" qq:for-index="index" data-key="index" data-index="{{index}}" catchtap="changeTabs7"> {{item.text}} </view>
		</view>
		<view class="">
			<view qq:if="{{tabs7Index==0}}" class="flex-sub">
				<view class="flex diygw-col-24">
					<view class="diygw-grid col-3">
						<view catchtap="navigateTo" data-type="phone" data-phone="15913132246" class="diygw-grid-item">
							<view class="diygw-grid-inner grid1-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gh.png"></image>
									<view class="diygw-tag badge empty grid1-badge-0 red"></view>
								</view>
								<view class="diygw-grid-title"> 点击打电话 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="https://www.diygw.com" data-tip="" class="diygw-grid-item">
							<view class="diygw-grid-inner grid1-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_lj.png"></image>
								</view>
								<view class="diygw-grid-title"> 点击复制 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="page" data-url="/pages/page/page" class="diygw-grid-item">
							<view class="diygw-grid-inner grid1-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gd.png"></image>
								</view>
								<view class="diygw-grid-title"> 更多 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="15913132246" data-tip="复制成功，前往微信查找" class="diygw-grid-item">
							<view class="diygw-grid-inner grid1-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_weixin.png"></image>
								</view>
								<view class="diygw-grid-title"> 微信 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="luckyzf332" data-tip="复制成功，前往支付宝查找" class="diygw-grid-item">
							<view class="diygw-grid-inner grid1-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_zfb.png"></image>
								</view>
								<view class="diygw-grid-title"> 支付宝 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="280160522" data-tip="复制成功，前往QQ查找" class="diygw-grid-item">
							<view class="diygw-grid-inner grid1-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_QQ.png"></image>
								</view>
								<view class="diygw-grid-title"> QQ </view>
							</view>
						</view>
					</view>
				</view>
			</view>
			<view qq:if="{{tabs7Index==1}}" class="flex-sub">
				<view class="flex diygw-col-24 list1-clz">
					<view class="diygw-list small not-remark">
						<view catchtap="navigateTo" data-type="page" data-url="/pages/app/index" style="" class="diygw-item col-100 row arrow solid-bottom list1-item-clz">
							<view class="diygw-avatar radius">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_fs.png"></image>
							</view>
							<view class="content">
								<view class="title"> 壁纸主页 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="page" data-url="/pages/app/shop" style="" class="diygw-item col-100 row arrow solid-bottom list1-item-clz">
							<view class="diygw-avatar radius">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_hb.png"></image>
							</view>
							<view class="content">
								<view class="title"> 商城主页 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="page" data-url="/pages/index" style="" class="diygw-item col-100 row arrow solid-bottom list1-item-clz">
							<view class="diygw-avatar radius">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_bj.png"></image>
							</view>
							<view class="content">
								<view class="title"> 组件库演示 </view>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
	</view>
	<view class="flex diygw-col-24 flex-direction-column">
		<view class="diygw-tabs text-center solid-bottom justify-center gradual-green small-border">
			<view class="diygw-tab-item {{index==tabs10Index?'cur':''}}" qq:for="{{tabs10Datas}}" qq:for-item="item" qq:for-index="index" data-key="index" data-index="{{index}}" catchtap="changeTabs10"> {{item.text}} </view>
		</view>
		<view class="">
			<view qq:if="{{tabs10Index==0}}" class="flex-sub">
				<view class="flex diygw-col-24">
					<view class="diygw-grid col-3">
						<view catchtap="navigateTo" data-type="phone" data-phone="15913132246" class="diygw-grid-item">
							<view class="diygw-grid-inner grid4-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gh.png"></image>
									<view class="diygw-tag badge empty grid4-badge-0 red"></view>
								</view>
								<view class="diygw-grid-title"> 点击打电话 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="https://www.diygw.com" data-tip="" class="diygw-grid-item">
							<view class="diygw-grid-inner grid4-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_lj.png"></image>
								</view>
								<view class="diygw-grid-title"> 点击复制 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="page" data-url="/pages/page/page" class="diygw-grid-item">
							<view class="diygw-grid-inner grid4-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gd.png"></image>
								</view>
								<view class="diygw-grid-title"> 更多 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="15913132246" data-tip="复制成功，前往微信查找" class="diygw-grid-item">
							<view class="diygw-grid-inner grid4-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_weixin.png"></image>
								</view>
								<view class="diygw-grid-title"> 微信 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="luckyzf332" data-tip="复制成功，前往支付宝查找" class="diygw-grid-item">
							<view class="diygw-grid-inner grid4-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_zfb.png"></image>
								</view>
								<view class="diygw-grid-title"> 支付宝 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="280160522" data-tip="复制成功，前往QQ查找" class="diygw-grid-item">
							<view class="diygw-grid-inner grid4-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_QQ.png"></image>
								</view>
								<view class="diygw-grid-title"> QQ </view>
							</view>
						</view>
					</view>
				</view>
			</view>
			<view qq:if="{{tabs10Index==1}}" class="flex-sub">
				<view class="flex diygw-col-24 list4-clz">
					<view class="diygw-list small not-remark">
						<view catchtap="navigateTo" data-type="page" data-url="/pages/app/index" style="" class="diygw-item col-100 row arrow solid-bottom list4-item-clz">
							<view class="diygw-avatar radius">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_fs.png"></image>
							</view>
							<view class="content">
								<view class="title"> 壁纸主页 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="page" data-url="/pages/app/shop" style="" class="diygw-item col-100 row arrow solid-bottom list4-item-clz">
							<view class="diygw-avatar radius">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_hb.png"></image>
							</view>
							<view class="content">
								<view class="title"> 商城主页 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="page" data-url="/pages/index" style="" class="diygw-item col-100 row arrow solid-bottom list4-item-clz">
							<view class="diygw-avatar radius">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_bj.png"></image>
							</view>
							<view class="content">
								<view class="title"> 组件库演示 </view>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
	</view>
	<view class="flex diygw-col-24">
		<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
	</view>
	<view class="flex diygw-col-24 flex-direction-column-reverse">
		<view class="diygw-tabs text-center solid-top justify-center small-border">
			<view class="diygw-tab-item {{index==tabs8Index?'cur text-green':''}}" qq:for="{{tabs8Datas}}" qq:for-item="item" qq:for-index="index" data-key="index" data-index="{{index}}" catchtap="changeTabs8"> {{item.text}} </view>
		</view>
		<view class="">
			<view qq:if="{{tabs8Index==0}}" class="flex-sub">
				<view class="flex diygw-col-24">
					<view class="diygw-grid col-3">
						<view catchtap="navigateTo" data-type="phone" data-phone="15913132246" class="diygw-grid-item">
							<view class="diygw-grid-inner grid2-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gh.png"></image>
									<view class="diygw-tag badge empty grid2-badge-0 red"></view>
								</view>
								<view class="diygw-grid-title"> 点击打电话 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="https://www.diygw.com" data-tip="" class="diygw-grid-item">
							<view class="diygw-grid-inner grid2-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_lj.png"></image>
								</view>
								<view class="diygw-grid-title"> 点击复制 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="page" data-url="/pages/page/page" class="diygw-grid-item">
							<view class="diygw-grid-inner grid2-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gd.png"></image>
								</view>
								<view class="diygw-grid-title"> 更多 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="15913132246" data-tip="复制成功，前往微信查找" class="diygw-grid-item">
							<view class="diygw-grid-inner grid2-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_weixin.png"></image>
								</view>
								<view class="diygw-grid-title"> 微信 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="luckyzf332" data-tip="复制成功，前往支付宝查找" class="diygw-grid-item">
							<view class="diygw-grid-inner grid2-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_zfb.png"></image>
								</view>
								<view class="diygw-grid-title"> 支付宝 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="280160522" data-tip="复制成功，前往QQ查找" class="diygw-grid-item">
							<view class="diygw-grid-inner grid2-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_QQ.png"></image>
								</view>
								<view class="diygw-grid-title"> QQ </view>
							</view>
						</view>
					</view>
				</view>
			</view>
			<view qq:if="{{tabs8Index==1}}" class="flex-sub">
				<view class="flex diygw-col-24 list2-clz">
					<view class="diygw-list small not-remark">
						<view catchtap="navigateTo" data-type="page" data-url="/pages/app/index" style="" class="diygw-item col-100 row arrow solid-bottom list2-item-clz">
							<view class="diygw-avatar radius">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_fs.png"></image>
							</view>
							<view class="content">
								<view class="title"> 壁纸主页 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="page" data-url="/pages/app/shop" style="" class="diygw-item col-100 row arrow solid-bottom list2-item-clz">
							<view class="diygw-avatar radius">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_hb.png"></image>
							</view>
							<view class="content">
								<view class="title"> 商城主页 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="page" data-url="/pages/index" style="" class="diygw-item col-100 row arrow solid-bottom list2-item-clz">
							<view class="diygw-avatar radius">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_bj.png"></image>
							</view>
							<view class="content">
								<view class="title"> 组件库演示 </view>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
	</view>
	<view class="flex diygw-col-24">
		<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
	</view>
	<view class="flex diygw-col-24 flex-direction-row">
		<scroll-view scroll-y scroll-into-view="{{'scroll-' + tabs6Index}}" scroll-with-animation class="diygw-tabs text-center solid-right justify-center small-border">
			<view id="{{'scroll-' + index}}" class="diygw-tab-item {{index==tabs6Index?'cur text-green':''}}" qq:for="{{tabs6Datas}}" qq:for-item="item" qq:for-index="index" data-key="index" data-index="{{index}}" catchtap="changeTabs6"> {{item.text}} </view>
		</scroll-view>
		<view class="flex1">
			<view qq:if="{{tabs6Index==0}}" class="flex-sub">
				<view class="flex diygw-col-24">
					<view class="diygw-grid col-3">
						<view catchtap="navigateTo" data-type="phone" data-phone="15913132246" class="diygw-grid-item">
							<view class="diygw-grid-inner grid10-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gh.png"></image>
									<view class="diygw-tag badge empty grid10-badge-0 red"></view>
								</view>
								<view class="diygw-grid-title"> 点击打电话 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="https://www.diygw.com" data-tip="" class="diygw-grid-item">
							<view class="diygw-grid-inner grid10-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_lj.png"></image>
								</view>
								<view class="diygw-grid-title"> 点击复制 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="page" data-url="/pages/page/page" class="diygw-grid-item">
							<view class="diygw-grid-inner grid10-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gd.png"></image>
								</view>
								<view class="diygw-grid-title"> 更多 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="15913132246" data-tip="复制成功，前往微信查找" class="diygw-grid-item">
							<view class="diygw-grid-inner grid10-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_weixin.png"></image>
								</view>
								<view class="diygw-grid-title"> 微信 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="luckyzf332" data-tip="复制成功，前往支付宝查找" class="diygw-grid-item">
							<view class="diygw-grid-inner grid10-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_zfb.png"></image>
								</view>
								<view class="diygw-grid-title"> 支付宝 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="280160522" data-tip="复制成功，前往QQ查找" class="diygw-grid-item">
							<view class="diygw-grid-inner grid10-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_QQ.png"></image>
								</view>
								<view class="diygw-grid-title"> QQ </view>
							</view>
						</view>
					</view>
				</view>
			</view>
			<view qq:if="{{tabs6Index==1}}" class="flex-sub">
				<view class="flex diygw-col-24 list8-clz">
					<view class="diygw-list small not-remark">
						<view catchtap="navigateTo" data-type="page" data-url="/pages/app/index" style="" class="diygw-item col-100 row arrow solid-bottom list8-item-clz">
							<view class="diygw-avatar radius">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_fs.png"></image>
							</view>
							<view class="content">
								<view class="title"> 壁纸主页 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="page" data-url="/pages/app/shop" style="" class="diygw-item col-100 row arrow solid-bottom list8-item-clz">
							<view class="diygw-avatar radius">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_hb.png"></image>
							</view>
							<view class="content">
								<view class="title"> 商城主页 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="page" data-url="/pages/index" style="" class="diygw-item col-100 row arrow solid-bottom list8-item-clz">
							<view class="diygw-avatar radius">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_bj.png"></image>
							</view>
							<view class="content">
								<view class="title"> 组件库演示 </view>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
	</view>
	<view class="flex diygw-col-24">
		<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
	</view>
	<view class="flex diygw-col-24 flex-direction-row-reverse">
		<scroll-view scroll-y scroll-into-view="{{'scroll-' + tabs9Index}}" scroll-with-animation class="diygw-tabs text-center solid-left justify-center small-border">
			<view id="{{'scroll-' + index}}" class="diygw-tab-item {{index==tabs9Index?'cur text-green':''}}" qq:for="{{tabs9Datas}}" qq:for-item="item" qq:for-index="index" data-key="index" data-index="{{index}}" catchtap="changeTabs9"> {{item.text}} </view>
		</scroll-view>
		<view class="flex1">
			<view qq:if="{{tabs9Index==0}}" class="flex-sub">
				<view class="flex diygw-col-24">
					<view class="diygw-grid col-3">
						<view catchtap="navigateTo" data-type="phone" data-phone="15913132246" class="diygw-grid-item">
							<view class="diygw-grid-inner grid3-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gh.png"></image>
									<view class="diygw-tag badge empty grid3-badge-0 red"></view>
								</view>
								<view class="diygw-grid-title"> 点击打电话 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="https://www.diygw.com" data-tip="" class="diygw-grid-item">
							<view class="diygw-grid-inner grid3-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_lj.png"></image>
								</view>
								<view class="diygw-grid-title"> 点击复制 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="page" data-url="/pages/page/page" class="diygw-grid-item">
							<view class="diygw-grid-inner grid3-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gd.png"></image>
								</view>
								<view class="diygw-grid-title"> 更多 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="15913132246" data-tip="复制成功，前往微信查找" class="diygw-grid-item">
							<view class="diygw-grid-inner grid3-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_weixin.png"></image>
								</view>
								<view class="diygw-grid-title"> 微信 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="luckyzf332" data-tip="复制成功，前往支付宝查找" class="diygw-grid-item">
							<view class="diygw-grid-inner grid3-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_zfb.png"></image>
								</view>
								<view class="diygw-grid-title"> 支付宝 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="copy" data-copy="280160522" data-tip="复制成功，前往QQ查找" class="diygw-grid-item">
							<view class="diygw-grid-inner grid3-item-clz">
								<view class="diygw-grid-icon diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_QQ.png"></image>
								</view>
								<view class="diygw-grid-title"> QQ </view>
							</view>
						</view>
					</view>
				</view>
			</view>
			<view qq:if="{{tabs9Index==1}}" class="flex-sub">
				<view class="flex diygw-col-24 list3-clz">
					<view class="diygw-list small not-remark">
						<view catchtap="navigateTo" data-type="page" data-url="/pages/app/index" style="" class="diygw-item col-100 row arrow solid-bottom list3-item-clz">
							<view class="diygw-avatar radius">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_fs.png"></image>
							</view>
							<view class="content">
								<view class="title"> 壁纸主页 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="page" data-url="/pages/app/shop" style="" class="diygw-item col-100 row arrow solid-bottom list3-item-clz">
							<view class="diygw-avatar radius">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_hb.png"></image>
							</view>
							<view class="content">
								<view class="title"> 商城主页 </view>
							</view>
						</view>
						<view catchtap="navigateTo" data-type="page" data-url="/pages/index" style="" class="diygw-item col-100 row arrow solid-bottom list3-item-clz">
							<view class="diygw-avatar radius">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_bj.png"></image>
							</view>
							<view class="content">
								<view class="title"> 组件库演示 </view>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
	</view>
	<view class="flex diygw-col-24">
		<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
	</view>
	<view class="clearfix"></view>
</view>
