#pragma once
#include "PopWnd.h"
#include "ShlObj.h"
#include "MsgWnd.h"
#include "ControlEx.h"
#include "SkinManager.h"

//////////////////////////////////////////////////////////////////////////
///

class CMainPage : public CNotifyPump
{
public:
	CMainPage();

public:
<<<<<<< HEAD
	CControlUI* CreateControl(LPCTSTR pstrClass)
	{
		if(lstrcmpi(pstrClass, _T("CircleProgress" )) == 0) {
			return new CCircleProgressUI();
		}
		return NULL;
	}
	// 初始化资源管理器
	void InitResource()
	{
		// 多语言接口
		CResourceManager::GetInstance()->SetTextQueryInterface(this);
		// 注册控件
		REGIST_DUICONTROL(CCircleProgressUI);
		REGIST_DUICONTROL(CChartViewUI);
		// 加载资源
		if (GetResourceType() == UILIB_RESOURCE)
		{
			// 加载资源管理器
			CResourceManager::GetInstance()->LoadResource(_T("IDR_RES"), _T("xml"));
		}
		else {
			// 加载资源管理器
			CResourceManager::GetInstance()->LoadResource(_T("res.xml"), NULL);
		}	
	}
	void InitWindow() 
	{
		CSkinManager::GetSkinManager()->AddReceiver(this);

		m_pCloseBtn = static_cast<CButtonUI*>(m_pm.FindControl(_T("closebtn")));
		m_pMaxBtn = static_cast<CButtonUI*>(m_pm.FindControl(_T("maxbtn")));
		m_pRestoreBtn = static_cast<CButtonUI*>(m_pm.FindControl(_T("restorebtn")));
		m_pMinBtn = static_cast<CButtonUI*>(m_pm.FindControl(_T("minbtn")));
		m_pSkinBtn = static_cast<CButtonUI*>(m_pm.FindControl(_T("skinbtn")));
		CWebBrowserUI* pBrowser1 = static_cast<CWebBrowserUI*>(m_pm.FindControl(_T("oneclick_browser1")));
		pBrowser1->SetWebBrowserEventHandler(this);
		CWebBrowserUI* pBrowser2 = static_cast<CWebBrowserUI*>(m_pm.FindControl(_T("oneclick_browser2")));
		pBrowser2->SetWebBrowserEventHandler(this);
		pBrowser1->NavigateUrl(_T("http://blog.csdn.net/duisharp"));
		pBrowser2->NavigateUrl(_T("http://www.51haoliandan.com"));

		CComboUI* pFontSize = static_cast<CComboUI*>(m_pm.FindControl(_T("font_size")));
		if(pFontSize)
		{
			CListLabelElementUI * pElement = new CListLabelElementUI();
			pElement->SetText(_T("测试长文字"));
			pElement->SetFixedHeight(30);
			pElement->SetFixedWidth(120);
			pFontSize->Add(pElement);
		}
		CComboUI* pCombo = new CComboUI();
		pCombo->SetName(_T("mycombo"));
		pCombo->SetFixedWidth(80);
		pCombo->ApplyAttributeList(m_pm.GetStyle(_T("combo_style")));
		CContainerUI* pParent = (CContainerUI*)pFontSize->GetParent();
		pParent->Add(pCombo);
		if(pCombo)
		{
			pCombo->SetItemFont(2);
			CListLabelElementUI * pElement = new CListLabelElementUI();
			pElement->SetText(_T("动态数据"));
			pElement->SetFixedHeight(30);
			pElement->SetFixedWidth(120);
			pCombo->Add(pElement);
			pCombo->SelectItem(0);
		}
		CListUI* pList = static_cast<CListUI*>(m_pm.FindControl(_T("listview")));

		CListContainerElementUI* pListItem  = new CListContainerElementUI();
		pListItem->SetBorderColor(0xFF00FF00);
		pListItem->SetBorderSize(1);
		pListItem->SetBorderStyle(PS_DASHDOTDOT);
		pListItem->SetFixedHeight(30);
		pListItem->SetManager(&m_pm, NULL, false);
		pList->Add(pListItem);
		CButtonUI* pBtn1 = new CButtonUI();
		pBtn1->SetManager(&m_pm, NULL, false);
		pBtn1->SetAttribute(_T("style"), _T("btn_style"));
		pBtn1->SetText(_T("阿呆"));
		pListItem->Add(pBtn1);
		CButtonUI* pBtn2 = new CButtonUI();
		pBtn2->SetManager(&m_pm, NULL, false);
		pBtn2->SetAttribute(_T("style"), _T("btn_style"));
		pBtn2->SetText(_T("20001"));
		pListItem->Add(pBtn2);

		CDialogBuilder builder1;
		CListContainerElementUI* pListItem1  = (CListContainerElementUI*)builder1.Create(_T("listitem.xml"), NULL, this, &m_pm, NULL);
		pList->Add(pListItem1);
=======
	void SetPaintMagager(CPaintManagerUI* pPaintMgr);
>>>>>>> 927e5f279e2c24d4d4c87461b75ba67933e62e95

	DUI_DECLARE_MESSAGE_MAP()
	virtual void OnClick(TNotifyUI& msg);
	virtual void OnSelectChanged( TNotifyUI &msg );
	virtual void OnItemClick( TNotifyUI &msg );

<<<<<<< HEAD
		CDialogBuilder builder;
		CTreeNodeUI* pTreeItem = (CTreeNodeUI*)builder.Create(_T("treeitem.xml"), NULL, this, &m_pm, pTreeView);
		pTreeView->Add(pTreeItem);

		// 图表控件
		CChartViewUI *pHistpgramView = static_cast<CChartViewUI*>(m_pm.FindControl(_T("ChartView_Histpgram")));
		if (NULL != pHistpgramView)
		{
			pHistpgramView->Add(_T("1月{c #FE5900}13%{/c}"), 13);
			pHistpgramView->Add(_T("2月{c #FE5900}11%{/c}"), 11);
			pHistpgramView->Add(_T("3月{c #FE5900}32%{/c}"), 32);
			pHistpgramView->Add(_T("4月{c #FE5900}17%{/c}"), 17);
			pHistpgramView->Add(_T("5月{c #FE5900}8%{/c}"), 8);
			pHistpgramView->Add(_T("6月{c #FE5900}12%{/c}"), 12);
		}

		CChartViewUI *pPieView = static_cast<CChartViewUI*>(m_pm.FindControl(_T("ChartView_Pie")));
		if (NULL != pPieView)
		{
			pPieView->Add(_T("北京{c #FE5900}35%{/c}"), 35);
			pPieView->Add(_T("上海{c #FE5900}38%{/c}"), 38);
			pPieView->Add(_T("广州{c #FE5900}35%{/c}"), 35);
			pPieView->Add(_T("香港{c #FE5900}15%{/c}"), 15);
		}
	}
=======
private:
	CPaintManagerUI* m_pPaintManager;
};
>>>>>>> 927e5f279e2c24d4d4c87461b75ba67933e62e95

//////////////////////////////////////////////////////////////////////////
///

class CMainWnd : public WindowImplBase, public CWebBrowserEventHandler, public SkinChangedReceiver
{
public:
	CMainWnd();
	~CMainWnd();

public:// UI初始化
	DuiLib::CDuiString GetSkinFile();
	LPCTSTR GetWindowClassName() const;
	UINT GetClassStyle() const;
	void InitWindow();
	void OnFinalMessage(HWND hWnd);

public:// 接口回调
	CControlUI* CreateControl(LPCTSTR pstrClass);
	virtual BOOL Receive(SkinChangedParam param);
	LPCTSTR QueryControlText(LPCTSTR lpstrId, LPCTSTR lpstrType);

public:// UI通知消息
	void Notify(TNotifyUI& msg);
	void OnLClick(CControlUI *pControl);

	DUI_DECLARE_MESSAGE_MAP()
	

public:// 系统消息
	LRESULT OnGetMinMaxInfo(UINT uMsg, WPARAM wParam, LPARAM lParam, BOOL& bHandled);
	LRESULT OnDestroy(UINT /*uMsg*/, WPARAM /*wParam*/, LPARAM /*lParam*/, BOOL& bHandled);
	LRESULT HandleCustomMessage(UINT uMsg, WPARAM wParam, LPARAM lParam, BOOL& bHandled);

public:// WebBrowser
	virtual HRESULT STDMETHODCALLTYPE UpdateUI(void);
	virtual HRESULT STDMETHODCALLTYPE GetHostInfo(CWebBrowserUI* pWeb, DOCHOSTUIINFO __RPC_FAR *pInfo);
	virtual HRESULT STDMETHODCALLTYPE ShowContextMenu(CWebBrowserUI* pWeb, DWORD dwID, POINT __RPC_FAR *ppt, IUnknown __RPC_FAR *pcmdtReserved, IDispatch __RPC_FAR *pdispReserved);

private:// UI变量
	CButtonUI* m_pCloseBtn;
	CButtonUI* m_pMaxBtn;
	CButtonUI* m_pRestoreBtn;
	CButtonUI* m_pMinBtn;
	CButtonUI* m_pSkinBtn;
	CMenuWnd* m_pMenu;
	CStdStringPtrMap m_MenuInfos;
	CTrayIcon m_trayIcon;

public:
	CMainPage m_MainPage;
};
