.class public Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;
.super Ljava/lang/Object;
.source "LauncherNotifier.java"


# instance fields
.field private mHasShown:Z

.field private final mResolver:Landroid/content/ContentResolver;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mHasShown:Z

    const-string v0, "content://cn.nubia.launcher.settings/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public canAnimate()V
    .locals 5

    .prologue
    const-string v0, "State"

    const-string v1, "notify launcher can animate"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->uri:Landroid/net/Uri;

    const-string v2, "launcherFit"

    const-string v3, "toForeground"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mHasShown:Z

    return-void
.end method

.method public canPrepare(Z)V
    .locals 5
    .param p1, "isLeft"    # Z

    .prologue
    const-string v1, "State"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify launcher can prepare isLeft="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "direction"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->uri:Landroid/net/Uri;

    const-string v3, "launcherFit"

    const-string v4, "init"

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public canShow()V
    .locals 5

    .prologue
    const-string v0, "State"

    const-string v1, "notify launcher can show"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->uri:Landroid/net/Uri;

    const-string v2, "launcherFit"

    const-string v3, "show"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mHasShown:Z

    return-void
.end method

.method public cancelPrepare()V
    .locals 5

    .prologue
    const-string v0, "State"

    const-string v1, "notify launcher cancel prepare"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->uri:Landroid/net/Uri;

    const-string v2, "launcherFit"

    const-string v3, "cancel"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mHasShown:Z

    return v0
.end method
