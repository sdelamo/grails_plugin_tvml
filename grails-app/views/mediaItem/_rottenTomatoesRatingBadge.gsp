<%@ page import="org.grails.plugins.tvml.RottenTomatoRating" %>
<g:if test="${rating == RottenTomatoRating.SPLAT}">
    <asset:image src="tvml/rotten-tomatoes-rotten_2x.png" height="30"/>
</g:if>
<g:if test="${rating == RottenTomatoRating.FRESH}">
    <asset:image src="tvml/rotten_tomatoes-fresh_2x.png" height="30"/>
</g:if>
<g:if test="${rating == RottenTomatoRating.CERTIFIED}">
    <asset:image src="tvml/rotten-tomatoes-certified-fresh_2x.png" height="30"/>
</g:if>