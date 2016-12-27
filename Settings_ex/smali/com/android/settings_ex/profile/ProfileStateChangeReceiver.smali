.class public Lcom/android/settings_ex/profile/ProfileStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProfileStateChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 129
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x7

    const/4 v6, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 43
    new-instance v1, Landroid/os/HandlerThread;

    const-string v5, "ProfileStateThread"

    invoke-direct {v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v4, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, p1, v5}, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;-><init>(Lcom/android/settings_ex/profile/ProfileStateChangeReceiver;Landroid/content/Context;Landroid/os/Looper;)V

    .line 46
    .local v4, "profileStateHandler":Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 49
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x80000000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    const-string v5, "ztemt.Profile.ACTION_PROFILE_POWERSAVING_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v2, "powersavingIntent":Landroid/content/Intent;
    invoke-static {p1}, Lztemt/profile/ProfileManagerImpl;->getInstance(Landroid/content/Context;)Lztemt/profile/ProfileManager;

    move-result-object v3

    .line 111
    .local v3, "profileManager":Lztemt/profile/ProfileManager;
    sget-object v5, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v3, v5}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 113
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 118
    .end local v2    # "powersavingIntent":Landroid/content/Intent;
    .end local v3    # "profileManager":Lztemt/profile/ProfileManager;
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 119
    return-void

    .line 53
    :pswitch_0
    invoke-virtual {v4, v7}, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 54
    invoke-virtual {v4, v7}, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 64
    :cond_2
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 65
    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-virtual {v4, v8}, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 69
    invoke-virtual {v4, v8}, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 79
    :cond_3
    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 80
    const-string v5, "wifi_state"

    const/16 v6, 0xb

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    packed-switch v5, :pswitch_data_2

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-virtual {v4, v9}, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 85
    invoke-virtual {v4, v9}, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 91
    :cond_4
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 92
    invoke-virtual {v4, v6}, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 93
    invoke-virtual {v4, v6}, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 98
    :cond_5
    const-string v5, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    invoke-virtual {v4, v10}, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 100
    invoke-virtual {v4, v10}, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 115
    .restart local v2    # "powersavingIntent":Landroid/content/Intent;
    .restart local v3    # "profileManager":Lztemt/profile/ProfileManager;
    :cond_6
    invoke-virtual {p1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_1

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch

    .line 65
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch

    .line 80
    :pswitch_data_2
    .packed-switch 0xd
        :pswitch_2
    .end packed-switch
.end method
