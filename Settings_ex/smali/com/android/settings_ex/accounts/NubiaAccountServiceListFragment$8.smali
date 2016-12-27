.class Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$8;
.super Landroid/os/Handler;
.source "NubiaAccountServiceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$8;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$8;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # invokes: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->hideConfirmProgress()V
    invoke-static {v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$900(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V

    .line 407
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$8;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # getter for: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mBindBaiduAccountHelper:Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$700(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$8;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # getter for: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mBindBaiduAccountHelper:Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$700(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->unbindService()V

    .line 410
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 420
    :goto_0
    return-void

    .line 413
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$8;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # invokes: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->onExtendComplete()V
    invoke-static {v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$1000(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V

    goto :goto_0

    .line 416
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$8;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # invokes: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->onExtendException()V
    invoke-static {v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$1100(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
