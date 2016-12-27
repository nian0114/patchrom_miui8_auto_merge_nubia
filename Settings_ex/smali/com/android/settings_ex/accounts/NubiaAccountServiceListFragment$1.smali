.class Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$1;
.super Ljava/lang/Object;
.source "NubiaAccountServiceListFragment.java"

# interfaces
.implements Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getAccountInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener",
        "<",
        "Lcn/nubia/accounts/auth/NubiaAccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$1;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accounts/auth/NubiaAccountInfo;)V
    .locals 1
    .param p1, "info"    # Lcn/nubia/accounts/auth/NubiaAccountInfo;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$1;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$1;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # invokes: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->setHeadImageView(Lcn/nubia/accounts/auth/NubiaAccountInfo;)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$000(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;Lcn/nubia/accounts/auth/NubiaAccountInfo;)V

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$1;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # invokes: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->loadCloudSpace()V
    invoke-static {v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$100(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V

    .line 163
    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 156
    check-cast p1, Lcn/nubia/accounts/auth/NubiaAccountInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$1;->onResult(Lcn/nubia/accounts/auth/NubiaAccountInfo;)V

    return-void
.end method
