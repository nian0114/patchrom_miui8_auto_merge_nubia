.class public Lcom/android/settings_ex/net/DataUsageMeteredSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DataUsageMeteredSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# instance fields
.field private mMobileCategory:Landroid/preference/PreferenceCategory;

.field private mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mWifiCategory:Landroid/preference/PreferenceCategory;

.field private mWifiDisabled:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiMeteredSummary:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/net/DataUsageMeteredSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/net/DataUsageMeteredSettings;)Lcom/android/settings_ex/net/NetworkPolicyEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/net/DataUsageMeteredSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    return-object v0
.end method

.method private buildWifiPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 123
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 124
    .local v0, "networkId":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 125
    .local v2, "template":Landroid/net/NetworkTemplate;
    new-instance v1, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;-><init>(Lcom/android/settings_ex/net/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    .line 126
    .local v1, "pref":Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    return-object v1
.end method

.method private updateNetworks(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mMobileCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 98
    iget-object v2, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    invoke-static {p1}, Lcom/android/settings_ex/Utils;->getFirstCategoryLayout(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    .line 101
    iget-object v2, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 102
    invoke-static {p1}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 104
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->buildWifiPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 109
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiDisabled:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 111
    :cond_2
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x44

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 74
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 75
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 77
    new-instance v1, Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    .line 78
    iget-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-virtual {v1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->read()V

    .line 80
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->addPreferencesFromResource(I)V

    .line 81
    const-string v1, "mobile"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mMobileCategory:Landroid/preference/PreferenceCategory;

    .line 82
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    .line 83
    const-string v1, "wifi_metered_summary"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiMeteredSummary:Landroid/preference/Preference;

    .line 84
    const-string v1, "wifi_disabled"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiDisabled:Landroid/preference/Preference;

    .line 86
    iget-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiMeteredSummary:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 87
    iget-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mWifiDisabled:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 89
    invoke-direct {p0, v0}, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->updateNetworks(Landroid/content/Context;)V

    .line 90
    return-void
.end method
