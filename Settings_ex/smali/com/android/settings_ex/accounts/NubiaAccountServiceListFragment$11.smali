.class Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$11;
.super Ljava/lang/Object;
.source "NubiaAccountServiceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 572
    iput-object p1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$11;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 575
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 576
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.nubia.accounts"

    const-string v2, "cn.nubia.accounts.details.AccountDetailActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string v1, "cn.nubia.account.SETTING_ENTER_ACCOUNT_DETAILS_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$11;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # invokes: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->startActivityByIntent(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$1200(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;Landroid/content/Intent;)V

    .line 579
    return-void
.end method
