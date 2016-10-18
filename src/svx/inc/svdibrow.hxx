/* -*- Mode: C++; tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 4 -*- */
/*
 * This file is part of the LibreOffice project.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * This file incorporates work covered by the following license notice:
 *
 *   Licensed to the Apache Software Foundation (ASF) under one or more
 *   contributor license agreements. See the NOTICE file distributed
 *   with this work for additional information regarding copyright
 *   ownership. The ASF licenses this file to you under the Apache
 *   License, Version 2.0 (the "License"); you may not use this file
 *   except in compliance with the License. You may obtain a copy of
 *   the License at http://www.apache.org/licenses/LICENSE-2.0 .
 */

#ifndef INCLUDED_SVX_INC_SVDIBROW_HXX
#define INCLUDED_SVX_INC_SVDIBROW_HXX

#include <svtools/brwbox.hxx>
#include <vcl/edit.hxx>
#include <vcl/floatwin.hxx>
#include <vcl/idle.hxx>

class SfxItemSet;
class ImpItemListRow;
class BrowserMouseEvent;

class SdrItemBrowserControl: public BrowseBox
{
friend class ImpItemEdit;
    std::vector<ImpItemListRow*> aList;
    long nAktPaintRow;
    VclPtr<Edit> pEditControl;
    OUString aWNamMerk;
    Link<SdrItemBrowserControl&,void> aEntryChangedHdl;
    Link<SdrItemBrowserControl&,void> aSetDirtyHdl;
    ImpItemListRow* pAktChangeEntry;
    long   nLastWhichOfs;
    sal_uInt16 nLastWhich;
    sal_uInt16 nLastWhichOben;
    sal_uInt16 nLastWhichUnten;
    bool bWhichesButNames;
    bool bDontHideIneffectiveItems;
    bool bDontSortItems;
    bool bShowWhichIds;
    bool bShowRealValues;

private:
    void ImpCtor();
    void ImpSetEntry(const ImpItemListRow& rEntry, std::size_t nEntryNum);
    ImpItemListRow* ImpGetEntry(std::size_t nPos) const { return aList[nPos]; }
    void ImpSaveWhich();
    void ImpRestoreWhich();
    std::size_t GetCurrentPos() const;
    bool BeginChangeEntry(std::size_t nPos);

protected:
    virtual long GetRowCount() const override;
    virtual bool SeekRow(long nRow) override;
    virtual void PaintField(OutputDevice& rDev, const Rectangle& rRect, sal_uInt16 nColumnId) const override;
    virtual void DoubleClick(const BrowserMouseEvent&) override;
    virtual void KeyInput(const KeyEvent& rEvt) override;
    virtual void Select() override;
    void SetDirty(); // is called for example in mode switches
    virtual Rectangle GetFieldCharacterBounds(sal_Int32 _nRow,sal_Int32 _nColumnPos,sal_Int32 nIndex) override;
    virtual sal_Int32 GetFieldIndexAtPoint(sal_Int32 _nRow,sal_Int32 _nColumnPos,const Point& _rPoint) override;
public:
    SdrItemBrowserControl(vcl::Window* pParent, WinBits nBits=WB_3DLOOK|WB_BORDER|WB_TABSTOP);
    virtual ~SdrItemBrowserControl();
    virtual void dispose() override;
    void Clear();
    void SetAttributes(const SfxItemSet* pAttr, const SfxItemSet* p2ndSet=nullptr);
    sal_uInt16 GetCurrentWhich() const;
    void EndChangeEntry();
    void BreakChangeEntry();

    /** GetCellText returns the text at the given position
        @param  _nRow
            the number of the row
        @param  _nColId
            the ID of the column
        @return
            the text out of the cell
    */
    virtual OUString  GetCellText(long _nRow, sal_uInt16 _nColId) const override;

    const ImpItemListRow* GetAktChangeEntry() const { return pAktChangeEntry; }
    OUString GetNewEntryValue() const                 { return pEditControl->GetText(); }
    void SetEntryChangedHdl(const Link<SdrItemBrowserControl&,void>& rLink)    { aEntryChangedHdl=rLink; }
    void SetSetDirtyHdl(const Link<SdrItemBrowserControl&,void>& rLink)        { aSetDirtyHdl=rLink; }
};

#define WB_STDSIZEABLEDOCKWIN  (WB_STDDOCKWIN|WB_3DLOOK|WB_CLOSEABLE|WB_SIZEMOVE)
#define WB_STDSIZEABLEFLOATWIN (WB_STDFLOATWIN|WB_3DLOOK|WB_CLOSEABLE|WB_SIZEMOVE)

class SdrItemBrowserWindow: public FloatingWindow {
    VclPtr<SdrItemBrowserControl> aBrowse;
public:
    SdrItemBrowserWindow(vcl::Window* pParent, WinBits nBits=WB_STDSIZEABLEDOCKWIN);
    virtual ~SdrItemBrowserWindow();
    virtual void dispose() override;
    virtual void Resize() override;
    virtual void GetFocus() override;
    void SetAttributes(const SfxItemSet* pAttr, const SfxItemSet* p2ndSet=nullptr) { aBrowse->SetAttributes(pAttr,p2ndSet); }
    SdrItemBrowserControl *GetBrowserControl() { return aBrowse.get(); }
};

class SdrView;

class SdrItemBrowser: public SdrItemBrowserWindow {
    Idle aIdle;
    SdrView* pView;
    bool bDirty;
private:
    static vcl::Window* ImpGetViewWin(SdrView& rView);
    DECL_LINK_TYPED(IdleHdl, Idle *, void);
    DECL_LINK_TYPED(ChangedHdl, SdrItemBrowserControl&, void);
    DECL_LINK_TYPED(SetDirtyHdl, SdrItemBrowserControl&, void);
public:
    SdrItemBrowser(SdrView& rView);
    void ForceParent();
    void SetDirty();
    void Undirty();
};

#endif // INCLUDED_SVX_INC_SVDIBROW_HXX


/* vim:set shiftwidth=4 softtabstop=4 expandtab: */