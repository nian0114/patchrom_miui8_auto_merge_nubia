.class public Lcom/android/settings_ex/AppListSwitchPreference;
.super Lcom/android/settings_ex/AppListPreference;
.source "AppListSwitchPreference.java"


# instance fields
.field private mSwitch:Landroid/widget/Checkable;


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/settings_ex/AppListPreference;->onBindView(Landroid/view/View;)V

    .line 28
    const v0, 0x102039b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/android/settings_ex/AppListSwitchPreference;->mSwitch:Landroid/widget/Checkable;

    .line 29
    iget-object v1, p0, Lcom/android/settings_ex/AppListSwitchPreference;->mSwitch:Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/android/settings_ex/AppListSwitchPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 30
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings_ex/AppListPreference;->setValue(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/AppListSwitchPreference;->mSwitch:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/settings_ex/AppListSwitchPreference;->mSwitch:Landroid/widget/Checkable;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 58
    :cond_0
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListSwitchPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 36
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/AppListSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/AppListSwitchPreference;->setValue(Ljava/lang/String;)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_3

    .line 40
    :cond_2
    const-string v1, "AppListSwitchPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to show dialog with zero entries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/AppListSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AppListSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AppListSwitchPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    .end local v0    # "value":Ljava/lang/String;
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings_ex/AppListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method
