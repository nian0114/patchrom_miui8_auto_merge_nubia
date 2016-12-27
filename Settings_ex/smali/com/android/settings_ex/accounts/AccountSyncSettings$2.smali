.class Lcom/android/settings_ex/accounts/AccountSyncSettings$2;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accounts/AccountSyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/AccountSyncSettings;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 408
    :goto_0
    return-void

    .line 393
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    # getter for: Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSyncNowTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->access$200(Lcom/android/settings_ex/accounts/AccountSyncSettings;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    # getter for: Lcom/android/settings_ex/accounts/AccountSyncSettings;->msyncCancelTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->access$300(Lcom/android/settings_ex/accounts/AccountSyncSettings;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    # invokes: Lcom/android/settings_ex/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V
    invoke-static {v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->access$400(Lcom/android/settings_ex/accounts/AccountSyncSettings;)V

    goto :goto_0

    .line 398
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    # getter for: Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSyncNowTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->access$200(Lcom/android/settings_ex/accounts/AccountSyncSettings;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    # getter for: Lcom/android/settings_ex/accounts/AccountSyncSettings;->msyncCancelTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->access$300(Lcom/android/settings_ex/accounts/AccountSyncSettings;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    # invokes: Lcom/android/settings_ex/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V
    invoke-static {v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->access$500(Lcom/android/settings_ex/accounts/AccountSyncSettings;)V

    goto :goto_0

    .line 403
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    const/16 v1, 0x64

    # invokes: Lcom/android/settings_ex/accounts/AccountSyncSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->access$600(Lcom/android/settings_ex/accounts/AccountSyncSettings;I)V

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x7f120064
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
