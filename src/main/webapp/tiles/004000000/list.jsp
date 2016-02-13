<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="../../inc/common.jsp"%>

<!-- page.contents -->
<div id="grid" style="width:800px; height:500px;"></div>
<div>
	<div class="page-content">
		<div class="row">
			<div class="col-xs-12">
				<table id="list"
					class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th class="col-width-num">�з���ȣ</th>
							<th class="col-width-name">��ǰ��</th>
							<th class="col-width-id">ǰ��</th>
							<th class="col-width-name">����</th>
							<th class="col-width-email">���뿬��</th>
							<!-- <th class="col-width-tel">��å</th>
							<th class="col-width-tel">�Ի���</th>
							<th class="col-width-tel">�����</th>
							 -->
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
			<ul id="paging" class="pagination"></ul>
		</div>
	<div class="col-xs-2 text-right list-btn text-primary">
			<button class="btn btn-default" type="button" data-toggle="modal"
				data-target="#formModal" onclick="insertAct();">���</button>
			<button class="btn btn-default" type="button" data-toggle="modal"
				data-target="#formModal" onclick="updateAct();">����</button>
			<button class="btn btn-default" type="button" data-toggle="modal"
				data-target="#formModal" onclick="deleteAct();">����</button>
			<button class="btn btn-default" type="button" data-toggle="modal"
				data-target="#formModal" onclick="pagejAct();">json</button>
		</div>
	<div class="row">
		<div class="col-xs-2 list-btn text-primary"></div>
		<div class="col-xs-8 text-center">
			<ul id="pagination" class="pagination"></ul>
		</div>
	</div>
	<!-- /.row -->
	<!-- Modal -->
	<div id="insertForm" class="modal fade" role="dialog">
		<div class="modal-dialog">
		<form class="form-horizontal" id = "fix" method="post">
		<input type="hidden" name="act">
		<input type="hidden" name="hF_SEQ">
			<!-- Modal content-->
		
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">��ǰ�з���ȣ ���</h4>
					</div>
					<div class="modal-body">
						<div class="form-group form-group-sm">
							<label class="col-sm-2 control-label" for="formGroupInputSmall">�з���ȣ</label>
							<div class="col-sm-8">
								<input class="form-control" type="text" name = "f_SEQ" id="formGroupInputSmall"
									placeholder="�ڵ�����" disabled>
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label class="col-sm-2 control-label" for="formGroupInputSmall">��ǰ��</label>
							<div class="col-sm-8">
								<input class="form-control" type="text" name = "f_NM" id="formGroupInputSmall">
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label class="col-sm-2 control-label" for="formGroupInputSmall">ǰ��</label>
							<div class="col-sm-8">
								
								<select name="f_KIND" id="f_KIND" class='selectize-control' placeholder="��ǰ������ ���� ���ּ���."></select>
	
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label class="col-sm-2 control-label" for="formGroupInputSmall">����</label>
							<div class="col-sm-8">								
								<select name="f_UNIT" id="f_UNIT" class='selectize-control' placeholder="��ǰ������ ���� ���ּ���."></select>
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label class="col-sm-2 control-label" for="formGroupInputSmall">���뿬��</label>
							<div class="col-sm-8">
							<select name="f_YEAR" id="f_YEAR" class='selectize-control' placeholder="���뿬���� ���� ���ּ���."></select>
							</div>
						</div>
						<!-- 
						<div class="form-group form-group-sm">
							<label class="col-sm-2 control-label" for="formGroupInputSmall">�Ի���</label>
							<div class="col-sm-8">
								<input class="form-control cDatePicker" type="text" id="date_1">
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label class="col-sm-2 control-label" for="formGroupInputSmall">�����</label>
							<div class="col-sm-8">
								<input class="form-control cDatePicker" type="text" id="date_2">
							</div>
						</div>
						 -->
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-default">Register</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</form>
			
						
		</div>
	</div>
	
	<!-- modal end -->
</div>
<!-- page.contents -->



 
