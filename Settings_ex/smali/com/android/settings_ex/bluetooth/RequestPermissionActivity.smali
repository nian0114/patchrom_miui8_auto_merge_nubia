.class public Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mEnableOnly:Z

.field private mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field private mNeededToEnableBluetooth:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeout:I

.field private mUserConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 58
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 77
    new-instance v0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity$1;-><init>(Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    return-void
.end method

.method private createDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 153
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v1, :cond_1

    .line 158
    const v1, 0x7f0c00d0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 174
    :goto_0
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 175
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-ne v1, v5, :cond_0

    .line 179
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 181
    :cond_0
    return-void

    .line 163
    :cond_1
    iget v1, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-nez v1, :cond_2

    .line 164
    const v1, 0x7f0c00ca

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 170
    :goto_1
    const v1, 0x7f0c0067

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 171
    const v1, 0x7f0c0068

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    goto :goto_0

    .line 167
    :cond_2
    const v1, 0x7f0c00c9

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private parseIntent()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 259
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    .line 281
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 282
    .local v1, "manager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_4

    .line 283
    const-string v4, "RequestPermissionActivity"

    const-string v5, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 289
    .end local v1    # "manager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    :goto_1
    return v2

    .line 262
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 266
    iput v3, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 268
    const-string v4, "RequestPermissionActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting Bluetooth Discoverable Timeout = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v4, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mTimeout:I

    const/16 v5, 0xe10

    if-le v4, v5, :cond_0

    .line 271
    :cond_2
    const/16 v4, 0x78

    iput v4, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mTimeout:I

    goto :goto_0

    .line 274
    :cond_3
    const-string v4, "RequestPermissionActivity"

    const-string v5, "Error: this activity may be started only with intent android.bluetooth.adapter.action.REQUEST_ENABLE or android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->setResult(I)V

    goto :goto_1

    .line 287
    .restart local v1    # "manager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    :cond_4
    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move v2, v3

    .line 289
    goto :goto_1
.end method

.method private proceedAndFinish()V
    .locals 10

    .prologue
    .line 225
    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v3, :cond_2

    .line 227
    const/4 v2, -0x1

    .line 246
    .local v2, "returnCode":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 247
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 250
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->finish()V

    .line 252
    return-void

    .line 228
    .end local v2    # "returnCode":I
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x17

    iget v5, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v3, v4, v5}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v3, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mTimeout:I

    int-to-long v6, v3

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long v0, v4, v6

    .line 232
    .local v0, "endTime":J
    invoke-static {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    .line 234
    iget v3, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-lez v3, :cond_3

    .line 235
    invoke-static {p0, v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothDiscoverableTimeoutReceiver;->setDiscoverableAlarm(Landroid/content/Context;J)V

    .line 237
    :cond_3
    iget v2, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 239
    .restart local v2    # "returnCode":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 240
    const/4 v2, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "endTime":J
    .end local v2    # "returnCode":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "returnCode":I
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 185
    if-eq p1, v1, :cond_0

    .line 186
    const-string v0, "RequestPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->finish()V

    .line 207
    :goto_0
    return-void

    .line 191
    :cond_0
    const/16 v0, -0x3e8

    if-eq p2, v0, :cond_1

    .line 192
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 199
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 202
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 205
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 303
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onBackPressed()V

    .line 304
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 210
    packed-switch p2, :pswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 212
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 216
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 98
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->parseIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->finish()V

    .line 150
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    .line 107
    .local v0, "btState":I
    packed-switch v0, :pswitch_data_0

    .line 148
    const-string v2, "RequestPermissionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown adapter state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/android/settings_ex/bluetooth/RequestPermissionHelperActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 128
    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v2, :cond_1

    .line 129
    const-string v2, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :goto_1
    invoke-virtual {p0, v1, v5}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 136
    iput-boolean v5, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    goto :goto_0

    .line 131
    :cond_1
    const-string v2, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    iget v3, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 139
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v2, :cond_2

    .line 141
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 144
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 294
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onDestroy()V

    .line 295
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 298
    :cond_0
    return-void
.end method
