.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# instance fields
.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mTmpRect:Landroid/graphics/Rect;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    .line 68
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 69
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .locals 3
    .param p1, "windowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v0, :cond_0

    .line 165
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 167
    :cond_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    .line 172
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .locals 7
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "child"    # Lcom/android/server/wm/WindowState;
    .param p3, "flags"    # I
    .param p4, "type"    # I
    .param p5, "isVisible"    # Z
    .param p6, "hasFocus"    # Z
    .param p7, "hasWallpaper"    # Z

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 178
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 179
    and-int/lit8 v3, p3, 0x28

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 181
    .local v1, "modal":Z
    :goto_0
    if-eqz v1, :cond_3

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_3

    .line 183
    or-int/lit8 p3, p3, 0x20

    .line 184
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    .line 185
    iget-object v3, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 190
    :goto_1
    iput p3, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 191
    iput p4, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 192
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 193
    iput-boolean p5, p1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 194
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v3

    iput-boolean v3, p1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 195
    iput-boolean p6, p1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 196
    iput-boolean p7, p1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 197
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_0

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->paused:Z

    :cond_0
    iput-boolean v2, p1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 198
    iget v2, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 199
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 200
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 201
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 203
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 204
    .local v0, "frame":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 205
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 206
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 207
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 209
    iget v2, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_4

    .line 213
    iget v2, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float v2, v6, v2

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 219
    :goto_2
    sget-boolean v2, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_WINDOW:Z

    if-nez v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWmsFuncs:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v2, p2}, Lcom/android/server/wm/IWmSmartShowFuncs;->adjustInputWindowLw(Ljava/lang/Object;)V

    .line 224
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 225
    return-void

    .end local v0    # "frame":Landroid/graphics/Rect;
    .end local v1    # "modal":Z
    :cond_2
    move v1, v2

    .line 179
    goto :goto_0

    .line 188
    .restart local v1    # "modal":Z
    :cond_3
    iget-object v3, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    goto :goto_1

    .line 215
    .restart local v0    # "frame":Landroid/graphics/Rect;
    :cond_4
    iput v6, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto :goto_2
.end method

.method private clearInputWindowHandlesLw()V
    .locals 3

    .prologue
    .line 228
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 511
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 2
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 404
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 405
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 404
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freezeInputDispatchingLw()V
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 483
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 485
    :cond_0
    return-void
.end method

.method public getPointerLayer()I
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 395
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 396
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    return-wide v2

    .line 395
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .locals 13
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v4, 0x0

    .line 99
    .local v4, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v8, 0x0

    .line 100
    .local v8, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .line 101
    .local v3, "aboveSystem":Z
    iget-object v9, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 102
    if-eqz p2, :cond_0

    .line 103
    :try_start_0
    iget-object v9, p2, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v8, v0

    .line 104
    if-eqz v8, :cond_0

    .line 105
    iget-object v4, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 108
    :cond_0
    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    .line 109
    iget-object v9, p1, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object v4, v0

    .line 112
    :cond_1
    if-eqz v8, :cond_3

    .line 113
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input event dispatching timed out sending to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v12}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".  Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v9, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v11, 0x7d3

    invoke-interface {v9, v11}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v5

    .line 121
    .local v5, "systemAlertLayer":I
    iget v9, v8, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v9, v5, :cond_2

    const/4 v3, 0x1

    .line 131
    .end local v5    # "systemAlertLayer":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    invoke-virtual {v9, v4, v8, v0}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 132
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-eqz v4, :cond_5

    iget-object v9, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v9, :cond_5

    .line 138
    :try_start_1
    iget-object v9, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    move-result v2

    .line 139
    .local v2, "abort":Z
    if-nez v2, :cond_6

    .line 142
    iget-wide v10, v4, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .end local v2    # "abort":Z
    :goto_1
    return-wide v10

    .line 121
    .restart local v5    # "systemAlertLayer":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 122
    .end local v5    # "systemAlertLayer":I
    :cond_3
    if-eqz v4, :cond_4

    .line 123
    :try_start_2
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input event dispatching timed out sending to application "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".  Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 127
    :cond_4
    :try_start_3
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input event dispatching timed out .  Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 146
    :cond_5
    if-eqz v8, :cond_6

    .line 150
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v10, v10, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v0, p3

    invoke-interface {v9, v10, v3, v0}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v6

    .line 152
    .local v6, "timeout":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-ltz v9, :cond_6

    .line 155
    const-wide/32 v10, 0xf4240

    mul-long/2addr v10, v6

    goto :goto_1

    .line 157
    .end local v6    # "timeout":J
    :catch_0
    move-exception v9

    .line 160
    :cond_6
    :goto_2
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 144
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 372
    return-void
.end method

.method public notifyConfigurationChanged()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 341
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    .line 344
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 346
    :cond_0
    monitor-exit v1

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 5
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 82
    :try_start_0
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 83
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    .line 84
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 87
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 366
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 2
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    const/4 v1, 0x1

    .line 455
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_0

    .line 460
    iput-boolean v1, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 461
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 463
    :cond_0
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 466
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_0

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 472
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 474
    :cond_0
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_0

    .line 504
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 505
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 507
    :cond_0
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .locals 4
    .param p1, "newApp"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 443
    if-nez p1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    .line 452
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 447
    .local v0, "handle":Lcom/android/server/input/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 448
    iget-wide v2, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v2, v0, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 450
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    goto :goto_0
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 2
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "updateInputWindows"    # Z

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_1

    .line 425
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 432
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 433
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 435
    if-eqz p2, :cond_1

    .line 436
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 439
    :cond_1
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 235
    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_0

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 494
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 496
    :cond_0
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .locals 22
    .param p1, "force"    # Z

    .prologue
    .line 239
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez v2, :cond_0

    .line 334
    :goto_0
    return-void

    .line 242
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 251
    const/4 v11, 0x0

    .line 254
    .local v11, "disableWallpaperTouchEvents":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_4

    const/4 v14, 0x1

    .line 255
    .local v14, "inDrag":Z
    :goto_1
    if-eqz v14, :cond_1

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v13, v2, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 260
    .local v13, "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v13, :cond_5

    .line 261
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 268
    .end local v13    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_6

    const/4 v10, 0x1

    .line 271
    .local v10, "addInputConsumerHandle":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v16

    .line 272
    .local v16, "numDisplays":I
    const/4 v12, 0x0

    .local v12, "displayNdx":I
    :goto_4
    move/from16 v0, v16

    if-ge v12, v0, :cond_f

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v20

    .line 275
    .local v20, "windows":Lcom/android/server/wm/WindowList;
    sget-boolean v2, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_WINDOW:Z

    if-nez v2, :cond_2

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWmsFuncs:Lcom/android/server/wm/IWmSmartShowFuncs;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v2, v1}, Lcom/android/server/wm/IWmSmartShowFuncs;->getInputWindowListLw(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "windows":Lcom/android/server/wm/WindowList;
    check-cast v20, Lcom/android/server/wm/WindowList;

    .line 280
    .restart local v20    # "windows":Lcom/android/server/wm/WindowList;
    :cond_2
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    .local v19, "winNdx":I
    :goto_5
    if-ltz v19, :cond_e

    .line 281
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 282
    .local v4, "child":Lcom/android/server/wm/WindowState;
    iget-object v15, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 283
    .local v15, "inputChannel":Landroid/view/InputChannel;
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 284
    .local v3, "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v15, :cond_3

    if-eqz v3, :cond_3

    iget-boolean v2, v4, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_7

    .line 280
    :cond_3
    :goto_6
    add-int/lit8 v19, v19, -0x1

    goto :goto_5

    .line 254
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v10    # "addInputConsumerHandle":Z
    .end local v12    # "displayNdx":I
    .end local v14    # "inDrag":Z
    .end local v15    # "inputChannel":Landroid/view/InputChannel;
    .end local v16    # "numDisplays":I
    .end local v19    # "winNdx":I
    .end local v20    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 263
    .restart local v13    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v14    # "inDrag":Z
    :cond_5
    const-string v2, "WindowManager"

    const-string v21, "Drag is in progress but there is no drag window handle."

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 268
    .end local v13    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 288
    .restart local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v4    # "child":Lcom/android/server/wm/WindowState;
    .restart local v10    # "addInputConsumerHandle":Z
    .restart local v12    # "displayNdx":I
    .restart local v15    # "inputChannel":Landroid/view/InputChannel;
    .restart local v16    # "numDisplays":I
    .restart local v19    # "winNdx":I
    .restart local v20    # "windows":Lcom/android/server/wm/WindowList;
    :cond_7
    if-eqz v10, :cond_8

    iget v2, v3, Lcom/android/server/input/InputWindowHandle;->layer:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/input/InputWindowHandle;->layer:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-gt v2, v0, :cond_8

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 291
    const/4 v10, 0x0

    .line 294
    :cond_8
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 295
    .local v5, "flags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v18, v0

    .line 296
    .local v18, "privateFlags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 298
    .local v6, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-ne v4, v2, :cond_b

    const/4 v8, 0x1

    .line 299
    .local v8, "hasFocus":Z
    :goto_7
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    .line 300
    .local v7, "isVisible":Z
    move/from16 v0, v18

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_9

    .line 303
    const/4 v11, 0x1

    .line 305
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v4, v2, :cond_c

    move/from16 v0, v18

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_c

    if-nez v11, :cond_c

    const/4 v9, 0x1

    .line 308
    .local v9, "hasWallpaper":Z
    :goto_8
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_d

    const/16 v17, 0x1

    .line 312
    .local v17, "onDefaultDisplay":Z
    :goto_9
    if-eqz v14, :cond_a

    if-eqz v7, :cond_a

    if-eqz v17, :cond_a

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    :cond_a
    move-object/from16 v2, p0

    .line 316
    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    goto/16 :goto_6

    .line 298
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v17    # "onDefaultDisplay":Z
    :cond_b
    const/4 v8, 0x0

    goto :goto_7

    .line 305
    .restart local v7    # "isVisible":Z
    .restart local v8    # "hasFocus":Z
    :cond_c
    const/4 v9, 0x0

    goto :goto_8

    .line 308
    .restart local v9    # "hasWallpaper":Z
    :cond_d
    const/16 v17, 0x0

    goto :goto_9

    .line 272
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v5    # "flags":I
    .end local v6    # "type":I
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v15    # "inputChannel":Landroid/view/InputChannel;
    .end local v18    # "privateFlags":I
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 322
    .end local v19    # "winNdx":I
    .end local v20    # "windows":Lcom/android/server/wm/WindowList;
    :cond_f
    sget-boolean v2, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_WINDOW:Z

    if-nez v2, :cond_10

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWmsFuncs:Lcom/android/server/wm/IWmSmartShowFuncs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Lcom/android/server/wm/IWmSmartShowFuncs;->setInputWindowsLw(Ljava/lang/Object;)V

    .line 328
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    goto/16 :goto_0
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 3
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 352
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 354
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    monitor-exit v1

    return v0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 355
    :catch_0
    move-exception v0

    goto :goto_0
.end method
