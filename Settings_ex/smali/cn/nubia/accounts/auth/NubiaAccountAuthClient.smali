.class public Lcn/nubia/accounts/auth/NubiaAccountAuthClient;
.super Ljava/lang/Object;
.source "NubiaAccountAuthClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;,
        Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ServiceStateListener;,
        Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;
    }
.end annotation


# instance fields
.field private mAccountAuthService:Lcn/nubia/accounts/auth/INubiaAccountAuth;

.field private final mConn:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private final mServiceStateListenerQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ServiceStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v1, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$3;

    invoke-direct {v1, p0}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$3;-><init>(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;)V

    iput-object v1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mConn:Landroid/content/ServiceConnection;

    .line 28
    iput-object p1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "cn.nubia.accounts"

    const-string v2, "cn.nubia.accounts.auth.service.NubiaAccountAuthService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .local v0, "cName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mIntent:Landroid/content/Intent;

    .line 32
    iget-object v1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mServiceStateListenerQueue:Ljava/util/Queue;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;)Lcn/nubia/accounts/auth/INubiaAccountAuth;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mAccountAuthService:Lcn/nubia/accounts/auth/INubiaAccountAuth;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;Lcn/nubia/accounts/auth/INubiaAccountAuth;)Lcn/nubia/accounts/auth/INubiaAccountAuth;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/accounts/auth/NubiaAccountAuthClient;
    .param p1, "x1"    # Lcn/nubia/accounts/auth/INubiaAccountAuth;

    .prologue
    .line 18
    iput-object p1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mAccountAuthService:Lcn/nubia/accounts/auth/INubiaAccountAuth;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/accounts/auth/NubiaAccountAuthClient;
    .param p1, "x1"    # Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->getCloudSpace(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ServiceStateListener;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/accounts/auth/NubiaAccountAuthClient;
    .param p1, "x1"    # Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ServiceStateListener;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->bindService(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ServiceStateListener;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/accounts/auth/NubiaAccountAuthClient;
    .param p1, "x1"    # Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->getAccountInfo(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mServiceStateListenerQueue:Ljava/util/Queue;

    return-object v0
.end method

.method private bindService(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ServiceStateListener;)V
    .locals 4
    .param p1, "listener"    # Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ServiceStateListener;

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mAccountAuthService:Lcn/nubia/accounts/auth/INubiaAccountAuth;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 38
    invoke-interface {p1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ServiceStateListener;->onServiceConnected()V

    .line 47
    :goto_0
    return-void

    .line 40
    :cond_0
    if-eqz p1, :cond_1

    .line 41
    iget-object v1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mServiceStateListenerQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mServiceStateListenerQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 43
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getAccountInfo(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V
    .locals 3
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
    .line 106
    .local p1, "listener":Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;, "Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener<Lcn/nubia/accounts/auth/NubiaAccountInfo;>;"
    iget-object v1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mAccountAuthService:Lcn/nubia/accounts/auth/INubiaAccountAuth;

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mAccountAuthService:Lcn/nubia/accounts/auth/INubiaAccountAuth;

    new-instance v2, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;

    invoke-direct {v2, p1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;-><init>(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V

    invoke-interface {v1, v2}, Lcn/nubia/accounts/auth/INubiaAccountAuth;->getAccountInfo(Lcn/nubia/accounts/auth/IAuthListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "NubiaAccountAuthClient"

    const-string v2, "mAccountAuthService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;->onResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getCloudSpace(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V
    .locals 3
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
    .line 57
    .local p1, "listener":Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;, "Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener<Lcn/nubia/accounts/auth/NubiaAccountInfo;>;"
    iget-object v1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mAccountAuthService:Lcn/nubia/accounts/auth/INubiaAccountAuth;

    if-eqz v1, :cond_0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mAccountAuthService:Lcn/nubia/accounts/auth/INubiaAccountAuth;

    new-instance v2, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;

    invoke-direct {v2, p1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$IAuthListenerIml;-><init>(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V

    invoke-interface {v1, v2}, Lcn/nubia/accounts/auth/INubiaAccountAuth;->getCloudSpace(Lcn/nubia/accounts/auth/IAuthListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "NubiaAccountAuthClient"

    const-string v2, "mAccountAuthService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;->onResult(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getMyCloudSpace(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V
    .locals 2
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
    .line 70
    .local p1, "listener":Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;, "Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener<Lcn/nubia/accounts/auth/NubiaAccountInfo;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$1;-><init>(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    return-void
.end method

.method public getRemoteAccountInfo(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V
    .locals 2
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
    .line 88
    .local p1, "listener":Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;, "Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener<Lcn/nubia/accounts/auth/NubiaAccountInfo;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$2;-><init>(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    return-void
.end method
