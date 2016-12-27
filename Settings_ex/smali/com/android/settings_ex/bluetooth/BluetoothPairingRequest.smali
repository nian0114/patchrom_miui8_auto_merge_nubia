.class public final Lcom/android/settings_ex/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "action":Ljava/lang/String;
    const-string v18, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 53
    const-string v18, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 55
    .local v6, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v18, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v19, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 57
    .local v17, "type":I
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v12, "pairingIntent":Landroid/content/Intent;
    const-string v18, "keyguard"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/KeyguardManager;

    .line 61
    .local v8, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 62
    const-string v18, "com.android.settings.bluetooth.pairing.keep_screen_on"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    :cond_0
    const-class v18, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 65
    const-string v18, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    const-string v18, "android.bluetooth.device.extra.PAIRING_VARIANT"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 70
    :cond_1
    const-string v18, "android.bluetooth.device.extra.PAIRING_KEY"

    const/high16 v19, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 72
    .local v13, "pairingKey":I
    const-string v18, "android.bluetooth.device.extra.PAIRING_KEY"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    .end local v13    # "pairingKey":I
    :cond_2
    const-string v18, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    const-string v18, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManager;

    .line 79
    .local v15, "powerManager":Landroid/os/PowerManager;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "deviceAddress":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 84
    .local v16, "res":Landroid/content/res/Resources;
    new-instance v18, Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v19, 0x7f02006b

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v18

    const v19, 0x7f0c00c2

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 88
    .local v5, "builder":Landroid/app/Notification$Builder;
    const-string v18, "Running"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 89
    const-string v18, "50"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 92
    const/16 v18, 0x0

    const/high16 v19, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 95
    .local v14, "pending":Landroid/app/PendingIntent;
    const-string v18, "android.bluetooth.device.extra.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 96
    .local v10, "name":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 97
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v10

    .line 101
    :cond_3
    :goto_1
    const v18, 0x7f0c00c3

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    const v19, 0x7f0c00c4

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v18

    const v19, 0x1060059

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 109
    const-string v18, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 111
    .local v9, "manager":Landroid/app/NotificationManager;
    const v18, 0x1080080

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 144
    .end local v5    # "builder":Landroid/app/Notification$Builder;
    .end local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "deviceAddress":Ljava/lang/String;
    .end local v8    # "km":Landroid/app/KeyguardManager;
    .end local v9    # "manager":Landroid/app/NotificationManager;
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "pairingIntent":Landroid/content/Intent;
    .end local v14    # "pending":Landroid/app/PendingIntent;
    .end local v15    # "powerManager":Landroid/os/PowerManager;
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "type":I
    :cond_4
    :goto_2
    return-void

    .line 79
    .restart local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v8    # "km":Landroid/app/KeyguardManager;
    .restart local v12    # "pairingIntent":Landroid/content/Intent;
    .restart local v15    # "powerManager":Landroid/os/PowerManager;
    .restart local v17    # "type":I
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 97
    .restart local v5    # "builder":Landroid/app/Notification$Builder;
    .restart local v7    # "deviceAddress":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v14    # "pending":Landroid/app/PendingIntent;
    .restart local v16    # "res":Landroid/content/res/Resources;
    :cond_6
    const v18, 0x104000e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 113
    .end local v5    # "builder":Landroid/app/Notification$Builder;
    .end local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "deviceAddress":Ljava/lang/String;
    .end local v8    # "km":Landroid/app/KeyguardManager;
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "pairingIntent":Landroid/content/Intent;
    .end local v14    # "pending":Landroid/app/PendingIntent;
    .end local v15    # "powerManager":Landroid/os/PowerManager;
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "type":I
    :cond_7
    const-string v18, "android.bluetooth.device.action.PAIRING_CANCEL"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 114
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 116
    .restart local v12    # "pairingIntent":Landroid/content/Intent;
    const-class v18, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 117
    const-string v18, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    const/16 v18, 0x0

    const/high16 v19, 0x20000000

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 121
    .restart local v14    # "pending":Landroid/app/PendingIntent;
    if-eqz v14, :cond_8

    .line 122
    invoke-virtual {v14}, Landroid/app/PendingIntent;->cancel()V

    .line 126
    :cond_8
    const-string v18, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 128
    .restart local v9    # "manager":Landroid/app/NotificationManager;
    const v18, 0x1080080

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2

    .line 130
    .end local v9    # "manager":Landroid/app/NotificationManager;
    .end local v12    # "pairingIntent":Landroid/content/Intent;
    .end local v14    # "pending":Landroid/app/PendingIntent;
    :cond_9
    const-string v18, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 131
    const-string v18, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v19, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 133
    .local v4, "bondState":I
    const-string v18, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    const/high16 v19, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 135
    .local v11, "oldState":I
    const/16 v18, 0xb

    move/from16 v0, v18

    if-ne v11, v0, :cond_4

    const/16 v18, 0xa

    move/from16 v0, v18

    if-eq v4, v0, :cond_a

    const/16 v18, 0xc

    move/from16 v0, v18

    if-ne v4, v0, :cond_4

    .line 139
    :cond_a
    const-string v18, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 141
    .restart local v9    # "manager":Landroid/app/NotificationManager;
    const v18, 0x1080080

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_2
.end method
