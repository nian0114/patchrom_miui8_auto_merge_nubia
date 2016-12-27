.class Lcom/android/settings_ex/DataUsageSummary$8;
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
    .line 1067
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$8;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1070
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    const-string v1, "SyncState"

    const-string v2, "ignoring monkey\'s attempt to flip global sync state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :goto_0
    return-void

    .line 1073
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$8;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcn/nubia/commonui/widget/NubiaSwitch;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1074
    .local v0, "mAutoSyncChecked":Z
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$8;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v1, v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->show(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_0

    .line 1073
    .end local v0    # "mAutoSyncChecked":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
