.class public Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# instance fields
.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintTitleChanged:Z

.field private mForFingerprint:Z

.field private mHasChallenge:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordConfirmed:Z

.field private mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRequirePassword:Z

.field private mUserPassword:Ljava/lang/String;

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 98
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 110
    new-instance v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 626
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getKeyForCurrent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const-string v0, "unlock_set_off"

    .line 333
    :goto_0
    return-object v0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 333
    const/4 v0, 0x0

    goto :goto_0

    .line 323
    :sswitch_0
    const-string v0, "unlock_set_pattern"

    goto :goto_0

    .line 326
    :sswitch_1
    const-string v0, "unlock_set_pin"

    goto :goto_0

    .line 329
    :sswitch_2
    const-string v0, "unlock_set_password"

    goto :goto_0

    .line 331
    :sswitch_3
    const-string v0, "unlock_set_none"

    goto :goto_0

    .line 321
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
    .end sparse-switch
.end method

.method private getResIdForFactoryResetProtectionWarningMessage()I
    .locals 4

    .prologue
    const v1, 0x7f0c0d47

    .line 565
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    .line 566
    .local v0, "hasFingerprints":Z
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 583
    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    .line 568
    :sswitch_0
    if-nez v0, :cond_0

    const v1, 0x7f0c01dd

    goto :goto_0

    .line 573
    :sswitch_1
    if-nez v0, :cond_0

    const v1, 0x7f0c01df

    goto :goto_0

    .line 579
    :sswitch_2
    if-nez v0, :cond_0

    const v1, 0x7f0c01e1

    goto :goto_0

    .line 583
    :cond_1
    const v1, 0x7f0c01e3

    goto :goto_0

    .line 566
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .locals 1
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    .line 590
    const-string v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 7
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 234
    const-string v6, "device_policy"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 235
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->isOwner()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v6

    if-nez v6, :cond_1

    .line 237
    iput p1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 238
    iput-boolean p2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 239
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 243
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 244
    .local v0, "accEn":Z
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v4

    .line 245
    .local v4, "required":Z
    invoke-virtual {p0, v1, p1, v4}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v3

    .line 246
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "for_fingerprint"

    iget-boolean v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    const/16 v5, 0x66

    invoke-virtual {p0, v3, v5}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 253
    .end local v0    # "accEn":Z
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "required":Z
    :goto_0
    return-void

    .line 250
    :cond_1
    iput-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 4
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 595
    const v2, 0x16058

    invoke-static {v2, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 597
    const-string v2, "unlock_set_off"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    :goto_0
    move v0, v1

    .line 616
    :goto_1
    return v0

    .line 600
    :cond_0
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 601
    invoke-virtual {p0, v0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 603
    :cond_1
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 604
    const/high16 v2, 0x10000

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 606
    :cond_2
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 607
    const/high16 v2, 0x20000

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 609
    :cond_3
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 610
    const/high16 v2, 0x40000

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 613
    :cond_4
    const-string v1, "ChooseLockGenericFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown unlock method to set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "unlockMethodToSet"    # Ljava/lang/String;

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningMessage()I

    move-result v1

    .line 621
    .local v1, "message":I
    invoke-static {v1, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(ILjava/lang/String;)Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    .line 623
    .local v0, "dialog":Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "frp_warning_dialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method private updateCurrentPreference()V
    .locals 3

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getKeyForCurrent()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "currentKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 312
    .local v1, "preference":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 313
    const v2, 0x7f0c01d3

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 315
    :cond_0
    return-void
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 408
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 433
    :cond_0
    return-void

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 417
    const v5, 0x7f0c0679

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 419
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 420
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 421
    .local v2, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 422
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 423
    .local v1, "preference":Landroid/preference/Preference;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 424
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    move v5, v6

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 421
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :sswitch_0
    const-string v7, "unlock_set_pattern"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v7, "unlock_set_pin"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v7, "unlock_set_password"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    .line 428
    :pswitch_0
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 424
    :sswitch_data_0
    .sparse-switch
        -0x75461c3 -> :sswitch_1
        0x27e176f3 -> :sswitch_2
        0x53ec4438 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePreferencesOrFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 288
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 289
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "lockscreen.password_type"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 290
    .local v3, "quality":I
    if-ne v3, v5, :cond_1

    .line 292
    const-string v4, "minimum_quality"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 293
    invoke-direct {p0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result v3

    .line 294
    const-string v4, "hide_disabled_prefs"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 296
    .local v0, "hideDisabledPrefs":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 297
    .local v2, "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 298
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 300
    :cond_0
    const v4, 0x7f080063

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 301
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    .line 302
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateCurrentPreference()V

    .line 303
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    .line 307
    .end local v0    # "hideDisabledPrefs":Z
    .end local v2    # "prefScreen":Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-virtual {p0, v3, v6}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private upgradeQuality(I)I
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 339
    return p1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3
    .param p1, "quality"    # I

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 345
    .local v0, "minQuality":I
    if-ge p1, v0, :cond_0

    .line 346
    move p1, v0

    .line 348
    :cond_0
    return p1
.end method


# virtual methods
.method protected disableUnusablePreferences(IZ)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "hideDisabledPrefs"    # Z

    .prologue
    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 361
    return-void
.end method

.method protected disableUnusablePreferencesImpl(IZ)V
    .locals 10
    .param p1, "quality"    # I
    .param p2, "hideDisabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 371
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 373
    .local v1, "entries":Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_d

    .line 374
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 375
    .local v4, "pref":Landroid/preference/Preference;
    instance-of v8, v4, Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_2

    .line 376
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "key":Ljava/lang/String;
    const/4 v0, 0x1

    .line 378
    .local v0, "enabled":Z
    const/4 v5, 0x1

    .line 379
    .local v5, "visible":Z
    const-string v8, "unlock_set_off"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 380
    if-gtz p1, :cond_3

    move v0, v6

    .line 381
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 382
    const/4 v0, 0x0

    .line 383
    const/4 v5, 0x0

    .line 394
    :cond_0
    :goto_2
    if-eqz p2, :cond_1

    .line 395
    move v5, v0

    .line 397
    :cond_1
    if-nez v5, :cond_c

    .line 398
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 373
    .end local v0    # "enabled":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "visible":Z
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .restart local v0    # "enabled":Z
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "visible":Z
    :cond_3
    move v0, v7

    .line 380
    goto :goto_1

    .line 385
    :cond_4
    const-string v8, "unlock_set_none"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 386
    if-gtz p1, :cond_5

    move v0, v6

    :goto_4
    goto :goto_2

    :cond_5
    move v0, v7

    goto :goto_4

    .line 387
    :cond_6
    const-string v8, "unlock_set_pattern"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 388
    const/high16 v8, 0x10000

    if-gt p1, v8, :cond_7

    move v0, v6

    :goto_5
    goto :goto_2

    :cond_7
    move v0, v7

    goto :goto_5

    .line 389
    :cond_8
    const-string v8, "unlock_set_pin"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 390
    const/high16 v8, 0x30000

    if-gt p1, v8, :cond_9

    move v0, v6

    :goto_6
    goto :goto_2

    :cond_9
    move v0, v7

    goto :goto_6

    .line 391
    :cond_a
    const-string v8, "unlock_set_password"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 392
    const/high16 v8, 0x60000

    if-gt p1, v8, :cond_b

    move v0, v6

    :goto_7
    goto :goto_2

    :cond_b
    move v0, v7

    goto :goto_7

    .line 399
    :cond_c
    if-nez v0, :cond_2

    .line 400
    const v8, 0x7f0c01d4

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 401
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 405
    .end local v0    # "enabled":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "pref":Landroid/preference/Preference;
    .end local v5    # "visible":Z
    :cond_d
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z

    .prologue
    .line 473
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 561
    const v0, 0x7f0c0953

    return v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "challenge"    # J

    .prologue
    .line 445
    invoke-static/range {p1 .. p7}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    .line 451
    invoke-static/range {p1 .. p6}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "challenge"    # J

    .prologue
    .line 463
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings_ex/ChooseLockPattern;->createIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "pattern"    # Ljava/lang/String;

    .prologue
    .line 468
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/ChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 132
    const/16 v0, 0x1b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 257
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 258
    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 259
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 260
    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 261
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 262
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 275
    :goto_0
    return-void

    .line 263
    :cond_0
    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 265
    const-string v0, "extra_require_password"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 267
    iget v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 268
    :cond_1
    const/16 v0, 0x67

    if-ne p1, v0, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 273
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 137
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "fingerprint"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 141
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 142
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 143
    new-instance v2, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 144
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 145
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "confirm_credentials"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 150
    .local v0, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings_ex/ChooseLockGeneric$InternalActivity;

    if-eqz v2, :cond_0

    .line 151
    if-nez v0, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "has_challenge"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "challenge"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    .line 158
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "for_fingerprint"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "for_fingerprint_title"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintTitleChanged:Z

    .line 162
    iget-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintTitleChanged:Z

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f0c0e90

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 166
    :cond_1
    if-eqz p1, :cond_2

    .line 167
    const-string v2, "password_confirmed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 168
    const-string v2, "waiting_for_confirmation"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 169
    const-string v2, "encrypt_requested_quality"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 170
    const-string v2, "encrypt_requested_disabled"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 174
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v2, :cond_5

    .line 175
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 187
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v2, v4

    .line 151
    goto :goto_0

    .line 176
    :cond_5
    iget-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v2, :cond_3

    .line 177
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 179
    .local v1, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const/16 v2, 0x64

    const v4, 0x7f0c01c5

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 181
    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 182
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_1

    .line 184
    :cond_6
    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 555
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 556
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    .line 557
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 211
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    .line 213
    .local v0, "hasFingerprints":Z
    invoke-direct {p0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->isUnlockSwitchOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    invoke-direct {p0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    .line 218
    const/4 v2, 0x1

    .line 220
    :goto_0
    return v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 281
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    const-string v0, "encrypt_requested_quality"

    iget v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    const-string v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 191
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 192
    iget-boolean v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v4, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 194
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 195
    .local v3, "listView":Landroid/widget/ListView;
    const v4, 0x7f040049

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, "fingerprintHeader":Landroid/view/View;
    invoke-virtual {v3, v0, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 199
    .end local v0    # "fingerprintHeader":Landroid/view/View;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "listView":Landroid/widget/ListView;
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintTitleChanged:Z

    if-eqz v4, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 201
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 202
    .restart local v3    # "listView":Landroid/widget/ListView;
    const v4, 0x7f04004a

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 204
    .local v1, "fingerprintTipsHeader":Landroid/view/View;
    invoke-virtual {v3, v1, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 206
    .end local v1    # "fingerprintTipsHeader":Landroid/view/View;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "listView":Landroid/widget/ListView;
    :cond_1
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 13
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to update password without confirming it"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result p1

    .line 493
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 494
    .local v1, "context":Landroid/content/Context;
    const/high16 v0, 0x40000

    if-lt p1, v0, :cond_3

    .line 495
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v3

    .line 496
    .local v3, "minLength":I
    const/4 v0, 0x4

    if-ge v3, v0, :cond_1

    .line 497
    const/4 v3, 0x4

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .line 501
    .local v4, "maxLength":I
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v0, :cond_2

    .line 502
    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-wide v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;

    move-result-object v12

    .line 508
    .local v12, "intent":Landroid/content/Intent;
    :goto_0
    const/16 v0, 0x67

    invoke-virtual {p0, v12, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 542
    .end local v3    # "minLength":I
    .end local v4    # "maxLength":I
    .end local v12    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 505
    .restart local v3    # "minLength":I
    .restart local v4    # "maxLength":I
    :cond_2
    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .restart local v12    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 509
    .end local v3    # "minLength":I
    .end local v4    # "maxLength":I
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_3
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_5

    .line 511
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v0, :cond_4

    .line 512
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-wide v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    invoke-virtual {p0, v1, v0, v6, v7}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;

    move-result-object v12

    .line 518
    .restart local v12    # "intent":Landroid/content/Intent;
    :goto_2
    const/16 v0, 0x67

    invoke-virtual {p0, v12, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 515
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .restart local v12    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 519
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_5
    if-nez p1, :cond_6

    .line 520
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 521
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 524
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 525
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_1

    .line 526
    :cond_6
    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_8

    .line 527
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v3

    .line 528
    .restart local v3    # "minLength":I
    const/4 v0, 0x4

    if-ge v3, v0, :cond_7

    .line 529
    const/4 v3, 0x4

    .line 531
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .line 532
    .restart local v4    # "maxLength":I
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-boolean v9, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-wide v10, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    move v6, p1

    move v7, v3

    move v8, v4

    invoke-static/range {v5 .. v11}, Lcom/android/settings_ex/ChooseLockPIN;->createIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;

    move-result-object v12

    .line 534
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v0, "key_back_twice"

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "key_back_twice"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v12, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 537
    const/16 v0, 0x67

    invoke-virtual {p0, v12, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 540
    .end local v3    # "minLength":I
    .end local v4    # "maxLength":I
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1
.end method
