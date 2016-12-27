.class Lcom/android/settings_ex/DataUsageAppDetail$5;
.super Ljava/lang/Object;
.source "DataUsageAppDetail.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageAppDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageAppDetail;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageAppDetail;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageAppDetail$5;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;

    .line 485
    .local v0, "cycle":Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;
    instance-of v1, v0, Lcom/android/settings_ex/DataUsageUtilitys$CycleChangeItem;

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail$5;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # getter for: Lcom/android/settings_ex/DataUsageAppDetail;->mCycleSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageAppDetail;->access$800(Lcom/android/settings_ex/DataUsageAppDetail;)Landroid/widget/Spinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 504
    :goto_0
    return-void

    .line 494
    :cond_0
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showing cycle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;->start:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;->end:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail$5;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # getter for: Lcom/android/settings_ex/DataUsageAppDetail;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageAppDetail;->access$500(Lcom/android/settings_ex/DataUsageAppDetail;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;->start:J

    iget-wide v4, v0, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;->end:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setVisibleRange(JJ)V

    .line 502
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail$5;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # invokes: Lcom/android/settings_ex/DataUsageAppDetail;->updateDetailData()V
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageAppDetail;->access$900(Lcom/android/settings_ex/DataUsageAppDetail;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
