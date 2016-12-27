.class public Lcom/android/settings_ex/profile/DeskmodeFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DeskmodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;
    }
.end annotation


# static fields
.field private static final DESKMODE:[I

.field private static final LAUNCHER_NAME:[[Ljava/lang/String;

.field private static final LAUNCHER_RESOURCE:[[I


# instance fields
.field private mCurrentHome:Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;

.field private mDoneButton:Landroid/widget/Button;

.field mHomeClickListener:Landroid/view/View$OnClickListener;

.field private mHomeComponentSet:[Landroid/content/ComponentName;

.field private final mHomeFilter:Landroid/content/IntentFilter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrefGroup:Landroid/preference/PreferenceGroup;

.field private mPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 51
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/profile/DeskmodeFragment;->DESKMODE:[I

    .line 60
    new-array v0, v3, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "cn.nubia.zbiglauncher.preset"

    aput-object v2, v1, v4

    const-string v2, "cn.nubia.zbiglauncher.ui.ScreenSlideActivity"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "cn.nubia.launcher"

    aput-object v2, v1, v4

    const-string v2, "com.android.launcher3.Launcher"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings_ex/profile/DeskmodeFragment;->LAUNCHER_NAME:[[Ljava/lang/String;

    .line 65
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings_ex/profile/DeskmodeFragment;->LAUNCHER_RESOURCE:[[I

    return-void

    .line 51
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 65
    :array_1
    .array-data 4
        0x7f0c0b86
        0x7f0c0b88
    .end array-data

    :array_2
    .array-data 4
        0x7f0c0b87
        0x7f0c0b89
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mCurrentHome:Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;

    .line 196
    new-instance v0, Lcom/android/settings_ex/profile/DeskmodeFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/profile/DeskmodeFragment$3;-><init>(Lcom/android/settings_ex/profile/DeskmodeFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mHomeClickListener:Landroid/view/View$OnClickListener;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mHomeFilter:Landroid/content/IntentFilter;

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mHomeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mHomeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/profile/DeskmodeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/DeskmodeFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/profile/DeskmodeFragment;->setSelectedLauncher()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/profile/DeskmodeFragment;)Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/DeskmodeFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mCurrentHome:Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/profile/DeskmodeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/DeskmodeFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mPrefs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/profile/DeskmodeFragment;Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/DeskmodeFragment;
    .param p1, "x1"    # Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings_ex/profile/DeskmodeFragment;->makeCurrentHome(Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/profile/DeskmodeFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/DeskmodeFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private clearDefaultLauncher()V
    .locals 7

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/DeskmodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 234
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v2, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v5, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mHomeFilter:Landroid/content/IntentFilter;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v1, v5}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 239
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 240
    const-string v5, "setDefaultLauncher"

    const-string v6, "No Default Launcher was set!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 243
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    goto :goto_1

    .line 244
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_1
    const-string v5, "setDefaultLauncher"

    const-string v6, "Default Launcher was cleared!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPkgShowName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v3, 0x0

    .line 179
    .local v3, "strKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/DeskmodeFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 181
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 182
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 186
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v3

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "DeskmodeFragmentNew"

    const-string v5, "Unable to get applicationInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeCurrentHome(Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;)V
    .locals 2
    .param p1, "newHome"    # Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mCurrentHome:Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mCurrentHome:Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->setChecked(Z)V

    .line 211
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->setChecked(Z)V

    .line 212
    iput-object p1, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mCurrentHome:Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;

    .line 213
    return-void
.end method

.method private setSelectedLauncher()V
    .locals 6

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/settings_ex/profile/DeskmodeFragment;->clearDefaultLauncher()V

    .line 218
    iget-object v1, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mCurrentHome:Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mHomeFilter:Landroid/content/IntentFilter;

    const/high16 v3, 0x100000

    iget-object v4, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mHomeComponentSet:[Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mCurrentHome:Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;

    iget-object v5, v5, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mActivityName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 223
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/DeskmodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 229
    return-void
.end method

.method private showSpecifiedIconAndTitle(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "showSpecified":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings_ex/profile/DeskmodeFragment;->DESKMODE:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/profile/DeskmodeFragment;->LAUNCHER_NAME:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/profile/DeskmodeFragment;->LAUNCHER_NAME:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    const/4 v1, 0x1

    .line 116
    :cond_0
    return v1

    .line 109
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method buildHomeActivitiesList()V
    .locals 19

    .prologue
    .line 120
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v15, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v15}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v12

    .line 123
    .local v12, "currentDefaultHome":Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profile/DeskmodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 124
    .local v3, "context":Landroid/content/Context;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mCurrentHome:Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mPrefs:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mHomeComponentSet:[Landroid/content/ComponentName;

    .line 128
    const/4 v5, 0x0

    .line 129
    .local v5, "prefIndex":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_4

    .line 130
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 131
    .local v11, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v10, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 132
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v2, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v2, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v4, "activityName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mHomeComponentSet:[Landroid/content/ComponentName;

    aput-object v4, v2, v16

    .line 135
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 136
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 137
    .local v7, "name":Ljava/lang/CharSequence;
    const-string v8, ""

    .line 139
    .local v8, "summary":Ljava/lang/CharSequence;
    const/16 v17, 0x0

    .line 140
    .local v17, "specifiedInfo":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings_ex/profile/DeskmodeFragment;->showSpecifiedIconAndTitle(Landroid/content/ComponentName;)Z

    move-result v17

    .line 142
    if-eqz v17, :cond_3

    .line 143
    const/4 v13, 0x0

    .local v13, "deskindex":I
    :goto_1
    sget-object v2, Lcom/android/settings_ex/profile/DeskmodeFragment;->DESKMODE:[I

    array-length v2, v2

    if-ge v13, v2, :cond_1

    .line 144
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/android/settings_ex/profile/DeskmodeFragment;->LAUNCHER_NAME:[[Ljava/lang/String;

    aget-object v9, v9, v13

    const/16 v18, 0x0

    aget-object v9, v9, v18

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/android/settings_ex/profile/DeskmodeFragment;->LAUNCHER_NAME:[[Ljava/lang/String;

    aget-object v9, v9, v13

    const/16 v18, 0x1

    aget-object v9, v9, v18

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    sget-object v2, Lcom/android/settings_ex/profile/DeskmodeFragment;->LAUNCHER_NAME:[[Ljava/lang/String;

    aget-object v2, v2, v13

    const/4 v9, 0x0

    aget-object v2, v2, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/profile/DeskmodeFragment;->getPkgShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profile/DeskmodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v9, Lcom/android/settings_ex/profile/DeskmodeFragment;->LAUNCHER_RESOURCE:[[I

    aget-object v9, v9, v13

    const/16 v18, 0x1

    aget v9, v9, v18

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 143
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 154
    :cond_1
    new-instance v1, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;

    move-object/from16 v2, p0

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;-><init>(Lcom/android/settings_ex/profile/DeskmodeFragment;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings_ex/profile/DeskmodeFragment;Landroid/content/pm/ActivityInfo;)V

    .line 156
    .local v1, "pref":Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 158
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->setEnabled(Z)V

    .line 159
    invoke-virtual {v4, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mCurrentHome:Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 129
    .end local v1    # "pref":Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "name":Ljava/lang/CharSequence;
    .end local v8    # "summary":Ljava/lang/CharSequence;
    .end local v13    # "deskindex":I
    .end local v17    # "specifiedInfo":Z
    :cond_3
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 163
    :catch_0
    move-exception v14

    .line 164
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "DeskmodeFragmentNew"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Problem dealing with activity "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 168
    .end local v4    # "activityName":Landroid/content/ComponentName;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .end local v11    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mCurrentHome:Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;

    if-eqz v2, :cond_5

    .line 169
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/android/settings_ex/profile/DeskmodeFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/settings_ex/profile/DeskmodeFragment$2;-><init>(Lcom/android/settings_ex/profile/DeskmodeFragment;)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    :cond_5
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, -0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/DeskmodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/DeskmodeFragment;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/DeskmodeFragment;->addPreferencesFromResource(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/DeskmodeFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mPm:Landroid/content/pm/PackageManager;

    .line 82
    const-string v0, "deskmode"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/DeskmodeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mPrefGroup:Landroid/preference/PreferenceGroup;

    .line 84
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    const v1, 0x7f04007d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f120156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mDoneButton:Landroid/widget/Button;

    .line 90
    iget-object v1, p0, Lcom/android/settings_ex/profile/DeskmodeFragment;->mDoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings_ex/profile/DeskmodeFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/profile/DeskmodeFragment$1;-><init>(Lcom/android/settings_ex/profile/DeskmodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/DeskmodeFragment;->buildHomeActivitiesList()V

    .line 105
    return-void
.end method
