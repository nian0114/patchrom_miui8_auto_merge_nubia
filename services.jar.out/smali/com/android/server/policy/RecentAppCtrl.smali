.class Lcom/android/server/policy/RecentAppCtrl;
.super Ljava/lang/Object;
.source "RecentAppCtrl.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;


# static fields
.field private static final NUBIA_OVERLAY_DISPLAY_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final SU_MODE_CLOSE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecentAppCtrl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field mPreloadedRecentApps:Z

.field final mServiceAquireLock:Ljava/lang/Object;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/RecentAppCtrl;->mServiceAquireLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/policy/RecentAppCtrl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/RecentAppCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 4

    .prologue
    iget-boolean v2, p0, Lcom/android/server/policy/RecentAppCtrl;->mPreloadedRecentApps:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/RecentAppCtrl;->mPreloadedRecentApps:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/RecentAppCtrl;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RecentAppCtrl"

    const-string v3, "RemoteException when cancelling recent apps preload"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/RecentAppCtrl;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private handleLongPressOnBack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "RecentAppCtrl"

    const-string v1, "handleLongPressOnBack"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/RecentAppCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    invoke-direct {p0}, Lcom/android/server/policy/RecentAppCtrl;->toggleRecentApps()V

    return-void
.end method

.method private preloadRecentApps()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/RecentAppCtrl;->mPreloadedRecentApps:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/RecentAppCtrl;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RecentAppCtrl"

    const-string v3, "RemoteException when preloading recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/RecentAppCtrl;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private toggleRecentApps()V
    .locals 4

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/RecentAppCtrl;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RecentAppCtrl"

    const-string v3, "RemoteException when toggling recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/RecentAppCtrl;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method


# virtual methods
.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/RecentAppCtrl;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/RecentAppCtrl;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/RecentAppCtrl;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/RecentAppCtrl;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    move v0, v5

    .local v0, "down":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    move v1, v5

    .local v1, "isBackKey":Z
    :goto_1
    const/4 v3, 0x0

    .local v3, "mode":I
    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/server/policy/RecentAppCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "single_ui_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    :cond_0
    if-eqz v1, :cond_1

    if-nez v3, :cond_1

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/policy/RecentAppCtrl;->cancelPreloadRecentApps()V

    :cond_1
    :goto_2
    const-wide/high16 v6, -0x8000000000000000L

    :goto_3
    return-wide v6

    .end local v0    # "down":Z
    .end local v1    # "isBackKey":Z
    .end local v3    # "mode":I
    :cond_2
    move v0, v6

    goto :goto_0

    .restart local v0    # "down":Z
    :cond_3
    move v1, v6

    goto :goto_1

    .restart local v1    # "isBackKey":Z
    .restart local v3    # "mode":I
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .local v4, "repeatCount":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_5

    move v2, v5

    .local v2, "isLongPressed":Z
    :goto_4
    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/android/server/policy/RecentAppCtrl;->preloadRecentApps()V

    goto :goto_2

    .end local v2    # "isLongPressed":Z
    :cond_5
    move v2, v6

    goto :goto_4

    .restart local v2    # "isLongPressed":Z
    :cond_6
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/server/policy/RecentAppCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/RecentAppCtrl;->handleLongPressOnBack()V

    const-wide/16 v6, -0x1

    goto :goto_3
.end method
