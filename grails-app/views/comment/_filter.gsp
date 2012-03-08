<g:each in="${commentInstanceList}" var="comment" status="index">
    <fieldset style="background-color:white;border: #aaaaaa 1px dashed">
        <div class="commentdate text">Dated <g:formatDate date="${comment.dateCreated}" format="MM/dd/yyyy"/> by ${comment.author}</div>
        <span class="text">${comment?.comments}</span>
    </fieldset>
</g:each>
<util:remotePageScroll action="filter" max="3" total="${commentInstanceTotal}" update="commentsListId" class="btn-quaternary" />