<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "header">
        ${msg("loginTitleHtml",(realm.displayNameHtml!''))}
    <#elseif section = "form">
        <#if realm.password>
        
            <div class="ui basic segment">
                <h2 class="ui header">${msg("loginTitleHtml",(realm.displayNameHtml!''))}</h2>
            </div>
            <form id="kc-form-login" class="ui form pre-signin" action="${url.loginAction}" method="post">
                <div class="field">
                        <label for="username"><#if !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                        <input id="username" name="username" value="${(login.username!'')?html}" type="hidden" autofocus autocomplete="off" />
                        <input id="channelUsername" name="channelusername" value="${(login.channelusername!'')?html}" type="text" autofocus autocomplete="off" />
                </div>

                <div class="field">
                        <label for="password">${msg("password")}</label>
                        <input id="password" name="password" type="password" autocomplete="off" />
                </div>

                <div class="ui grid margin-top2em">
                    <div class="six wide column">
                        <#if realm.rememberMe>
                            <div class="checkbox">
                                <label>
                                    <#if login.rememberMe??>
                                        <input id="rememberMe" name="rememberMe" type="checkbox" tabindex="3" checked> ${msg("rememberMe")}
                                    <#else>
                                        <input id="rememberMe" name="rememberMe" type="checkbox" tabindex="3"> ${msg("rememberMe")}
                                    </#if>
                                </label>
                            </div>
                        </#if>
                        <div class="forgot-passwordText">
                            <#if realm.resetPasswordAllowed>
                                <span><a href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></span>
                            </#if>
                        </div>
                    </div>

                    <div class="six wide column">
                            <button class="ui primary right floated button buttonResizeClass" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}">Login</button>
                     </div>
                     <!--<label class="note">Note: ${msg("note")}</label>-->
                </div>
            </form>
        </#if>
    <#elseif section = "info" >
        <#if realm.password && realm.registrationAllowed>
            <div id="kc-registration">
                <span>${msg("noAccount")} <a href="${url.registrationUrl}">${msg("doRegister")}</a></span>
            </div>
        </#if>

        <#if realm.password && social.providers??>
            <div id="kc-social-providers">
                <ul>
                    <#list social.providers as p>
                        <li><a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial ${p.providerId}"> <span class="text">${p.alias}</span></a></li>
                    </#list>
                </ul>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
$("#kc-login").click(function () {
var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
var sEmail = $("#channelUsername").val();
if (filter.test(sEmail) || sEmail.search('@jaldhara') > -1 || sEmail === '') {
  $("#username").val(function() {
        return $("#channelUsername").val();
    });
}
else {
    $("#username").val(function() {
        return $("#channelUsername").val() + '@jaldhara';
    });
}   
});    

</script>

