.class Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;)V
    .locals 0

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1714
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->access$2400(Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;)Z

    move-result v1

    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 1715
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary;

    .line 1716
    .local v0, "target":Lcom/android/settings_ex/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 1717
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->access$2400(Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;)Z

    move-result v1

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setAutoSyncChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$2500(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 1719
    :cond_0
    return-void
.end method
