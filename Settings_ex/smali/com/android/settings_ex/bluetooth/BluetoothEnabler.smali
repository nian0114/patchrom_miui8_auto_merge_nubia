.class public final Lcom/android/settings_ex/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private final TRAY_CHANGE_ACTION:Ljava/lang/String;

.field isExecutiveFunction:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private final mTrayIntentFilter:Landroid/content/IntentFilter;

.field private mValidListener:Z

.field public quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

.field private final trayReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/widget/SwitchBar;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings_ex/widget/SwitchBar;

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->isExecutiveFunction:Z

    .line 58
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    const-string v1, "msg_bluetooth"

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->TRAY_CHANGE_ACTION:Ljava/lang/String;

    .line 82
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$3;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->trayReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 106
    invoke-virtual {p2}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 107
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 109
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 110
    .local v0, "manager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_1

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 113
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setEnabled(Z)V

    .line 117
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 118
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "msg_bluetooth"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mTrayIntentFilter:Landroid/content/IntentFilter;

    .line 119
    new-instance v1, Lcom/android/settings_ex/QuickClickAgent;

    invoke-direct {v1}, Lcom/android/settings_ex/QuickClickAgent;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    new-instance v2, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$4;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/QuickClickAgent;->setClickedTodoListener(Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;)V

    .line 130
    :cond_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->btSwitchChanged(Z)V

    return-void
.end method

.method private btSwitchChanged(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 273
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/settings_exlib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0271

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const/16 v1, 0x9f

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 282
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 284
    const-string v0, "QuickClickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBluetoothEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSwitchText()V

    .line 288
    return-void
.end method

.method private setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 215
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 219
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 223
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSwitchText()V

    .line 224
    return-void
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isBluetoothOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 251
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 252
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_bluetooth_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 254
    return-void
.end method

.method private updateSwitchText()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c0c98

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c0c99

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 205
    invoke-direct {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 207
    invoke-direct {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    .line 209
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 179
    :pswitch_1
    const-string v0, "QuickClickAgent"

    const-string v1, "-- Bluetooth STATE_ON --"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/QuickClickAgent;->isNeedInterrupt(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 187
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 194
    :pswitch_2
    const-string v0, "QuickClickAgent"

    const-string v1, "-- Bluetooth STATE_OFF --"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/QuickClickAgent;->isNeedInterrupt(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 202
    invoke-direct {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSwitchChanged(Lcn/nubia/commonui/widget/NubiaSwitch;Z)V
    .locals 3
    .param p1, "switchView"    # Lcn/nubia/commonui/widget/NubiaSwitch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 258
    if-eqz p2, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c0c98

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    .line 263
    :goto_0
    const-string v0, "QuickClickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BT onSwitchChanged isExecutiveFunction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->isExecutiveFunction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->isExecutiveFunction:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/QuickClickAgent;->onSwitchChanged(Z)V

    .line 268
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->isExecutiveFunction:Z

    .line 269
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c0c99

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->trayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public resume(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setEnabled(Z)V

    .line 161
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_1

    .line 149
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 157
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSwitchText()V

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->trayReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mTrayIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public setSwitchBarIsChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->isExecutiveFunction:Z

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 233
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSwitchText()V

    goto :goto_0
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 136
    :cond_0
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 140
    return-void
.end method
