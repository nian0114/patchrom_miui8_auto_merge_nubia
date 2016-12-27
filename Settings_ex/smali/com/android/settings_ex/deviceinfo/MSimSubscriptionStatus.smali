.class public Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;
.super Landroid/preference/PreferenceActivity;
.source "MSimSubscriptionStatus.java"


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mDataState:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneId:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field mServiceState:Landroid/telephony/ServiceState;

.field private mShowLatestAreaInfo:Z

.field private mSigStrength:Landroid/preference/Preference;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "esn_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "latest_area_info"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mDataState:I

    .line 127
    new-instance v0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$1;-><init>(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;-><init>(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhoneId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mDataState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateDataState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateNetworkType()V

    return-void
.end method

.method private getOperatorName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, "operatorName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, "operatorNumeric":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 499
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 520
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 503
    .restart local v1    # "operatorNumeric":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getOperatorType(Ljava/lang/String;)I

    move-result v3

    .line 516
    .local v3, "value":I
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "value":I
    :cond_1
    move-object v1, v0

    .line 520
    goto :goto_0
.end method

.method private getOperatorType(Ljava/lang/String;)I
    .locals 1
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    .line 524
    const/4 v0, -0x1

    .line 532
    .local v0, "value":I
    return v0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 322
    new-instance v0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$3;-><init>(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;I)V

    .line 340
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 316
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 319
    :cond_0
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    sget-object p2, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->sUnknown:Ljava/lang/String;

    .line 361
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    :cond_1
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 451
    if-eqz p1, :cond_0

    .line 452
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 3

    .prologue
    .line 388
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "display":Ljava/lang/String;
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mDataState:I

    packed-switch v1, :pswitch_data_0

    .line 405
    :goto_0
    const-string v1, "data_state"

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void

    .line 392
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    goto :goto_0

    .line 395
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    goto :goto_0

    .line 398
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    goto :goto_0

    .line 401
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 5

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 376
    .local v1, "networktype":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    .line 377
    .local v0, "dataNetworkType":I
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    .line 378
    .local v2, "voiceNetworkType":I
    if-eqz v0, :cond_1

    .line 379
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    :cond_0
    :goto_0
    const-string v3, "network_type"

    invoke-direct {p0, v3, v1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-void

    .line 380
    :cond_1
    if-eqz v2, :cond_0

    .line 381
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateServiceState()V
    .locals 6

    .prologue
    .line 409
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0c008f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "display":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_1

    .line 412
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 414
    .local v2, "state":I
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 415
    .local v0, "dataRadioTechnology":I
    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 417
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    .line 420
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 439
    :goto_0
    const-string v3, "service_state"

    invoke-direct {p0, v3, v1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    const-string v3, "roaming_state"

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0c0086

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :goto_1
    const-string v3, "operator_name"

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .end local v0    # "dataRadioTechnology":I
    .end local v2    # "state":I
    :cond_1
    return-void

    .line 422
    .restart local v0    # "dataRadioTechnology":I
    .restart local v2    # "state":I
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0c0082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 423
    goto :goto_0

    .line 426
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0c0083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 428
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 432
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0c0085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 434
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 444
    :cond_2
    const-string v3, "roaming_state"

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0c0087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 162
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 167
    const v7, 0x7f080026

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->addPreferencesFromResource(I)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "phone"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhoneId:I

    .line 172
    iget v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhoneId:I

    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 173
    const-string v7, "Status"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OnCreate phoneId ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhoneId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 176
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v9, 0x141

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    .line 181
    sget-object v7, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->sUnknown:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 182
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0c006b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->sUnknown:Ljava/lang/String;

    .line 185
    :cond_0
    const-string v7, "signal_strength"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 188
    sget-object v1, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_6

    aget-object v4, v1, v3

    .line 189
    .local v4, "key":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_1
    const-string v7, "ro.config.multimode_cdma"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CDMA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 195
    :cond_2
    const-string v7, "prl_version"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :goto_1
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CDMA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 204
    const-string v7, "esn_number"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v7, "meid_number"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v7, "min_number"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f10000d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 208
    const-string v7, "min_number"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    const v8, 0x7f0c03b5

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 211
    :cond_3
    const-string v7, "imei_sv"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 213
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v7

    if-ne v7, v10, :cond_9

    .line 215
    const-string v7, "icc_id"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v7, "imei"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "rawNumber":Ljava/lang/String;
    const/4 v2, 0x0

    .line 244
    .local v2, "formattedNumber":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 245
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    :cond_5
    const-string v7, "number"

    invoke-direct {p0, v7, v2}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-boolean v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mShowLatestAreaInfo:Z

    if-nez v7, :cond_6

    .line 250
    const-string v7, "latest_area_info"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 254
    .end local v2    # "formattedNumber":Ljava/lang/String;
    .end local v6    # "rawNumber":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 255
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_7

    .line 256
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 258
    :cond_7
    return-void

    .line 198
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_8
    const-string v7, "prl_version"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 220
    :cond_9
    const-string v7, "imei"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 221
    const-string v7, "icc_id"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2

    .line 224
    :cond_a
    const-string v7, "imei"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v7, "imei_sv"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v7, "esn_number"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 231
    const-string v7, "meid_number"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 232
    const-string v7, "min_number"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 233
    const-string v7, "icc_id"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 236
    const-string v7, "br"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 237
    iput-boolean v10, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mShowLatestAreaInfo:Z

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 263
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 268
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 265
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->finish()V

    .line 266
    const/4 v0, 0x1

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 299
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 301
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 303
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 305
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 308
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 273
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x141

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 279
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateSignalStrength()V

    .line 280
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V

    .line 281
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateDataState()V

    .line 282
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 285
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, "getLatestIntent":Landroid/content/Intent;
    const-string v2, "phone"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 290
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 291
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0, v5, v5}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 295
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method updateSignalStrength()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 457
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v5, :cond_2

    .line 458
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 459
    .local v4, "state":I
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 461
    .local v1, "r":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 463
    .local v0, "dataRadioTechnology":I
    if-ne v7, v4, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 466
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    .line 469
    :cond_0
    if-eq v7, v4, :cond_1

    const/4 v5, 0x3

    if-ne v5, v4, :cond_3

    .line 471
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 492
    .end local v0    # "dataRadioTechnology":I
    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v4    # "state":I
    :cond_2
    :goto_0
    return-void

    .line 477
    .restart local v0    # "dataRadioTechnology":I
    .restart local v1    # "r":Landroid/content/res/Resources;
    .restart local v4    # "state":I
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v3

    .line 478
    .local v3, "signalDbm":I
    if-ne v6, v3, :cond_4

    const/4 v3, 0x0

    .line 483
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v2

    .line 485
    .local v2, "signalAsu":I
    if-ne v6, v2, :cond_5

    const/4 v2, 0x0

    .line 487
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0c0092

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0c0093

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
