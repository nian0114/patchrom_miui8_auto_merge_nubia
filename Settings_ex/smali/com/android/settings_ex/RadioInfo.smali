.class public Lcom/android/settings_ex/RadioInfo;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/RadioInfo$24;,
        Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private attempts:Landroid/widget/TextView;

.field private callState:Landroid/widget/TextView;

.field private cellInfoListRateButton:Landroid/widget/Button;

.field private dBm:Landroid/widget/TextView;

.field private disconnects:Landroid/widget/TextView;

.field private dnsCheckState:Landroid/widget/TextView;

.field private dnsCheckToggleButton:Landroid/widget/Button;

.field private gprsState:Landroid/widget/TextView;

.field private gsmState:Landroid/widget/TextView;

.field private imsRegRequiredButton:Landroid/widget/Button;

.field private imsVoLteProvisionedButton:Landroid/widget/Button;

.field private lteRamDumpButton:Landroid/widget/Button;

.field private mCellInfo:Landroid/widget/TextView;

.field mCellInfoListRateHandler:Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;

.field private mCellInfoValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCfi:Landroid/widget/TextView;

.field private mCfiValue:Z

.field private mDcRtInfoTv:Landroid/widget/TextView;

.field private mDeviceId:Landroid/widget/TextView;

.field mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

.field private mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

.field mImsVoLteProvisionedHandler:Landroid/view/View$OnClickListener;

.field private mLocation:Landroid/widget/TextView;

.field mLteRamDumpHandler:Landroid/view/View$OnClickListener;

.field private mMwi:Landroid/widget/TextView;

.field private mMwiValue:Z

.field private mNeighboringCids:Landroid/widget/TextView;

.field mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field mPowerButtonHandler:Landroid/view/View$OnClickListener;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkLabels:[Ljava/lang/String;

.field mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mSmsOverImsHandler:Landroid/view/View$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private network:Landroid/widget/TextView;

.field private number:Landroid/widget/TextView;

.field private oemInfoButton:Landroid/widget/Button;

.field private operatorName:Landroid/widget/TextView;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private pingTestButton:Landroid/widget/Button;

.field private preferredNetworkType:Landroid/widget/Spinner;

.field private radioPowerButton:Landroid/widget/Button;

.field private received:Landroid/widget/TextView;

.field private refreshSmscButton:Landroid/widget/Button;

.field private resets:Landroid/widget/TextView;

.field private roamingState:Landroid/widget/TextView;

.field private sent:Landroid/widget/TextView;

.field private sentSinceReceived:Landroid/widget/TextView;

.field private smsOverImsButton:Landroid/widget/Button;

.field private smsc:Landroid/widget/EditText;

.field private successes:Landroid/widget/TextView;

.field private updateSmscButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 70
    const-string v0, "phone"

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->TAG:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 136
    iput-boolean v2, p0, Lcom/android/settings_ex/RadioInfo;->mMwiValue:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/settings_ex/RadioInfo;->mCfiValue:Z

    .line 140
    new-instance v0, Lcom/android/settings_ex/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$1;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 184
    new-instance v0, Lcom/android/settings_ex/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$2;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 867
    new-instance v0, Lcom/android/settings_ex/RadioInfo$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$7;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 882
    new-instance v0, Lcom/android/settings_ex/RadioInfo$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$8;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 897
    new-instance v0, Lcom/android/settings_ex/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$9;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 913
    new-instance v0, Lcom/android/settings_ex/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$10;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 920
    new-instance v0, Lcom/android/settings_ex/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$11;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 929
    new-instance v0, Lcom/android/settings_ex/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$12;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 947
    new-instance v0, Lcom/android/settings_ex/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$13;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    .line 972
    new-instance v0, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoListRateHandler:Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;

    .line 976
    new-instance v0, Lcom/android/settings_ex/RadioInfo$14;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$14;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    .line 1002
    new-instance v0, Lcom/android/settings_ex/RadioInfo$15;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$15;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    .line 1018
    new-instance v0, Lcom/android/settings_ex/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$16;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mImsVoLteProvisionedHandler:Landroid/view/View$OnClickListener;

    .line 1070
    new-instance v0, Lcom/android/settings_ex/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$17;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    .line 1093
    new-instance v0, Lcom/android/settings_ex/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$18;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    .line 1100
    new-instance v0, Lcom/android/settings_ex/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$19;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    .line 1113
    new-instance v0, Lcom/android/settings_ex/RadioInfo$20;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$20;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 1119
    new-instance v0, Lcom/android/settings_ex/RadioInfo$21;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$21;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1127
    new-instance v0, Lcom/android/settings_ex/RadioInfo$22;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$22;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1133
    new-instance v0, Lcom/android/settings_ex/RadioInfo$23;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$23;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1146
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WCDMA preferred"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "GSM only"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WCDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GSM auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EvDo only"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LTE/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LTE/GSM auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LTE/GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LTE only"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "LTE/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TD-SCDMA only"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TD-SCDMA and WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TD-SCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TD-SCDMA and GSM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TD-SCDMA,GSM and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TD-SCDMA, GSM/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TD-SCDMA, WCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "TD-SCDMA, GSM/WCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TD-SCDMA, GSM/WCDMA, CDMA and EvDo"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TD-SCDMA, LTE, CDMA, EvDo GSM/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateDataState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateDataStats()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/RadioInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RadioInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/RadioInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;
    .param p1, "x1"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RadioInfo;->updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateServiceState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateImsVoLteProvisionedState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/RadioInfo;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updatePdpList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/RadioInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RadioInfo;->updateNeighboringCids(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->smsc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings_ex/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings_ex/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings_ex/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->pingHostname()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/settings_ex/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settings_ex/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateCellInfoListRate()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/settings_ex/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isImsRegRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateImsRegRequiredState()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/settings_ex/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateSmsOverImsState()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/settings_ex/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isImsVoLteProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/settings_ex/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateLteRamDumpState()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updatePingState()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/settings_ex/RadioInfo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;
    .param p1, "x1"    # Landroid/telephony/CellLocation;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings_ex/RadioInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/settings_ex/RadioInfo;->mMwiValue:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/settings_ex/RadioInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/settings_ex/RadioInfo;->mCfiValue:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method private httpClientTest()V
    .locals 6

    .prologue
    .line 756
    const/4 v3, 0x0

    .line 759
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v4, "https://www.google.com"

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 760
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 761
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 762
    const-string v4, "Pass"

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    :goto_0
    if-eqz v3, :cond_0

    .line 770
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 773
    .end local v2    # "url":Ljava/net/URL;
    :cond_0
    :goto_1
    return-void

    .line 764
    .restart local v2    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail: Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 766
    .end local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 767
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 769
    if-eqz v3, :cond_0

    .line 770
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 769
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 770
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v4
.end method

.method private isImsRegRequired()Z
    .locals 2

    .prologue
    .line 989
    const-string v0, "persist.radio.imsregrequired"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isImsVoLteProvisioned()Z
    .locals 3

    .prologue
    .line 1045
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 1046
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1047
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v1

    .line 1049
    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLteRamDumpEnabled()Z
    .locals 2

    .prologue
    .line 1082
    const-string v0, "persist.radio.ramdump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isRadioOn()Z
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmsOverImsEnabled()Z
    .locals 2

    .prologue
    .line 1014
    const-string v0, "persist.radio.imsallowmtsms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1173
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioInfo] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    return-void
.end method

.method private final pingHostname()V
    .locals 5

    .prologue
    .line 736
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "ping -c 1 www.google.com"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 737
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 738
    .local v2, "status":I
    if-nez v2, :cond_0

    .line 739
    const-string v3, "Pass"

    iput-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 750
    .end local v1    # "p":Ljava/lang/Process;
    .end local v2    # "status":I
    :goto_0
    return-void

    .line 741
    .restart local v1    # "p":Ljava/lang/Process;
    .restart local v2    # "status":I
    :cond_0
    const-string v3, "Fail: Host unreachable"

    iput-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 743
    .end local v1    # "p":Ljava/lang/Process;
    .end local v2    # "status":I
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v3, "Fail: Unknown Host"

    iput-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 745
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 746
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Fail: IOException"

    iput-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 747
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 748
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "Fail: InterruptedException"

    iput-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private final pingIpAddr()V
    .locals 7

    .prologue
    .line 716
    :try_start_0
    const-string v1, "74.125.47.104"

    .line 717
    .local v1, "ipAddress":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ping -c 1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 718
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 719
    .local v3, "status":I
    if-nez v3, :cond_0

    .line 720
    const-string v4, "Pass"

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 729
    .end local v1    # "ipAddress":Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "status":I
    :goto_0
    return-void

    .line 722
    .restart local v1    # "ipAddress":Ljava/lang/String;
    .restart local v2    # "p":Ljava/lang/Process;
    .restart local v3    # "status":I
    :cond_0
    const-string v4, "Fail: IP addr not reachable"

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 724
    .end local v1    # "ipAddress":Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "status":I
    :catch_0
    move-exception v0

    .line 725
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0

    .line 726
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "Fail: InterruptedException"

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshSmsc()V
    .locals 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 777
    return-void
.end method

.method private final updateCallRedirect()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings_ex/RadioInfo;->mCfiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    return-void
.end method

.method private updateCellInfoListRate()V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoListRate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoListRateHandler:Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;

    invoke-virtual {v2}, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;->getRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V

    .line 454
    return-void
.end method

.method private final updateCellInfoTv(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoValue:Ljava/util/List;

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .local v3, "value":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoValue:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 547
    const/4 v2, 0x0

    .line 548
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 549
    .local v0, "ci":Landroid/telephony/CellInfo;
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 554
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 558
    .end local v0    # "ci":Landroid/telephony/CellInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    return-void
.end method

.method private final updateDataState()V
    .locals 4

    .prologue
    .line 630
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    .line 631
    .local v2, "state":I
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 632
    .local v1, "r":Landroid/content/res/Resources;
    const v3, 0x7f0c008f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "display":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 649
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    return-void

    .line 636
    :pswitch_0
    const v3, 0x7f0c008d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 637
    goto :goto_0

    .line 639
    :pswitch_1
    const v3, 0x7f0c008c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 640
    goto :goto_0

    .line 642
    :pswitch_2
    const v3, 0x7f0c008b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 643
    goto :goto_0

    .line 645
    :pswitch_3
    const v3, 0x7f0c008e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 634
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateDataStats()V
    .locals 3

    .prologue
    .line 678
    const-string v1, "net.gsm.radio-reset"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->resets:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    const-string v1, "net.gsm.attempt-gprs"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->attempts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    const-string v1, "net.gsm.succeed-gprs"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->successes:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    const-string v1, "net.ppp.reset-by-timeout"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    return-void
.end method

.method private final updateDataStats2()V
    .locals 14

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 697
    .local v2, "r":Landroid/content/res/Resources;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v10

    .line 698
    .local v10, "txPackets":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v6

    .line 699
    .local v6, "rxPackets":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v8

    .line 700
    .local v8, "txBytes":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v4

    .line 702
    .local v4, "rxBytes":J
    const v3, 0x7f0c0090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, "packets":Ljava/lang/String;
    const v3, 0x7f0c0091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "bytes":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->sent:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->received:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    return-void
.end method

.method private final updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mDcRtInfoTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    return-void
.end method

.method private updateDnsCheckState()V
    .locals 2

    .prologue
    .line 457
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0 allowed"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    return-void

    .line 457
    :cond_0
    const-string v0, "0.0.0.0 not allowed"

    goto :goto_0
.end method

.method private updateImsRegRequiredState()V
    .locals 3

    .prologue
    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsRegRequiredState isImsRegRequired()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isImsRegRequired()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/RadioInfo;->log(Ljava/lang/String;)V

    .line 994
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isImsRegRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c0079

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 997
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 998
    return-void

    .line 994
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c0078

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateImsVoLteProvisionedState()V
    .locals 3

    .prologue
    .line 1053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsVoLteProvisionedState isImsVoLteProvisioned()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isImsVoLteProvisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/RadioInfo;->log(Ljava/lang/String;)V

    .line 1054
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isImsVoLteProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c007b

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->imsVoLteProvisionedButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    return-void

    .line 1054
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c007a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 13
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    const/4 v12, -0x1

    .line 488
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 489
    .local v7, "r":Landroid/content/res/Resources;
    instance-of v9, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v9, :cond_2

    move-object v4, p1

    .line 490
    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 491
    .local v4, "loc":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 492
    .local v2, "lac":I
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 493
    .local v1, "cid":I
    iget-object v10, p0, Lcom/android/settings_ex/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0c0094

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v2, v12, :cond_0

    const-string v9, "unknown"

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v11, 0x7f0c0095

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v1, v12, :cond_1

    const-string v9, "unknown"

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    .end local v1    # "cid":I
    .end local v2    # "lac":I
    .end local v4    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :goto_2
    return-void

    .line 493
    .restart local v1    # "cid":I
    .restart local v2    # "lac":I
    .restart local v4    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 498
    .end local v1    # "cid":I
    .end local v2    # "lac":I
    .end local v4    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_2
    instance-of v9, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v9, :cond_8

    move-object v4, p1

    .line 499
    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    .line 500
    .local v4, "loc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 501
    .local v0, "bid":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v8

    .line 502
    .local v8, "sid":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v6

    .line 503
    .local v6, "nid":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    .line 504
    .local v3, "lat":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v5

    .line 505
    .local v5, "lon":I
    iget-object v10, p0, Lcom/android/settings_ex/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BID = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v0, v12, :cond_3

    const-string v9, "unknown"

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "SID = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v8, v12, :cond_4

    const-string v9, "unknown"

    :goto_4
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "NID = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v6, v12, :cond_5

    const-string v9, "unknown"

    :goto_5
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "LAT = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v3, v12, :cond_6

    const-string v9, "unknown"

    :goto_6
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "LONG = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v5, v12, :cond_7

    const-string v9, "unknown"

    :goto_7
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    .line 520
    .end local v0    # "bid":I
    .end local v3    # "lat":I
    .end local v4    # "loc":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v5    # "lon":I
    .end local v6    # "nid":I
    .end local v8    # "sid":I
    :cond_8
    iget-object v9, p0, Lcom/android/settings_ex/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string v10, "unknown"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateLteRamDumpState()V
    .locals 3

    .prologue
    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLteRamDumpState isLteRamDumpEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/RadioInfo;->log(Ljava/lang/String;)V

    .line 1087
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c007d

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1090
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    return-void

    .line 1087
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c007c

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateMessageWaiting()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings_ex/RadioInfo;->mMwiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    return-void
.end method

.method private final updateNeighboringCids(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    .line 530
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 531
    const-string v3, "no neighboring cells"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    return-void

    .line 533
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 534
    .local v0, "cell":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 538
    .end local v0    # "cell":Landroid/telephony/NeighboringCellInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final updateNetworkType()V
    .locals 4

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 654
    .local v1, "r":Landroid/content/res/Resources;
    const-string v2, "gsm.network.type"

    const v3, 0x7f0c008f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "display":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->network:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    return-void
.end method

.method private final updatePdpList()V
    .locals 3

    .prologue
    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========DATA=======\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 864
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->disconnects:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    return-void
.end method

.method private final updatePhoneState()V
    .locals 5

    .prologue
    .line 609
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 610
    .local v2, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 611
    .local v1, "r":Landroid/content/res/Resources;
    const v3, 0x7f0c008f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "display":Ljava/lang/String;
    sget-object v3, Lcom/android/settings_ex/RadioInfo$24;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 625
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    return-void

    .line 615
    :pswitch_0
    const v3, 0x7f0c0088

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 616
    goto :goto_0

    .line 618
    :pswitch_1
    const v3, 0x7f0c0089

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 619
    goto :goto_0

    .line 621
    :pswitch_2
    const v3, 0x7f0c008a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updatePingState()V
    .locals 7

    .prologue
    const v6, 0x7f0c008f

    .line 780
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 782
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 783
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 784
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 786
    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    new-instance v4, Lcom/android/settings_ex/RadioInfo$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/RadioInfo$3;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    .line 797
    .local v4, "updatePingResults":Ljava/lang/Runnable;
    new-instance v3, Lcom/android/settings_ex/RadioInfo$4;

    invoke-direct {v3, p0, v0, v4}, Lcom/android/settings_ex/RadioInfo$4;-><init>(Lcom/android/settings_ex/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 804
    .local v3, "ipAddr":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 806
    new-instance v1, Lcom/android/settings_ex/RadioInfo$5;

    invoke-direct {v1, p0, v0, v4}, Lcom/android/settings_ex/RadioInfo$5;-><init>(Lcom/android/settings_ex/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 813
    .local v1, "hostname":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 815
    new-instance v2, Lcom/android/settings_ex/RadioInfo$6;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/settings_ex/RadioInfo$6;-><init>(Lcom/android/settings_ex/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 822
    .local v2, "httpClient":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 823
    return-void
.end method

.method private updatePowerState()V
    .locals 2

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isRadioOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c0075

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 449
    return-void

    .line 445
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c0074

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateProperties()V
    .locals 4

    .prologue
    const v3, 0x7f0c008f

    .line 663
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 665
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 667
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 671
    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 672
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->number:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    return-void
.end method

.method private final updateServiceState()V
    .locals 6

    .prologue
    .line 578
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 579
    .local v2, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 580
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 581
    .local v1, "r":Landroid/content/res/Resources;
    const v4, 0x7f0c008f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "display":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 596
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 599
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v5, 0x7f0c0086

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 604
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->operatorName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    return-void

    .line 585
    :pswitch_0
    const v4, 0x7f0c0082

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 586
    goto :goto_0

    .line 589
    :pswitch_1
    const v4, 0x7f0c0084

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 590
    goto :goto_0

    .line 592
    :pswitch_2
    const v4, 0x7f0c0085

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 601
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v5, 0x7f0c0087

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 583
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 465
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 466
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 468
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 470
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->dBm:Landroid/widget/TextView;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 475
    .local v2, "signalDbm":I
    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    .line 477
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 479
    .local v1, "signalAsu":I
    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    .line 481
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->dBm:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0c0092

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0c0093

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    return-void
.end method

.method private updateSmsOverImsState()V
    .locals 3

    .prologue
    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmsOverImsState isSmsOverImsEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/RadioInfo;->log(Ljava/lang/String;)V

    .line 1062
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c0077

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    return-void

    .line 1062
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c0076

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 255
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 257
    const v4, 0x7f04015a

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->setContentView(I)V

    .line 259
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 260
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 262
    const v4, 0x7f12031f

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    .line 263
    const v4, 0x7f120221

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->number:Landroid/widget/TextView;

    .line 264
    const v4, 0x7f120330

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->callState:Landroid/widget/TextView;

    .line 265
    const v4, 0x7f120320

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->operatorName:Landroid/widget/TextView;

    .line 266
    const v4, 0x7f12032a

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->roamingState:Landroid/widget/TextView;

    .line 267
    const v4, 0x7f12032b

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->gsmState:Landroid/widget/TextView;

    .line 268
    const v4, 0x7f12032c

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->gprsState:Landroid/widget/TextView;

    .line 269
    const v4, 0x7f12032d

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->network:Landroid/widget/TextView;

    .line 270
    const v4, 0x7f120325

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->dBm:Landroid/widget/TextView;

    .line 271
    const v4, 0x7f12032e

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mMwi:Landroid/widget/TextView;

    .line 272
    const v4, 0x7f12032f

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mCfi:Landroid/widget/TextView;

    .line 273
    const v4, 0x7f120326

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mLocation:Landroid/widget/TextView;

    .line 274
    const v4, 0x7f120327

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    .line 275
    const v4, 0x7f120328

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    .line 276
    const v4, 0x7f120329

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mDcRtInfoTv:Landroid/widget/TextView;

    .line 278
    const v4, 0x7f120331

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->resets:Landroid/widget/TextView;

    .line 279
    const v4, 0x7f120332

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->attempts:Landroid/widget/TextView;

    .line 280
    const v4, 0x7f120333

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->successes:Landroid/widget/TextView;

    .line 281
    const v4, 0x7f120334

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->disconnects:Landroid/widget/TextView;

    .line 282
    const v4, 0x7f120337

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    .line 283
    const v4, 0x7f120335

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->sent:Landroid/widget/TextView;

    .line 284
    const v4, 0x7f120336

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->received:Landroid/widget/TextView;

    .line 285
    const v4, 0x7f120342

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->smsc:Landroid/widget/EditText;

    .line 286
    const v4, 0x7f120344

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    .line 288
    const v4, 0x7f120322

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    .line 289
    const v4, 0x7f120323

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    .line 290
    const v4, 0x7f120324

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    .line 292
    const v4, 0x7f120338

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    .line 293
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 295
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 296
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 297
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 299
    const v4, 0x7f120339

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    .line 300
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    const v4, 0x7f12033a

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    .line 303
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoListRateHandler:Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    const v4, 0x7f12033b

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    .line 306
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    const v4, 0x7f12033c

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->imsVoLteProvisionedButton:Landroid/widget/Button;

    .line 309
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->imsVoLteProvisionedButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mImsVoLteProvisionedHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v4, 0x7f12033d

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    .line 312
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const v4, 0x7f12033e

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    .line 315
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    const v4, 0x7f120321

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->pingTestButton:Landroid/widget/Button;

    .line 318
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    const v4, 0x7f120340

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    .line 320
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    const v4, 0x7f120341

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    .line 322
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const v4, 0x7f120343

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    .line 324
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    const v4, 0x7f120345

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    .line 327
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 329
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, "oemInfoIntent":Landroid/content/Intent;
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 331
    .local v2, "oemInfoIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 332
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 335
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 336
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 337
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 338
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 340
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 342
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 345
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 348
    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoValue:Ljava/util/List;

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: mCellInfoValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/RadioInfo;->log(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 404
    const v0, 0x7f0c007e

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 406
    const/4 v0, 0x2

    const v1, 0x7f0c007f

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 408
    const/4 v0, 0x3

    const v1, 0x7f0c0080

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 410
    const/4 v0, 0x4

    const v1, 0x7f0c0081

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 412
    const/4 v0, 0x5

    const-string v1, "Disable data connection"

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 414
    return v2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 389
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onPause()V

    .line 391
    const-string v0, "onPause: unregister phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RadioInfo;->log(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 394
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 395
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 420
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 421
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 422
    .local v1, "state":I
    const/4 v2, 0x1

    .line 424
    .local v2, "visible":Z
    packed-switch v1, :pswitch_data_0

    .line 433
    :pswitch_0
    const/4 v2, 0x0

    .line 436
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 437
    const/4 v3, 0x1

    return v3

    .line 427
    :pswitch_1
    const-string v3, "Disable data connection"

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 430
    :pswitch_2
    const-string v3, "Enable data connection"

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 354
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 356
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updatePhoneState()V

    .line 357
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateSignalStrength()V

    .line 358
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateMessageWaiting()V

    .line 359
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateCallRedirect()V

    .line 360
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateServiceState()V

    .line 361
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    .line 362
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateDataState()V

    .line 363
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateDataStats()V

    .line 364
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateDataStats2()V

    .line 365
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updatePowerState()V

    .line 366
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateCellInfoListRate()V

    .line 367
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateImsRegRequiredState()V

    .line 368
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateImsVoLteProvisionedState()V

    .line 369
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateSmsOverImsState()V

    .line 370
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateLteRamDumpState()V

    .line 371
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateProperties()V

    .line 372
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateDnsCheckState()V

    .line 374
    const-string v0, "onResume: register phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RadioInfo;->log(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 377
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x24dc

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 385
    return-void
.end method
