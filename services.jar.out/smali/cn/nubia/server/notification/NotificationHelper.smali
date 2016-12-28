.class public Lcn/nubia/server/notification/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mContext:Landroid/content/Context;

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zenModeHelper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p3, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/server/notification/NotificationHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iput-object p3, p0, Lcn/nubia/server/notification/NotificationHelper;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-void
.end method

.method private exitNoneZenMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Lcn/nubia/server/notification/NubiaZenMode;->priorityMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getLastExitCondition()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v1, "enterPriorityZenMode"

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcn/nubia/server/notification/NubiaZenMode;->priorityMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getLastExitCondition()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v1, "enterPriorityZenModeForever"

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v1, 0x0

    const-string v2, "exitNoneZenMode"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private exitPriorityZenMode()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    sget-boolean v2, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastSilentExitCondition()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "enterNoneZenMode"

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v2, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastSilentExitCondition()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    iget-object v2, v2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    .local v0, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "enterNoneZenModeForever"

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "exitPriorityZenMode"

    invoke-virtual {v2, v6, v5, v3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "time":J
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "exitPriorityZenMode"

    invoke-virtual {v2, v6, v5, v3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public setNoneZenMode(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    const-string v2, "shijian"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNoneZenMode on is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "shijian"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mZenModeHelper.getZenMode() is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    if-eq v2, v5, :cond_1

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v3, 0x0

    const-string v4, "setNoneZenMode"

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastZenModeHelper()Lcn/nubia/server/notification/NubiaZenModeHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/server/notification/NubiaZenModeHelper;->setFlagForSilentMode(Z)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationHelper;->exitNoneZenMode()V

    goto :goto_0
.end method

.method public setPriorityZenMode(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    if-eq v2, v5, :cond_1

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v3, 0x0

    const-string v4, "setPriorityZenMode"

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastZenModeHelper()Lcn/nubia/server/notification/NubiaZenModeHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/server/notification/NubiaZenModeHelper;->setFlagForPriorityMode(Z)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationHelper;->exitPriorityZenMode()V

    goto :goto_0
.end method
