<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/page/common/taglibs.jsp"%>

<div class="pageContent">

	<form id="form1" class="defSourceDataFrom"
		onsubmit="return navTabSearch(this)"
		action="${pageContext.request.contextPath}/sys/mapInfoDetail!showMapinfoDetail.do"
		method="post">
	<input type="hidden" name="s_goalUrl" value="${GOALURL}"/>
	<input type="hidden" name="s_goalTableName" value="${param['s_goalTableName']}"/>
	<input type="hidden" name="s_mapinfoId" value="${param['s_mapinfoId']}"/>
		<div class="pageFormContent" layoutH="58">

			<div class="unit">
				<label>数据库连接：</label>
				<input name="url" size="60" readonly="readonly" value="${SOURCEURL}" type="text" Class="required" />
			</div>

			<div class="unit">
				<label>名称/表名：</label>
				<select class="combox table" name="s_soueceTableName">
     				  <option value="all" >请选择表名</option>
     			   <c:forEach var="tables" items="${TABLES}">
      				  <option value="${tables}"  <c:if test="${param['s_soueceTableName'] eq tables}">selected=selected</c:if> >${tables}</option>
      			   </c:forEach>
				</select>
			</div>
 
			<div class="unit">
				<label>查询语句：</label>
				<s:textarea name="userdesc" cols="44" rows="5" />
			</div>
			
		</div>

		<div class="formBar">
			<ul>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="button" onclick="submitMapInfo();">提交</button>
						</div>
					</div>
				</li>

				<li><div class="buttonActive">
						<div class="buttonContent">
							<button type="button" class="close">取消</button>
						</div>
					</div></li>
			</ul>
		</div>
	</form>
</div>

<script type="text/javascript">
	  function submitMapInfo(){
		  $("#form1").submit();
		  $.pdialog.close($.pdialog.getCurrent());
	  }
	  $('.table', $.pdialog.getCurrent()).change(function(event){
		  $(".datasource").val($(this).val());
		  		  
	  });
</script>