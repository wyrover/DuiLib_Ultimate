#include "StdAfx.h"
#include "DemoWnd.h"

//

DUI_BEGIN_MESSAGE_MAP(CMainWnd, WindowImplBase)
	DUI_ON_MSGTYPE(DUI_MSGTYPE_ITEMSELECT, OnItemSelect)
DUI_END_MESSAGE_MAP()

CMainWnd::CMainWnd(void)
	: m_pFileList(NULL)
{
}


CMainWnd::~CMainWnd(void)
{
}

LPCTSTR CMainWnd::GetWindowClassName() const
{
	return _T("UIDemoFrame");//����
}

DuiLib::CDuiString CMainWnd::GetSkinFile()
{
	return _T("skin.xml");//���õ�xml·��
}

DuiLib::CDuiString CMainWnd::GetSkinFolder()
{
	return _T("skin\\");//���õ���Դ·��
}

CControlUI* CMainWnd::CreateControl( LPCTSTR pstrClass )
{
	
	return NULL;//���ϵͳ������Զ���ؼ�
}

LRESULT CMainWnd::HandleCustomMessage( UINT uMsg, WPARAM wParam, LPARAM lParam, BOOL& bHandled )
{
	bHandled = FALSE;
	return 0;//�����Զ������Ϣ
}

bool CMainWnd::IsNcLBMax()
{
	return false;//�Ƿ�˫�����  
}

void CMainWnd::InitWindow()
{
	//��ȡ�ؼ���ָ�� �����Ҫ�Ļ�  ��ʱ  �Ի���û����ʾ
	m_pFileList = static_cast<CFileListUI*>(m_PaintManager.FindControl(_T("file_list")));
	m_pStatusLab = static_cast<CLabelUI*>(m_PaintManager.FindControl(_T("status_lab")));
}

void CMainWnd::OnPrepare( TNotifyUI& msg )
{
	//�Ի���ʼ���� �Ի����ʼ������ 
	CDuiString sTemp;
	for (int i=0; i<100; i++)
	{
		CFileListItemUI* pListItem = new CFileListItemUI;
		pListItem->SetFileList(m_pFileList);//������ǰ������FileList  ������Щ������Ҫ
		pListItem->SetFixedHeight(24);
				
		//��һ��
		CHorizontalLayoutUI* pHor = new CHorizontalLayoutUI;
		CCheckBoxUI* pCheck = new CCheckBoxUI;
		RECT paddingRect = {0};
		int nPadding = (24 - 16)/2;
		paddingRect.left = paddingRect.top = paddingRect.bottom = nPadding;
		paddingRect.right =0;
		//pCheck->SetPadding(paddingRect);
		pCheck->SetFixedWidth(30);
		pCheck->SetAttribute(_T("align"),_T("center"));
		pCheck->SetNormalImage(_T("file='checkbox_h.png' dest='10,4,27,21'"));//17ͼƬ�ÿ�Щ
		pCheck->SetSelectedImage(_T("file='checkbox_ph.png' dest='10,4,27,21'"));
		pHor->Add(pCheck);
		pListItem->SetCheckEvent(pCheck);

			
		CPictureUI *pPicture = new CPictureUI;//�Զ���ͼƬ�ؼ�
		pPicture->SetPadding(paddingRect);
		pPicture->SetFixedWidth(17);//17ͼƬ�ÿ�Щ
		pPicture->SetAttribute(_T("align"),_T("center"));
		pPicture->SetAttribute(_T("valign"), _T("center"));
		pPicture->SetBkImage(_T("doc_32.gif"));
		pHor->Add(pPicture);

		sTemp.Format(_T("�½��ĵ��ļ� %2d.doc"), i);
		CLabelUI* pLabel = new CLabelUI;
		pLabel->SetName(LABEL_FILENAME);//���� ���������� ȡֵ
		pLabel->SetText(sTemp);
		pLabel->SetAttribute(_T("padding"), _T("5,0,0,0"));
		pLabel->SetToolTip(sTemp);
		pLabel->SetEndellipsis(true);
		pLabel->SetShowHtml(true);
		pHor->Add(pLabel);
		pListItem->Add(pHor);
	
		/*pListItem->m_pButton = new CButtonUI;
		pListItem->m_pButton->SetText(_T("ɾ��"));
		pListItem->m_pButton->SetVisible(false);
		pListItem->m_pButton->SetFixedWidth(20);
		pListItem->Add(pListItem->m_pButton, 0);*/

		//�ڶ���
		sTemp.Format(_T(" %2d K"), i*10);
		pLabel = new CLabelUI;
		pLabel->SetText(sTemp);
		pLabel->SetAttribute(_T("padding"), _T("5,0,0,0"));
		pListItem->Add(pLabel);

		//������
		sTemp.Format(_T("2015-05-07 %2d:%2d:%2d"), rand() % 24, rand() % 60, rand() % 60);
		pLabel = new CLabelUI;
		pLabel->SetText(sTemp);
		pLabel->SetAttribute(_T("padding"), _T("5,0,0,0"));
		pListItem->Add(pLabel);

		
		m_pFileList->Add(pListItem);
	}
}

void CMainWnd::OnClick( TNotifyUI& msg )
{
	if(msg.pSender == m_pFileList)
	{
		OnShowStatus();
		return ;
	}
	WindowImplBase::OnClick(msg);
}

void CMainWnd::OnItemSelect( TNotifyUI& msg )
{
	if(msg.pSender == m_pFileList)
	{
		OnShowStatus();//
		return ;
	}
}

void CMainWnd::OnShowStatus()
{
	int nSelectCount = m_pFileList->GetSelectCount();
	if(nSelectCount > 0)
	{
		CDuiString str;
		str.Format(_T("��ѡ��%d���ļ�/�ļ���"), nSelectCount);
		m_pStatusLab->SetText(str);
	}
	else
	{
		CDuiString str;
		str.Format(_T("%d��"), m_pFileList->GetCount());
		m_pStatusLab->SetText(str);
	}
}


