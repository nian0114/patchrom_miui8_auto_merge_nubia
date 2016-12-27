.class public Lcom/android/settings_ex/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiEnabler$WifiSwitchBarChangedListener;
    }
.end annotation


# instance fields
.field private final TRAY_CHANGE_ACTION:Ljava/lang/String;

.field isExecutiveFunction:Z

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mListeningToOnSwitchChange:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private final mTrayIntentFilter:Landroid/content/IntentFilter;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

.field private switchBarChangedListener:Lcom/android/settings_ex/wifi/WifiEnabler$WifiSwitchBarChangedListener;

.field private final trayReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/widget/SwitchBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings_ex/widget/SwitchBar;

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    new-instance v0, Lcom/android/settings_ex/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiEnabler$1;-><init>(Lcom/android/settings_ex/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    const-string v0, "msg_hotspot"

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->TRAY_CHANGE_ACTION:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/android/settings_ex/wifi/WifiEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiEnabler$2;-><init>(Lcom/android/settings_ex/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->trayReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->isExecutiveFunction:Z

    .line 104
    new-instance v0, Lcom/android/settings_ex/wifi/WifiEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiEnabler$3;-><init>(Lcom/android/settings_ex/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    .line 118
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 121
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "msg_hotspot"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mTrayIntentFilter:Landroid/content/IntentFilter;

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiEnabler;->setupSwitchBar()V

    .line 132
    :cond_0
    new-instance v0, Lcom/android/settings_ex/QuickClickAgent;

    invoke-direct {v0}, Lcom/android/settings_ex/QuickClickAgent;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    new-instance v1, Lcom/android/settings_ex/wifi/WifiEnabler$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiEnabler$4;-><init>(Lcom/android/settings_ex/wifi/WifiEnabler;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/QuickClickAgent;->setClickedTodoListener(Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;)V

    .line 144
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiEnabler;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiEnabler;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiEnabler;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/WifiEnabler;)Lcom/android/settings_ex/wifi/WifiEnabler$WifiSwitchBarChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiEnabler;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->switchBarChangedListener:Lcom/android/settings_ex/wifi/WifiEnabler$WifiSwitchBarChangedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/WifiEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiEnabler;->wifiSwitchChanged(Z)V

    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 275
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 188
    packed-switch p1, :pswitch_data_0

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 221
    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/WifiEnabler;->updateSearchIndex(Z)V

    .line 224
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 193
    :pswitch_1
    const-string v0, "QuickClickAgent"

    const-string v1, "-- WIFI_STATE_ENABLED --"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/QuickClickAgent;->isNeedInterrupt(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 201
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 207
    :pswitch_2
    const-string v0, "QuickClickAgent"

    const-string v1, "-- WIFI_STATE_DISABLED --"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/QuickClickAgent;->isNeedInterrupt(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiEnabler;->setSwitchBarIsChecked(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 216
    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSwitchBarChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 238
    if-eqz p1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c0c93

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    .line 243
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 244
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c0c94

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isWiFiOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 230
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 231
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_wifi_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 233
    return-void
.end method

.method private wifiSwitchChanged(Z)V
    .locals 5
    .param p1, "isChecked"    # Z

    .prologue
    const v4, 0x7f0c0c94

    const/4 v3, 0x0

    .line 297
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_0

    .line 327
    :goto_0
    return-void

    .line 301
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/settings_exlib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0271

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 304
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 305
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 311
    .local v0, "wifiApState":I
    if-eqz p1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 315
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_5

    const/16 v1, 0x8b

    :goto_1
    invoke-static {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 317
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 319
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 320
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c026f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 322
    :cond_4
    if-eqz p1, :cond_6

    .line 323
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v2, 0x7f0c0c93

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0

    .line 315
    :cond_5
    const/16 v1, 0x8a

    goto :goto_1

    .line 325
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onSwitchChanged(Lcn/nubia/commonui/widget/NubiaSwitch;Z)V
    .locals 3
    .param p1, "switchView"    # Lcn/nubia/commonui/widget/NubiaSwitch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 280
    const-string v0, "QuickClickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- onSwitchChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    if-eqz p2, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c0c93

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    .line 286
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->isExecutiveFunction:Z

    if-eqz v0, :cond_1

    .line 287
    const-string v0, "QuickClickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- onSwitchChanged : isExecutiveFunction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->isExecutiveFunction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/QuickClickAgent;->onSwitchChanged(Z)V

    .line 292
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->isExecutiveFunction:Z

    .line 293
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c0c94

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0

    .line 290
    :cond_1
    const-string v0, "QuickClickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- onSwitchChanged : isExecutiveFunction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->isExecutiveFunction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->trayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 184
    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->trayReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mTrayIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 175
    :cond_0
    return-void
.end method

.method public setSwitchBarChangedListener(Lcom/android/settings_ex/wifi/WifiEnabler$WifiSwitchBarChangedListener;)V
    .locals 0
    .param p1, "lsn"    # Lcom/android/settings_ex/wifi/WifiEnabler$WifiSwitchBarChangedListener;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->switchBarChangedListener:Lcom/android/settings_ex/wifi/WifiEnabler$WifiSwitchBarChangedListener;

    .line 332
    return-void
.end method

.method public setSwitchBarIsChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->isExecutiveFunction:Z

    .line 252
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 253
    if-eqz p1, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c0c93

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c0c94

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0
.end method

.method public setupSwitchBar()V
    .locals 3

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 148
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    .line 149
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v2, 0x7f0c0c93

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    .line 154
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 155
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 163
    :cond_1
    return-void
.end method
