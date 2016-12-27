.class Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$2;
.super Ljava/lang/Object;
.source "NubiaAccountServiceListFragment.java"

# interfaces
.implements Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->loadCloudSpace()V
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
    .line 169
    iput-object p1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$2;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accounts/auth/NubiaAccountInfo;)V
    .locals 3
    .param p1, "info"    # Lcn/nubia/accounts/auth/NubiaAccountInfo;

    .prologue
    .line 172
    if-eqz p1, :cond_1

    .line 173
    const-string v1, "key_my_cloud_space"

    invoke-virtual {p1, v1}, Lcn/nubia/accounts/auth/NubiaAccountInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "space":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$2;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$2;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # invokes: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->setCloudSpace(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$200(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;Ljava/lang/String;)V

    .line 182
    .end local v0    # "space":Ljava/lang/String;
    :goto_0
    return-void

    .line 177
    .restart local v0    # "space":Ljava/lang/String;
    :cond_0
    const-string v1, "NubiaAccountService"

    const-string v2, "space is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    .end local v0    # "space":Ljava/lang/String;
    :cond_1
    const-string v1, "NubiaAccountService"

    const-string v2, "info space is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 169
    check-cast p1, Lcn/nubia/accounts/auth/NubiaAccountInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$2;->onResult(Lcn/nubia/accounts/auth/NubiaAccountInfo;)V

    return-void
.end method
