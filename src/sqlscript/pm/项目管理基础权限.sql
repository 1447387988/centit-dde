prompt PL/SQL Developer import file
prompt Created on 2013��1��21�� by sx
set feedback off
set define off
prompt Dropping C_PURVIEW...
drop table C_PURVIEW cascade constraints;
prompt Creating C_PURVIEW...
create table C_PURVIEW
(
  purviewcode  VARCHAR2(20) not null,
  purviewname  VARCHAR2(60),
  pureviewdesc VARCHAR2(512)
)
tablespace BSDFW_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table C_PURVIEW
  add constraint PK_C_PURVIEW primary key (PURVIEWCODE)
  using index 
  tablespace BSDFW_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for C_PURVIEW...
alter table C_PURVIEW disable all triggers;
prompt Loading C_PURVIEW...
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('MP', '������Ŀ', '������JIRA�й�����Ŀ��');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('VV', '�鿴�汾����', '����鿴����İ汾������Ϣ');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('BP', '�����Ŀ', '���������Ŀ����Ŀ���������⡣');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('VW', '�鿴������', 'ӵ�����Ȩ�޵��û����Բ鿴��������');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('CQ', '��������', '����������');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('EQ', '�༭����', '����༭����');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('PQ', '�滮�����ճ�', '������������ĵ����ա�');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('MQ', '�ƶ�����', '�����ڲ�ͬ��Ŀ֮���ͬһ����Ŀ��ͬ������֮���ƶ����⡣��ע�⣬�û��������Ŀ����Ŀ�Ĵ�������Ȩ�޲��ܽ������ƶ���Ŀ����Ŀ�С�');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('AQ', '��������', '�����������������û�');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('WA', '������', '���������û��������������Ȩ�޵��û���');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('SQ', '�������', '�����������´����⡣������������''����汾''��');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('CLQ', '�ر�����', '����ر����⡣ͨ���ǿ�����Ա������⣬�ʼ첿�Ÿ���رա�');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('MR', '�޸ı�����', '�����ڴ����ͱ༭����ʱ�޸ı����ˡ�');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('DQ', 'ɾ������', '����ɾ������');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('LQ', '��������', '����������⽨����ϵ��ֻ�е��������⹦�ܴ򿪺����ʹ�á�');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('SSL', '���ð�ȫ����', '��������һ������İ�ȫ������������Щ�û��������������⡣');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('VVC', '�鿴ͶƱ�����ע��', '����鿴һ�������ͶƱ�˺͹�ע���б�');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('MW', '�����ע�б�', '�����������Ĺ�ע���б�');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('AR', '��ӱ�ע', '����Ϊ������ӱ�ע');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('EAR', '�༭���б�ע', '����༭���б�ע��');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('EMR', '�༭�Լ��ı�ע', '����༭�Լ��ı�ע��');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('DAR', 'ɾ�����б�ע', '����ɾ�����б�ע��');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('DMR', 'ɾ���Լ��ı�ע', '����ɾ���Լ��ı�ע');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('AA', '��Ӹ���', '���Ȩ���е��û�����Ϊ������Ӹ�����');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('DAA', 'ɾ�����и���', 'ӵ�����Ȩ�޵��û�����ɾ�����и�����');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('DMA', 'ɾ���Լ��ĸ���', 'ӵ�����Ȩ�޵��û�����ɾ���Լ��ĸ�����');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('AWL', '��ӹ�����־', '����Ϊ�����¼������־��ֻ�е�ʱ��׷�ٹ��ܴ򿪺����ʹ�á�');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('EMWL', '�༭�Լ��Ĺ�����־', '����༭�Լ��Ĺ�����־��¼��');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('EAWL', '�༭���й�����־', '����༭�����˵Ĺ�����־��¼��');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('DMWL', 'ɾ���Լ��Ĺ�����־', '����ɾ���Լ��Ĺ�����־��¼��');
insert into C_PURVIEW (purviewcode, purviewname, pureviewdesc)
values ('DAWL', 'ɾ�����й�����־', '����ɾ�������˵Ĺ�����־��¼��');
commit;
prompt 31 records loaded
prompt Enabling triggers for C_PURVIEW...
alter table C_PURVIEW enable all triggers;
set feedback on
set define on
prompt Done.
