.class public Lcom/android/settings_ex/ZMasterClear;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ZMasterClear.java"


# instance fields
.field private level:I

.field private mActivity:Landroid/app/Activity;

.field private mAppFormat:Landroid/preference/nubia/CheckBoxPreference;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mSDCardFormat:Landroid/preference/nubia/CheckBoxPreference;

.field private mStorageFormat:Landroid/preference/nubia/CheckBoxPreference;

.field private usbReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/ZMasterClear;->level:I

    .line 88
    new-instance v0, Lcom/android/settings_ex/ZMasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ZMasterClear$1;-><init>(Lcom/android/settings_ex/ZMasterClear;)V

    iput-object v0, p0, Lcom/android/settings_ex/ZMasterClear;->usbReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    new-instance v0, Lcom/android/settings_ex/ZMasterClear$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ZMasterClear$3;-><init>(Lcom/android/settings_ex/ZMasterClear;)V

    iput-object v0, p0, Lcom/android/settings_ex/ZMasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ZMasterClear;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ZMasterClear;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/settings_ex/ZMasterClear;->level:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/ZMasterClear;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ZMasterClear;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/settings_ex/ZMasterClear;->level:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ZMasterClear;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ZMasterClear;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/ZMasterClear;->execFactoryReset()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ZMasterClear;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ZMasterClear;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/ZMasterClear;->showCannotResetForLowBattery()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ZMasterClear;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ZMasterClear;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ZMasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ZMasterClear;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ZMasterClear;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/ZMasterClear;->showFinalConfirmation()V

    return-void
.end method

.method private checkStateON(Ljava/lang/String;)Z
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 266
    const-string v1, "unmounted"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    const-string v1, "removed"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    const-string v1, "bad_removal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doMasterClear()V
    .locals 5

    .prologue
    const/high16 v3, 0x10000000

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/settings_ex/ZMasterClear;->mStorageFormat:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    const-string v2, "rs:emulatedsd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/ZMasterClear;->mAppFormat:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 150
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_1
    const-string v2, "rd:/data/app,rd:/data/nubia_sample"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/ZMasterClear;->mSDCardFormat:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    const-string v2, "android.intent.extra.REASON"

    const-string v3, "MasterClearConfirm"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 159
    const-string v2, "ZMasterClear"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "facroty reset args:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v2, "extra.deletedata.args"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    :cond_3
    const-string v2, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    iget-object v2, p0, Lcom/android/settings_ex/ZMasterClear;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 175
    :goto_0
    return-void

    .line 165
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    const-string v2, "android.intent.extra.REASON"

    const-string v3, "MasterClearConfirm"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 169
    const-string v2, "ZMasterClear"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "facroty reset args:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v2, "extra.deletedata.args"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/ZMasterClear;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private execFactoryReset()V
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ZMasterClear;->doMasterClear()V

    goto :goto_0
.end method

.method private initUI(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 244
    const v2, 0x7f12049c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/ZMasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, "second":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getSecondaryStorageDirectory()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 248
    .local v0, "isExternalRemovable":Z
    if-nez v1, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/android/settings_ex/ZMasterClear;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/ZMasterClear;->mSDCardFormat:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 254
    iget-object v2, p0, Lcom/android/settings_ex/ZMasterClear;->mSDCardFormat:Landroid/preference/nubia/CheckBoxPreference;

    const-string v3, "sdcard_format"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 256
    iget-object v2, p0, Lcom/android/settings_ex/ZMasterClear;->mStorageFormat:Landroid/preference/nubia/CheckBoxPreference;

    const-string v3, "storage_format"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 258
    iget-object v2, p0, Lcom/android/settings_ex/ZMasterClear;->mAppFormat:Landroid/preference/nubia/CheckBoxPreference;

    const-string v3, "app_format"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 263
    :goto_1
    return-void

    .line 250
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ZMasterClear;->checkStateON(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings_ex/ZMasterClear;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/ZMasterClear;->mSDCardFormat:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 261
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/ZMasterClear;->restoreInitialState()V

    goto :goto_1
.end method

.method private restoreInitialState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/android/settings_ex/ZMasterClear;->mStorageFormat:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 279
    iget-object v0, p0, Lcom/android/settings_ex/ZMasterClear;->mAppFormat:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 280
    iget-object v0, p0, Lcom/android/settings_ex/ZMasterClear;->mSDCardFormat:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 281
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/ZMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 118
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ZMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0c046b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showCannotResetForLowBattery()V
    .locals 5

    .prologue
    .line 98
    const-string v2, "ZMasterClear"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "level= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/ZMasterClear;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/ZMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v2, 0x7f0c0bf2

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 103
    .local v1, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 104
    return-void
.end method

.method private showFinalConfirmation()V
    .locals 5

    .prologue
    .line 123
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/ZMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v2, 0x7f0c0f68

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0f69

    new-instance v4, Lcom/android/settings_ex/ZMasterClear$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/ZMasterClear$2;-><init>(Lcom/android/settings_ex/ZMasterClear;)V

    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0137

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 134
    .local v1, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 135
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, -0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 197
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/android/settings_ex/ZMasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/ZMasterClear;->restoreInitialState()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 212
    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ZMasterClear;->addPreferencesFromResource(I)V

    .line 213
    const-string v0, "sdcard_format"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ZMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/ZMasterClear;->mSDCardFormat:Landroid/preference/nubia/CheckBoxPreference;

    .line 214
    const-string v0, "storage_format"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ZMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/ZMasterClear;->mStorageFormat:Landroid/preference/nubia/CheckBoxPreference;

    .line 215
    const-string v0, "app_format"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ZMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/ZMasterClear;->mAppFormat:Landroid/preference/nubia/CheckBoxPreference;

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/ZMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ZMasterClear;->mActivity:Landroid/app/Activity;

    .line 218
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 238
    const v1, 0x7f040201

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0, p3}, Lcom/android/settings_ex/ZMasterClear;->initUI(Landroid/view/View;Landroid/os/Bundle;)V

    .line 240
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 231
    iget-object v0, p0, Lcom/android/settings_ex/ZMasterClear;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings_ex/ZMasterClear;->usbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 222
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "usbFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings_ex/ZMasterClear;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings_ex/ZMasterClear;->usbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 285
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 286
    const-string v0, "sdcard_format"

    iget-object v1, p0, Lcom/android/settings_ex/ZMasterClear;->mSDCardFormat:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    const-string v0, "storage_format"

    iget-object v1, p0, Lcom/android/settings_ex/ZMasterClear;->mStorageFormat:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    const-string v0, "app_format"

    iget-object v1, p0, Lcom/android/settings_ex/ZMasterClear;->mAppFormat:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    return-void
.end method
