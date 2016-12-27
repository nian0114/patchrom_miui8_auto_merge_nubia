.class public final Lcom/android/settings_ex/bluetooth/DockEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DockEventReceiver.java"


# static fields
.field private static sStartingService:Landroid/os/PowerManager$WakeLock;

.field private static final sStartingServiceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->sStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 135
    sget-object v2, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->sStartingServiceSync:Ljava/lang/Object;

    monitor-enter v2

    .line 136
    :try_start_0
    sget-object v1, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 137
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 138
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "StartingDockService"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    .line 142
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 144
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 145
    const-string v1, "DockEventReceiver"

    const-string v3, "Can\'t start DockService"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    monitor-exit v2

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 3
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "startId"    # I

    .prologue
    .line 155
    sget-object v1, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->sStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "DockEventReceiver"

    const-string v2, "finishStartingService: stopping service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v0, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 163
    :cond_0
    monitor-exit v1

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 48
    if-nez p2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v7, "android.intent.extra.DOCK_STATE"

    const-string v8, "android.bluetooth.adapter.extra.STATE"

    const/16 v9, -0x4d2

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 53
    .local v6, "state":I
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 60
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 62
    :cond_2
    if-nez v2, :cond_3

    const-string v7, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v6, :cond_3

    if-ne v6, v11, :cond_0

    .line 70
    :cond_3
    packed-switch v6, :pswitch_data_0

    .line 81
    const-string v7, "DockEventReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :pswitch_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 77
    .local v3, "i":Landroid/content/Intent;
    const-class v7, Lcom/android/settings_ex/bluetooth/DockService;

    invoke-virtual {v3, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    invoke-static {p1, v3}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    .end local v3    # "i":Landroid/content/Intent;
    :cond_4
    const-string v7, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 86
    :cond_5
    const-string v7, "android.bluetooth.profile.extra.STATE"

    const/4 v8, 0x2

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 88
    .local v4, "newState":I
    const-string v7, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 97
    .local v5, "oldState":I
    if-eqz v2, :cond_0

    .line 102
    if-nez v4, :cond_0

    if-eq v5, v11, :cond_0

    .line 105
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 106
    .restart local v3    # "i":Landroid/content/Intent;
    const-class v7, Lcom/android/settings_ex/bluetooth/DockService;

    invoke-virtual {v3, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 107
    invoke-static {p1, v3}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 110
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "newState":I
    .end local v5    # "oldState":I
    :cond_6
    const-string v7, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 111
    const-string v7, "android.bluetooth.adapter.extra.STATE"

    const/high16 v8, -0x80000000

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 112
    .local v1, "btState":I
    const/16 v7, 0xb

    if-eq v1, v7, :cond_7

    .line 113
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 114
    .restart local v3    # "i":Landroid/content/Intent;
    const-class v7, Lcom/android/settings_ex/bluetooth/DockService;

    invoke-virtual {v3, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 115
    invoke-static {p1, v3}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 118
    .end local v3    # "i":Landroid/content/Intent;
    :cond_7
    const/16 v7, 0xc

    if-ne v1, v7, :cond_0

    .line 120
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->hasPopConfirmed(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 121
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->savePopConfirmed(Landroid/content/Context;)V

    .line 122
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 123
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const/16 v7, 0x17

    invoke-virtual {v0, v7, v10}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    .line 124
    const-string v7, "DockEventReceiver"

    const-string v8, "it\'s first time to open bluetooth ,set scan mode to 23"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
