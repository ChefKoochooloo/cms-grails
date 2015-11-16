
<%@ page import="com.chefkoochooloo.dao.Recipe" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recipe.label', default: 'Recipe')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-recipe" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-recipe" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list recipe">
			

				<g:if test="${recipeInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="recipe.name.label" default="Name" /></span>
					

						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${recipeInstance}" field="name"/></span>
					

				</li>
				</g:if>
			

				<g:if test="${recipeInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="recipe.country.label" default="Country" /></span>
					

						<span class="property-value" aria-labelledby="country-label"><g:link controller="country" action="show" id="${recipeInstance?.country?.id}">${recipeInstance?.country?.encodeAsHTML()}</g:link></span>
					

				</li>
				</g:if>
			

				<g:if test="${recipeInstance?.images}">
				<li class="fieldcontain">
					<span id="images-label" class="property-label"><g:message code="recipe.images.label" default="Images" /></span>
					

						<g:each in="${recipeInstance.images}" var="i">
						<span class="property-value" aria-labelledby="images-label"><g:link controller="recipeImage" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					

				</li>
				</g:if>
			

				<g:if test="${recipeInstance?.ingredients}">
				<li class="fieldcontain">
					<span id="ingredients-label" class="property-label"><g:message code="recipe.ingredients.label" default="Ingredients" /></span>
					

						<g:each in="${recipeInstance.ingredients}" var="i">
						<span class="property-value" aria-labelledby="ingredients-label"><g:link controller="recipeIngredient" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					

				</li>
				</g:if>
			

				<g:if test="${recipeInstance?.likes}">
				<li class="fieldcontain">
					<span id="likes-label" class="property-label"><g:message code="recipe.likes.label" default="Likes" /></span>
					

						<g:each in="${recipeInstance.likes}" var="l">
						<span class="property-value" aria-labelledby="likes-label"><g:link controller="likeRecipe" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					

				</li>
				</g:if>
			

				<g:if test="${recipeInstance?.presentation}">
				<li class="fieldcontain">
					<span id="presentation-label" class="property-label"><g:message code="recipe.presentation.label" default="Presentation" /></span>
					

						<span class="property-value" aria-labelledby="presentation-label"><g:fieldValue bean="${recipeInstance}" field="presentation"/></span>
					

				</li>
				</g:if>
			

				<g:if test="${recipeInstance?.steps}">
				<li class="fieldcontain">
					<span id="steps-label" class="property-label"><g:message code="recipe.steps.label" default="Steps" /></span>
					

						<g:each in="${recipeInstance.steps}" var="s">
						<span class="property-value" aria-labelledby="steps-label"><g:link controller="recipeStep" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					

				</li>
				</g:if>
			

				<g:if test="${recipeInstance?.tags}">
				<li class="fieldcontain">
					<span id="tags-label" class="property-label"><g:message code="recipe.tags.label" default="Tags" /></span>
					

						<g:each in="${recipeInstance.tags}" var="t">
						<span class="property-value" aria-labelledby="tags-label"><g:link controller="recipeTag" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					

				</li>
				</g:if>
			

				<g:if test="${recipeInstance?.time}">
				<li class="fieldcontain">
					<span id="time-label" class="property-label"><g:message code="recipe.time.label" default="Time" /></span>
					

						<span class="property-value" aria-labelledby="time-label"><g:fieldValue bean="${recipeInstance}" field="time"/></span>
					

				</li>
				</g:if>
			

				<g:if test="${recipeInstance?.tools}">
				<li class="fieldcontain">
					<span id="tools-label" class="property-label"><g:message code="recipe.tools.label" default="Tools" /></span>
					

						<g:each in="${recipeInstance.tools}" var="t">
						<span class="property-value" aria-labelledby="tools-label"><g:link controller="recipeTool" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${recipeInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="recipe.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${recipeInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipeInstance?.types}">
				<li class="fieldcontain">
					<span id="types-label" class="property-label"><g:message code="recipe.types.label" default="Types" /></span>
					
						<g:each in="${recipeInstance.types}" var="t">
						<span class="property-value" aria-labelledby="types-label"><g:link controller="null" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					

				</li>
				</g:if>
			

				<g:if test="${recipeInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="recipe.user.label" default="User" /></span>
					

						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${recipeInstance?.user?.id}">${recipeInstance?.user?.encodeAsHTML()}</g:link></span>
					

				</li>
				</g:if>
			

			</ol>
			<g:form url="[resource:recipeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${recipeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
