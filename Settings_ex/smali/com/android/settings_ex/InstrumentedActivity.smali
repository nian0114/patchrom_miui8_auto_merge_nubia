.class public abstract Lcom/android/settings_ex/InstrumentedActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "InstrumentedActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getMetricsCategory()I
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onPause()V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings_ex/InstrumentedActivity;->getMetricsCategory()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 46
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings_ex/InstrumentedActivity;->getMetricsCategory()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 40
    return-void
.end method
