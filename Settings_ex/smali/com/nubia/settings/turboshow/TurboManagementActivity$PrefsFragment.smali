.class public Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "TurboManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/settings/turboshow/TurboManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefsFragment"
.end annotation


# instance fields
.field private defaultDataUsageText:Ljava/lang/String;

.field private mAccelerationSpeedSwitch:Landroid/preference/nubia/CheckBoxPreference;

.field private final mAllowAccClickableObserver:Landroid/database/ContentObserver;

.field private mAverageSpeed:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIMEIMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRunning:Z

.field private mMobileDataUsage:Landroid/widget/TextView;

.field private mMobileDataUsageText:Ljava/lang/String;

.field private mMobileDataUsageTips:Landroid/widget/TextView;

.field private final mNetDataAndSpeedIsShowChangeObserver:Landroid/database/ContentObserver;

.field private mShowAccelerationNotification:Landroid/preference/nubia/CheckBoxPreference;

.field private mSpeedVaule:Ljava/lang/String;

.field private final mStartOnAnimDelay:Ljava/lang/Runnable;

.field private mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;

.field private mTotalMobileTraffic:Ljava/math/BigInteger;

.field private mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;

.field private wifiLetView:Lcom/nubia/settings/turboshow/WifiLetView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 72
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mTotalMobileTraffic:Ljava/math/BigInteger;

    .line 115
    const-string v0, "0"

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageText:Ljava/lang/String;

    .line 116
    const-string v0, "0"

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSpeedVaule:Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$1;

    invoke-direct {v0, p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$1;-><init>(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)V

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mStartOnAnimDelay:Ljava/lang/Runnable;

    .line 609
    new-instance v0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$5;-><init>(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mNetDataAndSpeedIsShowChangeObserver:Landroid/database/ContentObserver;

    .line 633
    new-instance v0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$6;-><init>(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAllowAccClickableObserver:Landroid/database/ContentObserver;

    .line 647
    return-void
.end method

.method static synthetic access$000(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->updateUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/preference/nubia/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAccelerationSpeedSwitch:Landroid/preference/nubia/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAverageSpeed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getDataUsage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Lcom/nubia/settings/turboshow/WifiLetView;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->wifiLetView:Lcom/nubia/settings/turboshow/WifiLetView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isSustainedAccelerationEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isWifiWeakAccelerationEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->startNbroutesevice(ZZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mStartOnAnimDelay:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->sendBroadCastToService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->closeService()V

    return-void
.end method

.method static synthetic access$2000(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mIMEIMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getNBRouteSpeedUpTime()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getNBTouteConumeThrput()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getNBRouteAvgSpeedUpTate()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isAllowAccSpeedPreferClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->updateAccelerationSpeedSwitchEnable(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/preference/nubia/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/preference/nubia/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/preference/nubia/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mShowAccelerationNotification:Landroid/preference/nubia/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageTips:Landroid/widget/TextView;

    return-object v0
.end method

.method private closeService()V
    .locals 3

    .prologue
    .line 254
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->updateAccelerationSpeedSwitchEnable(I)V

    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v0, "closeSwitchAcceleration":Landroid/content/Intent;
    const-string v1, "cn.nubia.intent.action.NBRouteService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v1, "cn.nubia.nbrouteservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v1, "NBRouteExtraInfoKey"

    const-string v2, "closeTurbo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 261
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mIsRunning:Z

    .line 262
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->updateUI()V

    .line 263
    return-void
.end method

.method private dealOneEnvBefStartService()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 177
    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->checkOneEnvBefStartService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAccelerationSpeedSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 179
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0e16

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$2;

    invoke-direct {v3, p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$2;-><init>(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dealTwoEnvBefStartService()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 196
    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->checkTwoEnvBefStartService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAccelerationSpeedSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 198
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0e1d

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;

    invoke-direct {v3, p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;-><init>(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$3;

    invoke-direct {v3, p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$3;-><init>(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private findPreferences()V
    .locals 1

    .prologue
    .line 462
    const-string v0, "acceleration_speed_switch"

    invoke-virtual {p0, v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAccelerationSpeedSwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 463
    const-string v0, "sustained_acceleration"

    invoke-virtual {p0, v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    .line 464
    const-string v0, "wifi_weak_acceleration"

    invoke-virtual {p0, v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    .line 465
    const-string v0, "show_acceleration_notification"

    invoke-virtual {p0, v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mShowAccelerationNotification:Landroid/preference/nubia/CheckBoxPreference;

    .line 466
    return-void
.end method

.method private findUI(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 363
    const v0, 0x7f12005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nubia/settings/turboshow/WifiLetView;

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->wifiLetView:Lcom/nubia/settings/turboshow/WifiLetView;

    .line 365
    const v0, 0x7f12005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageTips:Landroid/widget/TextView;

    .line 367
    const v0, 0x7f12005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAverageSpeed:Landroid/widget/TextView;

    .line 368
    const v0, 0x7f12005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsage:Landroid/widget/TextView;

    .line 370
    return-void
.end method

.method private getDataUsage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isAccelerationSpeedSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "NBRouteMoblieThroughput"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageText:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mTotalMobileTraffic:Ljava/math/BigInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mTotalMobileTraffic:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->convertDataUsage(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageText:Ljava/lang/String;

    .line 291
    :goto_1
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageText:Ljava/lang/String;

    return-object v0

    .line 282
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageText:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mTotalMobileTraffic:Ljava/math/BigInteger;

    .line 284
    const-string v0, "getDataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mTotalMobileTraffic:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->defaultDataUsageText:Ljava/lang/String;

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageText:Ljava/lang/String;

    goto :goto_1
.end method

.method private getNBRouteAvgSpeedUpTate()I
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "NBRouteAvgSpeedUpRate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNBRouteSpeedUpTime()I
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "NBRouteSpeedUpTime"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNBTouteConumeThrput()I
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "NBRouteConsumeThrput"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSpeed()I
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "NBRouteSpeedUpRatio"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSpeedVaule:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSpeedVaule:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSpeedVaule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSpeedVaule:Ljava/lang/String;

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSpeedVaule:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private initPreferenceTree()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 469
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAccelerationSpeedSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isAccelerationSpeedSwitchEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 471
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isSustainedAccelerationEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 472
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isWifiWeakAccelerationEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 473
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mShowAccelerationNotification:Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isShowAccelerationNotificationEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 475
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isAccelerationSpeedSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 477
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 478
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mShowAccelerationNotification:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 484
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 481
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mShowAccelerationNotification:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private isAccelerationSpeedSwitchEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 431
    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "NBRouteTurboState"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isAllowAccSpeedPreferClick()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 629
    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "NBRouteEnableSwitch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowAccelerationNotificationEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 497
    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_acceleration_notification_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSustainedAccelerationEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 487
    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "NBRoutePersistSpeedUp"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiWeakAccelerationEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 492
    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "NBRouteDemandSpeedUp"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private resetAllowAccClickableChangeObserver()V
    .locals 4

    .prologue
    .line 641
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAllowAccClickableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 642
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "NBRouteEnableSwitch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAllowAccClickableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 645
    return-void
.end method

.method private resetNetSpeedIsShowChangeObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 618
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mNetDataAndSpeedIsShowChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 620
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "NBRouteSpeedUpRatio"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mNetDataAndSpeedIsShowChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 623
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "NBRouteMoblieThroughput"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mNetDataAndSpeedIsShowChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 626
    return-void
.end method

.method private sendBroadCastToService(Ljava/lang/String;)V
    .locals 2
    .param p1, "activityInOutInfo"    # Ljava/lang/String;

    .prologue
    .line 454
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 455
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.nubia.intent.action.NBRouteService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v1, "cn.nubia.nbrouteservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const-string v1, "NBRouteExtraInfoKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 459
    return-void
.end method

.method private startNbroutesevice(ZZ)V
    .locals 4
    .param p1, "isSustainedAccelerationEnable"    # Z
    .param p2, "isWifiWeakAccelerationEnable"    # Z

    .prologue
    .line 437
    if-eqz p1, :cond_1

    .line 438
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 439
    .local v0, "openSustainedAcceleration":Landroid/content/Intent;
    const-string v2, "cn.nubia.intent.action.NBRouteService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v2, "cn.nubia.nbrouteservice"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v2, "NBRouteExtraInfoKey"

    const-string v3, "openPersistSpeedUp"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    iget-object v2, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 452
    .end local v0    # "openSustainedAcceleration":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    if-eqz p2, :cond_0

    .line 445
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 446
    .local v1, "openWifiWeakAcceleration":Landroid/content/Intent;
    const-string v2, "cn.nubia.intent.action.NBRouteService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v2, "cn.nubia.nbrouteservice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v2, "NBRouteExtraInfoKey"

    const-string v3, "openDemandSpeedUp"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    iget-object v2, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private updateAccelerationMode(ZZ)V
    .locals 1
    .param p1, "isSustainedMode"    # Z
    .param p2, "isWifiWeakMode"    # Z

    .prologue
    .line 503
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 504
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 505
    return-void
.end method

.method private updateAccelerationSpeedSwitchEnable(I)V
    .locals 2
    .param p1, "isEnable"    # I

    .prologue
    .line 508
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "NBRouteTurboState"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 510
    return-void
.end method

.method private updateLastUI()V
    .locals 5

    .prologue
    const v4, 0x3f5eb852    # 0.87f

    const v3, 0x3f0a3d71    # 0.54f

    const v2, 0x3e947ae1    # 0.29f

    .line 373
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isAccelerationSpeedSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageTips:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAverageSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 380
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 381
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 382
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsage:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getDataUsage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->wifiLetView:Lcom/nubia/settings/turboshow/WifiLetView;

    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getSpeed()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nubia/settings/turboshow/WifiLetView;->startRefreashAnim(IZ)V

    .line 395
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageTips:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAverageSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 391
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 392
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageTips:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 393
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsage:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getDataUsage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateShowAccelerationNotificationEnable(I)V
    .locals 2
    .param p1, "isEnable"    # I

    .prologue
    .line 513
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_acceleration_notification_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 515
    return-void
.end method

.method private updateUI()V
    .locals 6

    .prologue
    const v5, 0x3f5eb852    # 0.87f

    const v4, 0x3f0a3d71    # 0.54f

    const v3, 0x3e947ae1    # 0.29f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 398
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isAccelerationSpeedSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 404
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 405
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mShowAccelerationNotification:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 406
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageTips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAverageSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 408
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 409
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageTips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 410
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsage:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getDataUsage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->wifiLetView:Lcom/nubia/settings/turboshow/WifiLetView;

    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getSpeed()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/nubia/settings/turboshow/WifiLetView;->startRefreashAnim(IZ)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 418
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 419
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mShowAccelerationNotification:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 420
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageTips:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAverageSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 422
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsage:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 423
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageTips:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 424
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsage:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getDataUsage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-boolean v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->wifiLetView:Lcom/nubia/settings/turboshow/WifiLetView;

    invoke-virtual {v0}, Lcom/nubia/settings/turboshow/WifiLetView;->startOffAnim()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->addPreferencesFromResource(I)V

    .line 132
    invoke-virtual {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    .line 133
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0e14

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->defaultDataUsageText:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->defaultDataUsageText:Ljava/lang/String;

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageText:Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->findPreferences()V

    .line 137
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->initPreferenceTree()V

    .line 138
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->resetNetSpeedIsShowChangeObserver()V

    .line 139
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->resetAllowAccClickableChangeObserver()V

    .line 140
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    const v1, 0x7f040016

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mHandler:Landroid/os/Handler;

    .line 171
    invoke-direct {p0, v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->findUI(Landroid/view/View;)V

    .line 172
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->updateLastUI()V

    .line 173
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    .line 162
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->wifiLetView:Lcom/nubia/settings/turboshow/WifiLetView;

    invoke-virtual {v0}, Lcom/nubia/settings/turboshow/WifiLetView;->cancelAnim()V

    .line 163
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->wifiLetView:Lcom/nubia/settings/turboshow/WifiLetView;

    invoke-virtual {v0}, Lcom/nubia/settings/turboshow/WifiLetView;->recycleBitmap()V

    .line 164
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 155
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isAccelerationSpeedSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "leaveTurboActivity"

    invoke-direct {p0, v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->sendBroadCastToService(Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v3, 0x3e947ae1    # 0.29f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 297
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v0, p2, :cond_3

    .line 298
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    const-string v3, "open_persist_speed_up"

    invoke-static {v0, v3}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->recordUmengData(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 301
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->updateAccelerationMode(ZZ)V

    .line 303
    invoke-direct {p0, v1, v2}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->startNbroutesevice(ZZ)V

    .line 359
    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 301
    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v0, p2, :cond_7

    .line 309
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 310
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    const-string v3, "open_onDemand_speed_up"

    invoke-static {v0, v3}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->recordUmengData(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 312
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    iget-object v3, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    :goto_4
    invoke-direct {p0, v0, v3}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->updateAccelerationMode(ZZ)V

    .line 314
    invoke-direct {p0, v2, v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->startNbroutesevice(ZZ)V

    goto :goto_2

    :cond_4
    move v0, v2

    .line 312
    goto :goto_3

    :cond_5
    move v3, v2

    goto :goto_4

    .line 316
    :cond_6
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    .line 320
    :cond_7
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mShowAccelerationNotification:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v0, p2, :cond_9

    .line 321
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mShowAccelerationNotification:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 322
    invoke-direct {p0, v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->updateShowAccelerationNotificationEnable(I)V

    goto :goto_2

    .line 324
    :cond_8
    invoke-direct {p0, v2}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->updateShowAccelerationNotificationEnable(I)V

    goto :goto_2

    .line 327
    :cond_9
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAccelerationSpeedSwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v0, p2, :cond_a

    .line 328
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAccelerationSpeedSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 329
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->dealOneEnvBefStartService()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 330
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->dealTwoEnvBefStartService()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 331
    invoke-direct {p0, v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->updateAccelerationSpeedSwitchEnable(I)V

    .line 332
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAverageSpeed:Landroid/widget/TextView;

    const v2, 0x3f0a3d71    # 0.54f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 334
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 335
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageTips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 336
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsage:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getDataUsage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 339
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mShowAccelerationNotification:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 340
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->wifiLetView:Lcom/nubia/settings/turboshow/WifiLetView;

    invoke-virtual {v0}, Lcom/nubia/settings/turboshow/WifiLetView;->startOnAnim()V

    .line 341
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isSustainedAccelerationEnable()Z

    move-result v0

    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isWifiWeakAccelerationEnable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->startNbroutesevice(ZZ)V

    .line 343
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mStartOnAnimDelay:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    const-string v0, "enterTurboActivity"

    invoke-direct {p0, v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->sendBroadCastToService(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    const-string v1, "open_nubia_route_service"

    invoke-static {v0, v1}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->recordUmengData(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mIMEIMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getIMEIs(Ljava/util/HashMap;Landroid/content/Context;)V

    .line 348
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mIMEIMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getNBRouteSpeedUpTime()I

    move-result v2

    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getNBTouteConumeThrput()I

    move-result v3

    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getNBRouteAvgSpeedUpTate()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->recordUmengData(Landroid/content/Context;Ljava/util/HashMap;III)V

    .line 359
    :cond_a
    :goto_5
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_2

    .line 355
    :cond_b
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    const-string v1, "close_nubia_route_service"

    invoke-static {v0, v1}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->recordUmengData(Landroid/content/Context;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->closeService()V

    goto :goto_5
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 143
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 144
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isAccelerationSpeedSwitchEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "enterTurboActivity"

    invoke-direct {p0, v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->sendBroadCastToService(Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "turbo_show_first"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 148
    new-instance v0, Lcom/nubia/settings/turboshow/TipsDialog;

    invoke-direct {v0}, Lcom/nubia/settings/turboshow/TipsDialog;-><init>()V

    .line 149
    .local v0, "dialog":Lcom/nubia/settings/turboshow/TipsDialog;
    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nubia/settings/turboshow/TipsDialog;->show(Landroid/content/Context;)V

    .line 151
    .end local v0    # "dialog":Lcom/nubia/settings/turboshow/TipsDialog;
    :cond_1
    return-void
.end method
