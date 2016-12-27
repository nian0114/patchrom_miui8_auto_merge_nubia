.class public Lcom/android/settings_ex/notification/NotificationSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/NotificationSettings$H;,
        Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;


# instance fields
.field private mAudioEffect:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDefaultProfileNames:[Ljava/lang/String;

.field private mDolbyLaunchApp:Landroid/preference/Preference;

.field private final mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;

.field private mHiFiAppPref:Landroid/preference/Preference;

.field private mHiFiTypes:[Ljava/lang/String;

.field private mLockscreen:Lcn/nubia/commonui/preference/ListPreference;

.field private mLockscreenSelectedValue:Ljava/lang/String;

.field private mLockscreenValues:[Ljava/lang/String;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mOneNubiaRingtonePreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private mPhoneRingtonePreference1:Landroid/preference/RingtonePreference;

.field private mSecure:Z

.field private final mSettingsObserver:Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

.field private mSilentMode:Landroid/preference/TwoStatePreference;

.field private mSmsNotificationPreference:Lcom/android/settings_ex/MsgRingtonePreference;

.field private mSrsLaunchApp:Landroid/preference/Preference;

.field private mTwoNubiaRingtonePreference:Landroid/preference/Preference;

.field private mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

.field private mVibrateWhenTouch:Landroid/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 690
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$8;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationSettings$8;-><init>()V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 103
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/notification/NotificationSettings$H;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;Lcom/android/settings_ex/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;

    .line 104
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

    .line 164
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationSettings$1;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationSettings$2;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 504
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lock_screen_notifications_summary_show"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lock_screen_notifications_summary_hide"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lock_screen_notifications_summary_disable"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenValues:[Ljava/lang/String;

    .line 649
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateSilentMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/notification/NotificationSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/notification/NotificationSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenSelectedValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings_ex/notification/NotificationSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenSelectedValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/notification/NotificationSettings;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updatePulse()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/MsgRingtonePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSmsNotificationPreference:Lcom/android/settings_ex/MsgRingtonePreference;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/RingtonePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference1:Landroid/preference/RingtonePreference;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings_ex/notification/NotificationSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettings;->handleRingToneClick(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateNubiaRingtoneSummary()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private configureNubiaPreference(Landroid/preference/PreferenceGroup;)V
    .locals 6
    .param p1, "category"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->isMusicPickExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference1:Landroid/preference/RingtonePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setSubId(I)V

    .line 948
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference1:Landroid/preference/RingtonePreference;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/NotificationSettings;->configureRingtoneUI(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V

    .line 972
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    new-instance v1, Lcom/android/settings_ex/notification/NotificationSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/NotificationSettings$9;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 960
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    new-instance v1, Lcom/android/settings_ex/notification/NotificationSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/NotificationSettings$10;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 968
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference1:Landroid/preference/RingtonePreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/NotificationSettings;->configureRingtoneUI(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method private configureRingtoneUI(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 4
    .param p1, "category"    # Landroid/preference/PreferenceGroup;
    .param p2, "removePref"    # Landroid/preference/Preference;
    .param p3, "removePref1"    # Landroid/preference/Preference;
    .param p4, "pref"    # Landroid/preference/Preference;
    .param p5, "pref1"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const v2, 0x7f0c09ef

    .line 977
    if-eqz p2, :cond_0

    .line 978
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 980
    :cond_0
    if-eqz p3, :cond_1

    .line 981
    invoke-virtual {p1, p3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 983
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 984
    invoke-virtual {p1, p5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 985
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1033
    :cond_2
    :goto_0
    return-void

    .line 989
    :cond_3
    invoke-static {}, Lcom/android/settings_ex/Utils;->getVirtualCardSlot()I

    move-result v0

    if-nez v0, :cond_4

    .line 990
    invoke-virtual {p1, p4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 991
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 993
    :cond_4
    invoke-static {}, Lcom/android/settings_ex/Utils;->getVirtualCardSlot()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 994
    invoke-virtual {p1, p5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 995
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 999
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1002
    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1003
    invoke-virtual {p1, p4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1004
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1007
    :cond_7
    invoke-virtual {p1, p5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1008
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 574
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 569
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private handleRingToneClick(I)V
    .locals 5
    .param p1, "subcription"    # I

    .prologue
    .line 1043
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1044
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.NUBIA_MUSIC_PICK"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1047
    .local v2, "ringtoneUri":Landroid/net/Uri;
    const-string v4, "URL_VALUE"

    if-nez v2, :cond_0

    const-string v3, "content://media/internal/audio/media/10000"

    :goto_0
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    if-nez p1, :cond_1

    const/16 v3, 0xb

    :goto_1
    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ex/notification/NotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1053
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils$NubiaDialogAnim;->overridePendingTransition(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :goto_2
    return-void

    .line 1047
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1050
    :cond_1
    const/16 v3, 0xc

    goto :goto_1

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "NotificationSettings"

    const-string v4, "No activity found for "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private hasHaptic()Z
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
    .locals 4
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 508
    const-string v2, "lock_screen_notifications"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcn/nubia/commonui/preference/ListPreference;

    .line 510
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcn/nubia/commonui/preference/ListPreference;

    if-nez v2, :cond_0

    .line 511
    const-string v2, "NotificationSettings"

    const-string v3, "Preference not found: lock_screen_notifications"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_0
    return-void

    .line 514
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v0, "lockscreenEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v1, "lockscreenEntryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v2, 0x7f0c09f6

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenValues:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    iget-boolean v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSecure:Z

    if-eqz v2, :cond_1

    .line 519
    const v2, 0x7f0c09f7

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenValues:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_1
    const v2, 0x7f0c09f8

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenValues:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcn/nubia/commonui/preference/ListPreference;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 525
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcn/nubia/commonui/preference/ListPreference;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 527
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateLockscreenNotifications()V

    .line 528
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcn/nubia/commonui/preference/ListPreference;

    new-instance v3, Lcom/android/settings_ex/notification/NotificationSettings$7;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/notification/NotificationSettings$7;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initPulse(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 465
    const-string v0, "notification_pulse"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    .line 467
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 468
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_0
    return-void

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 475
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updatePulse()V

    .line 476
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ex/notification/NotificationSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/NotificationSettings$6;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v1, 0x0

    .line 234
    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 235
    const-string v0, "ringtone1"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/RingtonePreference;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference1:Landroid/preference/RingtonePreference;

    .line 236
    const-string v0, "button_one_ringtone_nubia_key"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    .line 238
    const-string v0, "button_two_ringtone_nubia_key"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    .line 240
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 243
    iput-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference1:Landroid/preference/RingtonePreference;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference1:Landroid/preference/RingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    iput-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference1:Landroid/preference/RingtonePreference;

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    iput-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 255
    iput-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    .line 260
    :cond_3
    :goto_0
    const-string v0, "notification_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 262
    return-void

    .line 258
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettings;->configureNubiaPreference(Landroid/preference/PreferenceGroup;)V

    goto :goto_0
.end method

.method private initSilentMode(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 436
    const-string v0, "silent_mode"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSilentMode:Landroid/preference/TwoStatePreference;

    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSilentMode:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 439
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: silent_mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateSilentMode()V

    .line 443
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSilentMode:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ex/notification/NotificationSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/NotificationSettings$5;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 356
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 358
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 359
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 368
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateVibrateWhenRinging()V

    .line 369
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ex/notification/NotificationSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/NotificationSettings$3;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVibrateWhenTouch(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 392
    const-string v0, "vibrate_on_touch"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenTouch:Landroid/preference/TwoStatePreference;

    .line 394
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenTouch:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 395
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: vibrate_on_touch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->hasHaptic()Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenTouch:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenTouch:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenTouch:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 404
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateVibrateWhenTouchState()V

    .line 405
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenTouch:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ex/notification/NotificationSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/NotificationSettings$4;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private is8996Platform()Z
    .locals 4

    .prologue
    .line 823
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 824
    .local v0, "cpuStr":Ljava/lang/String;
    const-string v1, "shijian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cpuStr is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string v1, "NX531"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private isDsConsumerAppPresent()Z
    .locals 4

    .prologue
    .line 903
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.dolby.LAUNCH_DS_APP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 905
    .local v1, "p":Landroid/content/pm/PackageManager;
    const/16 v3, 0x200

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 907
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isHiFiAppPresent()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 911
    new-instance v0, Landroid/content/Intent;

    const-string v4, "cn.nubia.soundcolor.LAUNCH_SC_APP"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 912
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 913
    .local v1, "p":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 914
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private isMusicPickExist()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1036
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.NUBIA_MUSIC_PICK"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1037
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1039
    .local v1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 268
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateSmsRingtoneSummary()V

    .line 269
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 581
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 583
    .local v1, "total":I
    if-nez v1, :cond_1

    .line 584
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 601
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 586
    .restart local v1    # "total":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 588
    .local v0, "n":I
    if-nez v0, :cond_2

    .line 589
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0a0a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 592
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f130009

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setRingtone(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "subId"    # I

    .prologue
    .line 1155
    if-eqz p1, :cond_0

    .line 1156
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1157
    .local v0, "ringtoneUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, v0}, Landroid/media/RingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1160
    .end local v0    # "ringtoneUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private updateLockscreenNotifications()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 552
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcn/nubia/commonui/preference/ListPreference;

    if-nez v5, :cond_0

    .line 566
    :goto_0
    return-void

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 556
    .local v1, "enabled":Z
    iget-boolean v5, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSecure:Z

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v0, v4

    .line 558
    .local v0, "allowPrivate":Z
    :goto_1
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenValues:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    :goto_2
    iput-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenSelectedValue:Ljava/lang/String;

    .line 561
    if-nez v1, :cond_5

    const v2, 0x7f0c09f8

    .line 564
    .local v2, "lockscreenSelectedValue":I
    :goto_3
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenSelectedValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 565
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .end local v0    # "allowPrivate":Z
    .end local v2    # "lockscreenSelectedValue":I
    :cond_2
    move v0, v3

    .line 556
    goto :goto_1

    .line 558
    .restart local v0    # "allowPrivate":Z
    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenValues:[Ljava/lang/String;

    aget-object v3, v4, v3

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenValues:[Ljava/lang/String;

    aget-object v3, v3, v4

    goto :goto_2

    .line 561
    :cond_5
    if-eqz v0, :cond_6

    const v2, 0x7f0c09f6

    goto :goto_3

    :cond_6
    const v2, 0x7f0c09f7

    goto :goto_3
.end method

.method private updateMessgeSound(I)V
    .locals 7
    .param p1, "msg"    # I

    .prologue
    const/4 v4, 0x0

    .line 717
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_0

    .line 734
    :goto_0
    return-void

    .line 720
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "message_sound"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 722
    .local v3, "uriString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 725
    .local v0, "soundUri":Landroid/net/Uri;
    :goto_1
    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 727
    .local v2, "tone":Landroid/media/Ringtone;
    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 730
    .local v1, "summary":Ljava/lang/String;
    :goto_3
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;

    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;

    invoke-virtual {v5, p1, v1}, Lcom/android/settings_ex/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notification/NotificationSettings$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 731
    .end local v1    # "summary":Ljava/lang/String;
    .end local v2    # "tone":Landroid/media/Ringtone;
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v0    # "soundUri":Landroid/net/Uri;
    :cond_1
    move-object v0, v4

    .line 722
    goto :goto_1

    .restart local v0    # "soundUri":Landroid/net/Uri;
    :cond_2
    move-object v2, v4

    .line 725
    goto :goto_2

    .line 727
    .restart local v2    # "tone":Landroid/media/Ringtone;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10403a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_3
.end method

.method private updateNubiaRingtoneName(Landroid/content/Context;ILandroid/preference/Preference;I)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "preference"    # Landroid/preference/Preference;
    .param p4, "ringId"    # I

    .prologue
    .line 1086
    if-nez p3, :cond_1

    .line 1087
    const/4 v11, 0x0

    .line 1139
    :cond_0
    :goto_0
    return-object v11

    .line 1089
    :cond_1
    const/4 v2, 0x0

    .line 1090
    .local v2, "ringtoneUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1091
    .local v8, "defaultRingtone":Z
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v9

    .line 1093
    .local v9, "defaultRingtoneUri":Landroid/net/Uri;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 1094
    move/from16 v0, p4

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1113
    :goto_1
    const v1, 0x10403a4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1115
    .local v11, "summary":Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content://media/internal/audio/media/10000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1116
    :cond_2
    const v1, 0x10403a2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 1097
    .end local v11    # "summary":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1099
    .local v10, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p3 .. p3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v10, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1100
    .local v12, "uriString":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1101
    const/4 v2, 0x0

    goto :goto_1

    .line 1103
    :cond_4
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1105
    const/4 v8, 0x1

    .line 1106
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 1109
    :cond_5
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 1120
    .end local v10    # "prefs":Landroid/content/SharedPreferences;
    .end local v12    # "uriString":Ljava/lang/String;
    .restart local v11    # "summary":Ljava/lang/CharSequence;
    :cond_6
    if-eqz v2, :cond_7

    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content://media/external/audio/media/-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1121
    :cond_7
    const-string v1, "content://media/internal/audio/media/10000"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1122
    const v1, 0x10403a2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1125
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1129
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1130
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1131
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1133
    :cond_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1135
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method private updateNubiaRingtoneSummary()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1060
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 1061
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/android/settings_ex/notification/NotificationSettings;->updateNubiaRingtoneName(Landroid/content/Context;ILandroid/preference/Preference;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1064
    .local v1, "summary":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 1065
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1}, Lcom/android/settings_ex/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1070
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference1:Landroid/preference/RingtonePreference;

    if-eqz v2, :cond_2

    .line 1071
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    .line 1073
    .local v0, "pref":Landroid/preference/Preference;
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v5, v0, v5}, Lcom/android/settings_ex/notification/NotificationSettings;->updateNubiaRingtoneName(Landroid/content/Context;ILandroid/preference/Preference;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1076
    .restart local v1    # "summary":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 1077
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Lcom/android/settings_ex/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1082
    .end local v0    # "pref":Landroid/preference/Preference;
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 1071
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference1:Landroid/preference/RingtonePreference;

    goto :goto_0
.end method

.method private updatePulse()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 491
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 501
    :goto_0
    return-void

    .line 495
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "NotificationSettings"

    const-string v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 495
    .end local v0    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v8, 0x0

    .line 295
    if-nez p0, :cond_1

    .line 296
    const-string v0, "NotificationSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    :goto_0
    return-object v8

    .line 299
    :cond_1
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 301
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x10403a4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 304
    .local v8, "summary":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content://media/internal/audio/media/10000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 305
    :cond_2
    const v0, 0x10403a2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 308
    :cond_3
    const/4 v6, 0x0

    .line 310
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    .line 313
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 335
    :cond_4
    :goto_1
    if-eqz v6, :cond_5

    .line 336
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 337
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 345
    :cond_5
    if-eqz v6, :cond_0

    .line 346
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 318
    :catch_0
    move-exception v7

    .line 319
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 340
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 345
    if-eqz v6, :cond_0

    .line 346
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 322
    :cond_6
    :try_start_4
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v6

    goto :goto_1

    .line 330
    :catch_2
    move-exception v7

    .line 331
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 342
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 345
    if-eqz v6, :cond_0

    .line 346
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 345
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 346
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method private updateSilentMode()V
    .locals 3

    .prologue
    .line 456
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 457
    .local v0, "am":Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSilentMode:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSilentMode:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateSmsRingtoneSummary()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSmsNotificationPreference:Lcom/android/settings_ex/MsgRingtonePreference;

    if-eqz v0, :cond_0

    .line 712
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateMessgeSound(I)V

    .line 714
    :cond_0
    return-void
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 384
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateVibrateWhenTouchState()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 424
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenTouch:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 429
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenTouch:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method effectInit()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x1

    .line 738
    const/4 v3, 0x0

    .local v3, "bRemoveSRS":Z
    move v2, v3

    .local v2, "bRemoveKala":I
    move v1, v3

    .local v1, "bRemoveHifi":I
    move v0, v3

    .line 739
    .local v0, "bRemoveDolby":I
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 741
    .local v4, "category":Landroid/preference/PreferenceScreen;
    const-string v9, "sound_dolby_ddp"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    .line 742
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    if-eqz v9, :cond_0

    .line 743
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 746
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->is8996Platform()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 747
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    const v10, 0x7f0c0fed

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 751
    :cond_1
    const-string v9, "sound_srs_enhance"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSrsLaunchApp:Landroid/preference/Preference;

    .line 753
    const-string v9, "sound_kala_enhance"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 755
    .local v8, "mKalaPreference":Landroid/preference/Preference;
    invoke-static {}, Lcom/android/settings_ex/kala/KalaUtils;->isSupportKaraOke()Z

    move-result v9

    if-nez v9, :cond_2

    .line 757
    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 758
    const/4 v2, 0x1

    .line 761
    .end local v2    # "bRemoveKala":I
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSrsLaunchApp:Landroid/preference/Preference;

    if-eqz v9, :cond_3

    .line 762
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSrsLaunchApp:Landroid/preference/Preference;

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 765
    :cond_3
    const-string v9, "sound_hifi_effect"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHiFiAppPref:Landroid/preference/Preference;

    .line 766
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a007d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHiFiTypes:[Ljava/lang/String;

    .line 768
    const-string v9, "audio.effect.name"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mAudioEffect:Ljava/lang/String;

    .line 769
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mAudioEffect:Ljava/lang/String;

    const-string v10, "dolby"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 770
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    if-eqz v9, :cond_4

    .line 771
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 772
    const/4 v0, 0x1

    .line 776
    .end local v0    # "bRemoveDolby":I
    :cond_4
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mAudioEffect:Ljava/lang/String;

    const-string v10, "srs"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 777
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSrsLaunchApp:Landroid/preference/Preference;

    if-eqz v9, :cond_5

    .line 778
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSrsLaunchApp:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 779
    const/4 v3, 0x1

    .line 784
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 785
    .local v5, "context":Landroid/content/Context;
    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mDefaultProfileNames:[Ljava/lang/String;

    .line 786
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v10, 0x0

    const v11, 0x7f0c0fef

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 788
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mDefaultProfileNames:[Ljava/lang/String;

    const v10, 0x7f0c0ff0

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 790
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v10, 0x2

    const v11, 0x7f0c0ff1

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 792
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v10, 0x3

    const v11, 0x7f0c0ff2

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 794
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mDefaultProfileNames:[Ljava/lang/String;

    const v10, 0x7f0c0ff3

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    .line 796
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v10, 0x5

    const v11, 0x7f0c0ff4

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 800
    const-string v9, "persist.sys.audio.feature"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 801
    .local v6, "hifiType":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->isHiFiAppPresent()Z

    move-result v9

    if-nez v9, :cond_8

    .line 802
    :cond_6
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHiFiAppPref:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 803
    const/4 v1, 0x1

    .line 817
    .end local v1    # "bRemoveHifi":I
    :goto_0
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 818
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "preference_divider"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 820
    :cond_7
    return-void

    .line 805
    .restart local v1    # "bRemoveHifi":I
    :cond_8
    const/4 v7, -0x1

    .line 807
    .local v7, "hifiTypeInt":I
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 810
    :goto_1
    const/4 v9, -0x1

    if-le v7, v9, :cond_9

    if-ge v7, v13, :cond_9

    .line 811
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHiFiAppPref:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHiFiTypes:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 813
    :cond_9
    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHiFiAppPref:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 814
    const/4 v1, 0x1

    .local v1, "bRemoveHifi":Z
    goto :goto_0

    .line 808
    .local v1, "bRemoveHifi":I
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method effectResume()V
    .locals 17

    .prologue
    .line 830
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/notification/NotificationSettings;->mAudioEffect:Ljava/lang/String;

    const-string v15, "dolby"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 831
    const/4 v11, 0x0

    .line 832
    .local v11, "isDsOn":Z
    const/4 v12, 0x0

    .line 833
    .local v12, "profileName":Ljava/lang/String;
    const/4 v14, 0x6

    new-array v2, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "Movie"

    aput-object v15, v2, v14

    const/4 v14, 0x1

    const-string v15, "Music"

    aput-object v15, v2, v14

    const/4 v14, 0x2

    const-string v15, "Game"

    aput-object v15, v2, v14

    const/4 v14, 0x3

    const-string v15, "Voice"

    aput-object v15, v2, v14

    const/4 v14, 0x4

    const-string v15, "Custom 1"

    aput-object v15, v2, v14

    const/4 v14, 0x5

    const-string v15, "Custom 2"

    aput-object v15, v2, v14

    .line 835
    .local v2, "PROFILE_NAMES":[Ljava/lang/String;
    const-string v14, "dolby.ds.state"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 836
    .local v6, "dsState":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 837
    const-string v14, "on"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 839
    :cond_0
    const-string v14, "dolby.ds.profile.name"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 841
    .local v5, "dsProfileName":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v14, v2

    if-ge v7, v14, :cond_2

    .line 842
    aget-object v14, v2, v7

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 843
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/notification/NotificationSettings;->mDefaultProfileNames:[Ljava/lang/String;

    aget-object v12, v14, v7

    .line 841
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 846
    :cond_2
    if-eqz v11, :cond_4

    .line 847
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/notification/NotificationSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    if-eqz v14, :cond_3

    .line 848
    if-eqz v12, :cond_3

    .line 849
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/notification/NotificationSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    invoke-virtual {v14, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 899
    .end local v2    # "PROFILE_NAMES":[Ljava/lang/String;
    .end local v5    # "dsProfileName":Ljava/lang/String;
    .end local v6    # "dsState":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v11    # "isDsOn":Z
    .end local v12    # "profileName":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 853
    .restart local v2    # "PROFILE_NAMES":[Ljava/lang/String;
    .restart local v5    # "dsProfileName":Ljava/lang/String;
    .restart local v6    # "dsState":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v11    # "isDsOn":Z
    .restart local v12    # "profileName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/notification/NotificationSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    if-eqz v14, :cond_3

    .line 854
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/notification/NotificationSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    const v15, 0x7f0c0fee

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 860
    .end local v2    # "PROFILE_NAMES":[Ljava/lang/String;
    .end local v5    # "dsProfileName":Ljava/lang/String;
    .end local v6    # "dsState":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v11    # "isDsOn":Z
    .end local v12    # "profileName":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/notification/NotificationSettings;->mAudioEffect:Ljava/lang/String;

    const-string v15, "srs"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 861
    const-string v14, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 862
    .local v1, "AudioMan":Landroid/media/AudioManager;
    const-string v14, "srs_cfg:trumedia_enable;srs_cfg:trumedia_preset"

    invoke-virtual {v1, v14}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 864
    .local v10, "inParams":Ljava/lang/String;
    const-string v14, ";"

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 865
    .local v8, "inKeys":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 866
    .local v4, "UseSoundEnh":Z
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    array-length v14, v8

    if-ge v7, v14, :cond_3

    .line 867
    aget-object v14, v8, v7

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 868
    .local v9, "inParam":[Ljava/lang/String;
    array-length v14, v9

    const/4 v15, 0x2

    if-ge v14, v15, :cond_7

    .line 866
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 870
    :cond_7
    const/4 v14, 0x0

    aget-object v14, v9, v14

    const-string v15, "srs_cfg:trumedia_enable"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 871
    const/4 v14, 0x1

    aget-object v14, v9, v14

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    const/4 v4, 0x1

    .line 872
    :goto_4
    if-nez v4, :cond_8

    .line 873
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c1063

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 876
    .local v13, "soundEffectOffSummary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/notification/NotificationSettings;->mSrsLaunchApp:Landroid/preference/Preference;

    invoke-virtual {v14, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 879
    .end local v13    # "soundEffectOffSummary":Ljava/lang/String;
    :cond_8
    if-eqz v4, :cond_6

    const/4 v14, 0x0

    aget-object v14, v9, v14

    const-string v15, "srs_cfg:trumedia_preset"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 880
    const/4 v14, 0x1

    aget-object v14, v9, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 881
    .local v3, "UsePreset":I
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 883
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/notification/NotificationSettings;->mSrsLaunchApp:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c1064

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 871
    .end local v3    # "UsePreset":I
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 887
    .restart local v3    # "UsePreset":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/notification/NotificationSettings;->mSrsLaunchApp:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c1065

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 891
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/notification/NotificationSettings;->mSrsLaunchApp:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c1066

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 881
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 1164
    const/16 v0, 0x1f

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 1144
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 1146
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/settings_ex/notification/NotificationSettings;->setRingtone(Landroid/content/Intent;I)V

    .line 1151
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1152
    return-void

    .line 1147
    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 1149
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/android/settings_ex/notification/NotificationSettings;->setRingtone(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    .line 177
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 178
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVoiceCapable:Z

    .line 179
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSecure:Z

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 183
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 187
    :cond_0
    const v3, 0x7f080048

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notification/NotificationSettings;->addPreferencesFromResource(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 190
    .local v2, "root":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->initRingtones(Landroid/preference/PreferenceGroup;)V

    .line 191
    invoke-direct {p0, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceGroup;)V

    .line 192
    invoke-direct {p0, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->initVibrateWhenTouch(Landroid/preference/PreferenceGroup;)V

    .line 194
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 195
    .local v1, "notification":Landroid/preference/PreferenceCategory;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/notification/NotificationSettings;->initPulse(Landroid/preference/PreferenceCategory;)V

    .line 196
    invoke-direct {p0, v1}, Lcom/android/settings_ex/notification/NotificationSettings;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V

    .line 198
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 200
    const-string v3, "manage_notification_access"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 201
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 202
    const-string v3, "key_message_sound"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/MsgRingtonePreference;

    iput-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSmsNotificationPreference:Lcom/android/settings_ex/MsgRingtonePreference;

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->effectInit()V

    .line 205
    invoke-direct {p0, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->initSilentMode(Landroid/preference/PreferenceGroup;)V

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 229
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 222
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 223
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 920
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSrsLaunchApp:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    .line 921
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.media.extra.CONTENT_TYPE"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 926
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ex/notification/NotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v2

    .line 927
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "NotificationSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 931
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHiFiAppPref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    .line 932
    new-instance v1, Landroid/content/Intent;

    const-string v3, "cn.nubia.soundcolor.LAUNCH_SC_APP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 933
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 935
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    if-ne p2, v3, :cond_3

    .line 936
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->isDsConsumerAppPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 937
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.dolby.LAUNCH_DS_APP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 938
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 942
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 213
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 214
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->lookupRingtoneNames()V

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->effectResume()V

    .line 217
    return-void
.end method
