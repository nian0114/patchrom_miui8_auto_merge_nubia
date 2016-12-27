.class public Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;
.super Landroid/preference/PreferenceFragment;
.source "Z7VolleyBackAndForward.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

.field private mHandsFreePref:Landroid/preference/SeekBarPreference;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field mType:I

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 37
    iput v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mType:I

    .line 41
    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mValidListener:Z

    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mType:I

    invoke-static {v2}, Lcom/android/settings_ex/gesturez7/Z7GestureKeys;->getKeyByType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mHandsFreePref:Landroid/preference/SeekBarPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarPreference;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1039

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mHandsFreePref:Landroid/preference/SeekBarPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarPreference;->setEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1048

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 47
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 48
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 49
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setClickable(Z)V

    .line 50
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setFocusable(Z)V

    .line 51
    const v1, 0x7f08007a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->addPreferencesFromResource(I)V

    .line 52
    const-string v1, "back_forward"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SeekBarPreference;

    iput-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mHandsFreePref:Landroid/preference/SeekBarPreference;

    .line 53
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 83
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mType:I

    .line 85
    :cond_0
    new-instance v1, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    const v5, 0x7f0401f9

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 60
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f1200d6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 61
    .local v2, "textView":Landroid/widget/TextView;
    const v5, 0x7f0c1026

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 62
    const v5, 0x7f120049

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 63
    .local v1, "image":Landroid/widget/ImageView;
    const v5, 0x7f02039e

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 65
    .local v0, "drawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 67
    const v5, 0x7f120489

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 68
    .local v3, "title":Landroid/widget/TextView;
    const v5, 0x7f0c1027

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 70
    return-object v4
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 127
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 117
    iget-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mValidListener:Z

    .line 121
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 96
    iget-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mValidListener:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mValidListener:Z

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->initUI()V

    .line 101
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 91
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 132
    return-void
.end method

.method public onSwitchChanged(Lcn/nubia/commonui/widget/NubiaSwitch;Z)V
    .locals 3
    .param p1, "switchView"    # Lcn/nubia/commonui/widget/NubiaSwitch;
    .param p2, "isChecked"    # Z

    .prologue
    const v2, 0x7f0c1039

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    iget v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mType:I

    invoke-virtual {v0, v1, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBReallyChanged(IZ)V

    .line 137
    if-eqz p2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mHandsFreePref:Landroid/preference/SeekBarPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarPreference;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mHandsFreePref:Landroid/preference/SeekBarPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarPreference;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackAndForward;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0
.end method
