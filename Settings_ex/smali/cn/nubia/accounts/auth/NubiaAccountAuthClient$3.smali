.class Lcn/nubia/accounts/auth/NubiaAccountAuthClient$3;
.super Ljava/lang/Object;
.source "NubiaAccountAuthClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accounts/auth/NubiaAccountAuthClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;


# direct methods
.method constructor <init>(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$3;->this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 126
    iget-object v2, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$3;->this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    invoke-static {p2}, Lcn/nubia/accounts/auth/INubiaAccountAuth$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/accounts/auth/INubiaAccountAuth;

    move-result-object v3

    # setter for: Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mAccountAuthService:Lcn/nubia/accounts/auth/INubiaAccountAuth;
    invoke-static {v2, v3}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->access$002(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;Lcn/nubia/accounts/auth/INubiaAccountAuth;)Lcn/nubia/accounts/auth/INubiaAccountAuth;

    .line 127
    iget-object v2, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$3;->this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    # getter for: Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mServiceStateListenerQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->access$400(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;)Ljava/util/Queue;

    move-result-object v3

    monitor-enter v3

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$3;->this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    # getter for: Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mServiceStateListenerQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->access$400(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 129
    iget-object v2, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$3;->this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    # getter for: Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mServiceStateListenerQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->access$400(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ServiceStateListener;

    .line 130
    .local v1, "sListener":Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ServiceStateListener;
    invoke-interface {v1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ServiceStateListener;->onServiceConnected()V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "sListener":Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ServiceStateListener;
    :cond_0
    monitor-exit v3

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 121
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient$3;->this$0:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    const/4 v1, 0x0

    # setter for: Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->mAccountAuthService:Lcn/nubia/accounts/auth/INubiaAccountAuth;
    invoke-static {v0, v1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->access$002(Lcn/nubia/accounts/auth/NubiaAccountAuthClient;Lcn/nubia/accounts/auth/INubiaAccountAuth;)Lcn/nubia/accounts/auth/INubiaAccountAuth;

    .line 122
    return-void
.end method
