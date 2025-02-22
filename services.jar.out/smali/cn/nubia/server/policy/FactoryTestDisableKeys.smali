.class public Lcn/nubia/server/policy/FactoryTestDisableKeys;
.super Ljava/lang/Object;
.source "FactoryTestDisableKeys.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;
.implements Lcom/android/server/policy/IKeyBeforeQueueingHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "isFactory":Z
    :try_start_0
    const-string v2, "system_access"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lnubia/os/ISystemAccess$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/ISystemAccess;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lnubia/os/ISystemAccess;->getFactoryFlag(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    :goto_1
    return-wide v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    const/4 v1, 0x0

    .local v1, "isFactory":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_0

    :try_start_0
    const-string v2, "system_access"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lnubia/os/ISystemAccess$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/ISystemAccess;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lnubia/os/ISystemAccess;->getFactoryFlag(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    const-wide/16 v2, 0x1

    :goto_1
    return-wide v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_1
.end method
