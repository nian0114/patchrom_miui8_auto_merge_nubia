.class public Lcom/android/settings_ex/wifi/AdvancedWifiSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;
    }
.end annotation


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 83
    new-instance v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 410
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    return-void
.end method

.method private initPreferences()V
    .locals 17

    .prologue
    .line 137
    const-string v14, "notify_open_networks"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/nubia/CheckBoxPreference;

    .line 139
    .local v3, "notifyOpenNetworks":Landroid/preference/nubia/CheckBoxPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_networks_available_notification_on"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    const/4 v14, 0x1

    :goto_0
    invoke-virtual {v3, v14}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v14

    invoke-virtual {v3, v14}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 142
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    const-string v14, "wifi_scan_always_available"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/nubia/CheckBoxPreference;

    .line 147
    .local v5, "scanAlwaysAvailable":Landroid/preference/nubia/CheckBoxPreference;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_scan_always_enabled"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v5, v14}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 154
    const-string v14, "install_credentials"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 157
    .local v4, "pref":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 158
    .local v1, "context":Landroid/content/Context;
    const-string v14, "wifi_assistant"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/AppListSwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

    .line 159
    invoke-static {v1}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v6

    .line 161
    .local v6, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    if-nez v14, :cond_8

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/settings_ex/AppListSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->initWifiAssistantPreference(Ljava/util/Collection;)V

    .line 170
    :cond_0
    :goto_2
    const-string v14, "wifi_direct"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 174
    .local v11, "wifiDirectPref":Landroid/preference/Preference;
    const-string v14, "wps_push_button"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 175
    .local v13, "wpsPushPref":Landroid/preference/Preference;
    new-instance v14, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 184
    const-string v14, "wps_pin_entry"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 185
    .local v12, "wpsPinPref":Landroid/preference/Preference;
    if-eqz v12, :cond_1

    .line 186
    new-instance v14, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v12, v14}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 195
    :cond_1
    const-string v14, "frequency_band"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/ListPreference;

    .line 197
    .local v2, "frequencyPref":Lcn/nubia/commonui/preference/ListPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v14

    if-eqz v14, :cond_a

    if-eqz v2, :cond_a

    .line 198
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v10

    .line 200
    .local v10, "value":I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_9

    .line 201
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V

    .line 213
    .end local v10    # "value":I
    :cond_2
    :goto_3
    const-string v14, "sleep_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/preference/ListPreference;

    .line 214
    .local v7, "sleepPolicyPref":Lcn/nubia/commonui/preference/ListPreference;
    if-eqz v7, :cond_4

    .line 215
    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 216
    const v14, 0x7f0a001d

    invoke-virtual {v7, v14}, Lcn/nubia/commonui/preference/ListPreference;->setEntries(I)V

    .line 218
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 219
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Lcn/nubia/commonui/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_sleep_policy"

    const/16 v16, 0x2

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 223
    .restart local v10    # "value":I
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 224
    .local v9, "stringValue":Ljava/lang/String;
    invoke-virtual {v7, v9}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 227
    .end local v9    # "stringValue":Ljava/lang/String;
    .end local v10    # "value":I
    :cond_4
    const-string v14, "sort_way"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcn/nubia/commonui/preference/ListPreference;

    .line 228
    .local v8, "sortWayPref":Lcn/nubia/commonui/preference/ListPreference;
    if-eqz v8, :cond_5

    .line 229
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lcn/nubia/commonui/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_sort_way"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 233
    .restart local v10    # "value":I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_5

    .line 234
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateSortWaySummary(Landroid/preference/Preference;I)V

    .line 239
    .end local v10    # "value":I
    :cond_5
    return-void

    .line 139
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "frequencyPref":Lcn/nubia/commonui/preference/ListPreference;
    .end local v4    # "pref":Landroid/preference/Preference;
    .end local v5    # "scanAlwaysAvailable":Landroid/preference/nubia/CheckBoxPreference;
    .end local v6    # "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    .end local v7    # "sleepPolicyPref":Lcn/nubia/commonui/preference/ListPreference;
    .end local v8    # "sortWayPref":Lcn/nubia/commonui/preference/ListPreference;
    .end local v11    # "wifiDirectPref":Landroid/preference/Preference;
    .end local v12    # "wpsPinPref":Landroid/preference/Preference;
    .end local v13    # "wpsPushPref":Landroid/preference/Preference;
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 148
    .restart local v5    # "scanAlwaysAvailable":Landroid/preference/nubia/CheckBoxPreference;
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 164
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v4    # "pref":Landroid/preference/Preference;
    .restart local v6    # "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

    if-eqz v14, :cond_0

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 204
    .restart local v2    # "frequencyPref":Lcn/nubia/commonui/preference/ListPreference;
    .restart local v10    # "value":I
    .restart local v11    # "wifiDirectPref":Landroid/preference/Preference;
    .restart local v12    # "wpsPinPref":Landroid/preference/Preference;
    .restart local v13    # "wpsPushPref":Landroid/preference/Preference;
    :cond_9
    const-string v14, "AdvancedWifiSettings"

    const-string v15, "Failed to fetch frequency band"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 207
    .end local v10    # "value":I
    :cond_a
    if-eqz v2, :cond_2

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3
.end method

.method private initWifiAssistantPreference(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    iget-object v5, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

    if-nez v5, :cond_0

    .line 252
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 244
    .local v0, "count":I
    new-array v3, v0, [Ljava/lang/String;

    .line 245
    .local v3, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 246
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 247
    .local v4, "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    iget-object v5, v4, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    aput-object v5, v3, v1

    .line 248
    add-int/lit8 v1, v1, 0x1

    .line 249
    goto :goto_1

    .line 250
    .end local v4    # "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v6}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/settings_ex/AppListSwitchPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshWifiInfo()V
    .locals 9

    .prologue
    const v8, 0x7f0c03c3

    const/4 v7, 0x0

    .line 390
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 391
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 393
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v6, "mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 394
    .local v5, "wifiMacAddressPref":Landroid/preference/Preference;
    if-eqz v5, :cond_0

    .line 395
    if-nez v3, :cond_3

    const/4 v2, 0x0

    .line 396
    .local v2, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .end local v2    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 400
    :cond_0
    const-string v6, "current_ip_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 401
    .local v4, "wifiIpAddressPref":Landroid/preference/Preference;
    if-eqz v4, :cond_2

    .line 402
    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "ipAddress":Ljava/lang/String;
    if-nez v1, :cond_1

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "ipAddress":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 407
    :cond_2
    return-void

    .line 395
    .end local v4    # "wifiIpAddressPref":Landroid/preference/Preference;
    :cond_3
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 396
    .restart local v2    # "macAddress":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    .locals 3
    .param p1, "frequencyBandPref"    # Landroid/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .param p1, "sleepPolicyPref"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 255
    if-eqz p2, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0a001d

    .line 259
    .local v2, "summaryArrayResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 261
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 263
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :goto_2
    return-void

    .line 257
    .restart local v3    # "values":[Ljava/lang/String;
    :cond_0
    const v2, 0x7f0a001c

    goto :goto_0

    .line 260
    .restart local v0    # "i":I
    .restart local v1    # "summaries":[Ljava/lang/String;
    .restart local v2    # "summaryArrayResId":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 270
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateSortWaySummary(Landroid/preference/Preference;I)V
    .locals 3
    .param p1, "sortWayPref"    # Landroid/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x68

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 110
    .local v0, "bar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 111
    const v1, 0x7f0c02d7

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setTitle(I)V

    .line 114
    :cond_0
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 115
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "network_score"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkScoreManager;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 120
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 103
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 306
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 307
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "key":Ljava/lang/String;
    const-string v8, "frequency_band"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 311
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 312
    .local v6, "value":I
    iget-object v8, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x1

    invoke-virtual {v8, v6, v11}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 313
    invoke-direct {p0, p1, v6}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v6    # "value":I
    :cond_0
    const-string v8, "sleep_policy"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 349
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 350
    .local v5, "stringValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "wifi_sleep_policy"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v8, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    invoke-direct {p0, p1, v5}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 361
    .end local v5    # "stringValue":Ljava/lang/String;
    :cond_1
    const-string v8, "sort_way"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 363
    :try_start_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 364
    .restart local v6    # "value":I
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "wifi_sort_way"

    invoke-static {v8, v11, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    invoke-direct {p0, p1, v6}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateSortWaySummary(Landroid/preference/Preference;I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 374
    .end local v6    # "value":I
    :cond_2
    const-string v8, "notify_open_networks"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 375
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_networks_available_notification_on"

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v9

    :goto_0
    invoke-static {v11, v12, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 380
    :cond_3
    const-string v8, "wifi_scan_always_available"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 381
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "wifi_scan_always_enabled"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_4

    move v10, v9

    :cond_4
    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    move v10, v9

    .line 386
    :goto_1
    return v10

    .line 314
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 315
    .local v2, "e":Ljava/lang/NumberFormatException;
    const v8, 0x7f0c02da

    invoke-static {v1, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 319
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    const-string v8, "wifi_assistant"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 320
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {v1, p2}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v7

    .line 322
    .local v7, "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v7, :cond_7

    .line 323
    iget-object v8, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    move v10, v9

    .line 324
    goto :goto_1

    .line 327
    :cond_7
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v3, "intent":Landroid/content/Intent;
    iget-object v8, v7, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 332
    iget-object v8, v7, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    iget-object v9, v7, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 336
    :cond_8
    const-string v8, "android.net.scoring.CHANGE_ACTIVE"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v8, "packageName"

    iget-object v9, v7, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 353
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v7    # "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 354
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const v8, 0x7f0c027f

    invoke-static {v1, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 367
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v2

    .line 368
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    move v8, v10

    .line 375
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 288
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 290
    .local v7, "key":Ljava/lang/String;
    const-string v0, "notify_open_networks"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/nubia/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v4, v8

    :cond_0
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    :goto_0
    return v8

    .line 294
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    const-string v0, "wifi_direct"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f0c028a

    const-string v6, ""

    move-object v3, v2

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    :cond_2
    const-string v0, "install_credentials"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/wifi/WifiCertSetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    move-object v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0

    .line 299
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v8

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 125
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 128
    return-void
.end method
