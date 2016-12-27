.class public Lcom/android/settings_ex/wifi/WifiSettings;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ex/search/Indexable;
.implements Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;
.implements Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiSettings$ForgetListener;,
        Lcom/android/settings_ex/wifi/WifiSettings$SaveListener;,
        Lcom/android/settings_ex/wifi/WifiSettings$ConnectListener;,
        Lcom/android/settings_ex/wifi/WifiSettings$WifiAddPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static savedNetworksExist:Z


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAccessPointsListGroup:Landroid/preference/PreferenceGroup;

.field private mActionBarBottom:Landroid/view/View;

.field private mAddNetwork:Landroid/net/wifi/WifiConfiguration;

.field private mAddNetworkSavedState:Landroid/os/Bundle;

.field private mAddPreferenceGroup:Landroid/preference/PreferenceGroup;

.field mAdvancedBtn:Landroid/widget/TextView;

.field private mBgThread:Landroid/os/HandlerThread;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mDlgModify:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mOpenSsid:Ljava/lang/String;

.field private mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

.field private mProgressHeader:Landroid/widget/ProgressBar;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field mScanBtn:Landroid/widget/TextView;

.field private mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mSetupWizardBottom:Landroid/view/View;

.field private mSetupWizardBtn:Landroid/widget/Button;

.field private mSetupWizardMode:Z

.field private mUserBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNfcDialogSavedState:Landroid/os/Bundle;

.field private mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

.field private mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1208
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$5;

    invoke-direct {v0}, Lcom/android/settings_ex/wifi/WifiSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings_ex/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 210
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;
    .param p1, "x1"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->setOffMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/PreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointsListGroup:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 988
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 991
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->removeAllPreference()V

    .line 992
    return-void
.end method

.method static canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1255
    if-nez p1, :cond_1

    .line 1289
    :cond_0
    :goto_0
    return v7

    .line 1259
    :cond_1
    const-string v9, "device_policy"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1264
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1265
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string v9, "android.software.device_admin"

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v2, :cond_2

    move v7, v8

    .line 1266
    goto :goto_0

    .line 1269
    :cond_2
    const/4 v3, 0x0

    .line 1270
    .local v3, "isConfigEligibleForLockdown":Z
    if-eqz v2, :cond_3

    .line 1271
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    .line 1272
    .local v0, "deviceOwnerPackageName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1274
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v5, v0, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 1276
    .local v1, "deviceOwnerUid":I
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v9, :cond_4

    move v3, v7

    .line 1282
    .end local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .end local v1    # "deviceOwnerUid":I
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 1286
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1287
    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string v9, "wifi_device_owner_configs_lockdown"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_5

    move v4, v7

    .line 1289
    .local v4, "isLockdownFeatureEnabled":Z
    :goto_2
    if-eqz v4, :cond_0

    move v7, v8

    goto :goto_0

    .end local v4    # "isLockdownFeatureEnabled":Z
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    .restart local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .restart local v1    # "deviceOwnerUid":I
    :cond_4
    move v3, v8

    .line 1276
    goto :goto_1

    .end local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .end local v1    # "deviceOwnerUid":I
    .restart local v6    # "resolver":Landroid/content/ContentResolver;
    :cond_5
    move v4, v8

    .line 1287
    goto :goto_2

    .line 1277
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    .restart local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1074
    :cond_0
    return-void
.end method

.method private dimissProgressDialog()V
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 1056
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 1059
    :cond_0
    return-void
.end method

.method private initOptionsView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 894
    const v0, 0x7f120458

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanBtn:Landroid/widget/TextView;

    .line 895
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 896
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings_ex/wifi/WifiSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiSettings$2;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    const v0, 0x7f120459

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAdvancedBtn:Landroid/widget/TextView;

    .line 908
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAdvancedBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 909
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAdvancedBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings_ex/wifi/WifiSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiSettings$3;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 918
    return-object p1
.end method

.method private initView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 880
    const v1, 0x102000a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 881
    .local v0, "list":Landroid/widget/ListView;
    const v1, 0x7f1200da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mActionBarBottom:Landroid/view/View;

    .line 882
    const v1, 0x7f12045a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardBottom:Landroid/view/View;

    .line 883
    const v1, 0x7f12045b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardBtn:Landroid/widget/Button;

    .line 884
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 885
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 887
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 888
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mActionBarBottom:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 890
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->initOptionsView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private isAvilible(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1425
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1426
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 1427
    .local v2, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1429
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1430
    const/4 v3, 0x1

    .line 1432
    :goto_1
    return v3

    .line 1427
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 1432
    goto :goto_1
.end method

.method static isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1244
    invoke-static {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeAllPreference()V
    .locals 2

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointsListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 923
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 924
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointsListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 925
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointsListGroup:Landroid/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 926
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 928
    return-void
.end method

.method private setOffMessage()V
    .locals 7

    .prologue
    const v6, 0x7f0c0292

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 939
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 983
    :goto_0
    return-void

    .line 943
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 948
    .local v0, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 949
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v5, "wifi_scan_always_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 952
    .local v3, "wifiScanningMode":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v3, :cond_3

    .line 956
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 981
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 982
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->removeAllPreference()V

    goto :goto_0

    .end local v3    # "wifiScanningMode":Z
    :cond_2
    move v3, v4

    .line 949
    goto :goto_1

    .line 959
    .restart local v3    # "wifiScanningMode":Z
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 960
    .local v1, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 961
    const-string v5, "\n\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    const v5, 0x7f0c027b

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 963
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    new-instance v6, Lcom/android/settings_ex/wifi/WifiSettings$4;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/wifi/WifiSettings$4;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-static {v5, v1, v6}, Lcom/android/settings_ex/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings_ex/LinkifyUtils$OnClickListener;)Z

    goto :goto_2
.end method

.method private showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 13
    .param p1, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 681
    if-eqz p1, :cond_1

    .line 682
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 683
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 684
    iget v8, v3, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 685
    .local v7, "userId":I
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 686
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 687
    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    iget v8, v3, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, "appName":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v4, v1, v8, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 691
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 692
    .local v5, "label":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 693
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 698
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "label":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    new-instance v2, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v2, v8}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 699
    .local v2, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0c025a

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    invoke-virtual {v8, v9, v12}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 720
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "userId":I
    :goto_1
    return-void

    .line 708
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v8, :cond_2

    .line 710
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->removeDialogAllowingStateLoss(I)V

    .line 711
    iput-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 715
    :cond_2
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 716
    iput-boolean p2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    .line 719
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialogAllowingStateLoss(I)V

    goto :goto_1

    .line 695
    .restart local v1    # "appName":Ljava/lang/String;
    .restart local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "userId":I
    :catch_0
    move-exception v8

    goto :goto_0
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 454
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v1

    .line 455
    .local v1, "wifiIsEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 457
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    const v3, 0x7f0c0285

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 461
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    if-eqz v2, :cond_0

    .line 462
    const/4 v2, 0x3

    const v3, 0x7f0c02dd

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 467
    :cond_0
    const/4 v2, 0x6

    const v3, 0x7f0c06fd

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 470
    const/4 v2, 0x5

    const v3, 0x7f0c028c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 472
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 473
    return-void

    .line 455
    nop

    :array_0
    .array-data 4
        0x7f010055
        0x7f010057
    .end array-data
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1138
    if-nez p1, :cond_0

    .line 1139
    const-string v0, "WifiSettings"

    const-string v1, "connect error because config is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :goto_0
    return-void

    .line 1142
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1143
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method createWifiEnabler()Lcom/android/settings_ex/wifi/WifiEnabler;
    .locals 3

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 410
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    new-instance v1, Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/settings_ex/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings_ex/widget/SwitchBar;)V

    return-object v1
.end method

.method forget()V
    .locals 3

    .prologue
    .line 1115
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1116
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 1131
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->resumeScanning()V

    .line 1134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1135
    :goto_1
    return-void

    .line 1124
    :cond_0
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1128
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1195
    const v0, 0x7f0c094b

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 477
    const/16 v0, 0x67

    return v0
.end method

.method protected initEmptyView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 931
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120457

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 935
    .local v0, "emptyView":Landroid/widget/TextView;
    return-object v0
.end method

.method public onAccessPointChanged(Lcom/android/settings_ex/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPoint;

    .prologue
    .line 1200
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->refresh()V

    .line 1201
    return-void
.end method

.method public onAccessPointsChanged()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 781
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    if-nez v12, :cond_1

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 784
    const v10, 0x7f0c0294

    invoke-direct {p0, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 787
    :cond_2
    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v9

    .line 789
    .local v9, "wifiState":I
    packed-switch v9, :pswitch_data_0

    .line 864
    :goto_1
    sget-boolean v12, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    iget-object v13, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    invoke-virtual {v13}, Lcom/android/settings_ex/wifi/WifiTracker;->doSavedNetworksExist()Z

    move-result v13

    if-eq v12, v13, :cond_0

    .line 865
    sget-boolean v12, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v12, :cond_a

    :goto_2
    sput-boolean v10, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    .line 866
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 792
    :pswitch_0
    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    invoke-virtual {v12}, Lcom/android/settings_ex/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v1

    .line 795
    .local v1, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->removeAllPreference()V

    .line 796
    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v12, :cond_3

    .line 797
    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 799
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointsListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 800
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 802
    const/4 v2, 0x0

    .line 803
    .local v2, "hasAvailableAccessPoints":Z
    const/4 v4, 0x0

    .line 804
    .local v4, "index":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 806
    .local v0, "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    .line 807
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-boolean v12, v0, Lcom/android/settings_ex/wifi/AccessPoint;->foundInScanResult:Z

    if-nez v12, :cond_5

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    if-nez v12, :cond_5

    .line 811
    :cond_5
    const/4 v2, 0x1

    .line 812
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 813
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    .line 814
    .local v6, "pref":Landroid/preference/Preference;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 816
    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointsListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v12, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move v4, v5

    .line 817
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_3

    .line 819
    .end local v6    # "pref":Landroid/preference/Preference;
    :cond_6
    new-instance v7, Lcom/android/settings_ex/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

    invoke-direct {v7, v0, v12, v13, v11}, Lcom/android/settings_ex/wifi/AccessPointPreference;-><init>(Lcom/android/settings_ex/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;Z)V

    .line 821
    .local v7, "preference":Lcom/android/settings_ex/wifi/AccessPointPreference;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v7, v4}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setOrder(I)V

    .line 823
    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity()I

    move-result v12

    if-eqz v12, :cond_7

    .line 826
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {p0, v12, v7}, Lcom/android/settings_ex/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 827
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 830
    :cond_7
    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointsListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v12, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 831
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/wifi/AccessPoint;->setListener(Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;)V

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_3

    .line 835
    .end local v0    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    .end local v7    # "preference":Lcom/android/settings_ex/wifi/AccessPointPreference;
    :cond_8
    new-instance v8, Lcom/android/settings_ex/wifi/WifiSettings$WifiAddPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v8, p0, v12}, Lcom/android/settings_ex/wifi/WifiSettings$WifiAddPreference;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/content/Context;)V

    .line 836
    .local v8, "wifiAddPreference":Lcom/android/settings_ex/wifi/WifiSettings$WifiAddPreference;
    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v12, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 838
    if-nez v2, :cond_9

    .line 839
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 841
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointsListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 843
    :cond_9
    invoke-virtual {p0, v11}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_1

    .line 849
    .end local v1    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    .end local v2    # "hasAvailableAccessPoints":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "index":I
    .end local v8    # "wifiAddPreference":Lcom/android/settings_ex/wifi/WifiSettings$WifiAddPreference;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->removeAllPreference()V

    .line 850
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_1

    .line 854
    :pswitch_2
    const v12, 0x7f0c026e

    invoke-direct {p0, v12}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    .line 855
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_1

    .line 859
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->setOffMessage()V

    .line 860
    invoke-virtual {p0, v11}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_1

    :cond_a
    move v10, v11

    .line 865
    goto/16 :goto_2

    .line 789
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 240
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 242
    new-instance v0, Lcom/android/settings_ex/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    .line 244
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 292
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$ConnectListener;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$ConnectListener;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 293
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$SaveListener;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$SaveListener;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 294
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$ForgetListener;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$ForgetListener;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 296
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 297
    .local v10, "powermanager":Landroid/os/PowerManager;
    const-string v0, "attention_lock"

    invoke-virtual {v10, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 299
    if-eqz p1, :cond_2

    .line 300
    const-string v0, "edit_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    .line 301
    const-string v0, "modify_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgModify:Z

    .line 302
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 307
    :cond_0
    const-string v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    const-string v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    .line 311
    :cond_1
    const-string v0, "wifi_add_network"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    const-string v0, "wifi_add_network"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetworkSavedState:Landroid/os/Bundle;

    .line 318
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 319
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "wifi_enable_next_on_connect"

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 320
    const-string v0, "wifi_enable_next_on_connect"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 322
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_3

    .line 323
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 326
    .local v7, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v7, :cond_3

    .line 327
    invoke-virtual {v7, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 329
    .local v8, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 335
    .end local v7    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v8    # "info":Landroid/net/NetworkInfo;
    :cond_3
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointsListGroup:Landroid/preference/PreferenceGroup;

    .line 336
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddPreferenceGroup:Landroid/preference/PreferenceGroup;

    .line 338
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->initEmptyView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 340
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v0, :cond_5

    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mActionBarBottom:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardBottom:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 347
    :goto_0
    const-string v0, "wifi_start_connect_ssid"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 348
    const-string v0, "wifi_start_connect_ssid"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 349
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAccessPointsChanged()V

    .line 351
    :cond_4
    return-void

    .line 344
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onAddNetworkEnd(ZLjava/lang/String;)V
    .locals 3
    .param p1, "ret"    # Z
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1037
    if-eqz p1, :cond_0

    .line 1038
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1039
    .local v0, "dialogIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1040
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/wifi/WifiAttentionDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1041
    sget-object v1, Lcom/android/settings_ex/wifi/WifiAttentionDialog;->ADDNETWORK_SSID_EXTRA:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1046
    .end local v0    # "dialogIntent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->dimissProgressDialog()V

    .line 1047
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 1049
    return-void
.end method

.method onAddNetworkPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1164
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x86

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1166
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 1167
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    .line 1168
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 1078
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 1079
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->forget()V

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1080
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->submit(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1310
    const/4 v2, 0x1

    .line 1312
    .local v2, "needSetupSim":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "cn.nubia.flycow"

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->isAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1314
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.flycow.BOOT_GUIDE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1315
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "cn.nubia.flycow"

    const-string v4, "cn.nubia.flycow.BootGuideActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    .line 1317
    const/4 v2, 0x0

    .line 1318
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1327
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "cn.nubia.account.SETUP_SIM_ACTION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1328
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "cn.nubia.accounts"

    const-string v4, "cn.nubia.accounts.AccountIntroActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1329
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    .line 1330
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1336
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 1319
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1321
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try to start BOOT_GUIDE e "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1331
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 1332
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1333
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try to start SETUP_SIM_ACTION e "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onConnectedChanged()V
    .locals 2

    .prologue
    .line 1025
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1030
    :goto_0
    return-void

    .line 1028
    :cond_0
    const-string v0, "WifiSettings"

    const-string v1, "onConnectedChanged activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 612
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v1, :cond_0

    .line 613
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 644
    :goto_0
    return v0

    .line 615
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 644
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 617
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-nez v1, :cond_2

    .line 622
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 623
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 625
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgModify:Z

    .line 626
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 631
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->forget()V

    goto :goto_0

    .line 635
    :pswitch_2
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgModify:Z

    .line 636
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 640
    :pswitch_3
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 225
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 226
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

    .line 228
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiSettings"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 230
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 608
    return-void
.end method

.method public onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 724
    packed-switch p1, :pswitch_data_0

    .line 771
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 726
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 727
    .local v3, "ap":Lcom/android/settings_ex/wifi/AccessPoint;
    if-nez v3, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 729
    new-instance v3, Lcom/android/settings_ex/wifi/AccessPoint;

    .end local v3    # "ap":Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 731
    .restart local v3    # "ap":Lcom/android/settings_ex/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 733
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 737
    :cond_0
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 738
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    .local v7, "hideForget":Z
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    iget-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgModify:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;ZZZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 743
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    goto :goto_0

    .end local v7    # "hideForget":Z
    :cond_2
    move v7, v6

    .line 738
    goto :goto_1

    .line 745
    .end local v3    # "ap":Lcom/android/settings_ex/wifi/AccessPoint;
    :pswitch_2
    new-instance v0, Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/settings_ex/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 747
    :pswitch_3
    new-instance v0, Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/android/settings_ex/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 749
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v0, :cond_4

    .line 750
    new-instance v0, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;IILandroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    .line 759
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_0

    .line 754
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 755
    new-instance v0, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_2

    .line 762
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_5

    .line 763
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetworkSavedState:Landroid/os/Bundle;

    const-string v1, "key_config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 764
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetworkSavedState:Landroid/os/Bundle;

    .line 766
    :cond_5
    new-instance v0, Lcom/android/settings_ex/wifi/WifiProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/settings_ex/wifi/WifiProgressDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/WifiTracker;Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 769
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    goto/16 :goto_0

    .line 724
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 441
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 447
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 444
    .local v0, "wifiIsEnabled":Z
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 445
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAdvancedBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 874
    const v1, 0x7f0401ee

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 875
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/android/settings_ex/wifi/WifiSettings;->initView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 235
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroy()V

    .line 236
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 355
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroyView()V

    .line 357
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->teardownSwitchBar()V

    .line 360
    :cond_0
    return-void
.end method

.method public onLevelChanged(Lcom/android/settings_ex/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPoint;

    .prologue
    .line 1205
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->onLevelChanged()V

    .line 1206
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f0c02d6

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 514
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    :goto_0
    return v6

    .line 516
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 569
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 518
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    move v6, v10

    .line 519
    goto :goto_0

    .line 535
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    move v6, v10

    .line 536
    goto :goto_0

    .line 538
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x88

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 539
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->forceScan()V

    move v6, v10

    .line 540
    goto :goto_0

    .line 542
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_1
    move v6, v10

    .line 545
    goto :goto_0

    .line 547
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v0, :cond_2

    .line 548
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    const-class v1, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v6, v10

    .line 556
    goto :goto_0

    .line 552
    :cond_2
    const-class v0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings_ex/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 558
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v0, :cond_3

    .line 559
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    const-class v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c02d7

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v6, v10

    .line 567
    goto :goto_0

    .line 563
    :cond_3
    const-class v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0c02d7

    move-object v4, p0

    move-object v5, p0

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings_ex/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 516
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 427
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 428
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->pause()V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->stopTracking()V

    .line 433
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 649
    instance-of v1, p2, Lcom/android/settings_ex/wifi/AccessPointPreference;

    if-eqz v1, :cond_4

    .line 650
    check-cast p2, Lcom/android/settings_ex/wifi/AccessPointPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 652
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 654
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 655
    sget-boolean v1, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v1, :cond_0

    .line 656
    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    .line 657
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 659
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 677
    :goto_0
    return v0

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 664
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_2

    .line 665
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->showDetails()V

    goto :goto_0

    .line 667
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 669
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgModify:Z

    .line 670
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 672
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_4
    instance-of v1, p2, Lcom/android/settings_ex/wifi/WifiSettings$WifiAddPreference;

    if-eqz v1, :cond_5

    .line 673
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    .line 675
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 416
    .local v0, "activity":Landroid/app/Activity;
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 417
    const-string v1, "dummy"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->removePreference(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiTracker;->startTracking()V

    .line 423
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 482
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 485
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    const-string v1, "edit_mode"

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 487
    const-string v1, "modify_mode"

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgModify:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 488
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 489
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 490
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 491
    const-string v1, "wifi_ap_state"

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 497
    .local v0, "savedState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;->saveState(Landroid/os/Bundle;)V

    .line 498
    const-string v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 502
    .end local v0    # "savedState":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 503
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    .line 504
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetworkSavedState:Landroid/os/Bundle;

    .line 505
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetworkSavedState:Landroid/os/Bundle;

    const-string v2, "key_config"

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 506
    const-string v1, "wifi_add_network"

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetworkSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 509
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 364
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onStart()V

    .line 367
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings_ex/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    .line 368
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    new-instance v1, Lcom/android/settings_ex/wifi/WifiSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiSettings$1;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiEnabler;->setSwitchBarChangedListener(Lcom/android/settings_ex/wifi/WifiEnabler$WifiSwitchBarChangedListener;)V

    .line 392
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 397
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onStop()V

    .line 398
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuickClickAgent;->removeDelayMsg()V

    .line 403
    :cond_0
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1003
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1004
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1006
    packed-switch p1, :pswitch_data_0

    .line 1021
    :goto_0
    :pswitch_0
    return-void

    .line 1013
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->setOffMessage()V

    .line 1014
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 1018
    :cond_0
    const-string v1, "WifiSettings"

    const-string v2, "onWifiStateChanged activity is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1006
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setProgressBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 996
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 998
    :cond_0
    return-void

    .line 996
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method submit(Lcom/android/settings_ex/wifi/WifiConfigController;)V
    .locals 3
    .param p1, "configController"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    .line 1089
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1091
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 1092
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1095
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 1111
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiTracker;->resumeScanning()V

    .line 1112
    return-void

    .line 1097
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->isModify()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1098
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1100
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1101
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v1, :cond_3

    .line 1102
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 1105
    :cond_3
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 1106
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/WifiTracker;->startCheckAddNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 1107
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0
.end method
