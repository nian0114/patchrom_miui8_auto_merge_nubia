.class Lnubia/util/FrameworkDataStatisticsManager$SetDebugMode;
.super Ljava/lang/Object;
.source "FrameworkDataStatisticsManager.java"

# interfaces
.implements Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/util/FrameworkDataStatisticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetDebugMode"
.end annotation


# instance fields
.field private mDebug:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "debug"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager$SetDebugMode;->mDebug:Z

    iput-boolean p1, p0, Lnubia/util/FrameworkDataStatisticsManager$SetDebugMode;->mDebug:Z

    return-void
.end method


# virtual methods
.method public run(Lnubia/util/IFrameworkDataStatisticsService;)V
    .locals 1
    .param p1, "service"    # Lnubia/util/IFrameworkDataStatisticsService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager$SetDebugMode;->mDebug:Z

    invoke-interface {p1, v0}, Lnubia/util/IFrameworkDataStatisticsService;->setDebugMode(Z)V

    return-void
.end method
