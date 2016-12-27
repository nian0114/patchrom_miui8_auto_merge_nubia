.class public Lcom/android/settings_ex/sim/SimSettings;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;,
        Lcom/android/settings_ex/sim/SimSettings$SimPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static sAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private static sProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;


# instance fields
.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:[I

.field private mContext:Landroid/content/Context;

.field private mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

.field private mNumSlots:I

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPrimarySubSelect:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCards:Landroid/preference/PreferenceCategory;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mUiccProvisionStatus:[I

.field private needUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 105
    sput-object v0, Lcom/android/settings_ex/sim/SimSettings;->sAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 106
    sput-object v0, Lcom/android/settings_ex/sim/SimSettings;->sProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 864
    new-instance v0, Lcom/android/settings_ex/sim/SimSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/sim/SimSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 88
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    .line 97
    iput-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 98
    iput-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 99
    iput-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 100
    iput-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/sim/SimSettings;->needUpdate:Z

    .line 108
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneCount:I

    .line 109
    iget v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mUiccProvisionStatus:[I

    .line 110
    iput-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 111
    iget v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mCallState:[I

    .line 112
    iget v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 161
    new-instance v0, Lcom/android/settings_ex/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/SimSettings$1;-><init>(Lcom/android/settings_ex/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 891
    new-instance v0, Lcom/android/settings_ex/sim/SimSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/SimSettings$3;-><init>(Lcom/android/settings_ex/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateSubscriptions()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->simEnablerUpdate()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/sim/SimSettings;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mCallState:[I

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;
    .param p1, "x1"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/sim/SimSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings_ex/sim/SimSettings;->needUpdate:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/sim/SimSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings_ex/sim/SimSettings;->needUpdate:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/sim/SimSettings;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mUiccProvisionStatus:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/sim/SimSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneCount:I

    return v0
.end method

.method static synthetic access$800()Lcn/nubia/commonui/app/AlertDialog;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings_ex/sim/SimSettings;->sAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertDialog;

    .prologue
    .line 68
    sput-object p0, Lcom/android/settings_ex/sim/SimSettings;->sAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$900()Lcn/nubia/commonui/app/ProgressDialog;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings_ex/sim/SimSettings;->sProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/app/ProgressDialog;

    .prologue
    .line 68
    sput-object p0, Lcom/android/settings_ex/sim/SimSettings;->sProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object p0
.end method

.method private disableDds()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 944
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "config_disable_dds_preference"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 947
    .local v0, "disableDds":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " config disable dds =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 948
    return v0

    .end local v0    # "disableDds":Z
    :cond_0
    move v0, v1

    .line 944
    goto :goto_0
.end method

.method private getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 852
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 854
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 980
    move v0, p1

    .line 981
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/settings_ex/sim/SimSettings$4;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/settings_ex/sim/SimSettings$4;-><init>(Lcom/android/settings_ex/sim/SimSettings;II)V

    aput-object v2, v1, p1

    .line 989
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, p1

    return-object v1
.end method

.method private initLTEPreference()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 911
    const-string v9, "persist.radio.primarycard"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 913
    .local v2, "isPrimarySubFeatureEnable":Z
    iget-object v9, p0, Lcom/android/settings_ex/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_primary_sub_setable"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v4, v7

    .line 916
    .local v4, "primarySetable":Z
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isPrimarySubFeatureEnable :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " primarySetable :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 919
    if-eqz v2, :cond_0

    if-nez v4, :cond_2

    .line 920
    :cond_0
    const-string v7, "sim_activities"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 922
    .local v5, "simActivities":Landroid/preference/PreferenceCategory;
    iget-object v7, p0, Lcom/android/settings_ex/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 941
    .end local v5    # "simActivities":Landroid/preference/PreferenceCategory;
    :goto_1
    return-void

    .end local v4    # "primarySetable":Z
    :cond_1
    move v4, v8

    .line 913
    goto :goto_0

    .line 925
    .restart local v4    # "primarySetable":Z
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_current_primary_sub"

    const/4 v11, -0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 927
    .local v0, "currentPrimarySlot":I
    iget-object v9, p0, Lcom/android/settings_ex/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_lte_sub_select_mode"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    move v1, v7

    .line 930
    .local v1, "isManualMode":Z
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init LTE primary slot : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isManualMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings_ex/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 932
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 933
    iget-object v7, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 935
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v6, :cond_4

    const/4 v3, 0x0

    .line 936
    .local v3, "lteSummary":Ljava/lang/CharSequence;
    :goto_3
    iget-object v7, p0, Lcom/android/settings_ex/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 940
    .end local v3    # "lteSummary":Ljava/lang/CharSequence;
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_4
    iget-object v7, p0, Lcom/android/settings_ex/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .end local v1    # "isManualMode":Z
    :cond_3
    move v1, v8

    .line 927
    goto :goto_2

    .line 935
    .restart local v1    # "isManualMode":Z
    .restart local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_4
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_3

    .line 938
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_5
    iget-object v7, p0, Lcom/android/settings_ex/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private isCallStateIdle()Z
    .locals 5

    .prologue
    .line 993
    const/4 v0, 0x1

    .line 994
    .local v0, "callStateIdle":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mCallState:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 995
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mCallState:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 996
    const/4 v0, 0x0

    .line 994
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 999
    :cond_1
    const-string v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCallStateIdle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return v0
.end method

.method private isSubProvisioned(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 885
    const/4 v0, 0x0

    .line 887
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mUiccProvisionStatus:[I

    aget v1, v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 888
    :cond_0
    return v0
.end method

.method private listen()V
    .locals 5

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 954
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 955
    const-string v3, "SimSettings"

    const-string v4, "Register for call state change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v3, :cond_0

    .line 957
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 958
    .local v1, "subId":I
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 956
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 962
    .end local v0    # "i":I
    .end local v1    # "subId":I
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 858
    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 326
    return-void
.end method

.method private simEnablerUpdate()V
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateAllOptions()V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/sim/SimSettings;->needUpdate:Z

    goto :goto_0
.end method

.method private unRegisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 967
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 968
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 969
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 970
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 967
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 973
    :cond_1
    return-void
.end method

.method private updateActivitesCategory()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateCellularDataValues()V

    .line 212
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateCallValues()V

    .line 213
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateSmsValues()V

    .line 214
    return-void
.end method

.method private updateAllOptions()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateSimSlotValues()V

    .line 197
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateActivitesCategory()V

    .line 198
    return-void
.end method

.method private updateCallValues()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 260
    const-string v4, "sim_calls"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 261
    .local v2, "simPref":Landroid/preference/Preference;
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 262
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 264
    .local v1, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 267
    .local v0, "allPhoneAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    const v4, 0x7f0c0144

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 268
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c09ac

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 272
    return-void

    .line 268
    :cond_0
    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 271
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private updateCellularDataValues()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 240
    const-string v6, "sim_cellular_data"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 241
    .local v2, "simPref":Landroid/preference/Preference;
    iget-object v6, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 242
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    const v6, 0x7f0c0143

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 245
    if-eqz v3, :cond_1

    .line 246
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 251
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->isCallStateIdle()Z

    move-result v0

    .line 252
    .local v0, "callStateIdle":Z
    const-string v6, "ril.cdma.inecmmode"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 255
    .local v1, "ecbMode":Z
    iget-object v6, p0, Lcom/android/settings_ex/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->disableDds()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    :goto_1
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 257
    return-void

    .line 247
    .end local v0    # "callStateIdle":Z
    .end local v1    # "ecbMode":Z
    :cond_1
    if-nez v3, :cond_0

    .line 248
    const v6, 0x7f0c09ae

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .restart local v0    # "callStateIdle":Z
    .restart local v1    # "ecbMode":Z
    :cond_2
    move v4, v5

    .line 255
    goto :goto_1
.end method

.method private updateSimSlotValues()V
    .locals 4

    .prologue
    .line 201
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    .line 202
    .local v2, "prefSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 203
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 204
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v3, v1, Lcom/android/settings_ex/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    .line 205
    check-cast v1, Lcom/android/settings_ex/sim/SimSettings$SimPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->update()V

    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 217
    const-string v5, "sim_sms"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 218
    .local v2, "simPref":Landroid/preference/Preference;
    const v5, 0x7f0c0145

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, "isSMSPrompt":Z
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v6, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 223
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    invoke-interface {v5}, Lcom/android/internal/telephony/IExtTelephony;->isSMSPromptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 229
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateSmsValues] isSMSPrompt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 230
    if-nez v1, :cond_0

    if-nez v3, :cond_1

    .line 231
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c09ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_2

    :goto_2
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 237
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException @isSMSPromptEnabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/sim/SimSettings;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 227
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NullPointerException @isSMSPromptEnabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/sim/SimSettings;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 236
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private updateSubscriptions()V
    .locals 7

    .prologue
    .line 171
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mNumSlots:I

    if-ge v0, v4, :cond_1

    .line 173
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 174
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v4, v1, Lcom/android/settings_ex/sim/SimSettings$SimPreference;

    if-eqz v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 179
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 181
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mNumSlots:I

    if-ge v0, v4, :cond_3

    .line 182
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 184
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    new-instance v2, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4, v3, v0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;-><init>(Lcom/android/settings_ex/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    .line 185
    .local v2, "simPreference":Lcom/android/settings_ex/sim/SimSettings$SimPreference;
    iget v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mNumSlots:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->setOrder(I)V

    .line 186
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/SimSettings;->isSubProvisioned(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 189
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    .end local v2    # "simPreference":Lcom/android/settings_ex/sim/SimSettings$SimPreference;
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateAllOptions()V

    .line 193
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0x58

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 141
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const v2, 0x7f080067

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 143
    const-string v2, "select_primary_sub"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 144
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mNumSlots:I

    .line 145
    const-string v2, "sim_cards"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mNumSlots:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/sim/SimSelectNotification;->cancelNotification(Landroid/content/Context;)V

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    const-string v0, "SimSettings"

    const-string v1, "on onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroy()V

    .line 159
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 285
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 286
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 287
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->unRegisterPhoneStateListener()V

    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 291
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v2, v1, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    if-eqz v2, :cond_0

    .line 293
    check-cast v1, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->cleanUpPendingDialogs()V

    .line 289
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 301
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 302
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/settings_ex/sim/SimDialogActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 305
    instance-of v3, p2, Lcom/android/settings_ex/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_1

    .line 306
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings_ex/sim/SimPreferenceDialog;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v2, "newIntent":Landroid/content/Intent;
    const-string v3, "slot_id"

    check-cast p2, Lcom/android/settings_ex/sim/SimSettings$SimPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    # invokes: Lcom/android/settings_ex/sim/SimSettings$SimPreference;->getSlotId()I
    invoke-static {p2}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->access$100(Lcom/android/settings_ex/sim/SimSettings$SimPreference;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    .line 322
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v5

    .line 309
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    const-string v3, "sim_cellular_data"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne v3, p2, :cond_2

    .line 310
    sget-object v3, Lcom/android/settings_ex/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 312
    :cond_2
    const-string v3, "sim_calls"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne v3, p2, :cond_3

    .line 313
    sget-object v3, Lcom/android/settings_ex/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 315
    :cond_3
    const-string v3, "sim_sms"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne v3, p2, :cond_4

    .line 316
    sget-object v3, Lcom/android/settings_ex/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 318
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    if-ne p2, v3, :cond_0

    .line 319
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 278
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->initLTEPreference()V

    .line 279
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateSubscriptions()V

    .line 280
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->listen()V

    .line 281
    return-void
.end method
