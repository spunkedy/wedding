<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="twitter">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
        <div class="container padjumbo">
            <h2>Respond to invitation:</h2>
        </div>
        <hr>
        <div class="container">
            <div id="create-person" class="content scaffold-create" role="main">
                <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${personInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${personInstance}" var="error">
                                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
                </g:hasErrors>
                <g:form url="[resource:personInstance, action:'save']" >
                    <fieldset class="form">
                        <g:render template="form"/>
                    </fieldset>
                    <div class="row">
                        <div class="col-lg-4">
                            <fieldset class="buttons">
                                <g:submitButton name="create" class="save" value="Respond" />
                            </fieldset>
                        </div>
                    </div>
                </g:form>
            </div>
        </div>
	</body>
</html>
