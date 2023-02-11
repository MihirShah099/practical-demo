<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <html>

            <head>
                <meta charset="utf-8" />
                <meta name="MobileOptimized" content="width" />
                <meta name="HandheldFriendly" content="true" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <title>Home</title>
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
            </head>

            <body>

                <!-- Modal -->
                <div class="modal fade" id="modalSaveData" tabindex="-1" role="dialog"
                    aria-labelledby="modalSaveDataTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Save Incident</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <form id="incidentForm" method="post" action="/saveIncident">
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label for="name" class="col-form-label">Name:<sup
                                                style="color: red;">*</sup></label>
                                        <input type="text" required autocomplete="off" class="form-control" id="name"
                                            name="name">
                                    </div>
                                    <div class="form-group">
                                        <label for="description" class="col-form-label">Description:<sup
                                                style="color: red;">*</sup></label>
                                        <textarea class="form-control" autocomplete="off" required id="description"
                                            name="description"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-form-label" for="departmentId">Select Department: <sup
                                                style="color: red;">*</sup></label>
                                        <select class="form-select" style="width:-webkit-fill-available;"
                                            id="departmentId" required="required" name="departmentId.id">
                                            <option selected="selected" aria-readonly="" disabled value="0">None
                                            </option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-form-label" for="requestedById">Select Requested By <sup
                                                style="color: red;">*</sup></label>
                                        <select class="form-select" style="width:-webkit-fill-available;"
                                            id="requestedById" required="required" name="requestedBy.id">
                                        </select>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" id="reset-btn" class="btn btn-secondary"
                                        data-dismiss="modal">Close</button>
                                    <input type="submit" id="btnSave" class="btn btn-primary" value="Save"></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Modal end -->
                <div class="row">&nbsp;</div>
                <div class="row">
                    <div class"col-md-6">a &nbsp;</div>
                    <div class"col-md-3"><button type="button" id="btnSaveModal" class="btn btn-primary"
                            data-toggle="modal" data-target="#exampleModalCenter">
                            Add
                        </button></div>&nbsp;&nbsp;
                    <div class"col-md-3"><button type="button" id="btnCharts" class="btn btn-primary">
                            Show Chart
                        </button></div>
                </div>
                <div class="row">&nbsp;</div>
                <table id="tableData" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Date</th>
                            <th>Department</th>
                            <th>Requested By</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="incident" items="${incidents}">
                            <tr>
                                <td>${incident.name}</td>
                                <td>${incident.description}</td>
                                <td>
                                    <fmt:formatDate type="both" value="${incident.createdDate}" />
                                </td>
                                <td>${incident.departmentId.name}</td>
                                <td>${incident.requestedBy.name}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Date</th>
                            <th>Department</th>
                            <th>Requested By</th>
                        </tr>
                    </tfoot>
                </table>
                <script>
                    $(document).ready(function () {
                        $('#tableData').DataTable();
                        $.ajax({
                            url: "/getDepartments",
                            type: 'GET',
                            dataType: 'json',
                            success: function (res) {
                                $.each(res, function (key, value) {
                                    $('#departmentId')
                                        .append($("<option></option>")
                                            .attr("value", value.id)
                                            .text(value.name));
                                });
                            }
                        });
                        $('#btnSaveModal').click(function () {
                            $('#modalSaveData').modal("show");
                        });
                        $('#departmentId').change(function () {
                            var departmentId = $("option:selected", this).val();
                            if (departmentId != '0') {
                                $.ajax({
                                    url: "/getEmployeeByDepartment?departmentId=" + departmentId,
                                    type: 'GET',
                                    dataType: 'json',
                                    success: function (res) {
                                        $("#requestedById").find("option").remove();
                                        $.each(res, function (key, value) {
                                            $('#requestedById')
                                                .append($("<option></option>")
                                                    .attr("value", value.id)
                                                    .text(value.name));
                                        });
                                    }
                                });
                            } else {
                                alert("Please select department.")
                            }
                        });

                        $("#reset-btn").click(function () {
                            $("#incidentForm").trigger("reset");
                        });
                        $("#btnCharts").click(function () {
                            window.location.href="/charts";
                        });
                    });
                </script>
            </body>

            </html>