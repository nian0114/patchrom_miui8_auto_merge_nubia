.class Lcom/android/settings_ex/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MasterClearConfirm;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/MasterClearConfirm$1;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/MasterClearConfirm$1;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm$1;->getProgressDialog()Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private getProgressDialog()Lcn/nubia/commonui/app/ProgressDialog;
    .locals 3

    .prologue
    .line 102
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "progressDialog":Lcn/nubia/commonui/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setCancelable(Z)V

    .line 105
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0479

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c047a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 109
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "persistent_data_block"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 66
    .local v0, "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    new-instance v1, Lcom/android/settings_ex/MasterClearConfirm$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/MasterClearConfirm$1$1;-><init>(Lcom/android/settings_ex/MasterClearConfirm$1;Landroid/service/persistentdata/PersistentDataBlockManager;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/MasterClearConfirm$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    # invokes: Lcom/android/settings_ex/MasterClearConfirm;->doMasterClear()V
    invoke-static {v1}, Lcom/android/settings_ex/MasterClearConfirm;->access$000(Lcom/android/settings_ex/MasterClearConfirm;)V

    goto :goto_0
.end method
