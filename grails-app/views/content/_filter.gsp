<g:each in="${contents}" var="content" status="index">
    <fieldset style="background-color:white;border: #aaaaaa 1px dashed">
        <span class="text">${content?.description}</span>
    </fieldset>
</g:each>

<util:remoteNonStopPageScroll action='filter' controller="content"  total="${total}" update="content" />
