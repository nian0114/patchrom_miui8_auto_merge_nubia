.class Lcom/android/settings_ex/DataUsageSummary$17;
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
    .line 2042
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$17;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2046
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$17;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$2600(Lcom/android/settings_ex/DataUsageSummary;)Lcn/nubia/commonui/widget/NubiaSwitch;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2047
    .local v0, "isChecked":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$17;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setSwitchSimCaution(Z)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/DataUsageSummary;->access$2700(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 2048
    return-void

    .line 2046
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
