.class public Lnubia/os/SystemAccessManager;
.super Ljava/lang/Object;
.source "SystemAccessManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemAccessManager"


# instance fields
.field private final mService:Lnubia/os/ISystemAccess;


# direct methods
.method public constructor <init>(Lnubia/os/ISystemAccess;)V
    .locals 0
    .param p1, "service"    # Lnubia/os/ISystemAccess;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnubia/os/SystemAccessManager;->mService:Lnubia/os/ISystemAccess;

    return-void
.end method


# virtual methods
.method public clearScreenshot()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemAccessManager;->mService:Lnubia/os/ISystemAccess;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/os/SystemAccessManager;->mService:Lnubia/os/ISystemAccess;

    invoke-interface {v1}, Lnubia/os/ISystemAccess;->clearScreenshot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemAccessManager"

    const-string v2, "RemoteException: clearScreenshot"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enablePalmGesture(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemAccessManager;->mService:Lnubia/os/ISystemAccess;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/os/SystemAccessManager;->mService:Lnubia/os/ISystemAccess;

    invoke-interface {v1, p1}, Lnubia/os/ISystemAccess;->enablePalmGesture(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemAccessManager"

    const-string v2, "RemoteException: enableWakeGestureFlag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableWakeGesture(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemAccessManager;->mService:Lnubia/os/ISystemAccess;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/os/SystemAccessManager;->mService:Lnubia/os/ISystemAccess;

    invoke-interface {v1, p1}, Lnubia/os/ISystemAccess;->enableWakeGesture(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemAccessManager"

    const-string v2, "RemoteException: enableWakeGestureFlag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScreenshot()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemAccessManager;->mService:Lnubia/os/ISystemAccess;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/os/SystemAccessManager;->mService:Lnubia/os/ISystemAccess;

    invoke-interface {v1}, Lnubia/os/ISystemAccess;->getScreenshot()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemAccessManager"

    const-string v2, "RemoteException: getScreenshot"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public screenshot(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemAccessManager;->mService:Lnubia/os/ISystemAccess;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/os/SystemAccessManager;->mService:Lnubia/os/ISystemAccess;

    invoke-interface {v1, p1, p2}, Lnubia/os/ISystemAccess;->screenshot(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemAccessManager"

    const-string v2, "RemoteException: screenshot"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
