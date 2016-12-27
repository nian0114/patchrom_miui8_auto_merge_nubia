.class Lcn/nubia/accounts/auth/NubiaAccountAuthClient$2;
.super Ljava/lang/Object;
.source "NubiaAccountAuthClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->getRemoteAccountInfo(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

.field final synthetic val$listener:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;


# direct methods
.method constructor <init>(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$2;->this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    iput-object p2, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$2;->val$listener:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$2;->this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    # getter for: Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mAccountAuthService:Lcn/nubia/accounts/auth/INubiaAccountAuth;
    invoke-static {v0}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->access$000(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;)Lcn/nubia/accounts/auth/INubiaAccountAuth;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$2;->this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    iget-object v1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$2;->val$listener:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;

    # invokes: Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->getAccountInfo(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V
    invoke-static {v0, v1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->access$300(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V

    .line 101
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$2;->this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    new-instance v1, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$2$1;

    invoke-direct {v1, p0}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$2$1;-><init>(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$2;)V

    # invokes: Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->bindService(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ServiceStateListener;)V
    invoke-static {v0, v1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->access$200(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ServiceStateListener;)V

    goto :goto_0
.end method
