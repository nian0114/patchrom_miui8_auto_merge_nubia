.class public abstract Lcom/android/settings_ex/InstrumentedPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "InstrumentedPreferenceFragment.java"


# static fields
.field public static EDGE_SETTINGS:I

.field public static LAUNCHER_SETTINGS:I

.field public static MANAGE_APPLICATION:I

.field public static MEMORY:I

.field public static SCHEDULE_POWER_ON_OFF:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x101

    sput v0, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->EDGE_SETTINGS:I

    .line 35
    const/16 v0, 0x102

    sput v0, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->MEMORY:I

    .line 36
    const/16 v0, 0x103

    sput v0, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->SCHEDULE_POWER_ON_OFF:I

    .line 37
    const/16 v0, 0x104

    sput v0, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->LAUNCHER_SETTINGS:I

    .line 38
    const/16 v0, 0x105

    sput v0, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->MANAGE_APPLICATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getMetricsCategory()I
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 49
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 43
    return-void
.end method
