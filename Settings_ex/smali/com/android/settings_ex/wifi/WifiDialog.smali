.class Lcom/android/settings_ex/wifi/WifiDialog;
.super Lcn/nubia/commonui/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings_ex/wifi/WifiConfigUiBase;


# instance fields
.field private final mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mController:Lcom/android/settings_ex/wifi/WifiConfigController;

.field private final mEdit:Z

.field private mHideForgetButton:Z

.field private mHideSubmitButton:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mModify:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "modify"    # Z

    .prologue
    const/4 v1, 0x0

    .line 55
    const v0, 0x7f0d006e

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    iput-boolean p4, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mEdit:Z

    .line 57
    iput-boolean p5, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mModify:Z

    .line 58
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 60
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideForgetButton:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;ZZZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "modify"    # Z
    .param p6, "hideSubmitButton"    # Z
    .param p7, "hideForgetButton"    # Z

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V

    .line 49
    iput-boolean p6, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 50
    iput-boolean p7, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideForgetButton:Z

    .line 51
    return-void
.end method


# virtual methods
.method public getController()Lcom/android/settings_ex/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    return-object v0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 107
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 102
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401e7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 74
    new-instance v0, Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mEdit:Z

    iget-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mModify:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/WifiConfigController;-><init>(Lcom/android/settings_ex/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    .line 75
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 77
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideSubmitButton:Z

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->hideSubmitButton()V

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 85
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideForgetButton:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->hideForgetButton()V

    .line 88
    :cond_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->updatePassword()V

    .line 93
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 127
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 128
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 122
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 123
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 117
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 118
    return-void
.end method
