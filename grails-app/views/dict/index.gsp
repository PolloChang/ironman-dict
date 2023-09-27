<%--
  Created by IntelliJ IDEA.
  User: pollochang
  Date: 9/25/23
  Time: 11:05 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="dict-main"/>
    <link href="https://unpkg.com/bootstrap-table@1.22.1/dist/bootstrap-table.min.css" rel="stylesheet">

    <script src="https://unpkg.com/bootstrap-table@1.22.1/dist/bootstrap-table.min.js"></script>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col">
            <g:form name="searchForm" >
            <div class="form-group input-group">
                <h3><label for="searchWord">請輸入查詢的詞彙</label></h3>
                <div class="input-group mb-3">
                    <g:textField id="searchWord" name="searchWord" class="form-control" aria-describedby="searchWordHelp" />
                    <div class="input-group-append">
                    <g:submitButton id="searchButton" name="searchButton" value="查詢" class="btn btn-outline-primary" type="button" onclick="refreshTable()" />
                    </div>
                </div>
                <small id="searchWordHelp" class="form-text text-muted">嘗試輸入: 天</small>
            </div>
            </g:form>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <h3>查詢結果</h3>
        </div>
    </div>
    <div class="row">
        <div class="col">

            <table
                id="resultTable"
                    data-toggle="table">
                <thead>
                <tr class="tr-class">
                    <th data-field="word" data-formatter="wordFormatter" data-valign="middle">單字(注音)</th>
                    <th data-field="radical" data-valign="middle">部首</th>
                    <th data-field="totalStrokes" data-formatter="totalStrokesFormatter" data-valign="middle">總筆畫數/部首外筆畫</th>
                    <th data-field="explanation" data-valign="middle">解釋</th>
                </tr>
                </thead>

                </tbody>
            </table>
        </div>
    </div>
</div>

<script>

    function refreshTable() {
        jQuery('#resultTable').bootstrapTable('refresh', {
            url: '${createLink(controller: "dict",action: "filter")}/?' + jQuery('#searchForm').serialize()
        });
    }

    function wordFormatter(value, row) {
        let returnVal = row.word + '(' + row.mpc + ')';
        return returnVal;
    }

    function totalStrokesFormatter(value, row) {
        let returnVal = row.totalStrokes + '/' + row.outStrokes ;
        return returnVal;
    }
</script>
</body>
</html>