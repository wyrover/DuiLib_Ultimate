#include "stdafx.h"
#include "MainWnd.h"

int APIENTRY _tWinMain(HINSTANCE hInstance,
					   HINSTANCE hPrevInstance,
					   LPTSTR    lpCmdLine,
					   int       nCmdShow)
{
	CPaintManagerUI::SetInstance(hInstance);	// ʵ���������Ⱦ�����
	CPaintManagerUI::SetResourcePath(CPaintManagerUI::GetInstancePath() + _T("skin")); // ָ����Դ·�� 
	
	HRESULT Hr = ::CoInitialize(NULL);	// ��ʼ��COM��, Ϊ����COM���ṩ֧��
	if( FAILED(Hr) ) return 0;

	
	CMainWndDlg* pMainDlg = new CMainWndDlg();	// ����������
	pMainDlg->Create(NULL, _T("Demo����"), UI_WNDSTYLE_FRAME, WS_EX_WINDOWEDGE);	  // ע�ᴰ�����봴������  
	pMainDlg->CenterWindow();	// ���ھ�����ʾ
	pMainDlg->ShowModal();

	CPaintManagerUI::MessageLoop();	// ������Ϣѭ��

	::CoUninitialize(); // �˳������ͷ�COM��
	
	return 0;
}

