.class public Lcom/android/settings_ex/msim/NBMsimSettings;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "NBMsimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings_ex/msim/INBMsimView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/msim/NBMsimSettings$DataEnableSettingObserver;,
        Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;,
        Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;
    }
.end annotation


# static fields
.field private static final NUBIA_ROAMING_ENABLE:Z

.field private static mMaskDialog:Lcn/nubia/commonui/app/ProgressDialog;


# instance fields
.field private mCallState:[I

.field private mCardCategory:Landroid/preference/PreferenceCategory;

.field private mCardCommonCategory:Landroid/preference/PreferenceCategory;

.field private mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

.field private mCardMore:[Landroid/preference/Preference;

.field private mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

.field private mCardOperator:[Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

.field private mDataObserver:Lcom/android/settings_ex/msim/NBMsimSettings$DataEnableSettingObserver;

.field private mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

.field private mImsMgr:Lcom/android/ims/ImsManager;

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMainHandler:Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;

.field private mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

.field private mNBOperAndNumDialog:Lcom/android/settings_ex/msim/NBOperAndNumDialog;

.field private mNBTeleMgr:Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

.field private mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

.field private mNubiaRoaming:Landroid/preference/Preference;

.field private final mPreferenceChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoveCardCommon:I

.field private mRemoved:[Z

.field private mRoaming:[Z

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

.field private mTM:Landroid/telephony/TelephonyManager;

.field private mVirtualCard:[Z

.field private mVolteCheckBox:Landroid/preference/nubia/CheckBoxPreference;

.field private mVolteDivider:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    const-string v2, "ro.nubia.softsim_roaming.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/settings_ex/msim/NBMsimSettings;->NUBIA_ROAMING_ENABLE:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 237
    const-string v0, "no_config_msim"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 95
    new-array v0, v1, [Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    .line 96
    new-array v0, v1, [Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    .line 102
    new-array v0, v1, [Lcn/nubia/commonui/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    .line 103
    new-array v0, v1, [Landroid/preference/Preference;

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardMore:[Landroid/preference/Preference;

    .line 104
    new-array v0, v1, [Landroid/preference/Preference;

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardOperator:[Landroid/preference/Preference;

    .line 110
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoved:[Z

    .line 111
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVirtualCard:[Z

    .line 112
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRoaming:[Z

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoveCardCommon:I

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mSubInfoList:Ljava/util/List;

    .line 153
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCallState:[I

    .line 161
    new-instance v0, Lcom/android/settings_ex/msim/NBMsimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/msim/NBMsimSettings$1;-><init>(Lcom/android/settings_ex/msim/NBMsimSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    new-instance v0, Lcom/android/settings_ex/msim/NBMsimSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/msim/NBMsimSettings$2;-><init>(Lcom/android/settings_ex/msim/NBMsimSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mPreferenceChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 238
    return-void
.end method

.method private DismissCardNetworkTypeList(I)V
    .locals 1
    .param p1, "cardNumber"    # I

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcn/nubia/commonui/preference/ListPreference;->onActivityDestroy()V

    .line 646
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMainHandler:Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/msim/NBMsimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateVolteCheckBox()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/msim/NBMsimSettings;)[Lcn/nubia/commonui/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/msim/NBMsimSettings;)Landroid/preference/nubia/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVolteCheckBox:Landroid/preference/nubia/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/msim/NBMsimSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings_ex/msim/NBMsimSettings;->onVolteSwitchChanged(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/msim/NBMsimSettings;)[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/msim/NBMsimSettings;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/msim/NBMsimSettings;->handlerSetPreferNetwork(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/msim/NBMsimSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings_ex/msim/NBMsimSettings;->handlerGetPreferNetwork(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/msim/NBMsimSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings_ex/msim/NBMsimSettings;->handlerSetPhoneNum(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/msim/NBMsimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateNetworkEntries()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/msim/NBMsimSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateEnabler(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/msim/NBMsimSettings;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRoaming:[Z

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/msim/NBMsimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/msim/NBMsimSettings;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCallState:[I

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/msim/NBMsimSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mSubInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/msim/NBMsimSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/msim/NBMsimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/msim/NBMsimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->registerPhoneStateListener()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/msim/NBMsimSettings;)[Landroid/preference/nubia/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/msim/NBMsimSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings_ex/msim/NBMsimSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/INBMsimPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    return-object v0
.end method

.method private addCardPreference(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 551
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoved:[Z

    aget-boolean v0, v0, p1

    if-ne v0, v3, :cond_8

    .line 552
    sget-boolean v0, Lcom/android/settings_ex/msim/NBMsimSettings;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v0}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getVirtualCardSlot()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 553
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 555
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardMore:[Landroid/preference/Preference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 567
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoved:[Z

    aput-boolean v2, v0, p1

    .line 568
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateDataSwitch()V

    .line 569
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/android/settings_ex/msim/INBMsimPresenter;->getPreferredNetworkModeFromDB(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateNetworkType(II)V

    .line 572
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateOperatorAndNum(I)V

    .line 573
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateDualCardSelected()V

    .line 594
    :cond_0
    :goto_3
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->removeCardCommonCategoryIfNeed()V

    .line 595
    return-void

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    goto :goto_0

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    goto :goto_1

    .line 558
    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :goto_4
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 560
    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :goto_5
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 562
    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :goto_6
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardOperator:[Landroid/preference/Preference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 564
    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :goto_7
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardMore:[Landroid/preference/Preference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 558
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    goto :goto_4

    .line 560
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    goto :goto_5

    .line 562
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    goto :goto_6

    .line 564
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    goto :goto_7

    .line 575
    :cond_8
    sget-boolean v0, Lcom/android/settings_ex/msim/NBMsimSettings;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v0}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getVirtualCardSlot()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 576
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVirtualCard:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 577
    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :goto_8
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 579
    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :goto_9
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardOperator:[Landroid/preference/Preference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 581
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVirtualCard:[Z

    aput-boolean v3, v0, p1

    goto :goto_3

    .line 577
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    goto :goto_8

    .line 579
    :cond_a
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    goto :goto_9

    .line 583
    :cond_b
    sget-boolean v0, Lcom/android/settings_ex/msim/NBMsimSettings;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v0}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getVirtualCardSlot()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVirtualCard:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 586
    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :goto_a
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 588
    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :goto_b
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardOperator:[Landroid/preference/Preference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 590
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVirtualCard:[Z

    aput-boolean v2, v0, p1

    goto/16 :goto_3

    .line 586
    :cond_c
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    goto :goto_a

    .line 588
    :cond_d
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    goto :goto_b
.end method

.method private getPhoneRes(I)[Ljava/lang/CharSequence;
    .locals 5
    .param p1, "resId"    # I

    .prologue
    .line 792
    const/4 v1, 0x0

    .line 793
    .local v1, "sequence":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 795
    .local v0, "phoneContext":Landroid/content/Context;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    const-string v3, "com.android.phone"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 799
    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 800
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 802
    :cond_0
    return-object v1

    .line 797
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 890
    new-instance v0, Lcom/android/settings_ex/msim/NBMsimSettings$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings_ex/msim/NBMsimSettings$4;-><init>(Lcom/android/settings_ex/msim/NBMsimSettings;II)V

    .line 913
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private handlerGetPreferNetwork(I)V
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    .line 745
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v3, p1}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getPreferredNetworkType(I)I

    move-result v1

    .line 746
    .local v1, "networkMode":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 747
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4, p1}, Lcom/android/settings_ex/msim/INBMsimPresenter;->getPreferredNetworkModeFromDB(Landroid/content/Context;I)I

    move-result v2

    .line 749
    .local v2, "settingsMode":I
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    invoke-interface {v3}, Lcom/android/settings_ex/msim/INBMsimPresenter;->getDataSlot()I

    move-result v0

    .line 750
    .local v0, "dataSlot":I
    if-eq v2, v1, :cond_0

    if-ne p1, v0, :cond_0

    .line 752
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4, p1, v1}, Lcom/android/settings_ex/msim/INBMsimPresenter;->setPreferredNetworkModeDB(Landroid/content/Context;II)V

    .line 755
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMainHandler:Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMainHandler:Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, p1, v1}, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->sendMessage(Landroid/os/Message;)Z

    .line 758
    .end local v0    # "dataSlot":I
    .end local v2    # "settingsMode":I
    :cond_1
    return-void
.end method

.method private handlerSetPhoneNum(I)V
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 957
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v3, p1}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->isCDMACard(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 958
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getNum(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;I)I

    .line 971
    :goto_0
    return-void

    .line 962
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v3

    int-to-long v0, v3

    .line 963
    .local v0, "subId":J
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 964
    .local v2, "value":Landroid/content/ContentValues;
    const-string v3, "number"

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getNum(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlerSetPreferNetwork(II)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "networkMode"    # I

    .prologue
    .line 731
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/settings_ex/msim/INBMsimPresenter;->setPreferredNetworkModeDB(Landroid/content/Context;II)V

    .line 733
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v1, p1, p2}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->setPreferredNetworkType(II)Z

    move-result v0

    .line 734
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 735
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->sendMessage(Landroid/os/Message;)Z

    .line 742
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    invoke-interface {v1, p1, p2}, Lcom/android/settings_ex/msim/INBMsimPresenter;->saveUserNetworkMode(II)V

    .line 739
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMainHandler:Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMainHandler:Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private initMsimPresenter()V
    .locals 4

    .prologue
    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtk feature open: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "phoneEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/msim/NBMsimSettings;->log(Ljava/lang/String;)V

    .line 975
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 976
    new-instance v0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;-><init>(Lcom/android/settings_ex/msim/INBMsimView;Landroid/content/Context;[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;[Landroid/preference/nubia/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    .line 980
    :goto_0
    return-void

    .line 978
    :cond_0
    new-instance v0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;-><init>(Lcom/android/settings_ex/msim/INBMsimView;Landroid/content/Context;[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;[Landroid/preference/nubia/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    goto :goto_0
.end method

.method private initPreference()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 336
    const-string v1, "card_two"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/msim/NBMsimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    .line 337
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "card_one_network"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/nubia/CheckBoxPreference;

    aput-object v1, v2, v4

    .line 339
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "card_two_network"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/nubia/CheckBoxPreference;

    aput-object v1, v2, v5

    .line 341
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardOperator:[Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "card_one_operator"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    aput-object v2, v1, v4

    .line 343
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardOperator:[Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "card_two_operator"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    aput-object v2, v1, v5

    .line 345
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "card_one_network_type"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/preference/ListPreference;

    aput-object v1, v2, v4

    .line 347
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "card_two_network_type"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/preference/ListPreference;

    aput-object v1, v2, v5

    .line 349
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardMore:[Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "card_one_more"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    aput-object v2, v1, v4

    .line 351
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardMore:[Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "card_two_more"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    aput-object v2, v1, v5

    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    new-instance v2, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;-><init>(Landroid/content/Context;I)V

    aput-object v2, v1, v0

    .line 355
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->setOrder(I)V

    .line 356
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mPreferenceChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->setPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 358
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mPreferenceChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 360
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mPreferenceChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 364
    new-instance v1, Landroid/preference/nubia/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVolteCheckBox:Landroid/preference/nubia/CheckBoxPreference;

    .line 365
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVolteCheckBox:Landroid/preference/nubia/CheckBoxPreference;

    const v2, 0x7f0c0cce

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setTitle(I)V

    .line 366
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVolteCheckBox:Landroid/preference/nubia/CheckBoxPreference;

    const v2, 0x7f0c0ccf

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    .line 367
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVolteCheckBox:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mPreferenceChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 368
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVolteCheckBox:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setOrder(I)V

    .line 369
    new-instance v1, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNubiaRoaming:Landroid/preference/Preference;

    .line 370
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNubiaRoaming:Landroid/preference/Preference;

    const v2, 0x7f0c0cd0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 371
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNubiaRoaming:Landroid/preference/Preference;

    const v2, 0x7f0c0cd1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 372
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNubiaRoaming:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mPreferenceChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 373
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNubiaRoaming:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 374
    new-instance v1, Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVolteDivider:Landroid/preference/PreferenceCategory;

    .line 375
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVolteDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 376
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 377
    const-string v1, "card_help"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/msim/NBMsimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCommonCategory:Landroid/preference/PreferenceCategory;

    .line 378
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1033
    const-string v0, "NBMsimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    return-void
.end method

.method private onVolteSwitchChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 917
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 918
    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volte_vt_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 922
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mImsMgr:Lcom/android/ims/ImsManager;

    if-eqz v1, :cond_0

    .line 923
    invoke-direct {p0, p1}, Lcom/android/settings_ex/msim/NBMsimSettings;->setAdvanced4GMode(Z)V

    .line 925
    :cond_0
    return-void

    .line 917
    .end local v0    # "value":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerPhoneStateListener()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 858
    new-array v3, v6, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 859
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_2

    .line 860
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 861
    .local v2, "subIdtemp":[I
    if-eqz v2, :cond_0

    .line 862
    const/4 v3, 0x0

    aget v1, v2, v3

    .line 863
    .local v1, "subId":I
    if-lez v1, :cond_1

    .line 864
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerPhoneStateListener slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->log(Ljava/lang/String;)V

    .line 865
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 867
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 859
    .end local v1    # "subId":I
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 871
    .restart local v1    # "subId":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_1

    .line 875
    .end local v1    # "subId":I
    .end local v2    # "subIdtemp":[I
    :cond_2
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 848
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 849
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 850
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 851
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 852
    const-string v1, "cn.nubia.intent.action.ACTION_OPERATOR_NUM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 853
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 854
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    invoke-interface {v1}, Lcom/android/settings_ex/msim/INBMsimPresenter;->registerReceiverAndObserver()V

    .line 855
    return-void
.end method

.method private removeCardCommonCategoryIfNeed()V
    .locals 2

    .prologue
    .line 526
    iget v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoveCardCommon:I

    if-nez v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCommonCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCommonCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private removeCardPreference(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoved:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCardPreference slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/msim/NBMsimSettings;->log(Ljava/lang/String;)V

    .line 536
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 538
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 540
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardOperator:[Landroid/preference/Preference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 542
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardMore:[Landroid/preference/Preference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 544
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->switchToVirtualCard(Z)V

    .line 545
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->removeCardCommonCategoryIfNeed()V

    .line 546
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoved:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 548
    :cond_0
    return-void

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    goto :goto_0

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    goto :goto_1

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    goto :goto_2

    .line 542
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    goto :goto_3
.end method

.method private removeNormalCardPreference(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 519
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 521
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardOperator:[Landroid/preference/Preference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 523
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    goto :goto_0

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCategory:Landroid/preference/PreferenceCategory;

    goto :goto_1
.end method

.method private setAdvanced4GMode(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    .line 983
    const/4 v0, 0x0

    .line 985
    .local v0, "ImsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "com.android.ims.ImsManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 989
    :goto_0
    const/4 v2, 0x0

    .line 990
    .local v2, "setAdvanced4GMode":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 992
    :try_start_1
    const-string v3, "setAdvanced4GMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 993
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 998
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 1000
    :try_start_2
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mImsMgr:Lcom/android/ims/ImsManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1005
    :cond_1
    :goto_2
    return-void

    .line 986
    .end local v2    # "setAdvanced4GMode":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 987
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassNotFoundException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 994
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "setAdvanced4GMode":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 995
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchMethodException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1001
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 1002
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAdvanced4GMode failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 878
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 879
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterPhoneStateListener slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/msim/NBMsimSettings;->log(Ljava/lang/String;)V

    .line 882
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 878
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 886
    :cond_1
    return-void
.end method

.method private updateEnabler(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 462
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v1

    .line 463
    .local v1, "subId":I
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getSubStateDB(I)Z

    move-result v0

    .line 464
    .local v0, "isChecked":Z
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    invoke-interface {v2, p1}, Lcom/android/settings_ex/msim/INBMsimPresenter;->isNotSupportOperator(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/msim/NBCardUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->setChecked(Z)V

    .line 470
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateNetworkEntries()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    .line 775
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 776
    iget-object v6, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoved:[Z

    aget-boolean v6, v6, v3

    if-nez v6, :cond_0

    .line 777
    iget-object v6, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v6, v3}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->isCDMACard(I)Z

    move-result v4

    .line 778
    .local v4, "isCdma":Z
    if-eqz v4, :cond_1

    move v0, v5

    .line 780
    .local v0, "cardType":I
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v6, v0}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->get3G4GEntries(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPhoneRes(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 781
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v6, v0}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getEntryValues(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPhoneRes(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 783
    .local v2, "entryValues":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 784
    iget-object v6, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v6, v6, v3

    invoke-virtual {v6, v1}, Lcn/nubia/commonui/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 785
    iget-object v6, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v6, v6, v3

    invoke-virtual {v6, v2}, Lcn/nubia/commonui/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 775
    .end local v0    # "cardType":I
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v2    # "entryValues":[Ljava/lang/CharSequence;
    .end local v4    # "isCdma":Z
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 778
    .restart local v4    # "isCdma":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 789
    .end local v4    # "isCdma":Z
    :cond_2
    return-void
.end method

.method private updateNetworkType()V
    .locals 3

    .prologue
    .line 761
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 762
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/android/settings_ex/msim/INBMsimPresenter;->getPreferredNetworkModeFromDB(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateNetworkType(II)V

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 765
    :cond_0
    return-void
.end method

.method private updateNubiaRoamingDisplay()V
    .locals 2

    .prologue
    .line 509
    sget-boolean v0, Lcom/android/settings_ex/msim/NBMsimSettings;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCommonCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNubiaRoaming:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 511
    iget v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoveCardCommon:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoveCardCommon:I

    .line 515
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->removeCardCommonCategoryIfNeed()V

    .line 516
    return-void

    .line 513
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoveCardCommon:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoveCardCommon:I

    goto :goto_0
.end method

.method private updateVolteCheckBox()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 473
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateVolteCheckBoxDiaplay()V

    .line 474
    const/4 v1, 0x0

    .line 475
    .local v1, "enabled_ims":Z
    sget-boolean v4, Lcom/android/settings_ex/msim/NBMsimSettings;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v5}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getVirtualCardSlot()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 476
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "volte_vt_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 479
    .local v0, "enabled":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVolteCheckBox enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/msim/NBMsimSettings;->log(Ljava/lang/String;)V

    .line 480
    if-ne v0, v2, :cond_1

    move v1, v2

    .line 481
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVolteCheckBox:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 485
    .end local v0    # "enabled":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVolteCheckBox:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 486
    return-void

    .restart local v0    # "enabled":I
    :cond_1
    move v1, v3

    .line 480
    goto :goto_0

    .line 483
    .end local v0    # "enabled":I
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVolteCheckBox:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateVolteCheckBoxDiaplay()V
    .locals 5

    .prologue
    .line 489
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/settings_ex/msim/INBMsimPresenter;->getCardState(I)I

    move-result v0

    .line 490
    .local v0, "cardState_one":I
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/settings_ex/msim/INBMsimPresenter;->getCardState(I)I

    move-result v1

    .line 491
    .local v1, "cardState_two":I
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 494
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNBTeleMgr:Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

    invoke-virtual {v3}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->isSupportIms()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 495
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCommonCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVolteCheckBox:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 496
    iget v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoveCardCommon:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoveCardCommon:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->removeCardCommonCategoryIfNeed()V

    .line 506
    return-void

    .line 498
    :catch_0
    move-exception v2

    .line 499
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 502
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardCommonCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVolteCheckBox:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 503
    iget v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoveCardCommon:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoveCardCommon:I

    goto :goto_0
.end method


# virtual methods
.method public dismissMaskDialog()V
    .locals 2

    .prologue
    .line 1020
    sget-object v1, Lcom/android/settings_ex/msim/NBMsimSettings;->mMaskDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 1021
    sget-object v1, Lcom/android/settings_ex/msim/NBMsimSettings;->mMaskDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1023
    :try_start_0
    sget-object v1, Lcom/android/settings_ex/msim/NBMsimSettings;->mMaskDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 1024
    const/4 v1, 0x0

    sput-object v1, Lcom/android/settings_ex/msim/NBMsimSettings;->mMaskDialog:Lcn/nubia/commonui/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 295
    const/16 v0, 0x58

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 695
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->getCardId()I

    move-result v1

    invoke-static {}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->getEditOperName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/msim/NBCardUtils;->setOperator(Landroid/content/Context;ILjava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->getCardId()I

    move-result v1

    invoke-static {}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->getEditNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/msim/NBCardUtils;->setPhoneNum(Landroid/content/Context;ILjava/lang/String;)V

    .line 700
    invoke-static {}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->getCardId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateOperatorAndNum(I)V

    .line 701
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    const/16 v2, 0x8

    invoke-static {}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->getCardId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->sendMessage(Landroid/os/Message;)Z

    .line 704
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNBOperAndNumDialog:Lcom/android/settings_ex/msim/NBOperAndNumDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->dismiss()V

    .line 707
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 300
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 301
    const-string v2, "onCreate"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/msim/NBMsimSettings;->log(Ljava/lang/String;)V

    .line 302
    const v2, 0x7f080042

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/msim/NBMsimSettings;->addPreferencesFromResource(I)V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    .line 304
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mImsMgr:Lcom/android/ims/ImsManager;

    .line 305
    invoke-static {}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getInstance()Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNBTeleMgr:Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

    .line 306
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/msim/NBMsimSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mTM:Landroid/telephony/TelephonyManager;

    .line 307
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->initPreference()V

    .line 308
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->initMsimPresenter()V

    .line 309
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    .line 310
    new-instance v2, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;-><init>(Lcom/android/settings_ex/msim/NBMsimSettings;Lcom/android/settings_ex/msim/NBMsimSettings$1;)V

    iput-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMainHandler:Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;

    .line 311
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "MsimSettings"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 313
    new-instance v2, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;-><init>(Lcom/android/settings_ex/msim/NBMsimSettings;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    .line 314
    new-instance v2, Lcom/android/settings_ex/msim/NBMsimSettings$DataEnableSettingObserver;

    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMainHandler:Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings_ex/msim/NBMsimSettings$DataEnableSettingObserver;-><init>(Lcom/android/settings_ex/msim/NBMsimSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataObserver:Lcom/android/settings_ex/msim/NBMsimSettings$DataEnableSettingObserver;

    .line 315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 316
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoved:[Z

    aput-boolean v5, v2, v1

    .line 317
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRoaming:[Z

    aput-boolean v5, v2, v1

    .line 318
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCallState:[I

    aput v5, v2, v1

    .line 319
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    invoke-interface {v2, v1}, Lcom/android/settings_ex/msim/INBMsimPresenter;->getCardState(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    invoke-direct {p0, v1}, Lcom/android/settings_ex/msim/NBMsimSettings;->removeCardPreference(I)V

    .line 323
    :cond_0
    sget-boolean v2, Lcom/android/settings_ex/msim/NBMsimSettings;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v2}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getVirtualCardSlot()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 324
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVirtualCard:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 325
    invoke-direct {p0, v1}, Lcom/android/settings_ex/msim/NBMsimSettings;->removeNormalCardPreference(I)V

    .line 315
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_2
    sget-boolean v2, Lcom/android/settings_ex/msim/NBMsimSettings;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v2}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getVirtualCardSlot()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 327
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mVirtualCard:[Z

    aput-boolean v5, v2, v1

    goto :goto_1

    .line 330
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateNetworkEntries()V

    .line 331
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateVolteCheckBoxDiaplay()V

    .line 332
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateNubiaRoamingDisplay()V

    .line 333
    return-void
.end method

.method public onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 711
    packed-switch p1, :pswitch_data_0

    .line 727
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 713
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNBOperAndNumDialog:Lcom/android/settings_ex/msim/NBOperAndNumDialog;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNBOperAndNumDialog:Lcom/android/settings_ex/msim/NBOperAndNumDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->dismiss()V

    .line 716
    :cond_0
    new-instance v0, Lcom/android/settings_ex/msim/NBOperAndNumDialog;

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)V

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNBOperAndNumDialog:Lcom/android/settings_ex/msim/NBOperAndNumDialog;

    .line 718
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNBOperAndNumDialog:Lcom/android/settings_ex/msim/NBOperAndNumDialog;

    goto :goto_0

    .line 720
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNBOperAndNumDialog:Lcom/android/settings_ex/msim/NBOperAndNumDialog;

    if-eqz v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNBOperAndNumDialog:Lcom/android/settings_ex/msim/NBOperAndNumDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->dismiss()V

    .line 723
    :cond_1
    new-instance v0, Lcom/android/settings_ex/msim/NBOperAndNumDialog;

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)V

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNBOperAndNumDialog:Lcom/android/settings_ex/msim/NBOperAndNumDialog;

    .line 725
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNBOperAndNumDialog:Lcom/android/settings_ex/msim/NBOperAndNumDialog;

    goto :goto_0

    .line 711
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 666
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroy()V

    .line 667
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    invoke-virtual {v0}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    invoke-virtual {v0}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 670
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 657
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 658
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 659
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->unregisterPhoneStateListener()V

    .line 660
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataObserver:Lcom/android/settings_ex/msim/NBMsimSettings$DataEnableSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/msim/NBMsimSettings$DataEnableSettingObserver;->unregister()V

    .line 661
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    invoke-interface {v0}, Lcom/android/settings_ex/msim/INBMsimPresenter;->unRegisterReceiverAndObserver()V

    .line 662
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 600
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardMore:[Landroid/preference/Preference;

    aget-object v3, v3, v5

    if-ne p2, v3, :cond_1

    .line 601
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.phone.NBMSimMobileNetworkSubSettings"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v1, v5}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 605
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/msim/NBMsimSettings;->startActivity(Landroid/content/Intent;)V

    .line 639
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 606
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardMore:[Landroid/preference/Preference;

    aget-object v3, v3, v6

    if-ne p2, v3, :cond_2

    .line 607
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.phone.NBMSimMobileNetworkSubSettings"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {v1, v6}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 611
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/msim/NBMsimSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 612
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardOperator:[Landroid/preference/Preference;

    aget-object v3, v3, v5

    if-ne p2, v3, :cond_3

    .line 613
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/msim/NBMsimSettings;->showDialogAllowingStateLoss(I)V

    goto :goto_0

    .line 614
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardOperator:[Landroid/preference/Preference;

    aget-object v3, v3, v6

    if-ne p2, v3, :cond_4

    .line 615
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->showDialogAllowingStateLoss(I)V

    goto :goto_0

    .line 616
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v3, v3, v5

    if-ne p2, v3, :cond_5

    .line 617
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4, v5}, Lcom/android/settings_ex/msim/INBMsimPresenter;->getPreferredNetworkModeFromDB(Landroid/content/Context;I)I

    move-result v2

    .line 619
    .local v2, "settingsMode":I
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v3, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 621
    .end local v2    # "settingsMode":I
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v3, v3, v6

    if-ne p2, v3, :cond_6

    .line 622
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4, v6}, Lcom/android/settings_ex/msim/INBMsimPresenter;->getPreferredNetworkModeFromDB(Landroid/content/Context;I)I

    move-result v2

    .line 624
    .restart local v2    # "settingsMode":I
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v3, v3, v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 626
    .end local v2    # "settingsMode":I
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNubiaRoaming:Landroid/preference/Preference;

    if-ne p2, v3, :cond_0

    .line 627
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 628
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.redteamobile.roaming"

    const-string v4, "com.redteamobile.roaming.activites.WelcomeActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 632
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 633
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 634
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/msim/NBMsimSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 636
    :cond_7
    const-string v3, "start NubiaRoaming failed: not exist"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 382
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 383
    const-string v4, "onResume"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/msim/NBMsimSettings;->log(Ljava/lang/String;)V

    .line 384
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mSubInfoList:Ljava/util/List;

    .line 386
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateDataSwitch()V

    .line 387
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->registerReceiver()V

    .line 388
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->registerPhoneStateListener()V

    .line 389
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataObserver:Lcom/android/settings_ex/msim/NBMsimSettings$DataEnableSettingObserver;

    invoke-virtual {v4}, Lcom/android/settings_ex/msim/NBMsimSettings$DataEnableSettingObserver;->register()V

    .line 390
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateNubiaRoamingDisplay()V

    .line 391
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    .line 392
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateVolteCheckBox()V

    .line 393
    invoke-virtual {p0, v2, v7}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateCardStatePreference(IZ)V

    .line 394
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateOperatorAndNum(I)V

    .line 395
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5, v2}, Lcom/android/settings_ex/msim/INBMsimPresenter;->getPreferredNetworkModeFromDB(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateNetworkType(II)V

    .line 397
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mTM:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    .line 399
    .local v3, "voiceNetType":I
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mTM:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v1

    .line 401
    .local v1, "dataNetType":I
    if-nez v1, :cond_0

    move v0, v3

    .line 404
    .local v0, "chosenNetType":I
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->updateDataNetType(I)V

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "chosenNetType":I
    :cond_0
    move v0, v1

    .line 401
    goto :goto_1

    .line 406
    .end local v1    # "dataNetType":I
    .end local v3    # "voiceNetType":I
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    invoke-virtual {v5, v8, v6, v6}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    invoke-virtual {v5, v8, v7, v6}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->sendMessage(Landroid/os/Message;)Z

    .line 410
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    invoke-interface {v4}, Lcom/android/settings_ex/msim/INBMsimPresenter;->isCapabilitySwitching()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 411
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0c09

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/msim/NBMsimSettings;->showMaskDialog(Ljava/lang/CharSequence;)V

    .line 413
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/msim/NBMsimSettings;->DismissCardNetworkTypeList(I)V

    .line 651
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/msim/NBMsimSettings;->DismissCardNetworkTypeList(I)V

    .line 652
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onStop()V

    .line 653
    return-void
.end method

.method public showDataAlertDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 673
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    const-string v4, "NBMsimSettings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 675
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "switch_data_alert"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 676
    .local v0, "neverSwitchPop":I
    if-nez v0, :cond_0

    .line 677
    new-instance v2, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 678
    .local v2, "switchDialog":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v3, 0x7f0c0c0f

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 679
    const v3, 0x7f0c0c11

    new-instance v4, Lcom/android/settings_ex/msim/NBMsimSettings$3;

    invoke-direct {v4, p0, v1}, Lcom/android/settings_ex/msim/NBMsimSettings$3;-><init>(Lcom/android/settings_ex/msim/NBMsimSettings;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 689
    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 691
    .end local v2    # "switchDialog":Lcn/nubia/commonui/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public showMaskDialog(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 1008
    sget-object v0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMaskDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1009
    sget-object v0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMaskDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 1011
    :cond_0
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0d01c0

    invoke-direct {v0, v1, v2}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMaskDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 1012
    sget-object v0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMaskDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1013
    sget-object v0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMaskDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/ProgressDialog;->setCancelable(Z)V

    .line 1014
    sget-object v0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMaskDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1015
    sget-object v0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMaskDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1016
    sget-object v0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMaskDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 1017
    return-void
.end method

.method public updateCardStatePreference(IZ)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "updateChecked"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 431
    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    invoke-interface {v5, p1}, Lcom/android/settings_ex/msim/INBMsimPresenter;->getCardState(I)I

    move-result v0

    .line 432
    .local v0, "cardState":I
    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings_ex/msim/NBCardUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    invoke-interface {v5, p1}, Lcom/android/settings_ex/msim/INBMsimPresenter;->isNotSupportOperator(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 435
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/msim/NBMsimSettings;->removeCardPreference(I)V

    .line 436
    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v5, v5, p1

    invoke-virtual {v5, v4}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->setEnabled(Z)V

    .line 437
    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v5, v5, p1

    invoke-virtual {v5, v4}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->setChecked(Z)V

    .line 450
    :cond_1
    :goto_0
    sget-boolean v5, Lcom/android/settings_ex/msim/NBMsimSettings;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v5}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getVirtualCardSlot()I

    move-result v5

    if-ne p1, v5, :cond_6

    move v1, v3

    .line 451
    .local v1, "isVirtualCardSlot":Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v5, v5, p1

    invoke-virtual {v5, v1}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->switchToVirtualCard(Z)V

    .line 452
    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCallState:[I

    aget v5, v5, v4

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCallState:[I

    aget v5, v5, v3

    if-nez v5, :cond_7

    move v2, v3

    .line 454
    .local v2, "noCall":Z
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    invoke-interface {v5}, Lcom/android/settings_ex/msim/INBMsimPresenter;->getPrimaryState()I

    move-result v5

    if-eq v5, v3, :cond_2

    if-nez v2, :cond_3

    .line 456
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v3, v3, p1

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->setEnabled(Z)V

    .line 458
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->updateCardView(I)V

    .line 459
    return-void

    .line 439
    .end local v1    # "isVirtualCardSlot":Z
    .end local v2    # "noCall":Z
    :cond_4
    if-eqz v0, :cond_5

    .line 440
    invoke-direct {p0, p1}, Lcom/android/settings_ex/msim/NBMsimSettings;->removeCardPreference(I)V

    .line 441
    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->setEnabled(Z)V

    .line 446
    :goto_3
    if-eqz p2, :cond_1

    .line 447
    invoke-direct {p0, p1}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateEnabler(I)V

    goto :goto_0

    .line 443
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/settings_ex/msim/NBMsimSettings;->addCardPreference(I)V

    .line 444
    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_6
    move v1, v4

    .line 450
    goto :goto_1

    .restart local v1    # "isVirtualCardSlot":Z
    :cond_7
    move v2, v4

    .line 452
    goto :goto_2
.end method

.method public updateDataSwitch()V
    .locals 3

    .prologue
    .line 838
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    invoke-interface {v1}, Lcom/android/settings_ex/msim/INBMsimPresenter;->getPrimaryState()I

    move-result v1

    if-nez v1, :cond_1

    .line 839
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 840
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoved:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 841
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    invoke-interface {v2, v0}, Lcom/android/settings_ex/msim/INBMsimPresenter;->isDataChecked(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 839
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 845
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public updateDualCardSelected()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 807
    iget-object v8, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    invoke-interface {v8}, Lcom/android/settings_ex/msim/INBMsimPresenter;->getPrimaryState()I

    move-result v8

    if-ne v8, v6, :cond_1

    .line 808
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v9, :cond_a

    .line 809
    iget-object v6, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoved:[Z

    aget-boolean v6, v6, v2

    if-nez v6, :cond_0

    .line 810
    iget-object v6, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    aget-object v6, v6, v2

    invoke-virtual {v6, v7}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 811
    iget-object v6, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v6, v6, v2

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/preference/ListPreference;->setEnabled(Z)V

    .line 812
    iget-object v6, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v6, v6, v2

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->setEnabled(Z)V

    .line 808
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 816
    .end local v2    # "i":I
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    invoke-interface {v8}, Lcom/android/settings_ex/msim/INBMsimPresenter;->getDataSlot()I

    move-result v1

    .line 817
    .local v1, "dataSlot":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v9, :cond_a

    .line 818
    iget-object v8, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoved:[Z

    aget-boolean v8, v8, v2

    if-nez v8, :cond_5

    .line 819
    iget-object v8, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCallState:[I

    aget v8, v8, v7

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCallState:[I

    aget v8, v8, v6

    if-nez v8, :cond_6

    move v3, v6

    .line 821
    .local v3, "noCall":Z
    :goto_2
    iget-object v8, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v8}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getVirtualCardSlot()I

    move-result v5

    .line 822
    .local v5, "virtualCardSlot":I
    sget-boolean v8, Lcom/android/settings_ex/msim/NBMsimSettings;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v8, :cond_2

    const/4 v8, -0x1

    if-ne v8, v5, :cond_7

    :cond_2
    move v4, v6

    .line 823
    .local v4, "noVirtualCard":Z
    :goto_3
    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    move v0, v6

    .line 824
    .local v0, "dataCheckEnabled":Z
    :goto_4
    if-eqz v4, :cond_3

    if-eq v2, v1, :cond_4

    :cond_3
    if-ne v5, v2, :cond_9

    if-ne v2, v1, :cond_9

    .line 826
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    aget-object v8, v8, v2

    invoke-virtual {v8, v6}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 827
    iget-object v8, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v8, v8, v2

    invoke-virtual {v8, v6}, Lcn/nubia/commonui/preference/ListPreference;->setEnabled(Z)V

    .line 817
    .end local v0    # "dataCheckEnabled":Z
    .end local v3    # "noCall":Z
    .end local v4    # "noVirtualCard":Z
    .end local v5    # "virtualCardSlot":I
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v3, v7

    .line 819
    goto :goto_2

    .restart local v3    # "noCall":Z
    .restart local v5    # "virtualCardSlot":I
    :cond_7
    move v4, v7

    .line 822
    goto :goto_3

    .restart local v4    # "noVirtualCard":Z
    :cond_8
    move v0, v7

    .line 823
    goto :goto_4

    .line 829
    .restart local v0    # "dataCheckEnabled":Z
    :cond_9
    iget-object v8, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    aget-object v8, v8, v2

    invoke-virtual {v8, v0}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 830
    iget-object v8, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v8, v8, v2

    invoke-virtual {v8, v7}, Lcn/nubia/commonui/preference/ListPreference;->setEnabled(Z)V

    goto :goto_5

    .line 835
    .end local v0    # "dataCheckEnabled":Z
    .end local v1    # "dataSlot":I
    .end local v3    # "noCall":Z
    .end local v4    # "noVirtualCard":Z
    .end local v5    # "virtualCardSlot":I
    :cond_a
    return-void
.end method

.method public updateEnabler(IZ)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "active"    # Z

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->setChecked(Z)V

    .line 1039
    return-void
.end method

.method public updateNetworkType(II)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "networkMode"    # I

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoved:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 772
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;

    aget-object v1, v1, p1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/settings_ex/msim/INBMsimPresenter;->updateNetworkType(IILcn/nubia/commonui/preference/ListPreference;)V

    goto :goto_0
.end method

.method public updateOperatorAndNum(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mRemoved:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardOperator:[Landroid/preference/Preference;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    invoke-interface {v0}, Lcom/android/settings_ex/msim/INBMsimPresenter;->isSupportLtePlusC()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings_ex/msim/NBCardUtils;->isSupportedCDMA()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;

    invoke-interface {v0, p1}, Lcom/android/settings_ex/msim/INBMsimPresenter;->isNotSupportOperator(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardOperator:[Landroid/preference/Preference;

    aget-object v0, v0, p1

    const v1, 0x7f0c0c17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mCardOperator:[Landroid/preference/Preference;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getNum(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
