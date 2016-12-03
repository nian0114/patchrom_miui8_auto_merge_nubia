.class public Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;
.super Ljava/lang/Object;
.source "EffectsLog.java"


# static fields
.field public static final ADAPTER_TAG:Ljava/lang/String; = "Adapter"

.field public static final ANIMTIOIN_TAG:Ljava/lang/String; = "Animation"

.field public static final CRASH_TAG:Ljava/lang/String; = "Crash"

.field private static final DEBUG:Z = false

.field private static final DEBUG_DEBUG:Z = false

.field private static final DEBUG_ERROR:Z = true

.field private static final DEBUG_INFO:Z = true

.field private static final DEBUG_VERBOSE:Z = false

.field private static final DEBUG_WARN:Z = true

.field private static final DEFAULT_TAG:Ljava/lang/String; = ""

.field public static final EVENT_TAG:Ljava/lang/String; = "Event"

.field private static final INVALID:I = -0x1

.field public static final OBSERVER_TAG:Ljava/lang/String; = "Observer"

.field private static final PREFIX_TAG:Ljava/lang/String; = "FitAnim_"

.field public static final RES_TAG:Ljava/lang/String; = "Res"

.field public static final STATE_TAG:Ljava/lang/String; = "State"

.field public static final TIMER_TAG:Ljava/lang/String; = "Timer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, -0x1

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, -0x1

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 53
    const/4 v0, -0x1

    return v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->prefixed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p0}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->prefixed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 99
    invoke-static {p0}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->prefixed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->prefixed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p0}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->prefixed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    invoke-static {p0}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->prefixed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method private static prefixed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FitAnim_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v0, -0x1

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, -0x1

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    const/4 v0, -0x1

    return v0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->prefixed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->prefixed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    invoke-static {p0}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->prefixed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
