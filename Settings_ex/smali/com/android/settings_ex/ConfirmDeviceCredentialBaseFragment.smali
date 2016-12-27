.class public abstract Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;


# instance fields
.field private mAllowFpAuthentication:Z

.field protected mCancelButton:Landroid/widget/Button;

.field private mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

.field protected mFingerprintIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract authenticationSucceeded()V
.end method

.method public onAuthenticated()V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->authenticationSucceeded()V

    .line 115
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mAllowFpAuthentication:Z

    .line 58
    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 121
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 104
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mAllowFpAuthentication:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->stopListening()V

    .line 107
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 82
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mAllowFpAuthentication:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->startListening()V

    .line 85
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f120106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 65
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    const v0, 0x7f120107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, v2, v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;)V

    iput-object v1, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    .line 77
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method protected setAccessibilityTitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "suplementalText"    # Ljava/lang/CharSequence;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 90
    const-string v3, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 92
    .local v2, "titleText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 99
    .end local v2    # "titleText":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 95
    .restart local v2    # "titleText":Ljava/lang/CharSequence;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "accessibilityTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0}, Lcom/android/settings_ex/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public startEnterAnimation()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method
