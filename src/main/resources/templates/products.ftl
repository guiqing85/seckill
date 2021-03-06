<!DOCTYPE html>
<html>
<head>
    <title>秒杀主场</title>
<#include "common-head.ftl">
</head>

<body>
<div class="container">
    <div class="panel">
        <div class="panel-heading">
            <h2>秒杀列表</h2>
        </div>
        <div class="panel-body">
            <table class="table">
                <thead>
                <tr>
                    <th>名称</th>
                    <th>库存</th>
                    <th>开始时间</th>
                    <th>结束时间</th>
                    <th>详情页</th>
                </tr>
                </thead>
                <tbody>
                <#list seckillProductList as item>
                <tr>
                    <td>${item.name}</td>
                    <td>${item.number}</td>
                    <td>${item.gmtStart?datetime}</td>
                    <td>${item.gmtEnd?datetime}</td>
                    <td>
                        <a class="btn btn-info" href="/seckill/products/${item.id?c}" target="_blank">link</a>
                    </td>
                </tr>
                </#list>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>

<#include "common-script.ftl">
</html>