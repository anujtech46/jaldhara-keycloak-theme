<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("emailForgotTitle")}
    <#elseif section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
        <form id="kc-reset-password-form" class="ui form pre-signin" action="${url.loginAction}" method="post">
            <div class="field">
                    <label for="username">${msg("usernameOrEmail")}</label>
                    <input type="text" id="username" name="username" placeholder="Enter your username or email address or phone number and we will send you instructions on how to create a new password." autofocus/>
                    <input id="channelUsername" name="channelusername" value="${(login.channelusername!'')?html}" type="text" autofocus autocomplete="off" />
            </div>

            <div class="ui grid margin-top2em">
                <div id="kc-form-options" class="six wide column">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span><a href="${url.loginUrl}">${msg("backToLogin")}</a></span>
                    </div>
                </div>

                <div id="kc-form-buttons" class="six wide column">
                    <button class="ui primary right floated button buttonResizeClass" type="submit">${msg("doSubmit")}</button>
                </div>
            </div>
        </form>
    <#elseif section = "info" >
        ${msg("emailInstruction")}
    </#if>
</@layout.registrationLayout>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
$("#kc-login").click(function () {
var channelName = 'jaldhara';
var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
var sEmail = $("#channelUsername").val();
if (filter.test(sEmail) || sEmail.search('@' + channelName ) > -1 || sEmail === '') {
  $("#username").val(function() {
        return $("#channelUsername").val();
    });
}
else {
    $("#username").val(function() {
        return $("#channelUsername").val() + '@' + channelName;
    });
}   
});    

</script>