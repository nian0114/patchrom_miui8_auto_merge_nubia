.class public Lcom/android/settings_ex/ConfirmLockPIN;
.super Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPIN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;,
        Lcom/android/settings_ex/ConfirmLockPIN$InternalActivity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;-><init>()V

    .line 87
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 68
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->onWindowFocusChanged(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPIN;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1202ab

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 82
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    if-eqz v1, :cond_0

    .line 83
    check-cast v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->onWindowFocusChanged(Z)V

    .line 85
    :cond_0
    return-void
.end method
