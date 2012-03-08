<div class="list">
    <table>
        <thead>
        <tr>

            <util:remoteSortableColumn property="id" title="${message(code: 'book.id.label', default: 'Id')}" update="filteredList" action="filter"/>

            <util:remoteSortableColumn property="author" title="${message(code: 'book.author.label', default: 'Author')}" update="filteredList" action="filter"/>

            <util:remoteSortableColumn property="name" title="${message(code: 'book.name.label', default: 'Name')}" update="filteredList" action="filter"/>

            <util:remoteSortableColumn property="price" title="${message(code: 'book.price.label', default: 'Price')}" update="filteredList" action="filter"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${bookInstanceList}" status="i" var="bookInstance">
            <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                <td><g:link action="show" id="${bookInstance.id}">${fieldValue(bean: bookInstance, field: "id")}</g:link></td>

                <td>${fieldValue(bean: bookInstance, field: "author")}</td>

                <td>${fieldValue(bean: bookInstance, field: "name")}</td>

                <td>${fieldValue(bean: bookInstance, field: "price")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>
</div>
<div class="paginateButtons">
    <util:remotePaginate total="${bookInstanceTotal}" update="demo2List" action="demo2" maxsteps="0" pageSizes="[5,10,15]"  />
</div>
