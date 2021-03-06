<view>
  <view class="diy-navbar  diygw-top" style="{{'height:'+(CustomBar+'px')+';'}}">
    <view class="diygw-title flex fixed {{bgColor}} {{bgImage!=''?'none-bg text-white bg-img':''}}" style="height:{{CustomBar}}px;padding-top:{{StatusBar}}px;{{bgCustom?'background-color:'+bgCustom+' !important;':''}}{{color?'color:'+color+' !important;':''}}{{bgImage?'background-image:url('+bgImage+')':''}}">
      <block qq:if="{{isBack}}">
        <view  class="action flex align-center" bindtap="BackPage"><text class="diygwui diy-icon-back title-bar-icon"></text>
          <slot name="backText"></slot>
        </view>
      </block>
      <block qq:if="{{isHome}}">
        <view class="title-bar-icon diygwui diy-icon-home margin-left titlebar-icon" bindtap="BackHome"></view>
      </block>
      <view class="content title flex1 text-center" style="{{'top:'+(StatusBar+'px')+';'}}">
        <slot name="content"></slot>
      </view>
      <slot name="right"></slot>
    </view>
  </view>
  <view  style="{{'padding-top:'+(CustomBar+'px')+';'}}"></view>
</view>