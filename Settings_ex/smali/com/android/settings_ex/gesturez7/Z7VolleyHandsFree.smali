.class public Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;
.super Landroid/preference/PreferenceFragment;
.source "Z7VolleyHandsFree.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private isDialog:Z

.field mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

.field private mHandsFreePref:Landroid/preference/nubia/CheckBoxPreference;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field mType:I

.field private mValidListener:Z

.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mValidListener:Z

    .line 45
    iput v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mType:I

    .line 50
    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->isDialog:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->isDialog:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;)Lcom/android/settings_ex/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    return-object v0
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mType:I

    invoke-static {v2}, Lcom/android/settings_ex/gesturez7/Z7GestureKeys;->getKeyByType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mHandsFreePref:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getHandFree()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mHandsFreePref:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getHandFree()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mHandsFreePref:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setStyle(Landroid/text/SpannableStringBuilder;II)V
    .locals 4
    .param p1, "s"    # Landroid/text/SpannableStringBuilder;
    .param p2, "begin"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v3, 0x22

    .line 85
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 87
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p1, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 88
    return-void
.end method

.method private showSingleDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 164
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c102c

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c102d

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree$2;-><init>(Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree$1;-><init>(Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 181
    .local v0, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 183
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 184
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 186
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 54
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 56
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 57
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 58
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setClickable(Z)V

    .line 59
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setFocusable(Z)V

    .line 60
    const v1, 0x7f08007b

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->addPreferencesFromResource(I)V

    .line 61
    const-string v1, "key_hands_free"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mHandsFreePref:Landroid/preference/nubia/CheckBoxPreference;

    .line 62
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 99
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mType:I

    .line 101
    :cond_0
    new-instance v1, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    .line 102
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    const v5, 0x7f0401f9

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 68
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f1200d6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->textView:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c1028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "text":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 72
    .local v2, "style":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    const/16 v5, 0x8

    const/16 v6, 0xc

    invoke-direct {p0, v2, v5, v6}, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->setStyle(Landroid/text/SpannableStringBuilder;II)V

    .line 75
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->textView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v5, 0x7f120049

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 78
    .local v1, "image":Landroid/widget/ImageView;
    const v5, 0x7f02039f

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 80
    .local v0, "drawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 81
    return-object v4
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 137
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 127
    iget-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mValidListener:Z

    .line 131
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mHandsFreePref:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mHandsFreePref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 193
    .local v0, "handsFree":Z
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setHandFree(Z)V

    .line 195
    .end local v0    # "handsFree":Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 107
    iget-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mValidListener:Z

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mValidListener:Z

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->initUI()V

    .line 112
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 93
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 142
    return-void
.end method

.method public onSwitchChanged(Lcn/nubia/commonui/widget/NubiaSwitch;Z)V
    .locals 4
    .param p1, "switchView"    # Lcn/nubia/commonui/widget/NubiaSwitch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    iget v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mType:I

    invoke-virtual {v0, v1, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBReallyChanged(IZ)V

    .line 148
    if-eqz p2, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mHandsFreePref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mHandsFreePref:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getHandFree()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "motion_pickanswer"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->isDialog:Z

    if-ne v0, v3, :cond_2

    .line 156
    iput-boolean v2, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->isDialog:Z

    .line 161
    :cond_0
    :goto_1
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mHandsFreePref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->showSingleDialog()V

    goto :goto_1
.end method
