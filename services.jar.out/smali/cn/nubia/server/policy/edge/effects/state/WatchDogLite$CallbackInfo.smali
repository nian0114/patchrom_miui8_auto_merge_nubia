.class Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;
.super Ljava/lang/Object;
.source "WatchDogLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackInfo"
.end annotation


# instance fields
.field private final mCaller:Ljava/lang/String;

.field private final mCalltraceOfCaller:Ljava/lang/Throwable;

.field private final mTime:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "time"    # I
    .param p3, "calltraceOfCaller"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;->mCaller:Ljava/lang/String;

    iput p2, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;->mTime:I

    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;->mCalltraceOfCaller:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCaller()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;->mCaller:Ljava/lang/String;

    return-object v0
.end method

.method public getCalltraceOfCaller()Ljava/lang/Throwable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;->mCalltraceOfCaller:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;->mTime:I

    return v0
.end method
