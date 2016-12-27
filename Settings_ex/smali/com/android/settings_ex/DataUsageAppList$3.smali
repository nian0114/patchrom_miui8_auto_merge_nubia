.class Lcom/android/settings_ex/DataUsageAppList$3;
.super Ljava/lang/Object;
.source "DataUsageAppList.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageAppList;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageAppList;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageAppList$3;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lcom/android/settings_ex/net/SummaryForAllUidLoader;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppList$3;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageAppList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageAppList$3;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    # getter for: Lcom/android/settings_ex/DataUsageAppList;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageAppList;->access$400(Lcom/android/settings_ex/DataUsageAppList;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings_ex/net/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 3
    .param p2, "data"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;",
            "Landroid/net/NetworkStats;",
            ")V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppList$3;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    # getter for: Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageAppList;->access$000(Lcom/android/settings_ex/DataUsageAppList;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageUtilitys;->getPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    .line 217
    .local v0, "restrictedUids":[I
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppList$3;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    # getter for: Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageAppList;->access$000(Lcom/android/settings_ex/DataUsageAppList;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/settings_ex/DataUsageUtilitys;->setAdapter([ILandroid/net/NetworkStats;)V

    .line 218
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppList$3;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    # getter for: Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageAppList;->access$000(Lcom/android/settings_ex/DataUsageAppList;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageUtilitys;->getAdapter()Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->notifyDataSetChanged()V

    .line 219
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 207
    check-cast p2, Landroid/net/NetworkStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/DataUsageAppList$3;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppList$3;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    # getter for: Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageAppList;->access$000(Lcom/android/settings_ex/DataUsageAppList;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageUtilitys;->clearAdapter()V

    .line 224
    return-void
.end method
