.class Lcom/android/settings_ex/DataUsageSummary$15;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$15;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitChanged()V
    .locals 4

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$15;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$15;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1300(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v2

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$900(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 1319
    return-void
.end method

.method public onWarningChanged()V
    .locals 4

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$15;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$15;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1300(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v2

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$2000(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 1314
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$15;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1329
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$15;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1324
    return-void
.end method
