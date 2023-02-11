<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <html>

            <head>
                <meta charset="utf-8" />
                <meta name="MobileOptimized" content="width" />
                <meta name="HandheldFriendly" content="true" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <title>Charts</title>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
                    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                    crossorigin="anonymous">
                <script src="https://code.jquery.com/jquery-3.6.3.min.js"
                    integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
                    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
                    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
                    crossorigin="anonymous"></script>
                <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css"
                    rel="stylesheet" type="text/css">
                <link href="https://cdn.datatables.net/1.13.2/css/dataTables.bootstrap4.min.css" rel="stylesheet"
                    type="text/css">
                <script src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>
                <script src="https://cdn.datatables.net/1.13.2/js/dataTables.bootstrap4.min.js"></script>
                <script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
                <script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
            </head>

            <body>
                <div class="row">&nbsp;</div>
                <div class="row">
                    <div class"col-md-8">a &nbsp;</div>
                    <div class"col-md-4"><button type="button" id="btnBack" class="btn btn-primary" data-toggle="modal"
                            data-target="#exampleModalCenter">
                            Back
                        </button></div>
                </div>
                <div class="row">&nbsp;</div>
                <div id="chartContainer" style="height: 370px; width: 100%;"></div>
                <script>
                    var dataPoint = ${ chartData };
                    var options = {
                        title: {
                            text: "Project Report"
                        },
                        subtitles: [{
                            text: "As of today"
                        }],
                        animationEnabled: true,
                        data: [{
                            type: "pie",
                            startAngle: 40,
                            toolTipContent: "<b>{label}</b>: {y}%",
                            showInLegend: "true",
                            legendText: "{label}",
                            indexLabelFontSize: 16,
                            indexLabel: "{label} - {y}%",
                            dataPoints: dataPoint
                        }]
                    };
                    $("#chartContainer").CanvasJSChart(options);
                    $('#btnBack').click(function(){
                    	window.location.href="/";
                    });
                </script>
            </body>

            </html>