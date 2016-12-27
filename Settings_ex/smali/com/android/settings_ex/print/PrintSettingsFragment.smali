.class public Lcom/android/settings_ex/print/PrintSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ex/DialogCreatable;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;,
        Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;,
        Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;,
        Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# instance fields
.field private mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

.field private mAddNewServiceButton:Landroid/widget/Button;

.field private final mHandler:Landroid/os/Handler;

.field private mPrintJobsController:Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;

.field private mPrintServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 586
    new-instance v0, Lcom/android/settings_ex/print/PrintSettingsFragment$3;

    invoke-direct {v0}, Lcom/android/settings_ex/print/PrintSettingsFragment$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 104
    new-instance v0, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsPackageMonitor;-><init>(Lcom/android/settings_ex/print/PrintSettingsFragment;Lcom/android/settings_ex/print/PrintSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 106
    new-instance v0, Lcom/android/settings_ex/print/PrintSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/print/PrintSettingsFragment$1;-><init>(Lcom/android/settings_ex/print/PrintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 113
    new-instance v0, Lcom/android/settings_ex/print/PrintSettingsFragment$2;

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment$2;-><init>(Lcom/android/settings_ex/print/PrintSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;

    .line 478
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/print/PrintSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintSettingsFragment;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintSettingsFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintSettingsFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method private createAddNewServiceIntentOrNull()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "print_service_search_uri"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "searchUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const/4 v1, 0x0

    .line 309
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private newAddServicePreferenceOrNull()Landroid/preference/Preference;
    .locals 3

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    .line 291
    .local v0, "addNewServiceIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 292
    const/4 v1, 0x0

    .line 300
    :goto_0
    return-object v1

    .line 294
    :cond_0
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 295
    .local v1, "preference":Landroid/preference/Preference;
    const v2, 0x7f0c068e

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 296
    const v2, 0x7f0200eb

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 297
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 298
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 299
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    goto :goto_0
.end method

.method private startSubSettingsIfNeeded()V
    .locals 4

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "componentName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 320
    .local v1, "prereference":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method private updateServicesPreferences()V
    .locals 24

    .prologue
    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    const-string v21, "print_services_category"

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    if-nez v20, :cond_3

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 200
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/print/PrintSettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 203
    .local v8, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 205
    .local v14, "pm":Landroid/content/pm/PackageManager;
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.printservice.PrintService"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x84

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 210
    .local v13, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    .line 211
    .local v12, "installedServiceCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v12, :cond_5

    .line 212
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 214
    .local v11, "installedService":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 217
    .local v15, "preference":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .line 218
    .local v19, "title":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 220
    new-instance v6, Landroid/content/ComponentName;

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v15, v10}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 226
    const-class v20, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 227
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 229
    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 230
    .local v17, "serviceEnabled":Z
    if-eqz v17, :cond_4

    .line 231
    const v20, 0x7f0c068c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
    :goto_2
    invoke-virtual {v11, v14}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 237
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_0

    .line 238
    invoke-virtual {v15, v7}, Landroid/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_0
    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 242
    .local v9, "extras":Landroid/os/Bundle;
    const-string v20, "EXTRA_PREFERENCE_KEY"

    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v20, "EXTRA_CHECKED"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const-string v20, "EXTRA_TITLE"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/printservice/PrintServiceInfo;

    move-result-object v16

    .line 249
    .local v16, "printServiceInfo":Landroid/printservice/PrintServiceInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 251
    .local v5, "applicationLabel":Ljava/lang/CharSequence;
    const-string v20, "EXTRA_ENABLE_WARNING_TITLE"

    const v21, 0x7f0c0686

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v5, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v20, "EXTRA_ENABLE_WARNING_MESSAGE"

    const v21, 0x7f0c0687

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v5, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {v16 .. v16}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v18

    .line 257
    .local v18, "settingsClassName":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 258
    const-string v20, "EXTRA_SETTINGS_TITLE"

    const v21, 0x7f0c068a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v20, "EXTRA_SETTINGS_COMPONENT_NAME"

    new-instance v21, Landroid/content/ComponentName;

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, "addPrinterClassName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 267
    const-string v20, "EXTRA_ADD_PRINTERS_TITLE"

    const v21, 0x7f0c068b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v20, "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

    new-instance v21, Landroid/content/ComponentName;

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_2
    const-string v20, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 211
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 197
    .end local v4    # "addPrinterClassName":Ljava/lang/String;
    .end local v5    # "applicationLabel":Ljava/lang/CharSequence;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v10    # "i":I
    .end local v11    # "installedService":Landroid/content/pm/ResolveInfo;
    .end local v12    # "installedServiceCount":I
    .end local v13    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "preference":Landroid/preference/PreferenceScreen;
    .end local v16    # "printServiceInfo":Landroid/printservice/PrintServiceInfo;
    .end local v17    # "serviceEnabled":Z
    .end local v18    # "settingsClassName":Ljava/lang/String;
    .end local v19    # "title":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceCategory;->removeAll()V

    goto/16 :goto_0

    .line 233
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    .restart local v8    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v10    # "i":I
    .restart local v11    # "installedService":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "installedServiceCount":I
    .restart local v13    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v14    # "pm":Landroid/content/pm/PackageManager;
    .restart local v15    # "preference":Landroid/preference/PreferenceScreen;
    .restart local v17    # "serviceEnabled":Z
    .restart local v19    # "title":Ljava/lang/String;
    :cond_4
    const v20, 0x7f0c068d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 279
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "installedService":Landroid/content/pm/ResolveInfo;
    .end local v15    # "preference":Landroid/preference/PreferenceScreen;
    .end local v17    # "serviceEnabled":Z
    .end local v19    # "title":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v20

    if-nez v20, :cond_7

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 287
    :cond_6
    :goto_3
    return-void

    .line 282
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->newAddServicePreferenceOrNull()Landroid/preference/Preference;

    move-result-object v3

    .line 283
    .local v3, "addNewServicePreference":Landroid/preference/Preference;
    if-eqz v3, :cond_6

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 134
    const v0, 0x7f0c0949

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0x50

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 328
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    if-ne v2, p1, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    .line 330
    .local v0, "addNewServiceIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 332
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v0    # "addNewServiceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 333
    .restart local v0    # "addNewServiceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "PrintSettingsFragment"

    const-string v3, "Unable to start activity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v0, 0x7f080051

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->addPreferencesFromResource(I)V

    .line 142
    const-string v0, "print_jobs_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    .line 144
    const-string v0, "print_services_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    .line 146
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    new-instance v0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;

    invoke-direct {v0, p0, v3}, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/settings_ex/print/PrintSettingsFragment;Lcom/android/settings_ex/print/PrintSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 151
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 167
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 168
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 158
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->updateServicesPreferences()V

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->setHasOptionsMenu(Z)V

    .line 160
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->startSubSettingsIfNeeded()V

    .line 161
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 172
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 174
    .local v1, "contentRoot":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040096

    invoke-virtual {v4, v5, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 176
    .local v2, "emptyView":Landroid/view/View;
    const v4, 0x7f1200cd

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 177
    .local v3, "textView":Landroid/widget/TextView;
    const v4, 0x7f0c0688

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 178
    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 179
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    .line 180
    .local v0, "addNewServiceIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 181
    const v4, 0x7f12018f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    .line 182
    iget-object v4, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v4, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 187
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 189
    return-void
.end method
