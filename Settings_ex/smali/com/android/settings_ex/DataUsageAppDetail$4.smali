.class Lcom/android/settings_ex/DataUsageAppDetail$4;
.super Ljava/lang/Object;
.source "DataUsageAppDetail.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageAppDetail;
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
        "Lcom/android/settings_ex/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageAppDetail;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageAppDetail;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageAppDetail$4;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

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
            "Lcom/android/settings_ex/net/ChartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lcom/android/settings_ex/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail$4;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageAppDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageAppDetail$4;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # getter for: Lcom/android/settings_ex/DataUsageAppDetail;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageAppDetail;->access$300(Lcom/android/settings_ex/DataUsageAppDetail;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/DataUsageUtilitys;->getStatsSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings_ex/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settings_ex/net/ChartData;)V
    .locals 2
    .param p2, "data"    # Lcom/android/settings_ex/net/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings_ex/net/ChartData;",
            ">;",
            "Lcom/android/settings_ex/net/ChartData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settings_ex/net/ChartData;>;"
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail$4;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # setter for: Lcom/android/settings_ex/DataUsageAppDetail;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v0, p2}, Lcom/android/settings_ex/DataUsageAppDetail;->access$402(Lcom/android/settings_ex/DataUsageAppDetail;Lcom/android/settings_ex/net/ChartData;)Lcom/android/settings_ex/net/ChartData;

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail$4;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # getter for: Lcom/android/settings_ex/DataUsageAppDetail;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageAppDetail;->access$500(Lcom/android/settings_ex/DataUsageAppDetail;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail$4;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # getter for: Lcom/android/settings_ex/DataUsageAppDetail;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageAppDetail;->access$400(Lcom/android/settings_ex/DataUsageAppDetail;)Lcom/android/settings_ex/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail$4;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # getter for: Lcom/android/settings_ex/DataUsageAppDetail;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageAppDetail;->access$500(Lcom/android/settings_ex/DataUsageAppDetail;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail$4;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # getter for: Lcom/android/settings_ex/DataUsageAppDetail;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageAppDetail;->access$400(Lcom/android/settings_ex/DataUsageAppDetail;)Lcom/android/settings_ex/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail$4;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # invokes: Lcom/android/settings_ex/DataUsageAppDetail;->updateCycleList()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageAppDetail;->access$600(Lcom/android/settings_ex/DataUsageAppDetail;)V

    .line 238
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 225
    check-cast p2, Lcom/android/settings_ex/net/ChartData;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/DataUsageAppDetail$4;->onLoadFinished(Landroid/content/Loader;Lcom/android/settings_ex/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings_ex/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settings_ex/net/ChartData;>;"
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail$4;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # setter for: Lcom/android/settings_ex/DataUsageAppDetail;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageAppDetail;->access$402(Lcom/android/settings_ex/DataUsageAppDetail;Lcom/android/settings_ex/net/ChartData;)Lcom/android/settings_ex/net/ChartData;

    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail$4;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # getter for: Lcom/android/settings_ex/DataUsageAppDetail;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageAppDetail;->access$500(Lcom/android/settings_ex/DataUsageAppDetail;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 244
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail$4;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # getter for: Lcom/android/settings_ex/DataUsageAppDetail;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageAppDetail;->access$500(Lcom/android/settings_ex/DataUsageAppDetail;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 245
    return-void
.end method
