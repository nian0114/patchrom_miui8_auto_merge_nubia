.class Lcn/nubia/server/breathinglight/MissEventObserver$3;
.super Landroid/service/notification/INotificationListener$Stub;
.source "MissEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/MissEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/MissEventObserver;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/MissEventObserver;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcn/nubia/server/breathinglight/MissEventObserver$3;->this$0:Lcn/nubia/server/breathinglight/MissEventObserver;

    invoke-direct {p0}, Landroid/service/notification/INotificationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptionFilterChanged(I)V
    .locals 0
    .param p1, "interruptionFilter"    # I

    .prologue
    return-void
.end method

.method public onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    return-void
.end method

.method public onListenerHintsChanged(I)V
    .locals 0
    .param p1, "hints"    # I

    .prologue
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 4
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver$3;->this$0:Lcn/nubia/server/breathinglight/MissEventObserver;

    # invokes: Lcn/nubia/server/breathinglight/MissEventObserver;->handleNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    invoke-static {v2, v1}, Lcn/nubia/server/breathinglight/MissEventObserver;->access$600(Lcn/nubia/server/breathinglight/MissEventObserver;Landroid/service/notification/StatusBarNotification;)V

    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MissEventObserver"

    const-string v3, "onNotificationPosted: Error receiving StatusBarNotification"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 4
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver$3;->this$0:Lcn/nubia/server/breathinglight/MissEventObserver;

    # invokes: Lcn/nubia/server/breathinglight/MissEventObserver;->handleNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    invoke-static {v2, v1}, Lcn/nubia/server/breathinglight/MissEventObserver;->access$700(Lcn/nubia/server/breathinglight/MissEventObserver;Landroid/service/notification/StatusBarNotification;)V

    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MissEventObserver"

    const-string v3, "onNotificationRemoved: Error receiving StatusBarNotification"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
