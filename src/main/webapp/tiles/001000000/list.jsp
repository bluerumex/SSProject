<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="../../inc/common.jsp"%>
<!-- page.contents -->
<div>
    <div class="page-content">
        <div class="row">
            <div class="col-xs-12">
                <table id="list" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="col-width-num">��ȣ</th>
                            <th class="col-width-name">�ڵ屸��</th>
                            <th class="col-width-id">�ڵ�</th>
                            <th class="col-width-name">�ڵ��</th>
                            <th class="col-width-email">����</th>
                            <th class="col-width-tel">��뱸��</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>

    <div class="row">
        <div class="col-xs-2 list-btn text-primary"></div>
        <div class="col-xs-8 text-center">
            <ul id="pagination" class="pagination"></ul>
        </div>
        <div class="col-xs-2 text-right list-btn text-primary">
            <button class="btn btn-default" type="button" data-toggle="modal" data-target="#formModal" onclick="showInsertForm();">���</button>
        </div>
    </div>
    <!-- /.row -->
    <!-- Modal -->
    <div id="insertForm" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <form method="post">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">�ڵ���</h4>
                    </div>
                    <div class="modal-body">
                        <div>
                            <label>�ڵ屸��</label><input type="text" id="" name="" />
                        </div>
                        <div>
                            <label>�ڵ�</label><input type="text" id="" name="" />
                        </div>
                        <div>
                            <label>�ڵ��</label><input type="text" id="" name="" />
                        </div>
                        <div>
                            <label>����</label><input type="text" id="" name="" />
                        </div>
                        <div>
                            <label>��뱸��</label><input type="text" id="" name="" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-default">Register</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- modal end -->
</div>
<!-- page.contents -->

