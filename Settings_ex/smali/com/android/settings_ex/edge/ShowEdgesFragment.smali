.class public Lcom/android/settings_ex/edge/ShowEdgesFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ShowEdgesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 38
    const-string v0, "ShowEdgesFragment"

    iput-object v0, p0, Lcom/android/settings_ex/edge/ShowEdgesFragment;->TAG:Ljava/lang/String;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/edge/ShowEdgesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/edge/ShowEdgesFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->toEdgeGuidePage()V

    return-void
.end method

.method private toEdgeGuidePage()V
    .locals 5

    .prologue
    .line 134
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "cn.nubia.edge"

    const-string v4, "cn.nubia.edge.instruct.GuideActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "ShowEdgesFragment"

    const-string v4, "startActivity cn.nubia.edge.instruct.GuideActivity failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/settings_ex/edge/ShowEdgesFragment;->EDGE_SETTINGS:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/SettingsActivity;

    .line 100
    .local v7, "sa":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v7}, Lcom/android/settings_ex/SettingsActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v1

    .line 101
    .local v1, "mActionbar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 103
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040178

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 104
    .local v2, "mCustomView":Landroid/view/View;
    const v8, 0x7f120370

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 105
    .local v3, "moreLayout":Landroid/widget/RelativeLayout;
    const v8, 0x7f120371

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 106
    .local v4, "moreSettingsIcon":Landroid/widget/ImageView;
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    const v8, 0x7f120372

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 108
    .local v5, "moreSettingsText":Landroid/widget/TextView;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    new-instance v8, Lcom/android/settings_ex/edge/ShowEdgesFragment$1;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/edge/ShowEdgesFragment$1;-><init>(Lcom/android/settings_ex/edge/ShowEdgesFragment;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    new-instance v6, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v6, v8, v9}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;-><init>(II)V

    .line 128
    .local v6, "params":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    const/16 v8, 0x15

    iput v8, v6, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->gravity:I

    .line 129
    invoke-virtual {v1, v2, v6}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setCustomView(Landroid/view/View;Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;)V

    .line 130
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 49
    invoke-static {p1}, Lcom/android/settings_ex/edge/EdgeUtils;->isShowInstruct(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->toEdgeGuidePage()V

    .line 52
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v7, 0x7f080029

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->addPreferencesFromResource(I)V

    .line 59
    invoke-static {}, Lcom/android/settings_ex/Utils;->isEdgeFeatureEnable()Z

    move-result v7

    if-nez v7, :cond_0

    .line 61
    iget-object v7, p0, Lcom/android/settings_ex/edge/ShowEdgesFragment;->TAG:Ljava/lang/String;

    const-string v8, "NOT SUPPORT EDGE !!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 93
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v7, "edge_single_hold"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 67
    .local v5, "singleHand":Landroid/preference/Preference;
    const-string v7, "edge_two_hands"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 68
    .local v6, "twoHands":Landroid/preference/Preference;
    const-string v7, "edge_click"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 70
    .local v0, "clickEdge":Landroid/preference/Preference;
    const-string v7, "edge_flide_repeat"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 71
    .local v3, "edgeFlideRepeat":Landroid/preference/Preference;
    const-string v7, "edge_flide_double_sided"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 72
    .local v1, "edgeFlideDoubleSided":Landroid/preference/Preference;
    const-string v7, "edge_flide_inward"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 73
    .local v2, "edgeFlideInward":Landroid/preference/Preference;
    const-string v7, "edge_flide_single_move_switch"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 75
    .local v4, "edgeFlideSingleMoveSwitch":Landroid/preference/Preference;
    new-instance v7, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;

    const-string v8, "edge_click"

    invoke-direct {v7, p0, v8}, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;-><init>(Lcom/android/settings_ex/edge/ShowEdgesFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    new-instance v7, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;

    const-string v8, "edge_single_hold"

    invoke-direct {v7, p0, v8}, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;-><init>(Lcom/android/settings_ex/edge/ShowEdgesFragment;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    new-instance v7, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;

    const-string v8, "edge_flide_repeat"

    invoke-direct {v7, p0, v8}, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;-><init>(Lcom/android/settings_ex/edge/ShowEdgesFragment;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 79
    new-instance v7, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;

    const-string v8, "edge_flide_double_sided"

    invoke-direct {v7, p0, v8}, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;-><init>(Lcom/android/settings_ex/edge/ShowEdgesFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 80
    new-instance v7, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;

    const-string v8, "edge_flide_inward"

    invoke-direct {v7, p0, v8}, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;-><init>(Lcom/android/settings_ex/edge/ShowEdgesFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    new-instance v7, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;

    const-string v8, "edge_flide_single_move_switch"

    invoke-direct {v7, p0, v8}, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;-><init>(Lcom/android/settings_ex/edge/ShowEdgesFragment;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 83
    const-string v7, "edge_single_hold"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->removePreference(Ljava/lang/String;)V

    .line 84
    const-string v7, "edge_two_hands"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->removePreference(Ljava/lang/String;)V

    const-string v7, "edge_flide_inward"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->removePreference(Ljava/lang/String;)V

    const-string v7, "edge_flide_single_move_switch"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->removePreference(Ljava/lang/String;)V

    const-string v7, "edge_flide_repeat"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method
