.class public Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;
.super Lcn/nubia/accounts/auth/IAuthListener$Stub;
.source "NubiaAccountAuthClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accounts/auth/NubiaAccountAuthClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IAuthListenerIml"
.end annotation


# instance fields
.field private final mListener:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener",
            "<",
            "Lcn/nubia/accounts/auth/NubiaAccountInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener",
            "<",
            "Lcn/nubia/accounts/auth/NubiaAccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "listener":Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;, "Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener<Lcn/nubia/accounts/auth/NubiaAccountInfo;>;"
    invoke-direct {p0}, Lcn/nubia/accounts/auth/IAuthListener$Stub;-><init>()V

    .line 139
    iput-object p1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;->mListener:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;

    .line 140
    return-void
.end method

.method static synthetic access$500(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;)Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;

    .prologue
    .line 136
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;->mListener:Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;

    return-object v0
.end method


# virtual methods
.method public onComplete(Lcn/nubia/accounts/auth/NubiaAccountInfo;)V
    .locals 2
    .param p1, "accountInfo"    # Lcn/nubia/accounts/auth/NubiaAccountInfo;

    .prologue
    .line 142
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml$1;-><init>(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;Lcn/nubia/accounts/auth/NubiaAccountInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml$2;

    invoke-direct {v1, p0}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml$2;-><init>(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 157
    const-string v0, "NubiaAccountAuthClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method
