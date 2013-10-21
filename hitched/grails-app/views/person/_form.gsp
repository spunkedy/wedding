<%@ page import="co.withgod.hitched.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'coming', 'error')} ">
	<label for="coming">
		<g:message code="person.coming.label" default="Coming" />
		
	</label>
	<g:checkBox name="coming" value="${personInstance?.coming}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="person.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${personInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="person.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${personInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'numberOfChildrenUnder10', 'error')} required">
	<label for="numberOfChildrenUnder10">
		<g:message code="person.numberOfChildrenUnder10.label" default="Number Of Children Under10" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numberOfChildrenUnder10" type="number" value="${personInstance.numberOfChildrenUnder10}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'numberOfPeopleComing', 'error')} required">
	<label for="numberOfPeopleComing">
		<g:message code="person.numberOfPeopleComing.label" default="Number Of People Coming" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numberOfPeopleComing" type="number" value="${personInstance.numberOfPeopleComing}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'registered', 'error')} required">
	<label for="registered">
		<g:message code="person.registered.label" default="Registered" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="registered" precision="day"  value="${personInstance?.registered}"  />
</div>

