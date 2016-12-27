.class public Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;
.super Lcn/nubia/commonui/widget/tab/NubiaPagerTab;
.source "SettingsNubiaPagerTab.java"


# instance fields
.field pagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->onPageScrollStateChanged(I)V

    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;->pagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;->pagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 52
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->onPageScrolled(IFI)V

    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;->pagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;->pagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 38
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->onPageSelected(I)V

    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;->pagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;->pagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 45
    :cond_0
    return-void
.end method

.method public setPagerListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "mListener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;->pagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 29
    return-void
.end method
