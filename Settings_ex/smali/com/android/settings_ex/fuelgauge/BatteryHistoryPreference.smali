.class public Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;
.super Landroid/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

.field private mHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Landroid/os/BatteryStats;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object p2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    .line 56
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v12, 0x3e8

    const/4 v10, 0x0

    .line 90
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    mul-long/2addr v8, v12

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v4

    .line 92
    .local v4, "uSecTime":J
    move-wide v2, v4

    .line 93
    .local v2, "mStatsPeriod":J
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    div-long v8, v2, v12

    long-to-double v8, v8

    invoke-static {v6, v8, v9, v10}, Lcom/android/settings_ex/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "durationString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c06ad

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "mDurationString":Ljava/lang/String;
    const v6, 0x7f0c0e7d

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->setTitle(I)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 98
    return-void
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-string v3, "tmp_bat_history.bin"

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->storeStatsHistoryInFile(Ljava/lang/String;)V

    .line 64
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "stats"

    const-string v3, "tmp_bat_history.bin"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "broadcast"

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 70
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c06bb

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public setStats(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 1
    .param p1, "batteryStats"    # Lcom/android/internal/os/BatteryStatsHelper;

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    .line 78
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 79
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    .line 80
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mBatteryBroadcast:Landroid/content/Intent;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->notifyChanged()V

    .line 82
    return-void
.end method
