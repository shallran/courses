VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "fcdLogonVerify"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "RVB_UniqueId" ,"3DA82052019E"
Attribute VB_Ext_KEY = "RVB_ModelStereotype" ,"Class Module"
'������֤�û����ݡ�
Option Explicit


'��֤�û����ݡ�
'������
'User: Recordset
'�û���Ϣ�ļ�¼��
'Returns: Boolean
'�����û������Ƿ�Ϸ�
'ע�⣺
'Userͬʱ�������غϷ��û�����ȫ��Ϣ��
'##ModelId=3DA82CF602AF
Public Function Verify(ByRef User As Recordset) As Boolean
    Dim objMngr As MainBusiness.Logon
    Set objMngr = CreateObject("MainBusiness.Logon")
    Verify = objMngr.Verify(User)
    Set objMngr = Nothing
    
End Function


'�����û� ID ����û���Ϣ
'##ModelId=3DB83DCA005F
Public Function GetUserByID(UserID As Long) As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.UserManager")
    Set GetUserByID = objMngr.GetListByID(UserID)
    Set objMngr = Nothing
    
End Function