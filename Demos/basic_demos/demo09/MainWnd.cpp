#include "stdAfx.h"
#include "MainWnd.h"

CMainWndDlg::CMainWndDlg(void)
{
}

CMainWndDlg::~CMainWndDlg(void)
{
}

LPCTSTR CMainWndDlg::GetWindowClassName() const
{
	return _T("UIMainWnd");
}

CDuiString CMainWndDlg::GetSkinFile()
{
	return _T("DemoSkin.xml");
}

CDuiString  CMainWndDlg::GetSkinFolder()
{
	return CDuiString(CPaintManagerUI::GetInstancePath());
}

void CMainWndDlg::OnFinalMessage( HWND hWnd )
{
	WindowImplBase::OnFinalMessage(hWnd);	
	delete this;
}

LRESULT CMainWndDlg::OnSysCommand( UINT uMsg, WPARAM wParam, LPARAM lParam, BOOL& bHandled )
{
	// ����˵����ر���Ϣ
	if( wParam == SC_CLOSE ) {
		Close();
		::PostQuitMessage(0L);
		bHandled = TRUE;
		return 0;
	}

	// �϶��������ƶ�����
	LRESULT lRes = CWindowWnd::HandleMessage(uMsg, wParam, lParam);

	return lRes;
}

void CMainWndDlg::InitWindow()
{
	m_pCloseBtn = static_cast<CButtonUI*>(m_pm.FindControl(_T("closeBtn")));
	m_pMaxBtn = static_cast<CButtonUI*>(m_pm.FindControl(_T("maxBtn")));
	m_pRestoreBtn = static_cast<CButtonUI*>(m_pm.FindControl(_T("restoreBtn")));
	m_pMinBtn = static_cast<CButtonUI*>(m_pm.FindControl(_T("minBtn")));

	m_pProgress = static_cast<CProgressUI*>(m_pm.FindControl(_T("ProgressBar")));
	m_pProgress->SetValue(50);

	m_pList = static_cast<CListUI*>(m_pm.FindControl(_T("listview")));

	CWebBrowserUI* pBrowser = static_cast<CWebBrowserUI*>(m_pm.FindControl(_T("webbrowserBtn")));
	pBrowser->SetWebBrowserEventHandler(this);

	__super::InitWindow();
}

LRESULT CMainWndDlg::HandleCustomMessage( UINT uMsg, WPARAM wParam, LPARAM lParam, BOOL& bHandled )
{
	bHandled = TRUE;	// ��Ϣ���ش���������ϵͳ����
	switch (uMsg)
	{

	default:
		bHandled = FALSE;	// ����û�д�������ϵͳ����
	}

	return 0;
}

void CMainWndDlg::Notify( TNotifyUI& msg )
{
	if( msg.sType == _T("windowinit") ) {
		WindowDataInit();
	}
	else if( msg.sType == _T("click") ) {
		if( msg.pSender == m_pCloseBtn ) {
			PostQuitMessage(0);
			return; 
		}
		else if( msg.pSender == m_pMinBtn ) { 
			SendMessage(WM_SYSCOMMAND, SC_MINIMIZE, 0); return; }
		else if( msg.pSender == m_pMaxBtn ) { 
			SendMessage(WM_SYSCOMMAND, SC_MAXIMIZE, 0); return; }
		else if( msg.pSender == m_pRestoreBtn ) { 
			SendMessage(WM_SYSCOMMAND, SC_RESTORE, 0); return; }

		// ��ť��Ϣ
		OnLBtnClick(msg.pSender);
	}
	else if(msg.sType==_T("selectchanged"))
	{
		CDuiString name = msg.pSender->GetName();
		CTabLayoutUI* pTabSwitch = static_cast<CTabLayoutUI*>(m_pm.FindControl(_T("tab_switch")));
		CTabLayoutUI* pDemoListSwitch = static_cast<CTabLayoutUI*>(m_pm.FindControl(_T("demo_list_tab_switch")));

		if(name.CompareNoCase(_T("demo_tab")) == 0)
			pTabSwitch->SelectItem(0);
		else if(name.CompareNoCase(_T("web_tab")) == 0) 
			pTabSwitch->SelectItem(1);

		if(name.CompareNoCase(_T("demo_list_basic_ctrl")) == 0)
			pDemoListSwitch->SelectItem(0);
		else if(name.CompareNoCase(_T("demo_list_rich_ctrl")) == 0)
			pDemoListSwitch->SelectItem(1);
	}
}

void CMainWndDlg::WindowDataInit()
{
	// List�ؼ����������
	// ע�⣺���List�б����ݣ�������Add(pListElement)���Ԫ�أ���SetText����Ԫ��ֵ������
	for (int i = 0; i < 10; i++)
	{
		CListTextElementUI* pListElement = new CListTextElementUI;
		pListElement->SetTag(i);
		m_pList->Add(pListElement);

		pListElement->SetText(0, _T("WHO1753"));
		pListElement->SetText(1, _T("�������"));
		pListElement->SetText(2, _T("100"));
	}
}

void CMainWndDlg::OnLBtnClick( CControlUI *pControl )
{

}

