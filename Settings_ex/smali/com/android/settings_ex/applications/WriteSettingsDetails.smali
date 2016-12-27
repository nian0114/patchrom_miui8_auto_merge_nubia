.class public Lcom/android/settings_ex/applications/WriteSettingsDetails;
.super Lcom/android/settings_ex/applications/AppInfoWithHeader;
.source "WriteSettingsDetails.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final APP_OPS_OP_CODE:[I


# instance fields
.field private mAppBridge:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchPref:Landroid/preference/nubia/CheckBoxPreference;

.field private mWriteSettingsDesc:Landroid/preference/Preference;

.field private mWriteSettingsPrefs:Landroid/preference/Preference;

.field private mWriteSettingsState:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x17

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->APP_OPS_OP_CODE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private setCanWriteSettings(Z)V
    .locals 5
    .param p1, "newState"    # Z

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x17

    iget-object v0, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 126
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 160
    const/16 v0, 0xdd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 73
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;

    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mAppBridge:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;

    .line 74
    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 76
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->addPreferencesFromResource(I)V

    .line 77
    const-string v1, "app_ops_settings_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSwitchPref:Landroid/preference/nubia/CheckBoxPreference;

    .line 78
    const-string v1, "app_ops_settings_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/preference/Preference;

    .line 79
    const-string v1, "app_ops_settings_description"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsDesc:Landroid/preference/Preference;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f0c0b1f

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 82
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSwitchPref:Landroid/preference/nubia/CheckBoxPreference;

    const v2, 0x7f0c0b26

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setTitle(I)V

    .line 83
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/preference/Preference;

    const v2, 0x7f0c0b25

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsDesc:Landroid/preference/Preference;

    const v2, 0x7f0c0b27

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 86
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSwitchPref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.USAGE_ACCESS_CONFIG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSettingsIntent:Landroid/content/Intent;

    .line 92
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 111
    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSwitchPref:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    if-eqz v2, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->setCanWriteSettings(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->refreshUi()Z

    .line 119
    :cond_1
    :goto_0
    return v1

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSettingsIntent:Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 106
    :goto_1
    return v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "WriteSettingsDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch write system settings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 106
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected refreshUi()Z
    .locals 4

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mAppBridge:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;

    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    .line 143
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v0

    .line 144
    .local v0, "canWrite":Z
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSwitchPref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 146
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSwitchPref:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-boolean v2, v2, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;->permissionDeclared:Z

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 147
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 150
    const/4 v1, 0x1

    return v1
.end method
