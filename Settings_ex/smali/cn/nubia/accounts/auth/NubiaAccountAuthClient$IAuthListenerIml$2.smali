.class Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml$2;
.super Ljava/lang/Object;
.source "NubiaAccountAuthClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;->onException(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;


# direct methods
.method constructor <init>(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml$2;->this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml$2;->this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;

    # getter for: Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;->mListener:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;
    invoke-static {v0}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;->access$500(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;)Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;->onResult(Ljava/lang/Object;)V

    .line 155
    return-void
.end method
