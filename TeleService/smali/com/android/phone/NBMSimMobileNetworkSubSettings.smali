.class public Lcom/android/phone/NBMSimMobileNetworkSubSettings;
.super Lcn/nubia/commonui/phone/preference/PreferenceActivity;
.source "NBMSimMobileNetworkSubSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;
    }
.end annotation


# static fields
.field private static final NUBIA_ROAMING_ENABLE:Z

.field static final preferredNetworkMode:I


# instance fields
.field private mButtonDataRoam:Landroid/preference/nubia/phone/CheckBoxPreference;

.field private mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mHandler:Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;

.field private mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSimToolkit:Landroid/preference/Preference;

.field private mUPLMNPref:Landroid/preference/Preference;

.field private mUsagedetail:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    sput v2, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->preferredNetworkMode:I

    const-string v2, "ro.nubia.softsim_roaming.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->NUBIA_ROAMING_ENABLE:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/phone/NBMSimMobileNetworkSubSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings$1;-><init>(Lcom/android/phone/NBMSimMobileNetworkSubSettings;)V

    iput-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 2
    .param p1, "NetworkMode"    # I

    .prologue
    const v1, 0x7f0b012b

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b011f

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0120

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0121

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0122

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0124

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0123

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0125

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0126

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0128

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0129

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b012a

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0127

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b012c

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0132

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0133

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0134

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0135

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0136

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0137

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0138

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b0139

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b012f

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v1, 0x7f0b013b

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/phone/NBMSimMobileNetworkSubSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NBMSimMobileNetworkSubSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->getPreferredNetworkMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/NBMSimMobileNetworkSubSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBMSimMobileNetworkSubSettings;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->setPreferredNetworkMode(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/NBMSimMobileNetworkSubSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBMSimMobileNetworkSubSettings;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/NBMSimMobileNetworkSubSettings;)Lcn/nubia/commonui/phone/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/NBMSimMobileNetworkSubSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBMSimMobileNetworkSubSettings;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->setPrefNetworkTypeInSp(I)V

    return-void
.end method

.method private getPreferredNetworkMode()I
    .locals 5

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    iget-object v4, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "nwMode":I
    :goto_0
    return v0

    .end local v0    # "nwMode":I
    :catch_0
    move-exception v1

    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-static {v2}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    sget v0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->preferredNetworkMode:I

    .restart local v0    # "nwMode":I
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "NBMSimMobileNetworkSubSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private multiSimGetDataRoaming()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    .local v0, "enabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get Data Roaming for PhoneId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    return v0
.end method

.method private multiSimSetDataRoaming(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Data Roaming for phoneId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method private setPrefNetworkTypeInSp(I)V
    .locals 5
    .param p1, "preNetworkType"    # I

    .prologue
    iget-object v2, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pre-network-mode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pre_network_mode_sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updating network type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for phoneId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in shared preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " context is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method private setPreferredNetworkMode(I)V
    .locals 3
    .param p1, "nwMode"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    iget-object v2, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->multiSimSetDataRoaming(Z)V

    iput-boolean v1, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mOkClicked:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonDataRoam:Landroid/preference/nubia/phone/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/nubia/phone/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .local v1, "app":Lcom/android/phone/PhoneGlobals;
    const v5, 0x7f080010

    invoke-virtual {p0, v5}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getPhoneFromIntent(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Settings onCreate phoneId ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    new-instance v5, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;

    invoke-direct {v5, p0, v8}, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;-><init>(Lcom/android/phone/NBMSimMobileNetworkSubSettings;Lcom/android/phone/NBMSimMobileNetworkSubSettings$1;)V

    iput-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mHandler:Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;

    invoke-virtual {p0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .local v4, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v5, "button_roaming_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/nubia/phone/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonDataRoam:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    iget-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonDataRoam:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v5, "button_uplmn_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mUPLMNPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0d0019

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    iget-object v7, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v7}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getVirtualCardSlot()I

    move-result v7

    if-ne v5, v7, :cond_4

    :cond_0
    iget-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mUPLMNPref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v8, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mUPLMNPref:Landroid/preference/Preference;

    :goto_0
    iget-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v5

    if-ne v5, v6, :cond_5

    move v2, v6

    .local v2, "isLteOnCdma":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0d0002

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-ne v5, v6, :cond_6

    new-instance v5, Lcom/android/phone/CdmaOptions;

    iget-object v7, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v5, p0, v4, v7}, Lcom/android/phone/CdmaOptions;-><init>(Lcn/nubia/commonui/phone/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    new-instance v5, Lcom/android/phone/GsmUmtsOptions;

    iget-object v7, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-direct {v5, p0, v4, v7}, Lcom/android/phone/GsmUmtsOptions;-><init>(Lcn/nubia/commonui/phone/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->getSupportActionBar()Lcn/nubia/commonui/phone/actionbar/app/ActionBar;

    move-result-object v0

    .local v0, "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v6}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-nez v5, :cond_9

    const v5, 0x7f0b0408

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->setTitle(I)V

    :cond_1
    :goto_3
    const-string v5, "data_usage_detail"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mUsagedetail:Landroid/preference/Preference;

    const-string v5, "key_sim_toolkit"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mSimToolkit:Landroid/preference/Preference;

    sget-boolean v5, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v6}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getVirtualCardSlot()I

    move-result v6

    if-eq v5, v6, :cond_a

    :cond_2
    iget-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mUsagedetail:Landroid/preference/Preference;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mUsagedetail:Landroid/preference/Preference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mSimToolkit:Landroid/preference/Preference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mSimToolkit:Landroid/preference/Preference;

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mSimToolkit:Landroid/preference/Preference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    :goto_4
    return-void

    .end local v0    # "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    .end local v2    # "isLteOnCdma":Z
    :cond_4
    iget-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mUPLMNPref:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "subscription"

    iget-object v8, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .restart local v2    # "isLteOnCdma":Z
    :cond_6
    iget-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .local v3, "phoneType":I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    new-instance v5, Lcom/android/phone/CdmaOptions;

    iget-object v7, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v5, p0, v4, v7}, Lcom/android/phone/CdmaOptions;-><init>(Lcn/nubia/commonui/phone/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    goto :goto_2

    :cond_7
    if-ne v3, v6, :cond_8

    new-instance v5, Lcom/android/phone/GsmUmtsOptions;

    iget-object v7, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-direct {v5, p0, v4, v7}, Lcom/android/phone/GsmUmtsOptions;-><init>(Lcn/nubia/commonui/phone/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    goto/16 :goto_2

    :cond_8
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3    # "phoneType":I
    .restart local v0    # "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    :cond_9
    iget-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-ne v5, v6, :cond_1

    const v5, 0x7f0b0409

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->setTitle(I)V

    goto/16 :goto_3

    :cond_a
    iget-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mUsagedetail:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v5, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mSimToolkit:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    iget-boolean v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonDataRoam:Landroid/preference/nubia/phone/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/nubia/phone/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->finish()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-ne p1, v3, :cond_1

    iget-object v4, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcn/nubia/commonui/phone/preference/ListPreference;->setValue(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "buttonNetworkMode":I
    invoke-direct {p0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->getPreferredNetworkMode()I

    move-result v2

    .local v2, "settingsNetworkMode":I
    if-eq v0, v2, :cond_1

    move v1, v0

    .local v1, "modemNetworkMode":I
    if-ltz v1, :cond_0

    const/16 v3, 0x16

    if-le v1, v3, :cond_2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Network Mode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Chosen. Ignore mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    .end local v0    # "buttonNetworkMode":I
    .end local v1    # "modemNetworkMode":I
    .end local v2    # "settingsNetworkMode":I
    :cond_1
    :goto_0
    return v5

    .restart local v0    # "buttonNetworkMode":I
    .restart local v1    # "modemNetworkMode":I
    .restart local v2    # "settingsNetworkMode":I
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->UpdatePreferredNetworkModeSummary(I)V

    invoke-direct {p0, v0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->setPreferredNetworkMode(I)V

    iget-object v3, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mHandler:Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;

    invoke-virtual {v4, v5}, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v4, p1}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v4

    if-ne v4, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonDataRoam:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-ne p1, v4, :cond_3

    const-string v4, "onPreferenceTreeClick: preference = mButtonDataRoam"

    invoke-static {v4}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonDataRoam:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v3, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mOkClicked:Z

    new-instance v3, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0144

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setIconAttribute(I)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    invoke-virtual {v3, v4, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    invoke-virtual {v3, v4, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/phone/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcn/nubia/commonui/phone/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->multiSimSetDataRoaming(Z)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v4, p1}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v4

    if-ne v4, v2, :cond_4

    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object p1, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mClickedPreference:Landroid/preference/Preference;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v4, 0x11

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mUsagedetail:Landroid/preference/Preference;

    if-ne p1, v4, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "subscription"

    iget-object v4, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mSimToolkit:Landroid/preference/Preference;

    if-ne p1, v4, :cond_6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.stk"

    const-string v4, "com.android.stk.StkAppService"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "op"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "SLOT_ID"

    iget-object v4, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    iget-object v4, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-ne p1, v4, :cond_7

    invoke-direct {p0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->getPreferredNetworkMode()I

    move-result v1

    .local v1, "settingsNetworkMode":I
    iget-object v3, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/phone/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "settingsNetworkMode":I
    :cond_7
    move v2, v3

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    invoke-super {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonDataRoam:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->multiSimGetDataRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/nubia/phone/CheckBoxPreference;->setChecked(Z)V

    sget-boolean v1, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mNbTM:Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    invoke-virtual {v2}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getVirtualCardSlot()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonDataRoam:Landroid/preference/nubia/phone/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/nubia/phone/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mSimToolkit:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    .local v0, "hasIccCard":Z
    iget-object v1, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mSimToolkit:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .end local v0    # "hasIccCard":Z
    :cond_1
    iget-object v1, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mSimReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
