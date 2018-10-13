<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
    ${msg("termsTitle")}
    <#elseif section = "header">
    ${msg("termsTitleHtml")}
    <#elseif section = "form">
    <div id="kc-terms-text">
       <b> ${msg("termsText")} </b>
  </div>
    <form class="form-actions" action="${url.loginAction}" method="POST">
        <input class="terms-of-usebtn acceptbtn" name="accept" id="kc-accept" type="submit" value="${msg("doAccept")}"/>
        <input class="terms-of-usebtn declindbtn" name="cancel" id="kc-decline" type="submit" value="${msg("doDecline")}"/>
    </form>
    </#if>
</@layout.registrationLayout>