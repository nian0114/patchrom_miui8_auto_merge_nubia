.class Lcom/android/settings_ex/DataUsageSummary$9;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1079
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1082
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$700(Lcom/android/settings_ex/DataUsageSummary;)Lcn/nubia/commonui/widget/NubiaSwitch;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1083
    .local v0, "disableAtLimit":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1086
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1091
    :goto_1
    return-void

    .end local v0    # "disableAtLimit":Z
    :cond_0
    move v0, v1

    .line 1082
    goto :goto_0

    .line 1088
    .restart local v0    # "disableAtLimit":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setDisplaySwitchSimCautionView(Z)V
    invoke-static {v2, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$800(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 1089
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const-wide/16 v2, -0x1

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$900(Lcom/android/settings_ex/DataUsageSummary;J)V

    goto :goto_1
.end method
