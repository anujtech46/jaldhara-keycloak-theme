<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("emailForgotTitle")}
    <#elseif section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
        <form id="kc-reset-password-form" class="ui form pre-signin" action="${url.loginAction}" method="post">
            <div class="field">
                    <label for="username">Email or Phone Number</label>
                    <input type="text" id="username" name="username" placeholder="Enter your registered email address or Phone Number and we will send you instructions on how to create a new password." autofocus/>
            </div>

            <div class="ui grid margin-top2em">
                <div id="kc-form-options" class="six wide column">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span><a href="${url.loginUrl}">${msg("backToLogin")}</a></span>
                    </div>
                </div>

                <div id="kc-form-buttons" class="six wide column">
                    <button id="kc-reset-password" class="ui primary right floated button buttonResizeClass" type="submit">${msg("doSubmit")}</button>
                </div>
            </div>
        </form>
    <#elseif section = "info" >
        ${msg("emailInstruction")}
    </#if>
</@layout.registrationLayout>