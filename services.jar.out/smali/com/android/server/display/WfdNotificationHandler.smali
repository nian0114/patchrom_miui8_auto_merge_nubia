.class Lcom/android/server/display/WfdNotificationHandler;
.super Landroid/os/Handler;
.source "WfdNotificationHandler.java"


# static fields
.field private static final ACTION_DISCONNECT:Ljava/lang/String; = "android.server.display.wfd.DISCONNECT"

.field private static final MSG_UPDATE_NOTIFICATION:I = 0x3


# instance fields
.field private mActiveDisplay:Landroid/hardware/display/WifiDisplay;

.field private mActiveDisplayState:I

.field private mContext:Landroid/content/Context;

.field private mDisconnectPendingIntent:Landroid/app/PendingIntent;

.field private mIsResumed:Z

.field final mNotificationManager:Landroid/app/NotificationManager;

.field private mPendingNotificationUpdate:Z

.field private mSettingsPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p1, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/display/WfdNotificationHandler;->handleUpdateNotification()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public handleUpdateNotification()Z
    .locals 15

    .prologue
    const/4 v4, 0x0

    const v13, 0x30d00aa

    const v14, 0x30c003b

    const/4 v12, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mPendingNotificationUpdate:Z

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mPendingNotificationUpdate:Z

    iget v10, p0, Lcom/android/server/display/WfdNotificationHandler;->mActiveDisplayState:I

    .local v10, "state":I
    iget-object v7, p0, Lcom/android/server/display/WfdNotificationHandler;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .local v7, "display":Landroid/hardware/display/WifiDisplay;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v14, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    if-eq v10, v12, :cond_1

    const/4 v0, 0x2

    if-ne v10, v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.settings.CAST_SETTINGS"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "settingsIntent":Landroid/content/Intent;
    const/high16 v0, 0x14200000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    .end local v2    # "settingsIntent":Landroid/content/Intent;
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mDisconnectPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_3

    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.server.display.wfd.DISCONNECT"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, "disconnectIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v0, v1, v6, v1, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mDisconnectPendingIntent:Landroid/app/PendingIntent;

    .end local v6    # "disconnectIntent":Landroid/content/Intent;
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .local v9, "r":Landroid/content/res/Resources;
    if-ne v10, v12, :cond_5

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x30c0037

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v3, 0x30c0038

    new-array v5, v12, [Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v1

    invoke-virtual {v9, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WfdNotificationHandler;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x3020067

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080038

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WfdNotificationHandler;->mDisconnectPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v3, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .local v8, "notification":Landroid/app/Notification;
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v14, v8, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "r":Landroid/content/res/Resources;
    :cond_4
    move v1, v12

    goto/16 :goto_0

    .end local v7    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v10    # "state":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .restart local v7    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v9    # "r":Landroid/content/res/Resources;
    .restart local v10    # "state":I
    :cond_5
    new-instance v11, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x3030039

    invoke-direct {v11, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .local v11, "views":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/server/display/WfdNotificationHandler;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v3, 0x3020068

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .restart local v8    # "notification":Landroid/app/Notification;
    const v0, 0x30d00ab

    iget-object v3, p0, Lcom/android/server/display/WfdNotificationHandler;->mDisconnectPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x30d00ab

    iget-object v3, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mIsResumed:Z

    if-eqz v0, :cond_6

    const v0, 0x30d00a7

    const/16 v3, 0x8

    invoke-virtual {v11, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v11, v13, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    const v1, 0x30c0039

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v13, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_2
    const v0, 0x30d00a6

    const-string v1, "setBackgroundResource"

    const v3, 0x10804ee

    invoke-virtual {v11, v0, v1, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1

    :cond_6
    const v0, 0x30d00a7

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/16 v0, 0x8

    invoke-virtual {v11, v13, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x30d00a8

    iget-object v1, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    const v3, 0x30c003c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x30d00a9

    iget-object v1, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    const v3, 0x30c003d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public scheduleResumeStateUpdateNotificationLocked(ZILandroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p1, "isResumed"    # Z
    .param p2, "state"    # I
    .param p3, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    iput-boolean p1, p0, Lcom/android/server/display/WfdNotificationHandler;->mIsResumed:Z

    invoke-virtual {p0, p2, p3}, Lcom/android/server/display/WfdNotificationHandler;->scheduleUpdateNotificationLocked(ILandroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method public scheduleUpdateNotificationLocked(ILandroid/hardware/display/WifiDisplay;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    iput p1, p0, Lcom/android/server/display/WfdNotificationHandler;->mActiveDisplayState:I

    iput-object p2, p0, Lcom/android/server/display/WfdNotificationHandler;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    iget-boolean v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mPendingNotificationUpdate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mPendingNotificationUpdate:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/display/WfdNotificationHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
