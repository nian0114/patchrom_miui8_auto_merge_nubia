.class public Lcn/nubia/server/policy/BreathingLightCtrl;
.super Ljava/lang/Object;
.source "BreathingLightCtrl.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;


# instance fields
.field private mBreathLightPointerEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

.field private mSystemReady:Z

.field private mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 2
    .param p1, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/nubia/server/policy/BreathingLightCtrl$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/BreathingLightCtrl$1;-><init>(Lcn/nubia/server/policy/BreathingLightCtrl;)V

    iput-object v0, p0, Lcn/nubia/server/policy/BreathingLightCtrl;->mBreathLightPointerEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/BreathingLightCtrl;->mSystemReady:Z

    iput-object p1, p0, Lcn/nubia/server/policy/BreathingLightCtrl;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v0, p0, Lcn/nubia/server/policy/BreathingLightCtrl;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcn/nubia/server/policy/BreathingLightCtrl;->mBreathLightPointerEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/BreathingLightCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/BreathingLightCtrl;

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/policy/BreathingLightCtrl;->mSystemReady:Z

    return v0
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v3, 0x3

    iget-boolean v1, p0, Lcn/nubia/server/policy/BreathingLightCtrl;->mSystemReady:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .local v0, "keyCode":I
    if-eq v0, v3, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {v3}, Lnubia/hardware/BreathingLightManager;->requestBreathingLight(I)V

    .end local v0    # "keyCode":I
    :cond_1
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2
.end method

.method public systemReady()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/BreathingLightCtrl;->mSystemReady:Z

    return-void
.end method
