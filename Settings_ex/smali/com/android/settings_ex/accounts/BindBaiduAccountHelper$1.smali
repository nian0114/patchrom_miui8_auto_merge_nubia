.class Lcom/android/settings_ex/accounts/BindBaiduAccountHelper$1;
.super Ljava/lang/Object;
.source "BindBaiduAccountHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper$1;->this$0:Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper$1;->this$0:Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    invoke-static {p2}, Lcom/android/account/IAccountAuth$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/account/IAccountAuth;

    move-result-object v2

    # setter for: Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mAccountAuthService:Lcom/android/account/IAccountAuth;
    invoke-static {v1, v2}, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->access$002(Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;Lcom/android/account/IAccountAuth;)Lcom/android/account/IAccountAuth;

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper$1;->this$0:Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    # getter for: Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mAccountAuthService:Lcom/android/account/IAccountAuth;
    invoke-static {v1}, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->access$000(Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;)Lcom/android/account/IAccountAuth;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper$1;->this$0:Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    # getter for: Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mCallback:Lcom/android/account/IAccountInfoListener;
    invoke-static {v3}, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->access$100(Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;)Lcom/android/account/IAccountInfoListener;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/account/IAccountAuth;->startBindBaiduAccount(ZLcom/android/account/IAccountInfoListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper$1;->this$0:Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mAccountAuthService:Lcom/android/account/IAccountAuth;
    invoke-static {v0, v1}, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->access$002(Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;Lcom/android/account/IAccountAuth;)Lcom/android/account/IAccountAuth;

    .line 43
    return-void
.end method
