<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="../../inc/common.jsp"%>

<!-- page.contents -->
 
<script>
    var grid;
    function doOnLoad(){
        // Grid�� ǥ�õ� Html Element�� ID(grid)�� �����Ͽ� Grid Object�� �����Ѵ�.
        grid = new dhtmlXGridObject("grid");
        grid.setImagePath("${ctx}/js/dhtmlx/imgs");        
        //grid.setSkin("dhxacc_skyblue");        
        
        // Grid�� Ÿ��Ʋ
        grid.setHeader("Sales,Book Title,Author,Price,In Store,Shipping,Bestseller,Date of Publication");
        // Grid�� �÷� ��
        grid.setInitWidths("50,150,120,80,80,80,80,100");
        // Grid�� �÷��� ����
        grid.setColAlign("right,left,left,right,center,left,center,center");
        // Grid�� �÷��� �Ӽ�(ro : Read Only, ed : Editable, txt : Text, ch : Check Box, co : Combo Box ...)
        grid.setColTypes("ro,ed,txt,price,ch,co,ra,ro");
        // Grid�� �÷��� �Ӽ� Ÿ��(int : ����, str : ����, date : ��¥)
        grid.setColSorting("int,str,str,int,str,str,str,date");
        grid.init();
 
        // XML �����͸� �ε��ϰ�, �ε��� �Ϸ�Ǹ� alert�� ǥ�õȴ�.
        grid.load("", function(){
          //  alert("�ε� �Ϸ�");
        });
 
        data={
        	    rows:[
        	        { id:1, data: ["A Time to Kill", "John Grisham", "100","200"]},
        	        { id:2, data: ["Blood and Smoke", "Stephen King", "1000"]},
        	        { id:3, data: ["The Rainmaker", "John Grisham", "-200"]}
        	    ]
        	};
        	grid.parse(data,"json"); //takes the name and format of the data source
        
        
        
    }
</script>
<title>Grid</title>
</head>
<body onload="doOnLoad();">
 
    <div id="grid" style="width:800px; height:500px;"></div>
 

	<!-- modal end -->
<!-- page.contents -->
