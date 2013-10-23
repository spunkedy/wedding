<%@ page import="co.withgod.hitched.Person" %>




<div class="row">
    <div class="fieldcontain ${hasErrors(bean: personInstance, field: 'coming', 'error')} ">
        <div class="col-lg-4">
            <label for="coming">
                <g:message code="person.coming.label" default="Are you able to come?" />
            </label>
        </div>
        <div class="col-lg-4">
            <g:checkBox name="coming" value="${personInstance?.firstName? personInstance?.coming : 'True'}"  />
        </div>
    </div>
</div>


<div class="row">
    <div class="fieldcontain ${hasErrors(bean: personInstance, field: 'firstName', 'error')} required">
        <div class="col-lg-4">
            <label for="firstName">
                <g:message code="person.firstName.label" default="First name" />
            </label>
        </div>
        <div class="col-lg-4">
            <g:textField name="firstName" value="${personInstance?.firstName}"/>
        </div>

    </div>
</div>


<div class="row">
    <div class="fieldcontain ${hasErrors(bean: personInstance, field: 'lastName', 'error')} required">
        <div class="col-lg-4">
            <label for="lastName">
                <g:message code="person.lastName.label" default="Last name" />
            </label>
        </div>
        <div class="col-lg-4">
            <g:textField name="lastName" value="${personInstance?.lastName}"/>
        </div>
    </div>
</div>



<div class="row">
    <div class="fieldcontain ${hasErrors(bean: personInstance, field: 'numberOfPeopleComing', 'error')} required">
        <div class="col-lg-4">
            <label for="numberOfPeopleComing">
                <g:message code="person.numberOfPeopleComing.label" default="Number of people coming" />
                <span class="required-indicator">*</span>
            </label>
        </div>
        <div class="col-lg-4">
            <g:field name="numberOfPeopleComing" type="number" value="${personInstance.numberOfPeopleComing}" required=""/>
        </div>
    </div>
</div>



<div class="row">
    <div class="fieldcontain ${hasErrors(bean: personInstance, field: 'numberOfChildrenUnder10', 'error')} required">
        <div class="col-lg-4">
            <label for="numberOfChildrenUnder10">
                <g:message code="person.numberOfChildrenUnder10.label" default="Children under 10" />
                <span class="required-indicator">*</span>
            </label>
        </div>
        <div class="col-lg-4">
            <g:field name="numberOfChildrenUnder10" type="number" value="${personInstance.numberOfChildrenUnder10}" required=""/>
        </div>
    </div>
</div>
