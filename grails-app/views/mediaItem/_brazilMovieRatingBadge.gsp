<%@ page import="org.grails.plugins.tvml.BrazilMovieRating" %>

<g:if test="${rating == BrazilMovieRating.L}">
    <asset:image src="tvml/l_2x.png" height="30"/>

</g:if>
<g:if test="${rating == BrazilMovieRating.TEN}">
    <asset:image src="tvml/10_2x.png" height="30"/>
</g:if>
<g:if test="${rating == BrazilMovieRating.TWELVE}">
    <asset:image src="tvml/12_2x.png" height="30"/>

</g:if>
<g:if test="${rating == BrazilMovieRating.FOURTEEN}">
    <asset:image src="tvml/14_2x.png" height="30"/>
</g:if>
<g:if test="${rating == BrazilMovieRating.SIXTEEN}">
    <asset:image src="tvml/16_2x.png" height="30"/>

</g:if>
<g:if test="${rating == BrazilMovieRating.EIGHTEEN}">
    <asset:image src="tvml/18_2x.png" height="30"/>

</g:if>