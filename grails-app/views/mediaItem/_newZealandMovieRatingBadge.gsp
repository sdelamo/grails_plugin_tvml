<%@ page import="org.grails.plugins.tvml.NewZealandMovieRating" %>
<g:if test="${rating == NewZealandMovieRating.G}">
    <asset:image src="tvml/nz-g_hires_2x.png" height="30"/>
</g:if>
<g:if test="${rating == NewZealandMovieRating.PG}">
    <asset:image src="tvml/nz-pg_hires_2x.png" height="30"/>
</g:if>
<g:if test="${rating == NewZealandMovieRating.M}">
    <asset:image src="tvml/nz-m_hires_2x.png" height="30"/>

</g:if>
<g:if test="${rating == NewZealandMovieRating.RESTRICTED_13}">
    <asset:image src="tvml/nz-r13_hires_2x.png" height="30"/>
</g:if>
<g:if test="${rating == NewZealandMovieRating.RESTRICTED_15}">
    <asset:image src="tvml/nz-r15_hires_2x.png" height="30"/>

</g:if>
<g:if test="${rating == NewZealandMovieRating.RESTRICTED_16}">
    <asset:image src="tvml/nz-r16_hires_2x.png" height="30"/>

</g:if>
<g:if test="${rating == NewZealandMovieRating.RESTRICTED_18}">
    <asset:image src="tvml/nz-r18_hires_2x.png" height="30"/>
</g:if>
<g:if test="${rating == NewZealandMovieRating.RP_13}">
    <asset:image src="tvml/nz-rp13_hires_2x.png" height="30"/>
</g:if>
<g:if test="${rating == NewZealandMovieRating.RP_16}">
    <asset:image src="tvml/nz-rp16_hires_2x.png" height="30"/>
</g:if>
<g:if test="${rating == NewZealandMovieRating.RESTRICED_R}">
    <asset:image src="tvml/nz-r_hires_2x.png" height="30"/>
</g:if>