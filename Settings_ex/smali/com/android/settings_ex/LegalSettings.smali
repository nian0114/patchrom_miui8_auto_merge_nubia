.class public Lcom/android/settings_ex/LegalSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LegalSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/android/settings_ex/LegalSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/LegalSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/LegalSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0xe1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/high16 v2, 0x7f080000

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/LegalSettings;->addPreferencesFromResource(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/LegalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 50
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings_ex/LegalSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 51
    .local v1, "parentPreference":Landroid/preference/PreferenceGroup;
    const-string v2, "terms"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 53
    const-string v2, "license"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 55
    const-string v2, "copyright"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 57
    const-string v2, "webview_license"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 59
    return-void
.end method
