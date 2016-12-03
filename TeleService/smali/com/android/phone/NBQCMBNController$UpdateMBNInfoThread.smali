.class Lcom/android/phone/NBQCMBNController$UpdateMBNInfoThread;
.super Ljava/lang/Thread;
.source "NBQCMBNController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBQCMBNController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateMBNInfoThread"
.end annotation


# instance fields
.field private mStandardController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/phone/NBQCMBNController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/phone/NBQCMBNController;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/phone/NBQCMBNController;

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/phone/NBQCMBNController$UpdateMBNInfoThread;->mStandardController:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    iget-object v7, p0, Lcom/android/phone/NBQCMBNController$UpdateMBNInfoThread;->mStandardController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/NBQCMBNController;

    .local v6, "standardController":Lcom/android/phone/NBQCMBNController;
    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    # invokes: Lcom/android/phone/NBQCMBNController;->getAvailableConfigs()[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/NBQCMBNController;->access$1200(Lcom/android/phone/NBQCMBNController;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "configs":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v5, v1

    .local v5, "size":I
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v7, v1, v4

    # invokes: Lcom/android/phone/NBQCMBNController;->getConfigInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/phone/NBQCMBNController;->access$1300(Lcom/android/phone/NBQCMBNController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "configInfo":Ljava/lang/String;
    if-eqz v0, :cond_1

    # getter for: Lcom/android/phone/NBQCMBNController;->mConfigIdMap:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/phone/NBQCMBNController;->access$1400(Lcom/android/phone/NBQCMBNController;)Ljava/util/HashMap;

    move-result-object v7

    aget-object v8, v1, v4

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-wide/16 v8, 0x1f4

    :try_start_0
    invoke-static {v8, v9}, Lcom/android/phone/NBQCMBNController$UpdateMBNInfoThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "configInfo":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .restart local v0    # "configInfo":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "size":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v7, "NBQCMBNController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InterruptedException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0    # "configInfo":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const-string v7, "NBQCMBNController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MBNConfig size geted = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",MBNConfig put in map = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/android/phone/NBQCMBNController;->mConfigIdMap:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/phone/NBQCMBNController;->access$1400(Lcom/android/phone/NBQCMBNController;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v5, :cond_4

    # getter for: Lcom/android/phone/NBQCMBNController;->mConfigIdMap:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/phone/NBQCMBNController;->access$1400(Lcom/android/phone/NBQCMBNController;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-ne v5, v7, :cond_4

    # setter for: Lcom/android/phone/NBQCMBNController;->mAlreadyUpdateMBN:Z
    invoke-static {v6, v10}, Lcom/android/phone/NBQCMBNController;->access$202(Lcom/android/phone/NBQCMBNController;Z)Z

    # invokes: Lcom/android/phone/NBQCMBNController;->notifyMBNConfigIdUpdated()V
    invoke-static {v6}, Lcom/android/phone/NBQCMBNController;->access$1500(Lcom/android/phone/NBQCMBNController;)V

    goto :goto_0

    :cond_4
    # operator-- for: Lcom/android/phone/NBQCMBNController;->mGetMBNRetryTimes:I
    invoke-static {v6}, Lcom/android/phone/NBQCMBNController;->access$1610(Lcom/android/phone/NBQCMBNController;)I

    move-result v7

    if-lez v7, :cond_5

    const/16 v2, 0xbb8

    .local v2, "delayMillis":I
    # getter for: Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;
    invoke-static {v6}, Lcom/android/phone/NBQCMBNController;->access$800(Lcom/android/phone/NBQCMBNController;)Lcom/android/phone/NBQCMBNController$DealHandler;

    move-result-object v7

    const/4 v8, 0x7

    int-to-long v10, v2

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/phone/NBQCMBNController$DealHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .end local v2    # "delayMillis":I
    :cond_5
    const-string v7, "NBQCMBNController"

    const-string v8, "update mbn info failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    # setter for: Lcom/android/phone/NBQCMBNController;->mFailOver:Z
    invoke-static {v6, v10}, Lcom/android/phone/NBQCMBNController;->access$1702(Lcom/android/phone/NBQCMBNController;Z)Z

    goto/16 :goto_0
.end method
