<%@ page import="com.chefkoochooloo.dao.Recipe" %>



<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="recipe.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${recipeInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="recipe.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="country" name="country.id" from="${com.chefkoochooloo.dao.Country.list()}" optionKey="id" required="" value="${recipeInstance?.country?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'images', 'error')} ">
	<label for="images">
		<g:message code="recipe.images.label" default="Images" />
		

	</label>
	

<ul class="one-to-many">
<g:each in="${recipeInstance?.images?}" var="i">
    <li><g:link controller="recipeImage" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="recipeImage" action="create" params="['recipe.id': recipeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'recipeImage.label', default: 'RecipeImage')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'ingredients', 'error')} ">
	<label for="ingredients">
		<g:message code="recipe.ingredients.label" default="Ingredients" />
		

	</label>
	

<ul class="one-to-many">
<g:each in="${recipeInstance?.ingredients?}" var="i">
    <li><g:link controller="recipeIngredient" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="recipeIngredient" action="create" params="['recipe.id': recipeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'recipeIngredient.label', default: 'RecipeIngredient')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'likes', 'error')} ">
	<label for="likes">
		<g:message code="recipe.likes.label" default="Likes" />
		

	</label>
	

<ul class="one-to-many">
<g:each in="${recipeInstance?.likes?}" var="l">
    <li><g:link controller="likeRecipe" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="likeRecipe" action="create" params="['recipe.id': recipeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'likeRecipe.label', default: 'LikeRecipe')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'presentation', 'error')} required">
	<label for="presentation">
		<g:message code="recipe.presentation.label" default="Presentation" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="presentation" required="" value="${recipeInstance?.presentation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'steps', 'error')} ">
	<label for="steps">
		<g:message code="recipe.steps.label" default="Steps" />
		

	</label>
	

<ul class="one-to-many">
<g:each in="${recipeInstance?.steps?}" var="s">
    <li><g:link controller="recipeStep" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="recipeStep" action="create" params="['recipe.id': recipeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'recipeStep.label', default: 'RecipeStep')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'tags', 'error')} ">
	<label for="tags">
		<g:message code="recipe.tags.label" default="Tags" />
		

	</label>
	

<ul class="one-to-many">
<g:each in="${recipeInstance?.tags?}" var="t">
    <li><g:link controller="recipeTag" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="recipeTag" action="create" params="['recipe.id': recipeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'recipeTag.label', default: 'RecipeTag')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'time', 'error')} required">
	<label for="time">
		<g:message code="recipe.time.label" default="Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="time" required="" value="${recipeInstance?.time}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'tools', 'error')} ">
	<label for="tools">
		<g:message code="recipe.tools.label" default="Tools" />
		

	</label>
	

<ul class="one-to-many">
<g:each in="${recipeInstance?.tools?}" var="t">
    <li><g:link controller="recipeTool" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="recipeTool" action="create" params="['recipe.id': recipeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'recipeTool.label', default: 'RecipeTool')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="recipe.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="type" type="number" value="${recipeInstance.type}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'types', 'error')} ">
	<label for="types">
		<g:message code="recipe.types.label" default="Types" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="recipe.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.chefkoochooloo.dao.User.list()}" optionKey="id" required="" value="${recipeInstance?.user?.id}" class="many-to-one"/>

</div>

