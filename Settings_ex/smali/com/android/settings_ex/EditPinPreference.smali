.class Lcom/android/settings_ex/EditPinPreference;
.super Lcn/nubia/commonui/preference/EditTextPreference;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mPinListener:Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public isDialogOpen()Z
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreference;->getDialog()Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    .line 64
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 56
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 57
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 60
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreference;->mPinListener:Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreference;->mPinListener:Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/settings_ex/EditPinPreference;Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings_ex/EditPinPreference;->mPinListener:Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;

    .line 48
    return-void
.end method

.method public showPinDialog()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreference;->getDialog()Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    .line 77
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/EditPinPreference;->showDialog(Landroid/os/Bundle;)V

    .line 80
    :cond_1
    return-void
.end method
