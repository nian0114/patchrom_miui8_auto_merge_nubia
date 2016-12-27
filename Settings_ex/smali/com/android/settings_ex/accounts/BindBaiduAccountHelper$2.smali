.class Lcom/android/settings_ex/accounts/BindBaiduAccountHelper$2;
.super Lcom/android/account/IAccountInfoListener$Stub;
.source "BindBaiduAccountHelper.java"


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
    .line 69
    iput-object p1, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper$2;->this$0:Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    invoke-direct {p0}, Lcom/android/account/IAccountInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper$2;->this$0:Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    # getter for: Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mExtendCallback:Lcom/android/settings_ex/accounts/ExtendCallback;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->access$200(Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;)Lcom/android/settings_ex/accounts/ExtendCallback;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/settings_ex/accounts/ExtendCallback;->onExtendResult(I)V

    .line 82
    return-void
.end method

.method public onComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "baiduToken"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "expires"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper$2;->this$0:Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    # getter for: Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mExtendCallback:Lcom/android/settings_ex/accounts/ExtendCallback;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->access$200(Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;)Lcom/android/settings_ex/accounts/ExtendCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/settings_ex/accounts/ExtendCallback;->onExtendResult(I)V

    .line 72
    return-void
.end method

.method public onException(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "The account had expanded"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper$2;->this$0:Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    # getter for: Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mExtendCallback:Lcom/android/settings_ex/accounts/ExtendCallback;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->access$200(Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;)Lcom/android/settings_ex/accounts/ExtendCallback;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/settings_ex/accounts/ExtendCallback;->onExtendResult(I)V

    .line 78
    :cond_0
    return-void
.end method
