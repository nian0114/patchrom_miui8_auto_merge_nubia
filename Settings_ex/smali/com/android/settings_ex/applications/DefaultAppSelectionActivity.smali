.class public Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;
.super Lcn/nubia/commonui/preference/PreferenceActivity;
.source "DefaultAppSelectionActivity.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mAppType:I

.field private mComponentSet:[Landroid/content/ComponentName;

.field private mCurrentApp:Lcom/android/settings_ex/applications/AppPreference;

.field private mDefaultAppManager:Lcom/android/settings_ex/applications/DefaultAppManager;

.field private mHandler:Landroid/os/Handler;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/AppPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPrepGroup:Landroid/preference/PreferenceGroup;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "DefaultAppSelectionActivity"

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->buildCandidateActivityList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Landroid/preference/PreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mPrepGroup:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Lcom/android/settings_ex/applications/AppPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mCurrentApp:Lcom/android/settings_ex/applications/AppPreference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;Lcom/android/settings_ex/applications/AppPreference;)Lcom/android/settings_ex/applications/AppPreference;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;
    .param p1, "x1"    # Lcom/android/settings_ex/applications/AppPreference;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mCurrentApp:Lcom/android/settings_ex/applications/AppPreference;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mPrefs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;Lcom/android/settings_ex/applications/AppPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;
    .param p1, "x1"    # Lcom/android/settings_ex/applications/AppPreference;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->makeCurrentDefault(Lcom/android/settings_ex/applications/AppPreference;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Lcom/android/settings_ex/applications/DefaultAppManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mDefaultAppManager:Lcom/android/settings_ex/applications/DefaultAppManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->writeDefaultToDB(Ljava/lang/String;)V

    return-void
.end method

.method private buildCandidateActivityList()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, "prefIndex":I
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mDefaultAppManager:Lcom/android/settings_ex/applications/DefaultAppManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->getCandidateAppInfo()Ljava/util/List;

    move-result-object v9

    .line 140
    .local v9, "displayInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mDefaultAppManager:Lcom/android/settings_ex/applications/DefaultAppManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->getDefaultAppComponentName()Landroid/content/ComponentName;

    move-result-object v8

    .line 142
    .local v8, "currentDefaultActivity":Landroid/content/ComponentName;
    sget-object v1, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentDefaultActivity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mCurrentApp:Lcom/android/settings_ex/applications/AppPreference;

    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mPrepGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 145
    iget-object v13, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mPrepGroup:Landroid/preference/PreferenceGroup;

    new-instance v0, Lcom/android/settings_ex/applications/AppPreference;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v1, p0

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/applications/AppPreference;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/Boolean;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mPrefs:Ljava/util/ArrayList;

    .line 147
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mComponentSet:[Landroid/content/ComponentName;

    .line 148
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_5

    .line 151
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v12, v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 152
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v12, :cond_4

    .line 153
    new-instance v2, Landroid/content/ComponentName;

    iget-object v1, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_2
    invoke-direct {v2, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .local v2, "componentName":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mComponentSet:[Landroid/content/ComponentName;

    aput-object v2, v1, v11

    .line 165
    :goto_3
    :try_start_0
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v4, v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 166
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v1, v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "name":Ljava/lang/String;
    new-instance v0, Lcom/android/settings_ex/applications/AppPreference;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v7, v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/applications/AppPreference;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/Boolean;Landroid/content/pm/ResolveInfo;)V

    .line 168
    .local v0, "pref":Lcom/android/settings_ex/applications/AppPreference;
    new-instance v1, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$3;-><init>(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;Lcom/android/settings_ex/applications/AppPreference;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/AppPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mPrepGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 176
    if-eqz v8, :cond_2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mCurrentApp:Lcom/android/settings_ex/applications/AppPreference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 148
    .end local v0    # "pref":Lcom/android/settings_ex/applications/AppPreference;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "name":Ljava/lang/String;
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 153
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_3
    iget-object v1, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_2

    .line 157
    :cond_4
    new-instance v2, Landroid/content/ComponentName;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v1, v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    invoke-direct {v2, v1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mComponentSet:[Landroid/content/ComponentName;

    aput-object v2, v1, v11

    goto :goto_3

    .line 181
    :catch_0
    move-exception v10

    .line 182
    .local v10, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->TAG:Ljava/lang/String;

    const-string v6, "ERROR when buildCandidateActivityList !"

    invoke-static {v1, v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 185
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mCurrentApp:Lcom/android/settings_ex/applications/AppPreference;

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$4;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$4;-><init>(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private makeCurrentDefault(Lcom/android/settings_ex/applications/AppPreference;)V
    .locals 4
    .param p1, "newDefault"    # Lcom/android/settings_ex/applications/AppPreference;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mCurrentApp:Lcom/android/settings_ex/applications/AppPreference;

    if-ne v1, p1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 202
    :cond_0
    sget-object v1, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeCurrentDefault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings_ex/applications/AppPreference;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mPrepGroup:Landroid/preference/PreferenceGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 204
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$5;-><init>(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;Lcom/android/settings_ex/applications/AppPreference;)V

    .line 217
    .local v0, "callback":Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils;->startThread(Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    return-void
.end method

.method private unRegisterReceiver()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    return-void
.end method

.method private writeDefaultToDB(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 221
    iget v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mAppType:I

    if-ltz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_APP_TYPE:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mAppType:I

    aget-object v1, v1, v2

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 49
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/PhoneWindow;

    const v5, 0x7f0e0065

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Lcom/android/settings_ex/applications/DefaultAppManager;->APP_TYPE:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mAppType:I

    .line 52
    const-string v4, "android.settings.HOME_SETTINGS"

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mAppType:I

    .line 55
    :cond_0
    iget v4, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mAppType:I

    if-gez v4, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->finish()V

    .line 100
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 60
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a008a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "appTypeArray":[Ljava/lang/String;
    iget v4, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mAppType:I

    aget-object v3, v1, v4

    .line 62
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    sget-object v4, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mAppType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const v4, 0x7f08000e

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->addPreferencesFromResource(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 67
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0, v7}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    invoke-virtual {v0, v7}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 70
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 73
    const-string v4, "default_app"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mPrepGroup:Landroid/preference/PreferenceGroup;

    .line 74
    new-instance v4, Lcom/android/settings_ex/applications/DefaultAppManager;

    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mAppType:I

    aget-object v5, v5, v6

    invoke-direct {v4, p0, v5}, Lcom/android/settings_ex/applications/DefaultAppManager;-><init>(Landroid/content/Context;Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    iput-object v4, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mDefaultAppManager:Lcom/android/settings_ex/applications/DefaultAppManager;

    .line 75
    new-instance v4, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$1;-><init>(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)V

    iput-object v4, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    new-instance v4, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$2;-><init>(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)V

    iput-object v4, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 117
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->onBackPressed()V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->onPause()V

    .line 110
    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->unRegisterReceiver()V

    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->onResume()V

    .line 104
    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->registerReceiver()V

    .line 105
    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->buildCandidateActivityList()V

    .line 106
    return-void
.end method
