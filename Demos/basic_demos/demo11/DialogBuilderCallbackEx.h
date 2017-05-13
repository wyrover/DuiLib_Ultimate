#pragma once

class CDialogBuilderCallbackEx :
	public IDialogBuilderCallback
{
public:
	CDialogBuilderCallbackEx(CPaintManagerUI* ppm = NULL);
	~CDialogBuilderCallbackEx(void);

	virtual CControlUI* CreateControl(LPCTSTR pstrClass); 

private:
	// ��һ��PAINTMANAGER��Ϊ�˼��ء�Default ��
	CPaintManagerUI* m_pm;
};

