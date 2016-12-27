.class public Lcom/android/settings_ex/supersnap/SuperSnapIntroductionFragment;
.super Landroid/preference/PreferenceFragment;
.source "SuperSnapIntroductionFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/supersnap/SuperSnapIntroductionFragment;->addPreferencesFromResource(I)V

    .line 13
    return-void
.end method
