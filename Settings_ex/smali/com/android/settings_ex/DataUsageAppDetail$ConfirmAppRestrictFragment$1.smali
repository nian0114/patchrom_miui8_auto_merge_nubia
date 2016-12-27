.class Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment$1;
.super Ljava/lang/Object;
.source "DataUsageAppDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment$1;->this$0:Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 469
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment$1;->this$0:Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageAppDetail;

    .line 470
    .local v0, "target":Lcom/android/settings_ex/DataUsageAppDetail;
    if-eqz v0, :cond_0

    .line 471
    const/4 v1, 0x1

    # invokes: Lcom/android/settings_ex/DataUsageAppDetail;->setAppRestrictBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageAppDetail;->access$100(Lcom/android/settings_ex/DataUsageAppDetail;Z)V

    .line 473
    :cond_0
    return-void
.end method
