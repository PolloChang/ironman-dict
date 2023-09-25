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
            <div class="form-group input-group">
                <h3><label for="searchWord">請輸入查詢的詞彙</label></h3>
                <div class="input-group mb-3">
                    <g:textField id="searchWord" name="searchWord" class="form-control" aria-describedby="searchWordHelp" />
                    <div class="input-group-append">
                    <g:submitButton id="searchButton" name="searchButton" value="查詢" class="btn btn-outline-primary" type="button" />
                    </div>
                </div>
                <small id="searchWordHelp" class="form-text text-muted">嘗試輸入: 天</small>
            </div>
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
                    data-toggle="table"
                    data-search="false"
                    data-show-columns="false">
                <thead>
                <tr class="tr-class">
                    <th data-field="word" data-valign="middle">單字(注音)</th>
                    <th data-field="radical" data-valign="middle">部首</th>
                    <th data-field="totalStrokes" data-valign="middle">總筆畫數/部首外筆畫</th>
                    <th data-field="explanation" data-valign="middle">解釋</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        一(一)
                    </td>
                    <td>
                        一
                    </td>
                    <td>
                        1/0
                    </td>
                    <td>
                        (1) 自ㄗˋ然ㄖㄢˊ數ㄕㄨˋ的˙ㄉㄜ第ㄉㄧˋ一ㄧ位ㄨㄟˋ。大ㄉㄚˋ寫ㄒㄧㄝˇ作ㄗㄨㄛˋ「壹ㄧ」，阿ㄚ拉ㄌㄚ伯ㄅㄛˊ數ㄕㄨˋ字ㄗˋ作ㄗㄨㄛˋ「１」。
                        (2)單ㄉㄢ個˙ㄍㄜ、不ㄅㄨˊ是ㄕˋ多ㄉㄨㄛ數ㄕㄨˋ的˙ㄉㄜ。如ㄖㄨˊ：「一ㄧˊ個˙ㄍㄜ」、「一ㄧˋ張ㄓㄤ紙ㄓˇ」。
                        (3) 相ㄒㄧㄤ同ㄊㄨㄥˊ、一ㄧˊ致ㄓˋ。如ㄖㄨˊ：「一ㄧˋ模ㄇㄛˊ一ㄧˊ樣ㄧㄤˋ」、「大ㄉㄚˋ小ㄒㄧㄠˇ不ㄅㄨˋ一ㄧ」。
                        (4) 專ㄓㄨㄢ注ㄓㄨˋ、純ㄔㄨㄣˊ正ㄓㄥˋ。如ㄖㄨˊ：「一ㄧˋ心ㄒㄧㄣ一ㄧˊ意ㄧˋ」、「用ㄩㄥˋ情ㄑㄧㄥˊ專ㄓㄨㄢ一ㄧ」。
                        (5)全ㄑㄩㄢˊ、整ㄓㄥˇ。如ㄖㄨˊ：「一ㄧˋ身ㄕㄣ臭ㄔㄡˋ汗ㄏㄢˋ」、「一ㄧˋ生ㄕㄥ一ㄧˊ世ㄕˋ」。
                        (6) 每ㄇㄟˇ。如ㄖㄨˊ：「一ㄧˋ班ㄅㄢ四ㄙˋ十ㄕˊ人ㄖㄣˊ」、「一ㄧˊ頁ㄧㄝˋ六ㄌㄧㄡˋ百ㄅㄞˇ字ㄗˋ」。
                        (7) 才ㄘㄞˊ、剛ㄍㄤ剛ㄍㄤ。如ㄖㄨˊ：「一ㄧˋ聽ㄊㄧㄥ就ㄐㄧㄡˋ懂ㄉㄨㄥˇ」、「天ㄊㄧㄢ一ㄧˊ亮ㄌㄧㄤˋ，他ㄊㄚ便ㄅㄧㄢˋ起ㄑㄧˇ床ㄔㄨㄤˊ。」
                        (8)放ㄈㄤˋ在ㄗㄞˋ兩ㄌㄧㄤˇ重ㄔㄨㄥˊ疊ㄉㄧㄝˊ的˙ㄉㄜ動ㄉㄨㄥˋ詞ㄘˊ之ㄓ間ㄐㄧㄢ，表ㄅㄧㄠˇ示ㄕˋ短ㄉㄨㄢˇ暫ㄓㄢˋ或ㄏㄨㄛˋ略ㄌㄩㄝˋ微ㄨㄟˊ嘗ㄔㄤˊ試ㄕˋ的˙ㄉㄜ意ㄧˋ思˙ㄙ。如ㄖㄨˊ：「動ㄉㄨㄥˋ一ㄧ動ㄉㄨㄥˋ」、「問ㄨㄣˋ一ㄧ問ㄨㄣˋ」、「聞ㄨㄣˊ一ㄧ聞ㄨㄣˊ」。
                        (9) 另ㄌㄧㄥˋ外ㄨㄞˋ的˙ㄉㄜ。如ㄖㄨˊ：「蟬ㄔㄢˊ，一ㄧˋ名ㄇㄧㄥˊ知ㄓ了ㄌㄧㄠˇ。」
                        (10)一ㄧˊ旦ㄉㄢˋ。表ㄅㄧㄠˇ示ㄕˋ假ㄐㄧㄚˇ設ㄕㄜˋ的˙ㄉㄜ語ㄩˇ氣ㄑㄧˋ。如ㄖㄨˊ：「一ㄧˋ失ㄕ足ㄗㄨˊ成ㄔㄥˊ千ㄑㄧㄢ古ㄍㄨˇ恨ㄏㄣˋ」。
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>