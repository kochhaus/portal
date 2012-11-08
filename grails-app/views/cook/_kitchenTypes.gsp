<g:set var="maxInColumn" value="${Math.ceil(items.size() / 3).toInteger()}" />
<g:set var="columns" value="${items.collate(maxInColumn)}" />

<ul class="type">
    <g:each in="${columns}" var="column">
        <li class="left">
            <g:each in="${column}" var="item">
                <div class="checkbox">
                    <input type="hidden" name="kitchenTypes[${item.id}]" />
                    <label>${item.name}</label>
                </div>
            </g:each>
        </li>
    </g:each>
</ul>
<div class="clearfix"></div>