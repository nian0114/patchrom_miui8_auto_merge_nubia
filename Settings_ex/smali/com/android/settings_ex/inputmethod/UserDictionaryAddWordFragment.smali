.class public Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# instance fields
.field private mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

.field private mIsDeleting:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;)Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    return p1
.end method

.method private updateSpinner()V
    .locals 4

    .prologue
    .line 151
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;->getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v1

    .line 153
    .local v1, "localesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 155
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 156
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x3e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->setHasOptionsMenu(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const v1, 0x7f0c05c2

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setTitle(I)V

    .line 72
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->setRetainInstance(Z)V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    const v1, 0x7f0401d2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    .line 79
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f12040a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 80
    .local v0, "btn":Landroid/widget/Button;
    new-instance v1, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment$1;-><init>(Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 91
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    if-nez v1, :cond_1

    .line 92
    new-instance v1, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 104
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v3}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;->getCurrentUserDictionaryLocale()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings_ex/inputmethod/UserDictionarySettingsUtils;->getLocaleDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    return-object v1

    .line 99
    :cond_1
    new-instance v1, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;)V

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
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
    .line 170
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    .line 171
    .local v0, "locale":Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
    invoke-virtual {v0}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->isMoreLanguages()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    .line 173
    .local v1, "sa":Lcom/android/settings_ex/SettingsActivity;
    new-instance v2, Lcom/android/settings_ex/inputmethod/UserDictionaryLocalePicker;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/inputmethod/UserDictionaryLocalePicker;-><init>(Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/SettingsActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 177
    .end local v1    # "sa":Lcom/android/settings_ex/SettingsActivity;
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->getLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 191
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 183
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    const-string v2, "locale"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 162
    iget-boolean v0, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;Landroid/os/Bundle;)I

    .line 165
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 147
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->updateSpinner()V

    .line 148
    return-void
.end method
