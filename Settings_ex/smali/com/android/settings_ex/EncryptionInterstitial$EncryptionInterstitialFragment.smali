.class public Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "EncryptionInterstitial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/EncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptionInterstitialFragment"
.end annotation


# instance fields
.field private mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

.field private mEncryptionMessage:Landroid/widget/TextView;

.field private mPasswordRequired:Z

.field private mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setRequirePasswordState(Z)V
    .locals 4
    .param p1, "required"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    .line 210
    iget-object v2, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 211
    iget-object v3, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    .line 215
    .local v1, "sa":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v0

    .line 216
    .local v0, "resultIntentData":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 217
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "resultIntentData":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    .restart local v0    # "resultIntentData":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/SettingsActivity;->setResultIntentData(Landroid/content/Intent;)V

    .line 220
    :cond_0
    const-string v2, "extra_require_password"

    iget-boolean v3, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    return-void

    .line 211
    .end local v0    # "resultIntentData":Landroid/content/Intent;
    .end local v1    # "sa":Lcom/android/settings_ex/SettingsActivity;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x30

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 225
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    iget-object v1, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    if-ne p1, v1, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 148
    .local v0, "accEn":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    if-nez v1, :cond_0

    .line 149
    invoke-direct {p0, v2}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 150
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->showDialog(I)V

    .line 157
    .end local v0    # "accEn":Z
    :goto_0
    return-void

    .line 152
    .restart local v0    # "accEn":Z
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    goto :goto_0

    .line 155
    .end local v0    # "accEn":Z
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;
    .locals 9
    .param p1, "dialogId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 161
    packed-switch p1, :pswitch_data_0

    .line 204
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 163
    :pswitch_0
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    .line 167
    .local v3, "quality":I
    sparse-switch v3, :sswitch_data_0

    .line 178
    const v4, 0x7f0c0a7a

    .line 179
    .local v4, "titleId":I
    const v2, 0x7f0c0a7d

    .line 184
    .local v2, "messageId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 189
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    const-string v0, ""

    .line 196
    .local v0, "exampleAccessibility":Ljava/lang/CharSequence;
    :goto_1
    new-instance v5, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {p0, v2, v6}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 169
    .end local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v2    # "messageId":I
    .end local v4    # "titleId":I
    :sswitch_0
    const v4, 0x7f0c0a79

    .line 170
    .restart local v4    # "titleId":I
    const v2, 0x7f0c0a7c

    .line 171
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 174
    .end local v2    # "messageId":I
    .end local v4    # "titleId":I
    :sswitch_1
    const v4, 0x7f0c0a78

    .line 175
    .restart local v4    # "titleId":I
    const v2, 0x7f0c0a7b

    .line 176
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 193
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    goto :goto_1

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 167
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const v0, 0x7f040099

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 95
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 96
    const v5, 0x7f120195

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    .line 98
    const v5, 0x7f120196

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    .line 100
    const v5, 0x7f120194

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mEncryptionMessage:Landroid/widget/TextView;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "for_fingerprint"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 104
    .local v2, "forFingerprint":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extra_password_quality"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 108
    .local v4, "quality":I
    sparse-switch v4, :sswitch_data_0

    .line 125
    if-eqz v2, :cond_2

    const v3, 0x7f0c0a71

    .line 128
    .local v3, "msgId":I
    :goto_0
    const v1, 0x7f0c0a74

    .line 129
    .local v1, "enableId":I
    const v0, 0x7f0c0a77

    .line 132
    .local v0, "disableId":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mEncryptionMessage:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v5, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v5, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v5, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 137
    iget-object v5, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v5, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v5, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setText(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extra_require_password"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 142
    return-void

    .line 110
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v3    # "msgId":I
    :sswitch_0
    if-eqz v2, :cond_0

    const v3, 0x7f0c0a70

    .line 113
    .restart local v3    # "msgId":I
    :goto_2
    const v1, 0x7f0c0a73

    .line 114
    .restart local v1    # "enableId":I
    const v0, 0x7f0c0a76

    .line 115
    .restart local v0    # "disableId":I
    goto :goto_1

    .line 110
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v3    # "msgId":I
    :cond_0
    const v3, 0x7f0c0a6d

    goto :goto_2

    .line 118
    :sswitch_1
    if-eqz v2, :cond_1

    const v3, 0x7f0c0a6f

    .line 121
    .restart local v3    # "msgId":I
    :goto_3
    const v1, 0x7f0c0a72

    .line 122
    .restart local v1    # "enableId":I
    const v0, 0x7f0c0a75

    .line 123
    .restart local v0    # "disableId":I
    goto :goto_1

    .line 118
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v3    # "msgId":I
    :cond_1
    const v3, 0x7f0c0a6c

    goto :goto_3

    .line 125
    :cond_2
    const v3, 0x7f0c0a6e

    goto :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method
