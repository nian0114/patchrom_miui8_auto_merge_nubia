.class public Lcn/nubia/server/policy/edge/effects/state/StateContext;
.super Ljava/lang/Object;
.source "StateContext.java"


# instance fields
.field private final mLauncherNotifier:Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;

    invoke-direct {v0, p1}, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateContext;->mLauncherNotifier:Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;

    return-void
.end method


# virtual methods
.method public getLauncherNotifier()Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateContext;->mLauncherNotifier:Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;

    return-object v0
.end method
