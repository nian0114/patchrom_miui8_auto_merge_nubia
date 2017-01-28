.class public Lnubia/smartkey/SmartKeyActionManager;
.super Ljava/lang/Object;
.source "SmartKeyActionManager.java"


# instance fields
.field private final mService:Lnubia/smartkey/ISmartKeyAction;


# direct methods
.method public constructor <init>(Lnubia/smartkey/ISmartKeyAction;)V
    .locals 0
    .param p1, "service"    # Lnubia/smartkey/ISmartKeyAction;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnubia/smartkey/SmartKeyActionManager;->mService:Lnubia/smartkey/ISmartKeyAction;

    return-void
.end method


# virtual methods
.method public takeScreenshot()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lnubia/smartkey/SmartKeyActionManager;->mService:Lnubia/smartkey/ISmartKeyAction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/smartkey/SmartKeyActionManager;->mService:Lnubia/smartkey/ISmartKeyAction;

    invoke-interface {v1}, Lnubia/smartkey/ISmartKeyAction;->takeScreenshot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
