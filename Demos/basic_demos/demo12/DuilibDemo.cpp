// DuilibDemo.cpp : ����Ӧ�ó������ڵ㡣
//

#include "stdafx.h"
#include "DemoWnd.h"



int APIENTRY _tWinMain(_In_ HINSTANCE hInstance,
                     _In_opt_ HINSTANCE hPrevInstance,
                     _In_ LPTSTR    lpCmdLine,
                     _In_ int       nCmdShow)
{
	UNREFERENCED_PARAMETER(hPrevInstance);
	UNREFERENCED_PARAMETER(lpCmdLine);

 	// TODO: �ڴ˷��ô��롣
	HRESULT Hr = ::CoInitialize(NULL);//com���� ��ʼ��
	::OleInitialize(NULL);//ole���ó�ʼ��
	if( FAILED(Hr) ) return 0;

	CPaintManagerUI::SetInstance(hInstance);
	CMainWnd* pFrame = new CMainWnd();
	if( pFrame == NULL ) return 0;
	pFrame->Create(NULL, _T("Demo"), UI_WNDSTYLE_FRAME, 0 , 0, 0, 500, 300);
	pFrame->CenterWindow();
	::ShowWindow(*pFrame, SW_SHOW);
	pFrame->ShowModal();
	delete pFrame;
	pFrame = NULL;

	::CoUninitialize();
	::OleUninitialize();

	return 0;
}
