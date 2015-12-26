CREATE SEQUENCE EMP_NUM_SEQ
  START WITH 1
  MAXVALUE 9999999
  MINVALUE 0
  NOCYCLE
  CACHE 20;

  -- �����ڵ�
CREATE TABLE BASE_CD (
	CD_TP   VARCHAR2(10)  NOT NULL, -- �ڵ屸��
	CD_V    VARCHAR2(5)   NOT NULL, -- �ڵ�
	CD_NM   VARCHAR2(100) NULL,     -- �ڵ��
	CD_SORT NUMBER        NULL,     -- ����
	CD_USE  VARCHAR2(1)   NULL      -- ��뱸��
);

-- �����ڵ� �⺻Ű
CREATE UNIQUE INDEX PK_BASE_CD
	ON BASE_CD ( -- �����ڵ�
		CD_TP ASC, -- �ڵ屸��
		CD_V  ASC  -- �ڵ�
	);

-- �����ڵ�
ALTER TABLE BASE_CD
	ADD
		CONSTRAINT PK_BASE_CD -- �����ڵ� �⺻Ű
		PRIMARY KEY (
			CD_TP, -- �ڵ屸��
			CD_V   -- �ڵ�
		);

-- ��ǰ�з���ȣ����
CREATE TABLE FIX_TP (
	F_SEQ  VARCHAR2(15)  NOT NULL, -- �з���ȣ
	F_NM   VARCHAR2(100) NULL,     -- ��ǰ��
	F_KIND VARCHAR2(5)   NULL,     -- ǰ��
	F_UNIT VARCHAR2(5)   NULL,     -- ����
	F_YEAR VARCHAR2(10)  NULL      -- ���뿬��
);

-- ��ǰ�з���ȣ���� �⺻Ű
CREATE UNIQUE INDEX PK_FIX_TP
	ON FIX_TP ( -- ��ǰ�з���ȣ����
		F_SEQ ASC -- �з���ȣ
	);

-- ��ǰ�з���ȣ����
ALTER TABLE FIX_TP
	ADD
		CONSTRAINT PK_FIX_TP -- ��ǰ�з���ȣ���� �⺻Ű
		PRIMARY KEY (
			F_SEQ -- �з���ȣ
		);

-- ��ǰ������
CREATE TABLE FIX_ST (
	FJ_SEQ      NUMBER        NOT NULL, -- ��Ϲ�ȣ
	F_SEQ       VARCHAR2(15)  NOT NULL, -- �з���ȣ
	FJ_GET_DT   VARCHAR2(10)  NULL,     -- �������
	FJ_PUT_DT   VARCHAR2(10)  NULL,     -- ��������
	FJ_MD_DT    VARCHAR2(20)  NULL,     -- �𵨹�ȣ
	FJ_MK_DT    VARCHAR2(20)  NULL,     -- ������ȣ
	FJ_SIZE     VARCHAR2(5)   NULL,     -- �԰�
	FJ_MK_COM   VARCHAR2(50)  NULL,     -- ����ȸ��
	FJ_BUY_ITEM VARCHAR2(5)   NULL,     -- ���԰���
	FJ_USE      VARCHAR2(5)   NULL,     -- �뵵
	FJ_CNT      NUMBER        NULL,     -- ����
	FJ_UNIT_AMT NUMBER        NULL,     -- �ܰ�
	FJ_TOT_AMT  NUMBER        NULL,     -- �ݾ�
	FJ_SEQ_ST   NUMBER        NULL,     -- �Ϸù�ȣ_����
	FJ_SEQ_ED   NUMBER        NULL,     -- �Ϸù�ȣ_��
	REMARK      VARCHAR2(100) NULL,     -- ���
	INSERT_DT   VARCHAR2(20)  NULL,     -- �������
	INSERT_EMP  VARCHAR2(10)  NULL,     -- �����
	MODIFY_DT   VARCHAR2(20)  NULL,     -- ��������
	MODIFY_EMP  VARCHAR2(10)  NULL      -- ������
);

-- ��ǰ������ �⺻Ű
CREATE UNIQUE INDEX PK_FIX_ST
	ON FIX_ST ( -- ��ǰ������
		FJ_SEQ ASC, -- ��Ϲ�ȣ
		F_SEQ  ASC  -- �з���ȣ
	);

-- ��ǰ������
ALTER TABLE FIX_ST
	ADD
		CONSTRAINT PK_FIX_ST -- ��ǰ������ �⺻Ű
		PRIMARY KEY (
			FJ_SEQ, -- ��Ϲ�ȣ
			F_SEQ   -- �з���ȣ
		);

-- ��ǰ��������
CREATE TABLE FIX_MV (
	FB_SEQ     VARCHAR2(5)   NOT NULL, -- �μ�����
	FJ_SEQ     NUMBER        NOT NULL, -- ��Ϲ�ȣ
	F_SEQ      VARCHAR2(15)  NOT NULL, -- �з���ȣ
	E_NO       VARCHAR2(7)   NULL,     -- �����ȣ
	FB_PUT_DT  VARCHAR2(10)  NULL,     -- ��������
	FB_MG_EMP  VARCHAR2(10)  NULL,     -- �����
	FB_LOC_1   VARCHAR2(5)   NULL,     -- ��ġ�ǹ�
	FB_LOC_2   VARCHAR2(20)  NULL,     -- ��ġ�Ǹ�
	FB_LOC_3   VARCHAR2(20)  NULL,     -- ��ġȣ��
	FB_LOC_4   VARCHAR2(50)  NULL,     -- �μӱ�Ÿ
	FB_CNT     NUMBER        NULL,     -- �Ѽ���
	FB_RP_CNT  NUMBER        NULL,     -- ó�м���
	FB_RT_CNT  NUMBER        NULL,     -- �ݳ�����
	FB_MV_CNT  NUMBER        NULL,     -- �̵�����
	FB_SEQ_ST  NUMBER        NULL,     -- �Ϸù�ȣ_����
	FB_SEQ_ED  NUMBER        NULL,     -- �Ϸù�ȣ_�� 
	REMARK     VARCHAR2(100) NULL,     -- ���
	INSERT_DT  VARCHAR2(20)  NULL,     -- �������
	INSERT_EMP VARCHAR2(10)  NULL,     -- �����
	MODIFY_DT  VARCHAR2(20)  NULL,     -- ��������
	MODIFY_EMP VARCHAR2(10)  NULL      -- ������
);

-- ��ǰ�������� �⺻Ű
CREATE UNIQUE INDEX PK_FIX_MV
	ON FIX_MV ( -- ��ǰ��������
		FB_SEQ ASC, -- �μ�����
		FJ_SEQ ASC, -- ��Ϲ�ȣ
		F_SEQ  ASC  -- �з���ȣ
	);

-- ��ǰ��������
ALTER TABLE FIX_MV
	ADD
		CONSTRAINT PK_FIX_MV -- ��ǰ�������� �⺻Ű
		PRIMARY KEY (
			FB_SEQ, -- �μ�����
			FJ_SEQ, -- ��Ϲ�ȣ
			F_SEQ   -- �з���ȣ
		);

-- �������
CREATE TABLE EMP (
	E_NO     VARCHAR2(7)  NOT NULL, -- �����ȣ
	E_NM     VARCHAR2(20) NULL,     -- �����
	E_ID     VARCHAR2(10) NULL,     -- ���̵�
	E_PW     VARCHAR2(20) NOT NULL, -- ��й�ȣ
	E_DEPT   VARCHAR2(5)  NULL,     -- �μ�
	E_POSI   VARCHAR2(5)  NULL,     -- ��å
	E_IN_DT  VARCHAR2(8)  NULL,     -- �Ի���
	E_OUT_DT VARCHAR2(8)  NULL      -- �����
);

-- ������� �⺻Ű
CREATE UNIQUE INDEX PK_EMP
	ON EMP ( -- �������
		E_NO ASC -- �����ȣ
	);

-- �������
ALTER TABLE EMP
	ADD
		CONSTRAINT PK_EMP -- ������� �⺻Ű
		PRIMARY KEY (
			E_NO -- �����ȣ
		);

-- ��ǰ������
ALTER TABLE FIX_ST
	ADD
		CONSTRAINT FK_FIX_TP_TO_FIX_ST -- ��ǰ�з���ȣ���� -> ��ǰ������
		FOREIGN KEY (
			F_SEQ -- �з���ȣ
		)
		REFERENCES FIX_TP ( -- ��ǰ�з���ȣ����
			F_SEQ -- �з���ȣ
		);

-- ��ǰ��������
ALTER TABLE FIX_MV
	ADD
		CONSTRAINT FK_FIX_ST_TO_FIX_MV -- ��ǰ������ -> ��ǰ��������
		FOREIGN KEY (
			FJ_SEQ, -- ��Ϲ�ȣ
			F_SEQ   -- �з���ȣ
		)
		REFERENCES FIX_ST ( -- ��ǰ������
			FJ_SEQ, -- ��Ϲ�ȣ
			F_SEQ   -- �з���ȣ
		);

-- ��ǰ��������
ALTER TABLE FIX_MV
	ADD
		CONSTRAINT FK_EMP_TO_FIX_MV -- ������� -> ��ǰ��������
		FOREIGN KEY (
			E_NO -- �����ȣ
		)
		REFERENCES EMP ( -- �������
			E_NO -- �����ȣ
		);