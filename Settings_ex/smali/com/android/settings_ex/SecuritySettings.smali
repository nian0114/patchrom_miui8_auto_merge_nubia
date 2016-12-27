.class public Lcom/android/settings_ex/SecuritySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private entries_tidy:[Ljava/lang/CharSequence;

.field private mAppLockPreference:Landroid/preference/Preference;

.field private mBiometricWeakLiveliness:Landroid/preference/nubia/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/PreferenceScreen;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoPref:Landroid/preference/Preference;

.field private mPowerButtonInstantlyLocks:Landroid/preference/nubia/CheckBoxPreference;

.field private mQuickStr:Ljava/lang/String;

.field private mQuickUnlockPattern:Landroid/database/ContentObserver;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/nubia/CheckBoxPreference;

.field private mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mToggleAppInstallation:Landroid/preference/nubia/CheckBoxPreference;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mUnlockQuick:Landroid/preference/PreferenceScreen;

.field private mUserExperiencePlan:Landroid/preference/nubia/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/nubia/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;

.field private values_tidy:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 148
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lock_after_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "visiblepattern"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "power_button_instantly_locks"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "toggle_install_applications"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 155
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    .line 1128
    new-instance v0, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings_ex/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mQuickStr:Ljava/lang/String;

    .line 194
    new-instance v0, Lcom/android/settings_ex/SecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SecuritySettings$1;-><init>(Lcom/android/settings_ex/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    new-instance v0, Lcom/android/settings_ex/SecuritySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SecuritySettings$2;-><init>(Lcom/android/settings_ex/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mHandler:Landroid/os/Handler;

    .line 900
    new-instance v0, Lcom/android/settings_ex/SecuritySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/SecuritySettings$3;-><init>(Lcom/android/settings_ex/SecuritySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mQuickUnlockPattern:Landroid/database/ContentObserver;

    .line 1131
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SecuritySettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SecuritySettings;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/SecuritySettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SecuritySettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/SecuritySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SecuritySettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->initUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/SecuritySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SecuritySettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->updateQuickSettingsPreferenceSummary()V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic access$500(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/android/settings_ex/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "x2"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    .line 91
    invoke-static {p0, p1, p2}, Lcom/android/settings_ex/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private addTrustAgentSettings(Landroid/preference/PreferenceGroup;)V
    .locals 10
    .param p1, "securityCategory"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v9, 0x0

    .line 615
    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 616
    .local v2, "hasSecurity":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v6, v7, v8}, Lcom/android/settings_ex/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 618
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 619
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    .line 620
    .local v0, "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 622
    .local v5, "trustAgentPreference":Landroid/preference/Preference;
    const-string v6, "trust_agent"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 623
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 626
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 627
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 628
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 631
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 633
    iget-boolean v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->disabledByAdministrator:Z

    if-eqz v6, :cond_1

    .line 634
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 635
    const v6, 0x7f0c0aa5

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 618
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 636
    :cond_1
    if-nez v2, :cond_0

    .line 637
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 638
    const v6, 0x7f0c0200

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 641
    .end local v0    # "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_2
    return-void
.end method

.method private changeSmsSummary(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 726
    const-string v3, "com.android.contacts"

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "cn.nubia.mms"

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 728
    :cond_0
    :try_start_0
    const-string v3, "com.android.contacts"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 730
    .local v0, "activityInfos":[Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 731
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.android.contacts.MmsConversationActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 733
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mUnlockQuick:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_1

    .line 734
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mUnlockQuick:Landroid/preference/PreferenceScreen;

    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 738
    .end local v0    # "activityInfos":[Landroid/content/pm/ActivityInfo;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 739
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 756
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void

    .line 741
    :cond_3
    const-string v3, "com.android.providers.telephony"

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 743
    :try_start_1
    const-string v3, "com.android.contacts"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 745
    .restart local v0    # "activityInfos":[Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 746
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.android.contacts.DialerActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 747
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mUnlockQuick:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_4

    .line 748
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mUnlockQuick:Landroid/preference/PreferenceScreen;

    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 745
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 752
    .end local v0    # "activityInfos":[Landroid/content/pm/ActivityInfo;
    .end local v2    # "i":I
    :catch_1
    move-exception v1

    .line 753
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 40

    .prologue
    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    .line 283
    .local v28, "root":Landroid/preference/PreferenceScreen;
    if-eqz v28, :cond_0

    .line 284
    invoke-virtual/range {v28 .. v28}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 286
    :cond_0
    const v35, 0x7f08005b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v36, v0

    invoke-static/range {v35 .. v36}, Lcom/android/settings_ex/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v27

    .line 291
    .local v27, "resid":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 317
    invoke-static {}, Lcom/android/settings_ex/Utils;->isAppLockEnable()Z

    move-result v35

    if-eqz v35, :cond_1

    .line 318
    const v5, 0x7f080009

    .line 319
    .local v5, "appLockId":I
    const v35, 0x7f080009

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 320
    const-string v35, "app_lock"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    check-cast v35, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mAppLockPreference:Landroid/preference/Preference;

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mAppLockPreference:Landroid/preference/Preference;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 325
    .end local v5    # "appLockId":I
    :cond_1
    const v24, 0x7f08003e

    .line 326
    .local v24, "quickId":I
    const v35, 0x7f08003e

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 327
    const-string v35, "lock_quick_pattern"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    check-cast v35, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mUnlockQuick:Landroid/preference/PreferenceScreen;

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "keyguard_quick_setting"

    invoke-static/range {v35 .. v36}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 330
    .local v21, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 331
    .local v22, "pm":Landroid/content/pm/PackageManager;
    const/16 v25, 0x0

    .line 332
    .local v25, "quickStr":Ljava/lang/String;
    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v35

    if-gtz v35, :cond_3

    .line 333
    :cond_2
    const v35, 0x7f0c0d1b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 336
    :cond_3
    const/16 v35, 0x0

    :try_start_0
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 337
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v4}, Lcom/android/settings_ex/SecuritySettings;->getQuickApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->isQuickUnlockPreference()Z

    move-result v35

    if-eqz v35, :cond_4

    .line 343
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mUnlockQuick:Landroid/preference/PreferenceScreen;

    move-object/from16 v35, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 347
    const-string v35, "security_category"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/PreferenceGroup;

    .line 349
    .local v29, "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v29, :cond_5

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addTrustAgentSettings(Landroid/preference/PreferenceGroup;)V

    .line 355
    :cond_5
    const-string v35, "lock_after_timeout"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    check-cast v35, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/PreferenceScreen;

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/PreferenceScreen;

    move-object/from16 v35, v0

    if-eqz v35, :cond_6

    .line 357
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->setupLockAfterPreference()V

    .line 358
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 361
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->setTrustPreference()V

    .line 363
    const-string v35, "visiblepattern"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    check-cast v35, Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mVisiblePattern:Landroid/preference/nubia/CheckBoxPreference;

    .line 366
    const-string v35, "power_button_instantly_locks"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    check-cast v35, Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/nubia/CheckBoxPreference;

    .line 368
    const-string v35, "trust_agent"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    .line 369
    .local v32, "trustAgentPreference":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v35, v0

    if-eqz v35, :cond_7

    if-eqz v32, :cond_7

    invoke-virtual/range {v32 .. v32}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/lang/CharSequence;->length()I

    move-result v35

    if-lez v35, :cond_7

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v35, v0

    const v36, 0x7f0c0501

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v32 .. v32}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v39

    aput-object v39, v37, v38

    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 378
    :cond_7
    const v35, 0x7f080060

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 381
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v31

    .line 382
    .local v31, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v20

    .line 384
    .local v20, "numPhones":I
    const/16 v35, 0x1

    move/from16 v0, v20

    move/from16 v1, v35

    if-le v0, v1, :cond_1a

    .line 388
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v10, v0, [Z

    fill-array-data v10, :array_0

    .line 389
    .local v10, "disableLock":[Z
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Z

    move-object/from16 v26, v0

    fill-array-data v26, :array_1

    .line 390
    .local v26, "removeLock":[Z
    const-string v35, "sim_lock"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 391
    .local v6, "category":Landroid/preference/PreferenceCategory;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v12, v0, :cond_9

    .line 397
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getVirtualCardSlot()I

    move-result v35

    move/from16 v0, v35

    if-eq v12, v0, :cond_8

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v35

    if-eqz v35, :cond_8

    .line 401
    const/16 v35, 0x0

    aput-boolean v35, v26, v12

    .line 391
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 338
    .end local v6    # "category":Landroid/preference/PreferenceCategory;
    .end local v10    # "disableLock":[Z
    .end local v12    # "i":I
    .end local v20    # "numPhones":I
    .end local v26    # "removeLock":[Z
    .end local v29    # "securityCategory":Landroid/preference/PreferenceGroup;
    .end local v31    # "tm":Landroid/telephony/TelephonyManager;
    .end local v32    # "trustAgentPreference":Landroid/preference/Preference;
    :catch_0
    move-exception v11

    .line 339
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 412
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "category":Landroid/preference/PreferenceCategory;
    .restart local v10    # "disableLock":[Z
    .restart local v12    # "i":I
    .restart local v20    # "numPhones":I
    .restart local v26    # "removeLock":[Z
    .restart local v29    # "securityCategory":Landroid/preference/PreferenceGroup;
    .restart local v31    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v32    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_9
    const/16 v35, 0x0

    aget-boolean v35, v26, v35

    if-eqz v35, :cond_14

    const/16 v35, 0x1

    aget-boolean v35, v26, v35

    if-eqz v35, :cond_14

    if-eqz v6, :cond_14

    .line 413
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 462
    .end local v10    # "disableLock":[Z
    .end local v12    # "i":I
    .end local v26    # "removeLock":[Z
    :cond_a
    :goto_2
    const-string v35, "show_password"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    check-cast v35, Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/preference/nubia/CheckBoxPreference;

    .line 464
    const-string v35, "user_experience_plan_switch_key"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    check-cast v35, Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mUserExperiencePlan:Landroid/preference/nubia/CheckBoxPreference;

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mUserExperiencePlan:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 466
    const-string v35, "credentials_reset"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 469
    const-string v35, "sim_lock"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    if-eqz v35, :cond_e

    .line 471
    const/4 v13, 0x0

    .line 472
    .local v13, "iccLock":Landroid/preference/Preference;
    const/4 v14, 0x0

    .line 473
    .local v14, "iccLock1":Landroid/preference/Preference;
    const/4 v15, 0x0

    .line 474
    .local v15, "iccLock2":Landroid/preference/Preference;
    const-string v35, "sim_lock_settings_default"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    if-eqz v35, :cond_1f

    .line 475
    const-string v35, "sim_lock_settings_default"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 480
    :goto_3
    const/16 v35, 0x1

    move/from16 v0, v20

    move/from16 v1, v35

    if-le v0, v1, :cond_21

    .line 481
    if-eqz v14, :cond_b

    .line 482
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 483
    .local v16, "intent":Landroid/content/Intent;
    const-string v35, "com.android.settings"

    const-string v36, "com.android.settings.IccLockSettings"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const/16 v35, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 485
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 487
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_b
    if-eqz v15, :cond_c

    .line 488
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 489
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v35, "com.android.settings"

    const-string v36, "com.android.settings.IccLockSettings"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const/16 v35, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 491
    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 494
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_c
    if-eqz v13, :cond_e

    .line 495
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 496
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v35, "com.android.settings"

    const-string v36, "com.android.settings.IccLockSettings"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getVirtualCardSlot()I

    move-result v34

    .line 498
    .local v34, "virtualCardSlot":I
    const/16 v35, -0x1

    move/from16 v0, v35

    move/from16 v1, v34

    if-eq v0, v1, :cond_d

    .line 499
    if-nez v34, :cond_20

    const/16 v19, 0x1

    .line 500
    .local v19, "noVirtualCardSlot":I
    :goto_4
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 502
    .end local v19    # "noVirtualCardSlot":I
    :cond_d
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 516
    .end local v13    # "iccLock":Landroid/preference/Preference;
    .end local v14    # "iccLock1":Landroid/preference/Preference;
    .end local v15    # "iccLock2":Landroid/preference/Preference;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v34    # "virtualCardSlot":I
    :cond_e
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v35

    const-string v36, "user"

    invoke-virtual/range {v35 .. v36}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/UserManager;

    .line 517
    .local v33, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 518
    const-string v35, "no_config_credentials"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_23

    .line 519
    const-string v35, "credential_storage_type"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 520
    .local v7, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v35, v0

    if-eqz v35, :cond_f

    .line 522
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v35

    if-eqz v35, :cond_22

    const v30, 0x7f0c0783

    .line 525
    .local v30, "storageSummaryRes":I
    :goto_6
    move/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 539
    .end local v7    # "credentialStorageType":Landroid/preference/Preference;
    .end local v30    # "storageSummaryRes":I
    :cond_f
    :goto_7
    const-string v35, "device_admin_category"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 541
    .local v9, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string v35, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    check-cast v35, Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/nubia/CheckBoxPreference;

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v35, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v36, v0

    sget v35, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v35

    if-nez v35, :cond_24

    const/16 v35, 0x1

    :goto_8
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 547
    const-string v35, "no_install_unknown_sources"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_10

    const-string v35, "no_install_apps"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_11

    .line 549
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 553
    :cond_11
    const-string v35, "advanced_security"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 555
    .local v3, "advancedCategory":Landroid/preference/PreferenceGroup;
    if-eqz v3, :cond_12

    .line 556
    const-string v35, "manage_trust_agents"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 557
    .local v17, "manageAgents":Landroid/preference/Preference;
    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v35, v0

    sget v36, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v35 .. v36}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v35

    if-nez v35, :cond_12

    .line 558
    const/16 v35, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 559
    const v35, 0x7f0c0200

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 562
    .end local v17    # "manageAgents":Landroid/preference/Preference;
    :cond_12
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v35

    const-class v36, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    const/16 v38, 0x1

    invoke-virtual/range {v35 .. v38}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 570
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_9
    sget-object v35, Lcom/android/settings_ex/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v12, v0, :cond_25

    .line 571
    sget-object v35, Lcom/android/settings_ex/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v35, v35, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 572
    .local v23, "pref":Landroid/preference/Preference;
    if-eqz v23, :cond_13

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 570
    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 416
    .end local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .end local v9    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v23    # "pref":Landroid/preference/Preference;
    .end local v33    # "um":Landroid/os/UserManager;
    .restart local v10    # "disableLock":[Z
    .restart local v26    # "removeLock":[Z
    :cond_14
    if-eqz v6, :cond_15

    const/16 v35, 0x0

    aget-boolean v35, v26, v35

    if-nez v35, :cond_15

    const/16 v35, 0x1

    aget-boolean v35, v26, v35

    if-eqz v35, :cond_16

    :cond_15
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->displayDualCardUi()Z

    move-result v35

    if-eqz v35, :cond_18

    .line 418
    :cond_16
    const-string v35, "sim_lock_settings_default"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 419
    const/16 v35, 0x0

    aget-boolean v35, v10, v35

    if-eqz v35, :cond_17

    .line 420
    const-string v35, "sim_lock_settings_card1"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 422
    :cond_17
    const/16 v35, 0x1

    aget-boolean v35, v10, v35

    if-eqz v35, :cond_a

    .line 423
    const-string v35, "sim_lock_settings_card2"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 426
    :cond_18
    if-eqz v6, :cond_19

    .line 427
    const-string v35, "sim_lock_settings_card1"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 428
    const-string v35, "sim_lock_settings_card2"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 430
    :cond_19
    const/16 v35, 0x0

    aget-boolean v35, v10, v35

    if-eqz v35, :cond_a

    const/16 v35, 0x1

    aget-boolean v35, v10, v35

    if-eqz v35, :cond_a

    .line 431
    const-string v35, "sim_lock"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 437
    .end local v6    # "category":Landroid/preference/PreferenceCategory;
    .end local v10    # "disableLock":[Z
    .end local v12    # "i":I
    .end local v26    # "removeLock":[Z
    :cond_1a
    const-string v35, "sim_lock"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 438
    .restart local v6    # "category":Landroid/preference/PreferenceCategory;
    if-eqz v6, :cond_1b

    .line 439
    const-string v35, "sim_lock_settings_card1"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 440
    const-string v35, "sim_lock_settings_card2"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 446
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SecuritySettings;->mIsPrimary:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1c

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v35

    if-eqz v35, :cond_1c

    const/16 v35, -0x1

    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getVirtualCardSlot()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1d

    .line 449
    :cond_1c
    const-string v35, "sim_lock"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 452
    :cond_1d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v35

    if-nez v35, :cond_a

    .line 456
    :cond_1e
    const-string v35, "sim_lock"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 477
    .restart local v13    # "iccLock":Landroid/preference/Preference;
    .restart local v14    # "iccLock1":Landroid/preference/Preference;
    .restart local v15    # "iccLock2":Landroid/preference/Preference;
    :cond_1f
    const-string v35, "sim_lock_settings_card1"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 478
    const-string v35, "sim_lock_settings_card2"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    goto/16 :goto_3

    .line 499
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v34    # "virtualCardSlot":I
    :cond_20
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 506
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v34    # "virtualCardSlot":I
    :cond_21
    if-eqz v13, :cond_e

    .line 507
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 508
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v35, "com.android.settings"

    const-string v36, "com.android.settings.IccLockSettings"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 522
    .end local v13    # "iccLock":Landroid/preference/Preference;
    .end local v14    # "iccLock1":Landroid/preference/Preference;
    .end local v15    # "iccLock2":Landroid/preference/Preference;
    .end local v16    # "intent":Landroid/content/Intent;
    .restart local v7    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v33    # "um":Landroid/os/UserManager;
    :cond_22
    const v30, 0x7f0c0784

    goto/16 :goto_6

    .line 526
    :catch_1
    move-exception v11

    .line 527
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 531
    .end local v7    # "credentialStorageType":Landroid/preference/Preference;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_23
    const-string v35, "credentials_management"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 533
    .local v8, "credentialsManager":Landroid/preference/PreferenceGroup;
    const-string v35, "credentials_reset"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 534
    const-string v35, "credentials_install"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 535
    const-string v35, "credential_storage_type"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 546
    .end local v8    # "credentialsManager":Landroid/preference/PreferenceGroup;
    .restart local v9    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    :cond_24
    const/16 v35, 0x0

    goto/16 :goto_8

    .line 578
    .restart local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .restart local v12    # "i":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v18

    .line 579
    .local v18, "msg":Landroid/os/Message;
    const/16 v35, 0x2

    move/from16 v0, v35

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->what:I

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 582
    return-object v28

    .line 388
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 389
    nop

    :array_1
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method private disableUnusableTimeouts(J)V
    .locals 9
    .param p1, "maxTimeout"    # J

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 875
    .local v0, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 876
    .local v6, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 878
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_1

    .line 879
    aget-object v7, v6, v1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 880
    .local v4, "timeout":J
    cmp-long v7, v4, p1

    if-gtz v7, :cond_0

    .line 881
    aget-object v7, v0, v1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    aget-object v7, v6, v1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 885
    .end local v4    # "timeout":J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    array-length v8, v0

    if-ne v7, v8, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    array-length v8, v6

    if-eq v7, v8, :cond_3

    .line 886
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    iput-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->entries_tidy:[Ljava/lang/CharSequence;

    .line 887
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    iput-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->values_tidy:[Ljava/lang/CharSequence;

    .line 889
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 890
    return-void

    .line 889
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private static getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 682
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v8, Lcom/android/settings_ex/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v9, 0x80

    invoke-virtual {p0, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 685
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v8, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v8}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v1

    .line 687
    .local v1, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p2, v10}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_1

    move v0, v7

    .line 690
    .local v0, "disableTrustAgents":Z
    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 691
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 692
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 693
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v8, :cond_2

    .line 691
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 687
    .end local v0    # "disableTrustAgents":Z
    .end local v2    # "i":I
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 694
    .restart local v0    # "disableTrustAgents":Z
    .restart local v2    # "i":I
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-static {v3, p0}, Lcom/android/settings_ex/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 695
    invoke-static {p0, v3}, Lcom/android/settings_ex/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v6

    .line 697
    .local v6, "trustAgentComponentInfo":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v8, v6, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_0

    invoke-static {v3}, Lcom/android/settings_ex/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v6, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 701
    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/android/settings_ex/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {p2, v10, v8}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_3

    .line 703
    iput-boolean v7, v6, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->disabledByAdministrator:Z

    .line 705
    :cond_3
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    .end local v2    # "i":I
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "trustAgentComponentInfo":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_4
    return-object v5
.end method

.method private getQuickApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 715
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, "quickStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mUnlockQuick:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 717
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mUnlockQuick:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 719
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/SecuritySettings;->changeSmsSummary(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    .end local v1    # "quickStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecuritySettings"

    const-string v3, "Unable to get applicationInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "resid":I
    sget v1, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    const v0, 0x7f08005b

    .line 272
    :goto_0
    return v0

    .line 257
    :cond_0
    sget v1, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 259
    :sswitch_0
    const v0, 0x7f080062

    .line 260
    goto :goto_0

    .line 263
    :sswitch_1
    const v0, 0x7f080064

    .line 264
    goto :goto_0

    .line 268
    :sswitch_2
    const v0, 0x7f080061

    goto :goto_0

    .line 257
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

.method private initUI()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1291
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 1292
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 1296
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mVisiblePattern:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 1297
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mVisiblePattern:Landroid/preference/nubia/CheckBoxPreference;

    sget v5, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 1299
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 1300
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/nubia/CheckBoxPreference;

    sget v5, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 1303
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 1304
    iget-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "show_password"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 1308
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mUserExperiencePlan:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 1309
    iget-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mUserExperiencePlan:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "user_experience_plan"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 1313
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v2, :cond_5

    .line 1315
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v5}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    :cond_5
    :goto_3
    return-void

    :cond_6
    move v2, v4

    .line 1304
    goto :goto_0

    :cond_7
    move v2, v4

    .line 1309
    goto :goto_1

    :cond_8
    move v3, v4

    .line 1315
    goto :goto_2

    .line 1316
    :catch_0
    move-exception v0

    .line 1317
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1318
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 767
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isQuickUnlockPreference()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 759
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 760
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.android.systemui"

    const-string v5, "cn.nubia.lockscreen.settings.QuickSettingsActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 762
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 763
    .local v2, "reInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 773
    .local v0, "mContext":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 779
    .local v1, "um":Landroid/os/UserManager;
    if-eqz v1, :cond_2

    const-string v2, "no_install_unknown_sources"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 783
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "install_non_market_apps"

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setTrustPreference()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 858
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "trust_agent"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 860
    .local v1, "preference":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    move v0, v2

    .line 862
    .local v0, "isTrustPreference":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "is_trust_prfererence"

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 866
    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "trust_agment_preference_title"

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 871
    :cond_0
    return-void

    .end local v0    # "isTrustPreference":Z
    :cond_1
    move v0, v3

    .line 860
    goto :goto_0

    .restart local v0    # "isTrustPreference":Z
    :cond_2
    move v2, v3

    .line 862
    goto :goto_1
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 819
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 821
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 822
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 824
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 828
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 830
    :cond_0
    return-void

    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 821
    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 836
    .local v2, "currentTimeout":J
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 837
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0008

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    .line 838
    .local v8, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 839
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_1

    .line 840
    aget-object v9, v8, v4

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 841
    .local v6, "timeout":J
    cmp-long v9, v2, v6

    if-ltz v9, :cond_0

    .line 842
    move v0, v4

    .line 839
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 845
    .end local v6    # "timeout":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "trust_agent"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 846
    .local v5, "preference":Landroid/preference/Preference;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 847
    iget-object v9, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/PreferenceScreen;

    const v10, 0x7f0c016a

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings_ex/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 855
    :cond_2
    :goto_1
    return-void

    .line 850
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/PreferenceScreen;

    const v10, 0x7f0c0168

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings_ex/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 851
    if-nez v0, :cond_2

    .line 852
    iget-object v9, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/PreferenceScreen;

    const v10, 0x7f0c0e8f

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateQuickSettingsPreferenceSummary()V
    .locals 6

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "keyguard_quick_setting"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 910
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 911
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings_ex/SecuritySettings;->getQuickApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v1

    .line 913
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 789
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c045a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0510

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 796
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1122
    const v0, 0x7f0c0959

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 225
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1030
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1031
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1034
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 800
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 801
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 802
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 803
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 804
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 807
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 801
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 234
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 236
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 238
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 240
    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 244
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 811
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 812
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 815
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 956
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 957
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mQuickUnlockPattern:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 958
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1063
    const/4 v2, 0x1

    .line 1064
    .local v2, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 1076
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v3, "visiblepattern"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1077
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget v4, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 1117
    :cond_0
    :goto_0
    return v2

    .line 1078
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v3, "biometric_weak_liveliness"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1079
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1085
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 1086
    new-instance v3, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    goto :goto_0

    .line 1098
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v3, "power_button_instantly_locks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1099
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget v5, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    goto :goto_0

    .line 1100
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v3, "show_password"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1101
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "show_password"

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1103
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget v4, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    goto :goto_0

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    move v3, v5

    .line 1101
    goto :goto_1

    .line 1104
    :cond_5
    const-string v3, "toggle_install_applications"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1105
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1106
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 1107
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->warnAppInstallation()V

    .line 1109
    const/4 v2, 0x0

    goto :goto_0

    .line 1111
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/settings_ex/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_0

    .line 1113
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    const-string v3, "user_experience_plan_switch_key"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1114
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "user_experience_plan"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_2
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    .line 970
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 971
    .local v10, "key":Ljava/lang/String;
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 972
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0c01c3

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 1022
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 974
    :cond_1
    const-string v0, "app_lock"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 975
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 976
    .local v9, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "cn.nubia.applockmanager"

    const-string v2, "cn.nubia.applockmanager.AppLockSettings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 978
    :try_start_0
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/SecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 980
    :catch_0
    move-exception v7

    .line 981
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    const-string v0, "SecuritySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity failed: Intent.activityName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 983
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v0, "lock_quick_pattern"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 984
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 985
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v0, "com.android.systemui"

    const-string v1, "cn.nubia.lockscreen.settings.QuickSettingsActivity"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v9, v0}, Lcom/android/settings_ex/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 988
    :catch_1
    move-exception v7

    .line 989
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "SecuritySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to start activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 991
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v0, "biometric_weak_improve_matching"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 992
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 1002
    :cond_4
    const-string v0, "trust_agent"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1003
    new-instance v8, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v8, v0, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1005
    .local v8, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 1006
    const/16 v0, 0x7e

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v6

    .line 1008
    .local v6, "confirmationLaunched":Z
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1011
    iput-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 1013
    .end local v6    # "confirmationLaunched":Z
    .end local v8    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    :cond_5
    const-string v0, "lock_after_timeout"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1014
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1015
    .local v5, "extras":Landroid/os/Bundle;
    const-string v0, "entries"

    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->entries_tidy:[Ljava/lang/CharSequence;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 1016
    const-string v0, "values"

    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->values_tidy:[Ljava/lang/CharSequence;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 1017
    const-class v0, Lcom/android/settings_ex/TimeOutLocking;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0167

    const/16 v4, 0x64

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 1020
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 919
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 923
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 924
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "keyguard_quick_setting"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings;->mQuickUnlockPattern:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 927
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 928
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mVisiblePattern:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 929
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mVisiblePattern:Landroid/preference/nubia/CheckBoxPreference;

    sget v5, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 932
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 933
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/nubia/CheckBoxPreference;

    sget v5, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 937
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 938
    iget-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "show_password"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 942
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v2, :cond_3

    .line 944
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v5}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->updateOwnerInfo()V

    .line 952
    return-void

    :cond_4
    move v2, v4

    .line 938
    goto :goto_0

    :cond_5
    move v3, v4

    .line 944
    goto :goto_1

    .line 945
    :catch_0
    move-exception v0

    .line 946
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 947
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 894
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 895
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 896
    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 898
    :cond_0
    return-void
.end method

.method public updateOwnerInfo()V
    .locals 3

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 962
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 966
    :cond_0
    return-void

    .line 962
    :cond_1
    const v0, 0x7f0c016f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
