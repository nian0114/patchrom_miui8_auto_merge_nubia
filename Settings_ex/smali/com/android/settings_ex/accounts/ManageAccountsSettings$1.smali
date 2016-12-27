.class Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accounts/ManageAccountsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;

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

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 272
    :goto_0
    return-void

    .line 260
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    # getter for: Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mSyncNowTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->access$000(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    # getter for: Lcom/android/settings_ex/accounts/ManageAccountsSettings;->msyncCancelTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->access$100(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings_ex/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->access$200(Lcom/android/settings_ex/accounts/ManageAccountsSettings;Z)V

    goto :goto_0

    .line 265
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    # getter for: Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mSyncNowTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->access$000(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    # getter for: Lcom/android/settings_ex/accounts/ManageAccountsSettings;->msyncCancelTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->access$100(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    # invokes: Lcom/android/settings_ex/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->access$200(Lcom/android/settings_ex/accounts/ManageAccountsSettings;Z)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x7f120064
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
