.class final Lcom/android/settings_ex/applications/ProcessStatsUi$3;
.super Ljava/lang/Object;
.source "ProcessStatsUi.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ProcessStatsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings_ex/applications/ProcStatsPackageEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings_ex/applications/ProcStatsPackageEntry;Lcom/android/settings_ex/applications/ProcStatsPackageEntry;)I
    .locals 8
    .param p1, "lhs"    # Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    .param p2, "rhs"    # Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    .prologue
    .line 229
    iget-wide v4, p2, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-wide v6, p2, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-double v2, v4

    .line 230
    .local v2, "rhsMax":D
    iget-wide v4, p1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-wide v6, p1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-double v0, v4

    .line 231
    .local v0, "lhsMax":D
    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 232
    const/4 v4, 0x0

    .line 234
    :goto_0
    return v4

    :cond_0
    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 226
    check-cast p1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    check-cast p2, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/applications/ProcessStatsUi$3;->compare(Lcom/android/settings_ex/applications/ProcStatsPackageEntry;Lcom/android/settings_ex/applications/ProcStatsPackageEntry;)I

    move-result v0

    return v0
.end method
