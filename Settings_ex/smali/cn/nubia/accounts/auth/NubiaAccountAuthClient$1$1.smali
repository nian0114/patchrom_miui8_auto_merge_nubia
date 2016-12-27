.class Lcn/nubia/accounts/auth/NubiaAccountAuthClient$1$1;
.super Ljava/lang/Object;
.source "NubiaAccountAuthClient.java"

# interfaces
.implements Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ServiceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accounts/auth/NubiaAccountAuthClient$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$1;


# direct methods
.method constructor <init>(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$1;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$1$1;->this$1:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$1$1;->this$1:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$1;

    iget-object v0, v0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$1;->this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    iget-object v1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$1$1;->this$1:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$1;

    iget-object v1, v1, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$1;->val$listener:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;

    # invokes: Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->getCloudSpace(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V
    invoke-static {v0, v1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->access$100(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V

    .line 80
    return-void
.end method
