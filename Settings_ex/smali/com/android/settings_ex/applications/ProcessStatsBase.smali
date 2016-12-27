.class public abstract Lcom/android/settings_ex/applications/ProcessStatsBase;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ProcessStatsBase.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DURATION_QUANTUM:J

.field protected static sDurationLabels:[I

.field protected static sDurations:[J


# instance fields
.field protected mDurationIndex:I

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mSpinnerHeader:Landroid/view/ViewGroup;

.field protected mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const-wide/16 v6, 0x2

    .line 46
    sget-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    sput-wide v0, Lcom/android/settings_ex/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    .line 47
    new-array v0, v8, [J

    const/4 v1, 0x0

    const-wide/32 v2, 0xa4cb80

    sget-wide v4, Lcom/android/settings_ex/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, 0x1499700

    sget-wide v4, Lcom/android/settings_ex/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide/32 v2, 0x2932e00

    sget-wide v4, Lcom/android/settings_ex/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide/32 v2, 0x5265c00

    sget-wide v4, Lcom/android/settings_ex/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsBase;->sDurations:[J

    .line 51
    new-array v0, v8, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsBase;->sDurationLabels:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c0721
        0x7f0c0722
        0x7f0c0723
        0x7f0c0724
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mDurationIndex:I

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "durationIndex"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 68
    sget-object v0, Lcom/android/settings_ex/applications/ProcessStatsBase;->sDurations:[J

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the index is beyond legal length!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput p1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mDurationIndex:I

    .line 73
    return-void
.end method

.method public static launchMemoryDetail(Lcom/android/settings_ex/SettingsActivity;Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;Lcom/android/settings_ex/applications/ProcStatsPackageEntry;)V
    .locals 10
    .param p0, "activity"    # Lcom/android/settings_ex/SettingsActivity;
    .param p1, "memInfo"    # Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;
    .param p2, "entry"    # Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    .prologue
    const/4 v4, 0x0

    .line 146
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "package_entry"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 148
    const-string v0, "weight_to_ram"

    iget-wide v6, p1, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->weightToRam:D

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 149
    const-string v0, "total_time"

    iget-wide v6, p1, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->memTotalTime:J

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 150
    const-string v0, "max_memory_usage"

    iget-wide v6, p1, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-wide v8, p1, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double/2addr v6, v8

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 152
    const-string v0, "total_scale"

    iget-wide v6, p1, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->totalScale:D

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 153
    const-class v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0af8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 155
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, "args":Landroid/os/Bundle;
    new-instance v3, Lcom/android/settings_ex/applications/ProcStatsData;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez p1, :cond_0

    if-eqz v0, :cond_1

    const-string v1, "transfer_stats"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v3, v4, v1}, Lcom/android/settings_ex/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    .line 88
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    iget v3, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mDurationIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/android/settings_ex/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v2, v3, v2

    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/ProcStatsData;->setDuration(J)V

    .line 89
    return-void

    :cond_1
    move v1, v2

    .line 79
    goto :goto_0

    .line 88
    :cond_2
    sget-object v2, Lcom/android/settings_ex/applications/ProcessStatsBase;->sDurations:[J

    iget v3, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mDurationIndex:I

    aget-wide v2, v2, v3

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ProcStatsData;->xferStats()V

    .line 111
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mDurationIndex:I

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    sget-object v1, Lcom/android/settings_ex/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v2, v1, p3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/applications/ProcStatsData;->setDuration(J)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsBase;->refreshUi()V

    .line 134
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ProcStatsData;->refreshStats(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsBase;->refreshUi()V

    .line 103
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    const-string v0, "duration"

    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ProcStatsData;->getDuration()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 95
    const-string v0, "duration_index"

    iget v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mDurationIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 116
    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsBase;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mSpinnerHeader:Landroid/view/ViewGroup;

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mSpinnerHeader:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 127
    return-void
.end method

.method public abstract refreshUi()V
.end method
