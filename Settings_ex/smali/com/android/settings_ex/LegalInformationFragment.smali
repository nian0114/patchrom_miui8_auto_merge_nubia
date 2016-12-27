.class public Lcom/android/settings_ex/LegalInformationFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LegalInformationFragment.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/android/settings_ex/LegalInformationFragment$1;

    invoke-direct {v0}, Lcom/android/settings_ex/LegalInformationFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/LegalInformationFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0xe1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v2, 0x7f080039

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/LegalInformationFragment;->addPreferencesFromResource(I)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings_ex/LegalInformationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 40
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings_ex/LegalInformationFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 41
    .local v1, "parentPreference":Landroid/preference/PreferenceGroup;
    const-string v2, "terms"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 43
    const-string v2, "license"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 45
    const-string v2, "copyright"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 47
    const-string v2, "privacy"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 49
    const-string v2, "user_agreement"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 51
    const-string v2, "webview_license"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 53
    return-void
.end method
