<#--

    Symphony - A modern community (forum/BBS/SNS/blog) platform written in Java.
    Copyright (C) 2012-2018, b3log.org & hacpai.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<#include "macro-head.ftl">
<#include "common/title-icon.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${symphonyLabel}">
        <meta name="description" content="${symDescriptionLabel}"/>
        </@head>
        <link rel="stylesheet" href="${staticServePath}/css/index.css?${staticResourceVersion}" />
        <link rel="canonical" href="${servePath}">
    </head>
    <body class="index">
        ${HeaderBannerLabel}
        <#include "header.ftl">
        <div class="main">
            <div class="wrapper">
                <div class="index-main">
                    <div class="index-tabs fn-flex" id="articles">
                        <span class="current" data-index="0">
                        </span>
                        <span class="tags" data-index="1">
                        </span>
                        <span class="users" data-index="2">
                        </span>
                    </div>
                    <div class="index-tabs-panels list article-list">
                        <ul>
                            <#list recentArticles as article>
                                <#include "common/list-item.ftl">
                            </#list>
                            <#if recentArticles?size == 0>
                            <li class="ft-center">
                                <br><br>
                                ${systemEmptyLabel}<br>
                                ${systemEmptyTipLabel}<br>
                                <img src="${staticServePath}/images/404/5.gif"/>
                            </li>
                            </#if>
                            <li>
                                <a class="more" href="${servePath}/recent">${moreRecentArticleLabel}</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="index-side">
                    <div class="index-tabs fn-flex">
                        <span class="perfect">
                        </span>
                        <span class="check">
                        </span>
                    </div>
                    <div class="perfect-panel list">
                        <ul>
                            <#list perfectArticles as article>
                            <li>
                                <a rel="nofollow" href="${servePath}/member/${article.articleAuthorName}">
                                    <span class="avatar-small tooltipped tooltipped-se" aria-label="${article.articleAuthorName}" style="background-image:url('${article.articleAuthorThumbnailURL48}')"></span>
                                </a>
                                <a rel="nofollow" class="fn-ellipsis ft-a-title" href="${servePath}${article.articlePermalink}">${article.articleTitleEmoj}</a>
                                <a class="fn-right count ft-gray ft-smaller" href="${servePath}${article.articlePermalink}"><#if article.articleViewCount < 1000>
                                    ${article.articleViewCount}<#else>${article.articleViewCntDisplayFormat}</#if></a>
                            </li>
                            </#list>
                            <#if perfectArticles?size == 0>
                                <li>${chickenEggLabel}</li>
                            </#if>
                        </ul>
                    </div>

                </div>
            </div>
            <div class="index__bottom">
                <div class="wrapper">
                    <div class="fn-flex-1">
                        <div class="metro-line fn-flex">
                            <div class="metro-item" style="width:120px">
                                <a class="preview" href="${servePath}/tag/${tag0.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag0.tagIconPath}" alt="${tag0.tagTitle}">
                                    <b>${tag0.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item" style="width:120px">
                                <a class="preview" href="${servePath}/tag/${tag1.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag1.tagIconPath}" alt="${tag1.tagTitle}">
                                    <b>${tag1.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item" style="width:120px">
                                <a class="preview" href="${servePath}/tag/${tag2.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag2.tagIconPath}" alt="${tag2.tagTitle}">
                                    <b>${tag2.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item" style="width:120px">
                                <a class="preview" href="${servePath}/tag/${tag3.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag3.tagIconPath}" alt="${tag3.tagTitle}">
                                    <b>${tag3.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item" style="width:120px">
                                <a class="preview" href="${servePath}/tag/${tag4.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag4.tagIconPath}" alt="${tag3.tagTitle}">
                                    <b>${tag4.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item" style="width:120px">
                                <a class="preview" href="${servePath}/tag/${tag5.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag5.tagIconPath}" alt="${tag3.tagTitle}">
                                    <b>${tag5.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item" style="width:120px">
                                <a class="preview" href="${servePath}/tag/${tag6.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag6.tagIconPath}" alt="${tag3.tagTitle}">
                                    <b>${tag6.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item" style="width:120px">
                                <a class="preview" href="${servePath}/tag/${tag7.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag7.tagIconPath}" alt="${tag4.tagTitle}">
                                    <b>${tag7.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item" style="width:120px">
                                <a class="preview" href="${servePath}/tag/${tag8.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag8.tagIconPath}" alt="${tag8.tagTitle}">
                                    <b>${tag8.tagTitle}</b>
                                </a>
                            </div>
                        </div>

                        <div style="">
                            合作企业
                        </div>
                        
                        <div class="metro-line fn-flex">
                            <div class="metro-item ma" style="width:250px;height:250px">
                                <a class="preview" href="https://www.helloeos.com.cn" target="_blank">
                                    <img src="./images/tags/helloeos.jpg" alt="helloeos">
                                    <b>HelloEOS</b>
                                </a>
                            </div>
                            <div class="metro-item ma" style="width:250px;height:250px">
                                <a class="preview" href="https://www.more.top" target="_blank">
                                    <img src="./images/tags/logo_more.png" alt="more">
                                    <b>more</b>
                                </a>
                            </div>
                            <div class="metro-item ma" style="width:250px;height:250px">
                                <a class="preview" href="https://www.imeos.one" target="_blank">
                                    <img src="./images/tags/imeos.jpg" alt="imeos">
                                    <b>IMEOS</b>
                                </a>
                            </div>
                            <div class="metro-item ma" style="width:250px;height:250px">
                                <a class="preview" href="https://www.8btc.com" target="_blank">
                                    <img src="./images/tags/babite.jpg" alt="babite">
                                    <b>巴比特</b>
                                </a>
                            </div>
                        </div>
                        

                        <div class="metro-border fn-flex">
                            <div></div>
                            <div class="green"></div>
                            <div class="yellow"></div>
                            <div class="red"></div>
                            <div class="purple"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <#include "footer.ftl">
    <script src="${staticServePath}/js/channel${miniPostfix}.js?${staticResourceVersion}"></script>
    <script type="text/javascript">
        $('.metro-item').height($('.metro-item').width());
        $('.ma').height($('.ma').width());

        // tag click
        $('.preview, .index-tabs > span').click(function (event) {
            var $it = $(this),
            maxLen = Math.max($it.width(), $it.height());
            $it.prepend('<span class="ripple" style="top: ' + (event.offsetY - $it.height() / 2)
                + 'px;left:' + (event.offsetX - $it.width() / 2) + 'px;height:' + maxLen + 'px;width:' + maxLen + 'px"></span>');

            setTimeout(function () {
                $it.find('.ripple').remove();
            }, 800);
        });
    </script>
</body>
</html>
