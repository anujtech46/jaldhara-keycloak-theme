<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="${properties.kcHtmlClass!}">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <#if properties.meta?has_content>
        <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>
    <title><#nested "title"></title>
    <link rel="icon" href="https://jaldhara.blob.core.windows.net/portal-logo/forwater_favicon.ico" />
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <#if scripts??>
        <#list scripts as script>
            <script src="${script}" type="text/javascript"></script>
        </#list>
    </#if>
</head>

<body class="">

    <div id="kc-container" class="">
        <div id="kc-container-wrapper" class="">

            <!--<div id="kc-header" class="${properties.kcHeaderClass!}">
                <div id="kc-header-wrapper" class="${properties.kcHeaderWrapperClass!}">Log In To Jaldhara</div>
            </div>-->

            <#if displayMessage && message?has_content>
                <div id="kc-feedback" class="feedback-${message.type} ${properties.kcFeedBackClass!}">
                    <div id="kc-feedback-wrapper">
                        <span class="kc-feedback-text">${message.summary}</span>
                    </div>
                </div>
            <#else>
                <div id="kc-feedback-placeholder" class="">
                    <div id="kc-feedback-placeholder-wrapper"></div>
                </div>
            </#if>

            <#if realm.internationalizationEnabled>
                <div id="kc-locale" class="">
                    <div id="kc-locale-wrapper" class="">
                        <div class="kc-dropdown" id="kc-locale-dropdown">
                            <a href="#" id="kc-current-locale-link">${locale.current}</a>
                            <ul>
                                <#list locale.supported as l>
                                    <li class="kc-dropdown-item"><a href="${l.url}">${l.label}</a></li>
                                </#list>
                            </ul>
                        </div>
                    </div>
                </div>
            </#if>

            <div id="kc-content" class="">
                <div id="kc-content-wrapper" class="">
                    <div id="kc-form" class="">
                        <div id="kc-form-wrapper" class="">
                            <div class="page-login">
                                    <div class="ui centered grid container">
                                    <div class="ten wide column signInGridAlign">
                                      <div class="ui fluid card">
                                        <div class="ui centered medium image signInLogo" style="margin-top: 35px;">
                                            <img src="https://jaldhara.blob.core.windows.net/portal-logo/ForWater_reduced.png" />
                                        </div>
                                       <div class="content signin-contentPadding">
                                        <#nested "form">
                                        </div>
                                        <div></div>
                                       </div>
                                       </div>
                                    </div>
                            </div>
                        </div>
                    </div>

                    <#if displayInfo>
                        <div id="kc-info" class="">
                            <div id="kc-info-wrapper" class="">
                                <!--<#nested "info">-->
                            </div>
                        </div>
                    </#if>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
</#macro>
