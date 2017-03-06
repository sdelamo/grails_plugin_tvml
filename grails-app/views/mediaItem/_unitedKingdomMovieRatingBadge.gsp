<%@ page import="org.grails.plugins.tvml.UnitedKingdomMovieRating" %>

<g:if test="${rating == UnitedKingdomMovieRating.U}">
    <asset:image src="tvml/bbfc-u_hires_2x.png" height="30"/>

</g:if>
<g:if test="${rating == UnitedKingdomMovieRating.PG}">
    <asset:image src="tvml/bbfc-pg_hires_2x.png" height="30"/>
</g:if>
<g:if test="${rating == UnitedKingdomMovieRating.TWELVE}">
    <asset:image src="tvml/bbfc-12_hires_2x.png" height="30"/>

</g:if>
<g:if test="${rating == UnitedKingdomMovieRating.TWELVE_A}">
    <asset:image src="tvml/bbfc-12a_hires_2x.png" height="30"/>
</g:if>
<g:if test="${rating == UnitedKingdomMovieRating.FIFTEEN}">
    <asset:image src="tvml/bbfc-15_hires_2x.png" height="30"/>

</g:if>
<g:if test="${rating == UnitedKingdomMovieRating.EIGHTTEEN}">
    <asset:image src="tvml/bbfc-18_hires_2x.png" height="30"/>

</g:if>
<g:if test="${rating == UnitedKingdomMovieRating.R_18}">
    <asset:image src="tvml/bbfc-r18_hires_2x.png" height="30"/>
</g:if>