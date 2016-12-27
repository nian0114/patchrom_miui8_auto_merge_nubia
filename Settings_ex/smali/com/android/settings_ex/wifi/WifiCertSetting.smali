.class public Lcom/android/settings_ex/wifi/WifiCertSetting;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WifiCertSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mWapiCertInstall:Landroid/preference/Preference;

.field private mWapiCertMgmtDialog:Lcn/nubia/commonui/app/Dialog;

.field private mWapiCertUninstall:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private init80211CertInstallPreference()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.credentials.INSTALL_AS_USER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.certinstaller"

    const-string v3, "com.android.certinstaller.CertInstallerMain"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v2, "install_as_uid"

    const/16 v3, 0x3f2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const-string v2, "802.11_cert_install"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiCertSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 80
    .local v1, "pref":Landroid/preference/Preference;
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method private initWapiCertInstallPreference()V
    .locals 3

    .prologue
    .line 85
    const-string v1, "wapi_cert_install"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiCertSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 86
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 87
    const-string v1, "WifiCertSetting"

    const-string v2, "initWapiCertInstallPreference pref != null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v1, "WifiCertSetting"

    const-string v2, "initWapiCertInstallPreference pref == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initWapiCertUninstallPreference()V
    .locals 3

    .prologue
    .line 94
    const-string v1, "wapi_cert_uninstall"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiCertSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 95
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 96
    const-string v1, "WifiCertSetting"

    const-string v2, "initWapiCertUninstallPreference pref != null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v1, "WifiCertSetting"

    const-string v2, "initWapiCertUninstallPreference pref == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showWapiCertInstallDialog()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiCertSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, "dialog":Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMode(I)V

    .line 123
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiCertSetting;->mWapiCertMgmtDialog:Lcn/nubia/commonui/app/Dialog;

    .line 124
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->show()V

    .line 125
    return-void
.end method

.method private showWapiCertUninstallDialog()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiCertSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "dialog":Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMode(I)V

    .line 131
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiCertSetting;->mWapiCertMgmtDialog:Lcn/nubia/commonui/app/Dialog;

    .line 132
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->show()V

    .line 133
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, -0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v1, 0x7f080082

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiCertSetting;->addPreferencesFromResource(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiCertSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 46
    .local v0, "bar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 47
    const v1, 0x7f0c0f76

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setTitle(I)V

    .line 51
    :cond_0
    const-string v1, "WifiCertSetting"

    const-string v2, "Oncreate findpref."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v1, "wapi_cert_install"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiCertSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiCertSetting;->mWapiCertInstall:Landroid/preference/Preference;

    .line 53
    const-string v1, "wapi_cert_uninstall"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiCertSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiCertSetting;->mWapiCertUninstall:Landroid/preference/Preference;

    .line 57
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 140
    const-string v0, "wapi_cert_install"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiCertSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiCertSetting;->mWapiCertInstall:Landroid/preference/Preference;

    .line 141
    const-string v0, "wapi_cert_uninstall"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiCertSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiCertSetting;->mWapiCertUninstall:Landroid/preference/Preference;

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 106
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "key":Ljava/lang/String;
    const-string v1, "WifiCertSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceClick key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v4

    .line 109
    :cond_1
    const-string v1, "wapi_cert_install"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiCertSetting;->showWapiCertInstallDialog()V

    goto :goto_0

    .line 112
    :cond_2
    const-string v1, "wapi_cert_uninstall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiCertSetting;->showWapiCertUninstallDialog()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiCertSetting;->init80211CertInstallPreference()V

    .line 64
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiCertSetting;->initWapiCertInstallPreference()V

    .line 65
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiCertSetting;->initWapiCertUninstallPreference()V

    .line 67
    return-void
.end method
