.class public Lcom/android/settings_ex/sim/SimDialogActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/sim/SimDialogActivity$SelectAccountListAdapter;
    }
.end annotation


# static fields
.field public static DIALOG_TYPE_KEY:Ljava/lang/String;

.field public static PREFERRED_SIM:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "SimDialogActivity"

    sput-object v0, Lcom/android/settings_ex/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    .line 58
    const-string v0, "preferred_sim"

    sput-object v0, Lcom/android/settings_ex/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    .line 59
    const-string v0, "dialog_type"

    sput-object v0, Lcom/android/settings_ex/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 66
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimDialogActivity;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    .line 326
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimDialogActivity;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/SimDialogActivity;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/android/settings_ex/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/android/settings_ex/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimDialogActivity;
    .param p1, "x1"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/sim/SimDialogActivity;Landroid/content/Context;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimDialogActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/sim/SimDialogActivity;->displayDdsAlertIfNeeded(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/settings_ex/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/sim/SimDialogActivity;)Lcom/android/internal/telephony/IExtTelephony;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimDialogActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimDialogActivity;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    return-object v0
.end method

.method private displayDdsAlertIfNeeded(Landroid/content/Context;II)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "defaultDataSubId"    # I

    .prologue
    .line 418
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 419
    .local v2, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 420
    .local v3, "telephonymanager":Landroid/telephony/TelephonyManager;
    sget-object v7, Lcom/android/settings_ex/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Default Data SubId ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-static {p1, p3}, Lcom/android/settings_ex/sim/SimDialogActivity;->isDdsSwitchAlertDialogSupported(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, p3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_0

    invoke-virtual {v3, p3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v7

    const/16 v8, 0x13

    if-eq v7, v8, :cond_0

    invoke-virtual {v3, p3}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_0

    invoke-virtual {v3, p3}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v7

    const/16 v8, 0x13

    if-ne v7, v8, :cond_1

    .line 431
    :cond_0
    sget-object v7, Lcom/android/settings_ex/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    const-string v8, "DDS switch request from LTE sub"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v7, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v7, p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 434
    .local v0, "alertDlg":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0a7e

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 437
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0a7f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, "warningString":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcn/nubia/commonui/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 441
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 443
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0064

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 445
    .local v6, "yes":Ljava/lang/String;
    new-instance v7, Lcom/android/settings_ex/sim/SimDialogActivity$6;

    invoke-direct {v7, p0, p2, v2, p1}, Lcom/android/settings_ex/sim/SimDialogActivity$6;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;ILandroid/telephony/SubscriptionManager;Landroid/content/Context;)V

    invoke-virtual {v0, v6, v7}, Lcn/nubia/commonui/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0065

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "no":Ljava/lang/String;
    new-instance v7, Lcom/android/settings_ex/sim/SimDialogActivity$7;

    invoke-direct {v7, p0, p2}, Lcom/android/settings_ex/sim/SimDialogActivity$7;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;I)V

    invoke-virtual {v0, v1, v7}, Lcn/nubia/commonui/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 466
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 467
    const/4 v7, 0x1

    .line 469
    .end local v0    # "alertDlg":Lcn/nubia/commonui/app/AlertDialog;
    .end local v1    # "no":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "warningString":Ljava/lang/String;
    .end local v6    # "yes":Ljava/lang/String;
    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private displayPreferredDialog(I)V
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 92
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 93
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 96
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_0

    .line 97
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, "alertDialogBuilder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v4, 0x7f0c039a

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 99
    const v4, 0x7f0c039b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 102
    const v4, 0x7f0c0064

    new-instance v5, Lcom/android/settings_ex/sim/SimDialogActivity$1;

    invoke-direct {v5, p0, v3, v1}, Lcom/android/settings_ex/sim/SimDialogActivity$1;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)V

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 115
    const v4, 0x7f0c0065

    new-instance v5, Lcom/android/settings_ex/sim/SimDialogActivity$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/sim/SimDialogActivity$2;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;)V

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 127
    .end local v0    # "alertDialogBuilder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->finish()V

    goto :goto_0
.end method

.method private static getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v6, 0x3

    .line 397
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/telephony/TelephonyManager;->getIccOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 399
    .local v0, "config":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 400
    .local v2, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 402
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 403
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Landroid/content/res/Configuration;->mcc:I

    .line 404
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Landroid/content/res/Configuration;->mnc:I

    .line 406
    :cond_0
    sget-object v5, Lcom/android/settings_ex/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getResourcesForSubId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mccmnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 410
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 411
    .local v3, "newMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 413
    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6, v3, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v5
.end method

.method private static isDdsSwitchAlertDialogSupported(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 385
    invoke-static {p0, p1}, Lcom/android/settings_ex/sim/SimDialogActivity;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    .line 386
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f100011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method private static setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 130
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 131
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 132
    const v1, 0x7f0c0991

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 133
    return-void
.end method

.method private static setDefaultSmsSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 136
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 137
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 138
    return-void
.end method

.method private setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 141
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 142
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 143
    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 146
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 147
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 148
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 151
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 153
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 154
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 159
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 163
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v21, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v27

    .line 165
    .local v27, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v7, "smsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 168
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_0

    const/16 v24, 0x0

    .line 170
    .local v24, "selectableSubInfoLength":I
    :goto_0
    new-instance v2, Lcom/android/settings_ex/sim/SimDialogActivity$3;

    move-object/from16 v3, p0

    move/from16 v4, p2

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/sim/SimDialogActivity$3;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;ILjava/util/List;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 230
    .local v2, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v20, Lcom/android/settings_ex/sim/SimDialogActivity$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/sim/SimDialogActivity$4;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;)V

    .line 241
    .local v20, "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v16, "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_2

    .line 243
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v28

    .line 244
    .local v28, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v29

    .line 245
    .local v29, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v28 .. v28}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v23

    .line 248
    .local v23, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c09ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 251
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v22

    .line 253
    .local v22, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual/range {v22 .. v22}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v26

    .line 255
    .local v26, "subId":I
    const/4 v3, -0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_1

    .line 256
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v25

    .line 258
    .local v25, "sir":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    .end local v2    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v16    # "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .end local v20    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .end local v22    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v23    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v24    # "selectableSubInfoLength":I
    .end local v25    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v26    # "subId":I
    .end local v28    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v29    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v24

    goto/16 :goto_0

    .line 260
    .restart local v2    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v16    # "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v20    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .restart local v22    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .restart local v23    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .restart local v24    # "selectableSubInfoLength":I
    .restart local v26    # "subId":I
    .restart local v28    # "telecomManager":Landroid/telecom/TelecomManager;
    .restart local v29    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    .end local v22    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v23    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v26    # "subId":I
    .end local v28    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v29    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_4

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c09ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 267
    move/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telephony/SubscriptionInfo;

    .line 268
    .restart local v25    # "sir":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v18

    .line 270
    .local v18, "displayName":Ljava/lang/CharSequence;
    if-nez v18, :cond_3

    .line 271
    const-string v18, ""

    .line 273
    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 276
    .end local v18    # "displayName":Ljava/lang/CharSequence;
    .end local v19    # "i":I
    .end local v25    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_4
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 277
    move/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telephony/SubscriptionInfo;

    .line 278
    .restart local v25    # "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v18

    .line 279
    .restart local v18    # "displayName":Ljava/lang/CharSequence;
    if-nez v18, :cond_5

    .line 280
    const-string v18, ""

    .line 282
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 286
    .end local v18    # "displayName":Ljava/lang/CharSequence;
    .end local v19    # "i":I
    .end local v25    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_6
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 288
    .local v13, "arr":[Ljava/lang/String;
    new-instance v15, Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    .local v15, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    new-instance v8, Lcom/android/settings_ex/sim/SimDialogActivity$SelectAccountListAdapter;

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    move-object/from16 v10, v16

    :goto_4
    invoke-virtual {v15}, Lcn/nubia/commonui/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f040170

    move-object/from16 v9, p0

    move/from16 v14, p2

    invoke-direct/range {v8 .. v14}, Lcom/android/settings_ex/sim/SimDialogActivity$SelectAccountListAdapter;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;I)V

    .line 297
    .local v8, "adapter":Landroid/widget/ListAdapter;
    packed-switch p2, :pswitch_data_0

    .line 308
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid dialog type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in SIM dialog."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 290
    .end local v8    # "adapter":Landroid/widget/ListAdapter;
    :cond_7
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_8

    move-object v10, v7

    goto :goto_4

    :cond_8
    move-object v10, v5

    goto :goto_4

    .line 299
    .restart local v8    # "adapter":Landroid/widget/ListAdapter;
    :pswitch_0
    const v3, 0x7f0c0990

    invoke-virtual {v15, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 312
    :goto_5
    invoke-virtual {v15, v8, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v17

    .line 313
    .local v17, "dialog":Landroid/app/Dialog;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 315
    new-instance v3, Lcom/android/settings_ex/sim/SimDialogActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings_ex/sim/SimDialogActivity$5;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 322
    return-object v17

    .line 302
    .end local v17    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    const v3, 0x7f0c0992

    invoke-virtual {v15, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    goto :goto_5

    .line 305
    :pswitch_2
    const v3, 0x7f0c099c

    invoke-virtual {v15, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    goto :goto_5

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 73
    .local v1, "extras":Landroid/os/Bundle;
    sget-object v2, Lcom/android/settings_ex/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 75
    .local v0, "dialogType":I
    packed-switch v0, :pswitch_data_0

    .line 85
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid dialog type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :pswitch_0
    invoke-virtual {p0, p0, v0}, Lcom/android/settings_ex/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 88
    :goto_0
    return-void

    .line 82
    :pswitch_1
    sget-object v2, Lcom/android/settings_ex/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/SimDialogActivity;->displayPreferredDialog(I)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
