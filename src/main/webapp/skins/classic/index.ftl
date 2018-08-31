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

                    <div class="module">
                    <div class="module-header form">
                        <input id="breezemoonInput" type="text" class="comment__text breezemoon__input" placeholder="清风明月">
                        <span id="breezemoonPostBtn" class="btn breezemoon__btn">发布</span>
                    </div>
                    <div class="module-panel">
                        <ul class="module-list">
                        <li>
                            <a rel="nofollow" href="https://hacpai.com/member/heiheichengjun">
                                <span class="avatar-small slogan tooltipped__user" aria-name="heiheichengjun" style="background-image: url(&quot;https://img.hacpai.com/avatar/1535618824356?imageView2/1/w/80/h/80/format/jpg/interlace/0/q/100&quot;);"></span>
                            </a>
                            <a rel="nofollow" href="https://hacpai.com/member/heiheichengjun/breezemoons" class="title fn__ellipsis">没有鸡，哪来的鸡蛋呢？</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="https://hacpai.com/member/DrJoseph">
                                <span class="avatar-small slogan tooltipped__user" aria-name="DrJoseph" style="background-image: url(&quot;https://img.hacpai.com/avatar/1498545189089_1498545428562.jpeg?imageView2/1/w/80/h/80/format/jpg/interlace/0/q/100&quot;);"></span>
                            </a>
                            <a rel="nofollow" href="https://hacpai.com/member/DrJoseph/breezemoons" class="title fn__ellipsis">为什么成都女孩会火？因为人家有一个很优秀的炒作团队</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="https://hacpai.com/member/jasonwoo">
                                <span class="avatar-small slogan tooltipped__user" aria-name="jasonwoo" style="background-image: url(&quot;https://img.hacpai.com/avatar/1534329619979?imageView2/1/w/80/h/80/format/jpg/interlace/0/q/100&quot;);"></span>
                            </a>
                            <a rel="nofollow" href="https://hacpai.com/member/jasonwoo/breezemoons" class="title fn__ellipsis">试试</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="https://hacpai.com/member/88250">
                                <span class="avatar-small slogan tooltipped__user" aria-name="88250" style="background-image: url(&quot;https://img.hacpai.com/avatar/1353745196354_1535379434567.png?imageView2/1/w/80/h/80/format/jpg/interlace/0/q/100&quot;);"></span>
                            </a>
                            <a rel="nofollow" href="https://hacpai.com/member/88250/breezemoons" class="title fn__ellipsis">通过邮箱域名来区分邮件推送渠道，这下网易邮箱的送达率应该会有明显改善了。</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="https://hacpai.com/member/destiny0">
                                <span class="avatar-small slogan tooltipped__user" aria-name="destiny0" style="background-image: url(&quot;https://img.hacpai.com/avatar/1471435205389_1535015284918.jpeg?imageView2/1/w/80/h/80/format/jpg/interlace/0/q/100&quot;);"></span>
                            </a>
                            <a rel="nofollow" href="https://hacpai.com/member/destiny0/breezemoons" class="title fn__ellipsis">工作三年了，到了一个什么水平</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="https://hacpai.com/member/jeffjade">
                                <span class="avatar-small slogan tooltipped__user" aria-name="jeffjade" style="background-image: url(&quot;https://img.hacpai.com/avatar/1458007452245_1496320177409.jpeg?imageView2/1/w/80/h/80/format/jpg/interlace/0/q/100&quot;);"></span>
                            </a>
                            <a rel="nofollow" href="https://hacpai.com/member/jeffjade/breezemoons" class="title fn__ellipsis">满堂兮美人，忽独与余兮目成。入不言兮出不辞， 乘回风兮载云旗。悲莫悲兮生别离， 乐莫乐兮新相知。── 屈</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="https://hacpai.com/member/shuiniu">
                                <span class="avatar-small slogan tooltipped__user" aria-name="shuiniu" style="background-image: url(&quot;https://img.hacpai.com/avatar/1486448197416_1486448468029.jpeg?imageView2/1/w/80/h/80/format/jpg/interlace/0/q/100&quot;);"></span>
                            </a>
                            <a rel="nofollow" href="https://hacpai.com/member/shuiniu/breezemoons" class="title fn__ellipsis">D 大换了个头像，看起来没有以前那个亲切了</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="https://hacpai.com/member/sober1174">
                                <span class="avatar-small slogan tooltipped__user" aria-name="sober1174" style="background-image: url(&quot;https://img.hacpai.com/avatar/1525542127756?imageView2/1/w/80/h/80/format/jpg/interlace/0/q/100&quot;);"></span>
                            </a>
                            <a rel="nofollow" href="https://hacpai.com/member/sober1174/breezemoons" class="title fn__ellipsis">好开心啊，又熬夜了</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="https://hacpai.com/member/ldan2012">
                                <span class="avatar-small slogan tooltipped__user" aria-name="ldan2012" style="background-image: url(&quot;https://img.hacpai.com/avatar/1485047989130_1516669877633.png?imageView2/1/w/80/h/80/format/jpg/interlace/0/q/100&quot;);"></span>
                            </a>
                            <a rel="nofollow" href="https://hacpai.com/member/ldan2012/breezemoons" class="title fn__ellipsis">最近接了个二次开发 c# 项目, 到手一看居然有近 6000 个表. 自己还是 too young to</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="https://hacpai.com/member/kekekeke">
                                <span class="avatar-small slogan tooltipped__user" aria-name="kekekeke" style="background-image: url(&quot;https://img.hacpai.com/avatar/1533646821915?imageView2/1/w/80/h/80/format/jpg/interlace/0/q/100&quot;);"></span>
                            </a>
                            <a rel="nofollow" href="https://hacpai.com/member/kekekeke/breezemoons" class="title fn__ellipsis">怎么在长春登过一次之后所在地就改不回来了呢，明明现在的 IP 地址是金华的啊</a>
                        </li>
                        </ul>
                    </div>
                </div>

                </div>
            </div>
            <div class="index__bottom">
                <div class="wrapper">
                    <div class="fn-flex-1">
                        <div class="metro-line fn-flex">
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag0.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag0.tagIconPath}" alt="${tag0.tagTitle}">
                                    <b>${tag0.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag1.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag1.tagIconPath}" alt="${tag1.tagTitle}">
                                    <b>${tag1.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag2.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag2.tagIconPath}" alt="${tag2.tagTitle}">
                                    <b>${tag2.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag3.tagURI}">
                            

                            <div class="module">
                                    <img src="${staticServePath}/images/tags/${tag3.tagIconPath}" alt="${tag3.tagTitle}">
                                    <b>${tag3.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag4.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag4.tagIconPath}" alt="${tag4.tagTitle}">
                                    <b>${tag4.tagTitle}</b>
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
