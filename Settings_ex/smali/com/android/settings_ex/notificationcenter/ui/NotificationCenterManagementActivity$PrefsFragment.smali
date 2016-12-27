.class public Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "NotificationCenterManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefsFragment"
.end annotation


# instance fields
.field private KEY_APP_LIST:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDBManager:Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPrefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefsGroup:Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;

.field private mTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mUser_app:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 71
    const-string v0, "app_list"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->KEY_APP_LIST:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->refreshStats()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mUser_app:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPrefs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Ljava/util/Map;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->showPreference(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;Ljava/util/Map;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->showPreference(Ljava/util/Map;I)V

    return-void
.end method

.method private getSummary(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v0, "summary":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 307
    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    const v1, 0x7f0c0c58

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 311
    :cond_0
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    const v1, 0x7f0c0c5c

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    :cond_1
    const/16 v1, 0x20

    invoke-static {p1, v1}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    const v1, 0x7f0c0c5e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 320
    :cond_2
    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 321
    const v1, 0x7f0c0c5b

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 324
    :cond_4
    const v1, 0x7f0c0c79

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getToShowList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 227
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v3, "queryIntent":Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v6, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 230
    .local v4, "resInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v5, "toShowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 232
    const/4 v2, 0x0

    .line 234
    .local v2, "isSystemApp":Z
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v6, v6, 0x1

    if-gtz v6, :cond_2

    const/4 v2, 0x1

    .line 239
    :goto_1
    if-nez v2, :cond_0

    const-string v8, "cn.nubia.security2"

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v8, "cn.nubia.neoshare"

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v8, "cn.nubia.weather"

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v8, "cn.nubia.zbiglauncher.preset"

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v8, "cn.nubia.notepad.preset"

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 247
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    move v2, v7

    .line 234
    goto :goto_1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 250
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "isSystemApp":Z
    :cond_3
    return-object v5
.end method

.method private initialization()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mDBManager:Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    .line 96
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$1;-><init>(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mUser_app:Ljava/util/Map;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPrefs:Ljava/util/Map;

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->KEY_APP_LIST:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPrefsGroup:Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPrefsGroup:Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;

    new-instance v1, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$2;-><init>(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;->setmanageListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method private refreshStats()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 192
    iget-object v10, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mDBManager:Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

    invoke-virtual {v10}, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->querryAll()Ljava/util/Map;

    move-result-object v2

    .line 193
    .local v2, "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->getToShowList()Ljava/util/ArrayList;

    move-result-object v9

    .line 194
    .local v9, "toShowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 195
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 196
    .local v7, "pkgName":Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 197
    .local v1, "flag":Ljava/lang/Integer;
    const/4 v5, 0x1

    .line 198
    .local v5, "inserted":Z
    new-instance v4, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-direct {v4}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;-><init>()V

    .line 199
    .local v4, "info":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    if-nez v1, :cond_0

    .line 200
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 202
    :try_start_0
    iget-object v10, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v10, v7, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-gtz v10, :cond_1

    const/4 v6, 0x1

    .line 203
    .local v6, "isThirdPartyApp":Z
    :goto_1
    if-eqz v6, :cond_2

    const-string v10, "cn.nubia"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 204
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 211
    .end local v6    # "isThirdPartyApp":Z
    :goto_2
    const/4 v5, 0x0

    .line 213
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setFlag(I)V

    .line 214
    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setInserted(Z)V

    .line 215
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setPackageName(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setAppName(Ljava/lang/String;)V

    .line 217
    new-instance v8, Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 218
    .local v8, "pref":Landroid/preference/Preference;
    invoke-virtual {v4}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getAppName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 219
    invoke-direct {p0, v4}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->getSummary(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual {v4}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 221
    iget-object v10, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPrefs:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v10, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mUser_app:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getAppName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .end local v8    # "pref":Landroid/preference/Preference;
    :cond_1
    move v6, v11

    .line 202
    goto :goto_1

    .line 206
    .restart local v6    # "isThirdPartyApp":Z
    :cond_2
    const/4 v10, 0x5

    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_2

    .line 208
    .end local v6    # "isThirdPartyApp":Z
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "flag":Ljava/lang/Integer;
    .end local v4    # "info":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    .end local v5    # "inserted":Z
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private showPreference(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, "user_app":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/preference/Preference;>;"
    iget-object v9, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mDBManager:Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

    invoke-virtual {v9, p1}, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->query(Ljava/lang/String;)Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    move-result-object v5

    .line 255
    .local v5, "info":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    if-nez v5, :cond_0

    .line 282
    :goto_0
    return-void

    .line 256
    :cond_0
    const/4 v7, 0x0

    .line 258
    .local v7, "pref":Landroid/preference/Preference;
    :try_start_0
    new-instance v8, Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v7    # "pref":Landroid/preference/Preference;
    .local v8, "pref":Landroid/preference/Preference;
    move-object v7, v8

    .line 261
    .end local v8    # "pref":Landroid/preference/Preference;
    .restart local v7    # "pref":Landroid/preference/Preference;
    :goto_1
    invoke-virtual {v5}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 262
    invoke-direct {p0, v5}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->getSummary(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {v5}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 265
    if-eqz v7, :cond_2

    .line 266
    :try_start_1
    iget-object v9, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 267
    const-string v9, "com.android.server.telecom"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 268
    iget-object v9, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    const-string v10, "cn.nubia.contacts"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v1, v9, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 270
    .local v1, "activityInfos":[Landroid/content/pm/ActivityInfo;
    move-object v2, v1

    .local v2, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v6, :cond_2

    aget-object v0, v2, v4

    .line 271
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    const-string v9, "cn.nubia.contacts.DialerActivity"

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 272
    iget-object v9, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v9}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 277
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "activityInfos":[Landroid/content/pm/ActivityInfo;
    .end local v2    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v3

    .line 278
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 280
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-virtual {v5}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {v5}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 259
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method private showPreference(Ljava/util/Map;I)V
    .locals 7
    .param p2, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPrefsGroup:Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;

    invoke-virtual {v5}, Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;->removeAll()V

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "count":I
    if-nez p1, :cond_1

    .line 302
    :cond_0
    return-void

    .line 289
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 290
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPrefs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    .line 291
    .local v4, "pref":Landroid/preference/Preference;
    add-int v5, v0, p2

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOrder(I)V

    .line 293
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPrefsGroup:Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-nez v5, :cond_2

    .line 298
    iget-object v5, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPrefsGroup:Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;

    invoke-virtual {v5, v4}, Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 300
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 301
    goto :goto_0

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 156
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 157
    if-ne p1, v3, :cond_1

    if-ne p2, v3, :cond_1

    .line 158
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 159
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "info"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    .line 160
    .local v1, "info":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    invoke-virtual {v1}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 161
    .local v2, "pref":Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 162
    invoke-direct {p0, v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->getSummary(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "info":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    if-ne p1, v4, :cond_0

    if-ne p2, v4, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPrefsGroup:Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;

    invoke-virtual {v3}, Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;->removeAll()V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPrefsGroup:Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 168
    new-instance v3, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$4;-><init>(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)V

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mTask:Landroid/os/AsyncTask;

    .line 187
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mTask:Landroid/os/AsyncTask;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->addPreferencesFromResource(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->initialization()V

    .line 80
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pkg_name"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;

    const-string v2, "com.android.settings.notificationcenter.ui.NotificationCenterSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 124
    new-instance v0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;-><init>(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mTask:Landroid/os/AsyncTask;

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 151
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 152
    return-void
.end method
