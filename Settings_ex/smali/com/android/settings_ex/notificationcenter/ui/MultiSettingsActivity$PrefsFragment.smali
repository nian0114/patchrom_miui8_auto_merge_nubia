.class public Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "MultiSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefsFragment"
.end annotation


# instance fields
.field private mBreathlightListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDBManager:Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

.field private mLockscreenListener:Landroid/view/View$OnClickListener;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPrefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mScreen:Landroid/preference/PreferenceScreen;

.field private mSelectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->refreshStats()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mUser_app:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mPrefs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Ljava/util/Map;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->showPreference(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;Ljava/util/Map;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->showPreference(Ljava/util/Map;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mSelectMap:Ljava/util/Map;

    return-object v0
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

    .line 199
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v3, "queryIntent":Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object v6, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 202
    .local v4, "resInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v5, "toShowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 204
    const/4 v2, 0x0

    .line 206
    .local v2, "isSystemApp":Z
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

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

    .line 211
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

    .line 219
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    move v2, v7

    .line 206
    goto :goto_1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 222
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "isSystemApp":Z
    :cond_3
    return-object v5
.end method

.method private modifyDatabase(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)V
    .locals 1
    .param p1, "info"    # Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    .param p2, "flag"    # I

    .prologue
    .line 329
    invoke-virtual {p1}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->isInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mDBManager:Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->update(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mDBManager:Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->insert(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)V

    goto :goto_0
.end method

.method private refreshStats()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 132
    iget-object v10, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mDBManager:Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

    invoke-virtual {v10}, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->querryAll()Ljava/util/Map;

    move-result-object v2

    .line 133
    .local v2, "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->getToShowList()Ljava/util/ArrayList;

    move-result-object v9

    .line 134
    .local v9, "toShowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 135
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 136
    .local v7, "pkgName":Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 137
    .local v1, "flag":Ljava/lang/Integer;
    const/4 v5, 0x1

    .line 138
    .local v5, "inserted":Z
    new-instance v4, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-direct {v4}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;-><init>()V

    .line 139
    .local v4, "info":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    if-nez v1, :cond_0

    .line 140
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 142
    :try_start_0
    iget-object v10, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v10, v7, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-gtz v10, :cond_1

    const/4 v6, 0x1

    .line 143
    .local v6, "isThirdPartyApp":Z
    :goto_1
    if-eqz v6, :cond_2

    const-string v10, "cn.nubia"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 144
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 151
    .end local v6    # "isThirdPartyApp":Z
    :goto_2
    const/4 v5, 0x0

    .line 153
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setFlag(I)V

    .line 154
    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setInserted(Z)V

    .line 155
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setPackageName(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v12, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setAppName(Ljava/lang/String;)V

    .line 157
    new-instance v8, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;

    iget-object v10, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10, v4}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;-><init>(Landroid/content/Context;Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;)V

    .line 158
    .local v8, "pref":Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;
    new-instance v10, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$3;

    invoke-direct {v10, p0, v8, v4}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$3;-><init>(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;)V

    iput-object v10, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mBreathlightListener:Landroid/view/View$OnClickListener;

    .line 174
    new-instance v10, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$4;

    invoke-direct {v10, p0, v8, v4}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$4;-><init>(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;)V

    iput-object v10, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mLockscreenListener:Landroid/view/View$OnClickListener;

    .line 190
    iget-object v10, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mLockscreenListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->setLockscreenListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v10, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mBreathlightListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->setBreathlightListenerListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {v4}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 193
    iget-object v10, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mPrefs:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v10, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mUser_app:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getAppName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .end local v8    # "pref":Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;
    :cond_1
    move v6, v11

    .line 142
    goto :goto_1

    .line 146
    .restart local v6    # "isThirdPartyApp":Z
    :cond_2
    const/4 v10, 0x5

    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_2

    .line 148
    .end local v6    # "isThirdPartyApp":Z
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "flag":Ljava/lang/Integer;
    .end local v4    # "info":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    .end local v5    # "inserted":Z
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private showPreference(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
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
            "Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p2, "user_app":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;>;"
    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mDBManager:Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

    invoke-virtual {v8, p1}, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->query(Ljava/lang/String;)Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    move-result-object v5

    .line 227
    .local v5, "info":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    if-nez v5, :cond_0

    .line 280
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v7, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;

    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v5}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;-><init>(Landroid/content/Context;Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;)V

    .line 229
    .local v7, "pref":Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;
    new-instance v8, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$5;

    invoke-direct {v8, p0, v7, v5}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$5;-><init>(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;)V

    iput-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mBreathlightListener:Landroid/view/View$OnClickListener;

    .line 245
    new-instance v8, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$6;

    invoke-direct {v8, p0, v7, v5}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$6;-><init>(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;)V

    iput-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mLockscreenListener:Landroid/view/View$OnClickListener;

    .line 261
    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mLockscreenListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->setLockscreenListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mBreathlightListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->setBreathlightListenerListener(Landroid/view/View$OnClickListener;)V

    .line 263
    invoke-virtual {v5}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 265
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 266
    const-string v8, "com.android.server.telecom"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 267
    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    const-string v9, "cn.nubia.contacts"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v1, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 269
    .local v1, "activityInfos":[Landroid/content/pm/ActivityInfo;
    move-object v2, v1

    .local v2, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v0, v2, v4

    .line 270
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    const-string v8, "cn.nubia.contacts.DialerActivity"

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 271
    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 275
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "activityInfos":[Landroid/content/pm/ActivityInfo;
    .end local v2    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v3

    .line 276
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 278
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-virtual {v5}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {v5}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
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
    .line 283
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 284
    .local v0, "count":I
    if-nez p1, :cond_1

    .line 297
    :cond_0
    return-void

    .line 286
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

    .line 287
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mPrefs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;

    .line 288
    .local v4, "pref":Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;
    add-int v5, v0, p2

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->setOrder(I)V

    .line 290
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 295
    add-int/lit8 v0, v0, 0x1

    .line 296
    goto :goto_0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 86
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mContext:Landroid/content/Context;

    .line 88
    new-instance v1, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mDBManager:Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

    .line 89
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    .line 90
    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$1;-><init>(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;)V

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mUser_app:Ljava/util/Map;

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mPrefs:Ljava/util/Map;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mScreen:Landroid/preference/PreferenceScreen;

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mSelectMap:Ljava/util/Map;

    .line 100
    new-instance v1, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$2;-><init>(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;)V

    iput-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mTask:Landroid/os/AsyncTask;

    .line 119
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mSelectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 129
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public submit()V
    .locals 7

    .prologue
    .line 305
    iget-object v6, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mSelectMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 307
    .local v4, "stringIntegerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 308
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 310
    .local v5, "value":I
    iget-object v6, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mDBManager:Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

    invoke-virtual {v6, v3}, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->query(Ljava/lang/String;)Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    move-result-object v2

    .line 311
    .local v2, "info":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    const/4 v6, 0x1

    invoke-static {v2, v6}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 312
    invoke-virtual {v2}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getFlag()I

    move-result v0

    .line 313
    .local v0, "flag":I
    if-ne v5, v0, :cond_2

    .line 325
    .end local v0    # "flag":I
    .end local v2    # "info":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "stringIntegerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "value":I
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mSelectMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 326
    return-void

    .line 316
    .restart local v2    # "info":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "stringIntegerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v5    # "value":I
    :cond_1
    invoke-virtual {v2}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getFlag()I

    move-result v6

    and-int/lit8 v0, v6, 0x19

    .line 317
    .restart local v0    # "flag":I
    if-eq v5, v0, :cond_0

    .line 320
    add-int/lit8 v5, v5, 0x1

    .line 323
    :cond_2
    invoke-direct {p0, v2, v5}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->modifyDatabase(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)V

    goto :goto_0
.end method
