.class Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml$1;
.super Ljava/lang/Object;
.source "NubiaAccountAuthClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;->onComplete(Lcn/nubia/accounts/auth/NubiaAccountInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;

.field final synthetic val$accountInfo:Lcn/nubia/accounts/auth/NubiaAccountInfo;


# direct methods
.method constructor <init>(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;Lcn/nubia/accounts/auth/NubiaAccountInfo;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml$1;->this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;

    iput-object p2, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml$1;->val$accountInfo:Lcn/nubia/accounts/auth/NubiaAccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml$1;->this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;

    # getter for: Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;->mListener:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;
    invoke-static {v0}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;->access$500(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;)Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml$1;->val$accountInfo:Lcn/nubia/accounts/auth/NubiaAccountInfo;

    invoke-interface {v0, v1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;->onResult(Ljava/lang/Object;)V

    .line 146
    return-void
.end method
