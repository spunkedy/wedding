
<%@ page import="co.withgod.hitched.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-person" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-person" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list person">
			
				<g:if test="${personInstance?.coming}">
				<li class="fieldcontain">
					<span id="coming-label" class="property-label"><g:message code="person.coming.label" default="Coming" /></span>
					
						<span class="property-value" aria-labelledby="coming-label"><g:formatBoolean boolean="${personInstance?.coming}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="person.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${personInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="person.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${personInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.numberOfChildrenUnder10}">
				<li class="fieldcontain">
					<span id="numberOfChildrenUnder10-label" class="property-label"><g:message code="person.numberOfChildrenUnder10.label" default="Number Of Children Under10" /></span>
					
						<span class="property-value" aria-labelledby="numberOfChildrenUnder10-label"><g:fieldValue bean="${personInstance}" field="numberOfChildrenUnder10"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.numberOfPeopleComing}">
				<li class="fieldcontain">
					<span id="numberOfPeopleComing-label" class="property-label"><g:message code="person.numberOfPeopleComing.label" default="Number Of People Coming" /></span>
					
						<span class="property-value" aria-labelledby="numberOfPeopleComing-label"><g:fieldValue bean="${personInstance}" field="numberOfPeopleComing"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.registered}">
				<li class="fieldcontain">
					<span id="registered-label" class="property-label"><g:message code="person.registered.label" default="Registered" /></span>
					
						<span class="property-value" aria-labelledby="registered-label"><g:formatDate date="${personInstance?.registered}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:personInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
