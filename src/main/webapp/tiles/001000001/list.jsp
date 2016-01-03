<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="../../inc/common.jsp"%>
<!-- page.contents -->
<div>
	<div class="page-content">
		<div class="row">
			<div class="col-xs-12">
				<table id="list"
					class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th class="col-width-num">�����ȣ</th>
							<th class="col-width-name">�����</th>
							<th class="col-width-id">���̵�</th>
							<th class="col-width-name">��й�ȣ</th>
							<th class="col-width-email">�μ�</th>
							<th class="col-width-tel">��å</th>
							<th class="col-width-tel">�Ի���</th>
							<th class="col-width-tel">�����</th>
					</thead>
					</tr>
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
			<button class="btn btn-default" type="button" data-toggle="modal"
				data-target="#formModal" onclick="showInsertForm();">���</button>
		</div>
	</div>
	<!-- /.row -->
	<!-- Modal -->
	<div id="insertForm" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">�ڵ���</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group form-group-sm">
							<label class="col-sm-2 control-label" for="formGroupInputSmall">�����ȣ</label>
							<div class="col-sm-8">
								<input class="form-control" type="text" id="formGroupInputSmall"
									placeholder="�ڵ�����" disabled>
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label class="col-sm-2 control-label" for="formGroupInputSmall">�����</label>
							<div class="col-sm-8">
								<input class="form-control" type="text" id="formGroupInputSmall">
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label class="col-sm-2 control-label" for="formGroupInputSmall">���̵�</label>
							<div class="col-sm-8">
								<input class="form-control" type="text" id="formGroupInputSmall"
									placeholder="���� �� �����ȣ�� �����ϰ� ���">
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label class="col-sm-2 control-label" for="formGroupInputSmall">�μ�</label>
							<div class="col-sm-8">
								<input class="form-control" type="text" id="formGroupInputSmall">
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label class="col-sm-2 control-label" for="formGroupInputSmall">��å</label>
							<div class="col-sm-8">
								<input class="form-control" type="text" id="formGroupInputSmall">
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label class="col-sm-2 control-label" for="formGroupInputSmall">�Ի���</label>
							<div class="col-sm-8">
								<input class="form-control cDatePicker" type="text" id="date_1" style="width:150px" readonly>
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label class="col-sm-2 control-label" for="formGroupInputSmall">�����</label>
							<div class="col-sm-8">
								<input class="form-control cDatePicker" type="text" id="date_2" style="width:150px" readonly>
							</div>
						</div>
					</form>
				</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default">Register</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<!-- modal end -->
</div>
<!-- page.contents -->

