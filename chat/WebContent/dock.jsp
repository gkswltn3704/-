<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="streambar__content">
			
			<div class="stream-split-handle">
				<div class="stream-split-handle__shadow" style="top: 0px; left: 0px;"></div>
			</div>
			
			<div class="streambar__chat" style="height: 665px;">
				<div class="streambar__chat-head">
					<h2 class="stream__title">
						<span>대화</span> 
					</h2>
					
					<div class="streambar__chat-head-controls">
						<button type="button" class="icon-button streambar__chat-add-button" aria-label="새로운 대화">
							<i class="ico ico-plus" aria-hidden="true">
								<svg width="12px" height="12px" viewBox="0 0 12 12" version="1.1">
									<g id="plus" stroke="none" stroke-width="1" fill="#FAFBFC" fill-rule="evenodd"></g>
								</svg>
							</i>
						</button>
					</div>
				</div>
			
			<div aria-label="grid" aria-readonly="true" class="ReactVirtualized__Grid ReactVirtualized__List buddy-list-mini__body" role="grid" tabindex="0" style="box-sizing: border-box; direction: ltr; height: 586px; position: relative; width: 250px; will-change: transform; overflow: hidden;">
			<div class="ReactVirtualized__Grid__innerScrollContainer" role="rowgroup" style="width: auto; height: 60px; max-width: 250px; max-height: 60px; overflow: hidden; position: relative;"><div style="height: 30px; left: 0px; position: absolute; top: 0px; width: 100%;">
			<div class="buddy-item">
			<span class="buddy-item__badge-presence agit__activity-dot">Active</span>
			<div class="buddy-item__content">
			<span class="buddy-item__content__title">yssy3135 (이윤수)</span>
			<label class="on-vacation-badge on-vacation-badge--text-only on-vacation-badge--hidden buddy-item__content__badge-vacation"><span>휴가중</span>
			</label></div><button type="button" class="icon-button buddy-item__button-pin">
			<i class="ico ico-pin" aria-hidden="true">
			<svg width="12" height="12" viewBox="0 0 12 12">
			</svg>
			</i>
			</button>
			</div>
			</div>
			
			<div style="height: 30px; left: 0px; position: absolute; top: 30px; width: 100%;">
			
			<div class="buddy-item">
			<span class="buddy-item__badge-presence agit__activity-dot agit__activity-dot--disabled">Active</span>
			<div class="buddy-item__content">
			<span class="buddy-item__content__title buddy-item__content__title--group">단톡</span>
			<span class="buddy-item__content__count">(7)</span>
			<label class="on-vacation-badge on-vacation-badge--text-only on-vacation-badge--hidden buddy-item__content__badge-vacation">
			<span>휴가중</span>
			</label>
			</div>
			<button type="button" class="icon-button buddy-item__button-pin">
			<i class="ico ico-pin" aria-hidden="true">
			<svg width="12" height="12" viewBox="0 0 12 12">
			</svg>
			</i>
			</button>
			</div>
			</div>
			
			</div>
			
			</div>
			
			<div class="streambar__chat-search" role="search">
			<div class="chat-search__fld">
			<label class="screen-out" for="chatSearchQuery">t('chat_stream.a11y.label_search')</label>
			<input type="text" id="chatSearchQuery" name="q" class="chat-search__keyword" title="검색어 입력" placeholder="이름 또는 아지트 아이디 검색" accesskey="s" autocomplete="off" value="">
			<button class="chat-search__button">
			<i class="ico ico-search" aria-hidden="true">
			<svg width="15px" height="14px" viewBox="0 0 15 14" version="1.1">
			<g id="search" stroke="none" stroke-width="1" fill="#565A5F" fill-rule="evenodd"></g>
			</svg>
			</i>
			<span>검색</span>
			</button>
			</div>
			</div>
			</div>
			</div>
	
	
	
</body>
</html>