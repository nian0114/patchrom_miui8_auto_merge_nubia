.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;
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
    name = "ControlAppNetworkInBackgroundRunnable"
.end annotation


# instance fields
.field private mBackgroundPackage:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "backgroundPackage"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->mUid:I

    iput-object p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->mBackgroundPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    iget-object v7, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$800(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->mBackgroundPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    .local v0, "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "stackId":I
    iget-object v7, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "name":Ljava/lang/String;
    iget-object v7, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackageUids:Ljava/util/HashMap;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .local v6, "uid":I
    if-eqz v4, :cond_3

    iget-object v7, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->mBackgroundPackage:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_3
    iget v7, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->mUid:I

    if-ne v6, v7, :cond_2

    goto :goto_0

    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "stackId":I
    .end local v6    # "uid":I
    :cond_4
    iget-boolean v1, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    .local v1, "enableMobile":Z
    iget-boolean v2, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    .local v2, "enableWifi":Z
    iget-object v7, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOn:Z
    invoke-static {v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1200(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mIs2GNetwork:Z
    invoke-static {v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-boolean v7, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    if-eqz v7, :cond_7

    const/4 v1, 0x0

    :goto_1
    iget-boolean v7, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    and-int/2addr v2, v7

    :cond_5
    iget-object v7, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mCharging:Z
    invoke-static {v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1400(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_6
    iget-object v7, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPendingControlRunnables:Ljava/util/HashMap;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v7

    iget v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->mUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->mUid:I

    iget-object v9, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->mBackgroundPackage:Ljava/lang/String;

    # invokes: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setUidRule(ILjava/lang/String;ZZ)V
    invoke-static {v7, v8, v9, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_7
    iget-boolean v7, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    and-int/2addr v1, v7

    goto :goto_1
.end method
