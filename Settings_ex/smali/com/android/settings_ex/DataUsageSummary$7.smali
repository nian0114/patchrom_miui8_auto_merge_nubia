.class Lcom/android/settings_ex/DataUsageSummary$7;
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
    .line 1053
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$7;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1056
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$7;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mRestrictBackgroundSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)Lcn/nubia/commonui/widget/NubiaSwitch;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1058
    .local v0, "isChecked":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1059
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$7;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1064
    :goto_1
    return-void

    .end local v0    # "isChecked":Z
    :cond_0
    move v0, v1

    .line 1056
    goto :goto_0

    .line 1062
    .restart local v0    # "isChecked":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$7;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setRestrictBackground(Z)V
    invoke-static {v2, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$600(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_1
.end method
