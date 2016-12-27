.class public Lcom/android/settings_ex/location/LocationRequestApps;
.super Lcom/android/settings_ex/location/LocationSettings;
.source "LocationRequestApps.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettings;-><init>()V

    return-void
.end method

.method private addRecentLocationApps(Lcom/android/settings_ex/SettingsActivity;Landroid/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/settings_ex/SettingsActivity;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 72
    new-instance v1, Lcom/android/settings_ex/location/RecentLocationApps;

    invoke-direct {v1, p1}, Lcom/android/settings_ex/location/RecentLocationApps;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    .line 73
    .local v1, "recentApps":Lcom/android/settings_ex/location/RecentLocationApps;
    invoke-virtual {v1}, Lcom/android/settings_ex/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v2

    .line 74
    .local v2, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 75
    invoke-virtual {p0, v2, p2}, Lcom/android/settings_ex/location/LocationRequestApps;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 84
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "banner":Landroid/preference/Preference;
    const v3, 0x7f0400c3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 80
    const v3, 0x7f0c04ab

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 81
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 82
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/settings_ex/location/LocationRequestApps$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/location/LocationRequestApps$1;-><init>(Lcom/android/settings_ex/location/LocationRequestApps;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 66
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 68
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/settings_ex/location/LocationSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationRequestApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 35
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 36
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettings;->onResume()V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationRequestApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 45
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationRequestApps;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 46
    .local v1, "root":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 49
    :cond_0
    const v2, 0x7f08003b

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/location/LocationRequestApps;->addPreferencesFromResource(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationRequestApps;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 51
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/location/LocationRequestApps;->addRecentLocationApps(Lcom/android/settings_ex/SettingsActivity;Landroid/preference/PreferenceScreen;)V

    .line 53
    return-void
.end method
