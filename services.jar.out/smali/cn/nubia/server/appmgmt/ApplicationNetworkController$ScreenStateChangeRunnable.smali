.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateChangeRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method private constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Lcn/nubia/server/appmgmt/ApplicationNetworkController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .param p2, "x1"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController$1;

    .prologue
    .line 837
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 840
    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/HashMap;
    invoke-static {v8}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 841
    .local v5, "pkg":Ljava/lang/String;
    const-string v8, "ApplicationNetworkController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is in process"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 844
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v8}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 845
    .local v6, "rpkg":Ljava/lang/String;
    const-string v8, "ApplicationNetworkController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is resumed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 848
    .end local v6    # "rpkg":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/HashMap;
    invoke-static {v8}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 849
    .local v4, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;
    invoke-static {v8}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$800(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    .line 850
    .local v0, "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    if-eqz v0, :cond_2

    .line 853
    iget-boolean v1, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    .line 854
    .local v1, "enableMobile":Z
    iget-boolean v2, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    .line 856
    .local v2, "enableWifi":Z
    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOn:Z
    invoke-static {v8}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1200(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 857
    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mIs2GNetwork:Z
    invoke-static {v8}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    if-eqz v8, :cond_6

    .line 858
    const/4 v1, 0x0

    .line 862
    :goto_3
    iget-boolean v8, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    and-int/2addr v2, v8

    .line 876
    :cond_3
    :goto_4
    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mCharging:Z
    invoke-static {v8}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1400(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 877
    const/4 v1, 0x1

    .line 878
    const/4 v2, 0x1

    .line 881
    :cond_4
    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessUids:Ljava/util/HashMap;
    invoke-static {v8}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 882
    .local v7, "uid":I
    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # invokes: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->cancelPendingControlRunnable(I)V
    invoke-static {v8, v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;I)V

    .line 884
    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z
    invoke-static {v8}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$900(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 885
    const-string v8, "ApplicationNetworkController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "screen_on="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOn:Z
    invoke-static {v10}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1200(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", charging="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mCharging:Z
    invoke-static {v10}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1400(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", set mobile = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", wifi="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_5
    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # invokes: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setUidRule(ILjava/lang/String;ZZ)V
    invoke-static {v8, v7, v4, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 860
    .end local v7    # "uid":I
    :cond_6
    iget-boolean v8, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    and-int/2addr v1, v8

    goto :goto_3

    .line 864
    :cond_7
    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v8}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 865
    const/4 v1, 0x1

    .line 866
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 867
    :cond_8
    iget-wide v8, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDisconnectTimes:Ljava/util/HashMap;
    invoke-static {v8}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDisconnectTimes:Ljava/util/HashMap;
    invoke-static {v8}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v10, v8

    iget-wide v10, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 870
    const/4 v1, 0x1

    .line 871
    const/4 v2, 0x1

    .line 872
    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDisconnectTimes:Ljava/util/HashMap;
    invoke-static {v8}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 891
    .end local v0    # "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    .end local v1    # "enableMobile":Z
    .end local v2    # "enableWifi":Z
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_9
    return-void
.end method
