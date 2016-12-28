.class public Lcom/android/server/policy/PolicySmartShowFuncsWrapper;
.super Ljava/lang/Object;
.source "PolicySmartShowFuncsWrapper.java"

# interfaces
.implements Lcom/android/server/policy/IPolicySmartShowFuncs;


# instance fields
.field final mImpl:Lcom/android/server/policy/IPolicySmartShowFuncs;

.field public mWithoutKeyFilter:Z

.field public mWithoutMultiWindow:Z


# direct methods
.method public constructor <init>(Lcom/android/server/policy/IPolicySmartShowFuncs;)V
    .locals 1
    .param p1, "funcs"    # Lcom/android/server/policy/IPolicySmartShowFuncs;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->mWithoutMultiWindow:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->mWithoutKeyFilter:Z

    iput-object p1, p0, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->mImpl:Lcom/android/server/policy/IPolicySmartShowFuncs;

    return-void
.end method


# virtual methods
.method public canAffectSystemUiLw(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->mImpl:Lcom/android/server/policy/IPolicySmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/policy/IPolicySmartShowFuncs;->canAffectSystemUiLw(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getWindowType(Ljava/lang/Object;)I
    .locals 1
    .param p1, "win"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->mImpl:Lcom/android/server/policy/IPolicySmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/policy/IPolicySmartShowFuncs;->getWindowType(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public handleGoHome()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->mImpl:Lcom/android/server/policy/IPolicySmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/IPolicySmartShowFuncs;->handleGoHome()Z

    move-result v0

    goto :goto_0
.end method

.method public initScreenSize(IIIIIII)V
    .locals 8
    .param p1, "shortSize"    # I
    .param p2, "longSize"    # I
    .param p3, "statusBarHeight"    # I
    .param p4, "navigationBarWidth"    # I
    .param p5, "navigationBarHeight"    # I
    .param p6, "portraitRotation"    # I
    .param p7, "landscapeRotation"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->mImpl:Lcom/android/server/policy/IPolicySmartShowFuncs;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/server/policy/IPolicySmartShowFuncs;->initScreenSize(IIIIIII)V

    return-void
.end method

.method public interceptKeyBeforeDispatchingForSmartShow(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->withoutKeyFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->mImpl:Lcom/android/server/policy/IPolicySmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/policy/IPolicySmartShowFuncs;->interceptKeyBeforeDispatchingForSmartShow(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public offsetInputMethodWindowLw(Ljava/lang/Object;II)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "contentBottom"    # I
    .param p3, "curBottom"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->mImpl:Lcom/android/server/policy/IPolicySmartShowFuncs;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/IPolicySmartShowFuncs;->offsetInputMethodWindowLw(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public withoutKeyFilter()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->mWithoutKeyFilter:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->mImpl:Lcom/android/server/policy/IPolicySmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/IPolicySmartShowFuncs;->withoutKeyFilter()Z

    move-result v0

    goto :goto_0
.end method

.method public withoutMultiWindow()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->mWithoutMultiWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PolicySmartShowFuncsWrapper;->mImpl:Lcom/android/server/policy/IPolicySmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/IPolicySmartShowFuncs;->withoutMultiWindow()Z

    move-result v0

    goto :goto_0
.end method
