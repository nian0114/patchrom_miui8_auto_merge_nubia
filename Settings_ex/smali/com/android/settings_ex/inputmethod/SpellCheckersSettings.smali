.class public Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

.field private mSpellCheckerLanaguagePref:Landroid/preference/Preference;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;)Landroid/view/textservice/TextServicesManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method static synthetic access$100(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 41
    invoke-static {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->convertDialogItemIdToSubtypeIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;
    .param p1, "x1"    # Landroid/view/textservice/SpellCheckerInfo;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    return-void
.end method

.method private changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 1
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0, p1}, Landroid/view/textservice/TextServicesManager;->setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 240
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 241
    return-void
.end method

.method private static convertDialogItemIdToSubtypeIndex(I)I
    .locals 1
    .param p0, "item"    # I

    .prologue
    .line 165
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method private static convertSubtypeIndexToDialogItemId(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 164
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "subtype"    # Landroid/view/textservice/SpellCheckerSubtype;

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 136
    :cond_0
    if-nez p2, :cond_1

    .line 137
    const v0, 0x7f0c05e3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private populatePreferenceScreen()V
    .locals 7

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 78
    .local v5, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 79
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    if-nez v6, :cond_0

    const/4 v1, 0x0

    .line 80
    .local v1, "count":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 81
    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v4, v6, v2

    .line 82
    .local v4, "sci":Landroid/view/textservice/SpellCheckerInfo;
    new-instance v3, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;

    invoke-direct {v3, v0, v4, p0}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;-><init>(Landroid/content/Context;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/settings_ex/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;)V

    .line 83
    .local v3, "pref":Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 84
    invoke-static {v3}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    .end local v1    # "count":I
    .end local v2    # "index":I
    .end local v3    # "pref":Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;
    .end local v4    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v1, v6

    goto :goto_0

    .line 86
    .restart local v1    # "count":I
    .restart local v2    # "index":I
    :cond_1
    return-void
.end method

.method private showChooseLanguageDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 168
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v9}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 169
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v9}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 171
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v9}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    .line 172
    .local v2, "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v9, v10}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v3

    .line 174
    .local v3, "currentScs":Landroid/view/textservice/SpellCheckerSubtype;
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v9, 0x7f0c05a9

    invoke-virtual {v0, v9}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v8

    .line 177
    .local v8, "subtypeCount":I
    add-int/lit8 v9, v8, 0x1

    new-array v6, v9, [Ljava/lang/CharSequence;

    .line 178
    .local v6, "items":[Ljava/lang/CharSequence;
    const/4 v9, 0x0

    invoke-direct {p0, v2, v9}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v6, v10

    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, "checkedItemId":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v8, :cond_2

    .line 181
    invoke-virtual {v2, v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    .line 182
    .local v7, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-static {v4}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->convertSubtypeIndexToDialogItemId(I)I

    move-result v5

    .line 183
    .local v5, "itemId":I
    invoke-direct {p0, v2, v7}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v6, v5

    .line 184
    invoke-virtual {v7, v3}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 185
    move v1, v5

    .line 180
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    .end local v5    # "itemId":I
    .end local v7    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_2
    new-instance v9, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$1;

    invoke-direct {v9, p0, v2}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$1;-><init>(Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v0, v6, v1, v9}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 207
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 208
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v9}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 209
    return-void
.end method

.method private showSecurityWarnDialog(Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;)V
    .locals 7
    .param p1, "pref"    # Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;

    .prologue
    const/4 v6, 0x1

    .line 212
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 215
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 216
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 218
    const v2, 0x7f0c05b4

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 219
    invoke-virtual {v0, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 220
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$2;

    invoke-direct {v3, p0, v1}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$2;-><init>(Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 226
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$3;-><init>(Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 231
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 232
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 233
    return-void
.end method

.method private updatePreferenceScreen()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 110
    iget-object v8, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 111
    iget-object v8, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v3

    .line 112
    .local v3, "isSpellCheckerEnabled":Z
    iget-object v8, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v8, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 114
    iget-object v8, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8, v9}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 116
    .local v1, "currentScs":Landroid/view/textservice/SpellCheckerSubtype;
    iget-object v8, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0, v10, v1}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 119
    .local v7, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 120
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 121
    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 122
    .local v5, "preference":Landroid/preference/Preference;
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 123
    instance-of v8, v5, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;

    if-eqz v8, :cond_0

    move-object v4, v5

    .line 124
    check-cast v4, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;

    .line 125
    .local v4, "pref":Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;
    invoke-virtual {v4}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v6

    .line 126
    .local v6, "sci":Landroid/view/textservice/SpellCheckerInfo;
    iget-object v8, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v4, v8}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->setSelected(Z)V

    .line 120
    .end local v4    # "pref":Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v4    # "pref":Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;
    .restart local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_1
    move v8, v9

    .line 126
    goto :goto_1

    .line 129
    .end local v4    # "pref":Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;
    .end local v5    # "preference":Landroid/preference/Preference;
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_2
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x3b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->addPreferencesFromResource(I)V

    .line 67
    const-string v0, "spellchecker_language"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/preference/Preference;

    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    const-string v0, "textservices"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->populatePreferenceScreen()V

    .line 74
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 101
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->showChooseLanguageDialog()V

    .line 147
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRadioButtonClicked(Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;)V
    .locals 3
    .param p1, "pref"    # Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 155
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 157
    .local v0, "isSystemApp":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 158
    invoke-direct {p0, v1}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 162
    :goto_1
    return-void

    .line 155
    .end local v0    # "isSystemApp":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    .restart local v0    # "isSystemApp":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->showSecurityWarnDialog(Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 94
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 95
    return-void
.end method

.method public onSwitchChanged(Lcn/nubia/commonui/widget/NubiaSwitch;Z)V
    .locals 1
    .param p1, "switchView"    # Lcn/nubia/commonui/widget/NubiaSwitch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0, p2}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    .line 106
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 107
    return-void
.end method
