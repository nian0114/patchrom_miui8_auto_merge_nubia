.class final Lcom/android/settings_ex/applications/ProcessStatsDetail$2;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ProcessStatsDetail;
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
        "Lcom/android/settings_ex/applications/ProcStatsEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings_ex/applications/ProcStatsEntry;Lcom/android/settings_ex/applications/ProcStatsEntry;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/settings_ex/applications/ProcStatsEntry;
    .param p2, "rhs"    # Lcom/android/settings_ex/applications/ProcStatsEntry;

    .prologue
    .line 236
    iget-wide v0, p1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v2, p2, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunWeight:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 237
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    .line 238
    :cond_0
    iget-wide v0, p1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v2, p2, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunWeight:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 239
    const/4 v0, -0x1

    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 233
    check-cast p1, Lcom/android/settings_ex/applications/ProcStatsEntry;

    check-cast p2, Lcom/android/settings_ex/applications/ProcStatsEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/applications/ProcessStatsDetail$2;->compare(Lcom/android/settings_ex/applications/ProcStatsEntry;Lcom/android/settings_ex/applications/ProcStatsEntry;)I

    move-result v0

    return v0
.end method
