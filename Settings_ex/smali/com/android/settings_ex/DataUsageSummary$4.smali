.class Lcom/android/settings_ex/DataUsageSummary$4;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary;->updateStats()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 641
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageSummary$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 646
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 647
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$300(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 653
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 650
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 651
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 641
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageSummary$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$400(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 661
    :cond_0
    return-void
.end method
