.class public Lcom/android/settings_ex/deviceinfo/SimStatus;
.super Lcom/android/settings_ex/InstrumentedPreferenceActivity;
.source "SimStatus.java"


# static fields
.field private static cardName:[Ljava/lang/String;


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultText:Ljava/lang/String;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mListView:Landroid/widget/ListView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

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

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroid/preference/Preference;

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 122
    new-instance v0, Lcom/android/settings_ex/deviceinfo/SimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/SimStatus$1;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 452
    new-instance v0, Lcom/android/settings_ex/deviceinfo/SimStatus$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/SimStatus$3;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 470
    new-instance v0, Lcom/android/settings_ex/deviceinfo/SimStatus$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/SimStatus$4;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;
    .param p1, "x1"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/SimStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateDataState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/SimStatus;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updatePhoneInfos()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updatePreference()V

    return-void
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private getOperatorName(Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "operatorName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "operatorNumeric":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 497
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 518
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 501
    .restart local v1    # "operatorNumeric":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getOperatorType(Ljava/lang/String;)I

    move-result v3

    .line 502
    .local v3, "value":I
    packed-switch v3, :pswitch_data_0

    .line 514
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "value":I
    :cond_1
    :goto_1
    move-object v1, v0

    .line 518
    goto :goto_0

    .line 505
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "value":I
    :pswitch_0
    const v4, 0x7f0c0c40

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 506
    goto :goto_1

    .line 508
    :pswitch_1
    const v4, 0x7f0c0c3f

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 509
    goto :goto_1

    .line 511
    :pswitch_2
    const v4, 0x7f0c0c41

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 512
    goto :goto_1

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getOperatorType(Ljava/lang/String;)I
    .locals 4
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    .line 522
    const/4 v2, -0x1

    .line 524
    .local v2, "value":I
    sget-object v3, Lcom/android/settings_ex/msim/NBCardConstans;->mMccMncMapType:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 525
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 526
    sget-object v3, Lcom/android/settings_ex/msim/NBCardConstans;->mMccMncMapType:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 530
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 249
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 252
    :cond_0
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object p2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 259
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 260
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    :cond_1
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 350
    if-eqz p1, :cond_0

    .line 351
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 296
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    .line 299
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 316
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void

    .line 303
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    goto :goto_0

    .line 306
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    goto :goto_0

    .line 309
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    goto :goto_0

    .line 312
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 12

    .prologue
    .line 267
    const/4 v5, 0x0

    .line 268
    .local v5, "networktype":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    .line 269
    .local v7, "subId":I
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 271
    .local v0, "actualDataNetworkType":I
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    .line 273
    .local v1, "actualVoiceNetworkType":I
    if-eqz v0, :cond_2

    .line 274
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 279
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 281
    .local v6, "show4GForLTE":Z
    :try_start_0
    const-string v8, "com.android.systemui"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/settings_ex/deviceinfo/SimStatus;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 282
    .local v2, "con":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "config_show4GForLTE"

    const-string v10, "bool"

    const-string v11, "com.android.systemui"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 284
    .local v4, "id":I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 289
    .end local v2    # "con":Landroid/content/Context;
    .end local v4    # "id":I
    :goto_1
    if-eqz v5, :cond_1

    const-string v8, "LTE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v6, :cond_1

    .line 290
    const-string v5, "4G"

    .line 292
    :cond_1
    const-string v8, "network_type"

    invoke-direct {p0, v8, v5}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void

    .line 275
    .end local v6    # "show4GForLTE":Z
    :cond_2
    if-eqz v1, :cond_0

    .line 276
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 285
    .restart local v6    # "show4GForLTE":Z
    :catch_0
    move-exception v3

    .line 286
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "SimStatus"

    const-string v9, "NameNotFoundException for show4GFotLTE"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updatePhoneInfos()V
    .locals 5

    .prologue
    .line 409
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 412
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    if-nez v1, :cond_1

    .line 415
    const-string v2, "SimStatus"

    const-string v3, "Unable to locate a phone object for the given Subscription ID."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-void

    .line 419
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 420
    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateAreaInfo(Ljava/lang/String;)V

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, "getLatestIntent":Landroid/content/Intent;
    const-string v2, "subscription"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 427
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v2, :cond_2

    .line 428
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 431
    :cond_2
    new-instance v2, Lcom/android/settings_ex/deviceinfo/SimStatus$2;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/deviceinfo/SimStatus$2;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatus;I)V

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    goto :goto_0
.end method

.method private updatePreference()V
    .locals 5

    .prologue
    .line 385
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 387
    const-string v2, "br"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "rawNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .line 395
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 396
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    :cond_1
    const-string v2, "number"

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v2, "imei"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v2, "imei_sv"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-nez v2, :cond_2

    .line 404
    const-string v2, "latest_area_info"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 406
    :cond_2
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 7
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 321
    .local v2, "state":I
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 323
    .local v1, "dataState":I
    packed-switch v2, :pswitch_data_0

    .line 335
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v4}, Lcom/android/settings_ex/Utils;->getServiceStateString(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "voiceDisplay":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    invoke-static {v1, v4}, Lcom/android/settings_ex/Utils;->getServiceStateString(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "dataDisplay":Ljava/lang/String;
    const-string v4, "service_state"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Voice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / Data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 342
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0086

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :goto_1
    const-string v4, "operator_name"

    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getOperatorName(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void

    .line 326
    .end local v0    # "dataDisplay":Ljava/lang/String;
    .end local v3    # "voiceDisplay":Ljava/lang/String;
    :pswitch_1
    const/4 v4, 0x1

    if-ne v4, v1, :cond_0

    .line 327
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 332
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 344
    .restart local v0    # "dataDisplay":Ljava/lang/String;
    .restart local v3    # "voiceDisplay":Ljava/lang/String;
    :cond_1
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0087

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0x2b

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 144
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getWindow()Landroid/view/Window;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/PhoneWindow;

    const v4, 0x7f0e0065

    invoke-virtual {v2, v6, v4}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 146
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 148
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    .line 150
    const v2, 0x7f080022

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->addPreferencesFromResource(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    .line 153
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0c006b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 155
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lcom/android/settings_ex/deviceinfo/SimStatus;->cardName:[Ljava/lang/String;

    .line 156
    sget-object v2, Lcom/android/settings_ex/deviceinfo/SimStatus;->cardName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0c0c0c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 157
    sget-object v2, Lcom/android/settings_ex/deviceinfo/SimStatus;->cardName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0c0c0d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 160
    const-string v2, "signal_strength"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    .line 162
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    if-nez v2, :cond_2

    .line 163
    iput-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 189
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0, v6}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 195
    :cond_1
    return-void

    .line 165
    .end local v0    # "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    :goto_0
    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 167
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v6, :cond_0

    .line 168
    const v2, 0x1090044

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setContentView(I)V

    .line 170
    const v2, 0x1020012

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    .line 171
    const v2, 0x1020013

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabWidget;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabWidget:Landroid/widget/TabWidget;

    .line 172
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mListView:Landroid/widget/ListView;

    .line 174
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 175
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 176
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 178
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settings_ex/deviceinfo/SimStatus;->cardName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    aget-object v2, v5, v2

    invoke-direct {p0, v4, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_3
    move-object v2, v3

    .line 165
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 484
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 489
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 486
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->finish()V

    .line 487
    const/4 v0, 0x1

    goto :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 232
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onPause()V

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 241
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 204
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onResume()V

    .line 206
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updatePhoneInfos()V

    .line 208
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updatePreference()V

    .line 210
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 211
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 212
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateDataState()V

    .line 213
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x141

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 217
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings_ex/deviceinfo/SimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "getLatestIntent":Landroid/content/Intent;
    const-string v1, "subscription"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 228
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 11
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v6, -0x1

    const/4 v10, 0x1

    .line 356
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v5, :cond_2

    .line 357
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 358
    .local v4, "state":I
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 359
    .local v0, "dataState":I
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 361
    .local v1, "r":Landroid/content/res/Resources;
    if-ne v10, v4, :cond_0

    if-eq v10, v0, :cond_1

    :cond_0
    const/4 v5, 0x3

    if-ne v5, v4, :cond_3

    .line 364
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    .end local v0    # "dataState":I
    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v4    # "state":I
    :cond_2
    :goto_0
    return-void

    .line 368
    .restart local v0    # "dataState":I
    .restart local v1    # "r":Landroid/content/res/Resources;
    .restart local v4    # "state":I
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v3

    .line 369
    .local v3, "signalDbm":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v2

    .line 371
    .local v2, "signalAsu":I
    if-ne v6, v3, :cond_4

    .line 372
    const/4 v3, 0x0

    .line 375
    :cond_4
    if-ne v6, v2, :cond_5

    .line 376
    const/4 v2, 0x0

    .line 379
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const v6, 0x7f0c09a8

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v1, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
