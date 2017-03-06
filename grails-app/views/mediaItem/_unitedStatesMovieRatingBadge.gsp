<%@ page import="org.grails.plugins.tvml.UnitedStatesMovieRating" %>
<g:if test="${rating == UnitedStatesMovieRating.G}">
    <asset:image src="tvml/mpaa-g_hires_2x.png" height="30"/>

</g:if>
<g:if test="${rating == UnitedStatesMovieRating.PG}">
    <asset:image src="tvml/mpaa-pg_hires_2x.png" height="30"/>
</g:if>
<g:if test="${rating == UnitedStatesMovieRating.PG13}">
    <asset:image src="tvml/mpaa-pg13_hires_2x.png" height="30"/>

</g:if>
<g:if test="${rating == UnitedStatesMovieRating.R}">
    <asset:image src="tvml/mpaa-r_hires_2x.png" height="30"/>
</g:if>
<g:if test="${rating == UnitedStatesMovieRating.NC17}">
    <asset:image src="tvml/mpaa-nc17_hires_2x.png" height="30"/>

</g:if>
<g:if test="${rating == UnitedStatesMovieRating.UNRATED}">
    <asset:image src="tvml/unrated_hires_2x.png" height="30"/>

</g:if>
<g:if test="${rating == UnitedStatesMovieRating.NOTRATED}">
    <asset:image src="tvml/nr_hires_2x.png" height="30"/>
</g:if>