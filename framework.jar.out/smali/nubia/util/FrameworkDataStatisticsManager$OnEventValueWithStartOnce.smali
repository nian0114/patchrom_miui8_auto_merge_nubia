.class Lnubia/util/FrameworkDataStatisticsManager$OnEventValueWithStartOnce;
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
    name = "OnEventValueWithStartOnce"
.end annotation


# instance fields
.field private mDuration:I

.field private mEventId:Ljava/lang/String;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/String;
    .param p3, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnubia/util/FrameworkDataStatisticsManager$OnEventValueWithStartOnce;->mEventId:Ljava/lang/String;

    iput-object p2, p0, Lnubia/util/FrameworkDataStatisticsManager$OnEventValueWithStartOnce;->mMap:Ljava/util/Map;

    iput p3, p0, Lnubia/util/FrameworkDataStatisticsManager$OnEventValueWithStartOnce;->mDuration:I

    return-void
.end method


# virtual methods
.method public run(Lnubia/util/IFrameworkDataStatisticsService;)V
    .locals 3
    .param p1, "service"    # Lnubia/util/IFrameworkDataStatisticsService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager$OnEventValueWithStartOnce;->mEventId:Ljava/lang/String;

    iget-object v1, p0, Lnubia/util/FrameworkDataStatisticsManager$OnEventValueWithStartOnce;->mMap:Ljava/util/Map;

    iget v2, p0, Lnubia/util/FrameworkDataStatisticsManager$OnEventValueWithStartOnce;->mDuration:I

    invoke-interface {p1, v0, v1, v2}, Lnubia/util/IFrameworkDataStatisticsService;->onEventValue(Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method
