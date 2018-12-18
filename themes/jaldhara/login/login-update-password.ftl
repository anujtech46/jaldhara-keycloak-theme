<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("updatePasswordTitle")}
    <#elseif section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">
            <div class="ui basic segment">
                <h2 class="ui header">${msg("updatePasswordTitle")}</h2>
            </div>
            <div class="content">
                <form id="kc-passwd-update-form" class="ui form pre-signin" action="${url.loginAction}" method="post">
                <div class="field">
                    <label for="password-new">${msg("passwordNew")}</label>
                    <input type="password" id="password-new" name="password-new" autocomplete="off" />
                </div>

                <div class="field">
                    <label for="password-confirm" >${msg("passwordConfirm")}</label>
                    <input type="password" id="password-confirm" name="password-confirm" autocomplete="off" />
                </div>

                <div class="margin-top2em">
                    <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                        <div class="${properties.kcFormOptionsWrapperClass!}">
                        </div>
                    </div>

                    <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                        <button class="ui primary right floated button buttonResizeClass" onclick="javascript:makeDivUnclickable()" type="submit">${msg("doSubmit")}</button>
                    </div>
                </div>
                </form>
        </div>
    </#if>
</@layout.registrationLayout>

