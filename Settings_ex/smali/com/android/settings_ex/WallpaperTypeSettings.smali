.class public Lcom/android/settings_ex/WallpaperTypeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WallpaperTypeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# instance fields
.field private mHorizonScrollView:Landroid/widget/HorizontalScrollView;

.field private mLiveWallPaperLy:Landroid/widget/LinearLayout;

.field private mNubiaOfficeLy:Landroid/widget/LinearLayout;

.field private mOtherLinearLayout:Landroid/widget/LinearLayout;

.field private nubiaOfficeImg:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/android/settings_ex/WallpaperTypeSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/WallpaperTypeSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/WallpaperTypeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getDeviceDefaultThemePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    const-string v0, "/default"

    .line 111
    .local v0, "subFolder":Ljava/lang/String;
    const-string v1, "asas"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/WallpaperTypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/DeviceInfoIdentify;->getDeviceVersion(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/WallpaperTypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DeviceInfoIdentify;->getDeviceVersion(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 128
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/media/theme/thememanager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 118
    :pswitch_1
    const-string v0, "/default_golden"

    .line 119
    goto :goto_0

    .line 121
    :pswitch_2
    const-string v0, "/default_light_luxury"

    .line 122
    goto :goto_0

    .line 124
    :pswitch_3
    const-string v0, "/default_exclusive"

    .line 125
    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private populateWallpaperTypes()V
    .locals 18

    .prologue
    .line 137
    new-instance v6, Landroid/content/Intent;

    const-string v15, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v6, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WallpaperTypeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 139
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/high16 v15, 0x10000

    invoke-virtual {v11, v6, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 142
    .local v13, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/WallpaperTypeSettings;->mOtherLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 143
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 144
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 145
    .local v12, "prefIntent":Landroid/content/Intent;
    const-string v15, "com.android.wallpaper.livepicker cn.nubia.launchercn.nubia.minilauncher"

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 148
    new-instance v15, Landroid/content/ComponentName;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 150
    invoke-virtual {v5, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 151
    .local v4, "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WallpaperTypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v15

    const v16, 0x7f040115

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 153
    .local v14, "view":Landroid/view/View;
    const/4 v7, 0x0

    .line 155
    .local v7, "label":Ljava/lang/CharSequence;
    :try_start_0
    iget-object v15, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 156
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 160
    if-nez v7, :cond_1

    iget-object v15, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 161
    :cond_1
    const v15, 0x7f1202b7

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 162
    .local v10, "mOtherWallpaperLy":Landroid/widget/LinearLayout;
    const v15, 0x7f1202b8

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 164
    .local v8, "mOtherImageView":Landroid/widget/ImageView;
    const v15, 0x7f1202b9

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 166
    .local v9, "mOtherTitle":Landroid/widget/TextView;
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    new-instance v15, Lcom/android/settings_ex/WallpaperTypeSettings$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12}, Lcom/android/settings_ex/WallpaperTypeSettings$1;-><init>(Lcom/android/settings_ex/WallpaperTypeSettings;Landroid/content/Intent;)V

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/WallpaperTypeSettings;->mOtherLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 157
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "mOtherImageView":Landroid/widget/ImageView;
    .end local v9    # "mOtherTitle":Landroid/widget/TextView;
    .end local v10    # "mOtherWallpaperLy":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0

    .line 176
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "image":Landroid/graphics/drawable/Drawable;
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "label":Ljava/lang/CharSequence;
    .end local v12    # "prefIntent":Landroid/content/Intent;
    .end local v14    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x65

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 205
    :goto_0
    :pswitch_0
    return-void

    .line 180
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 181
    .local v2, "intentOffice":Landroid/content/Intent;
    const-string v3, "cn.nubia.launcher"

    const-string v4, "com.android.launcher3.SimpleWallpaperActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/WallpaperTypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "ShowEdgesFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity failed: Intent.activityName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 191
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intentOffice":Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 192
    .local v1, "intentLive":Landroid/content/Intent;
    const-string v3, "com.android.wallpaper.livepicker"

    const-string v4, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/WallpaperTypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 197
    :catch_1
    move-exception v0

    .line 198
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "ShowEdgesFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity failed: Intent.activityName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x7f120416
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    const v5, 0x7f0401de

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 77
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f120416

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings_ex/WallpaperTypeSettings;->mNubiaOfficeLy:Landroid/widget/LinearLayout;

    .line 78
    const v5, 0x7f120419

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings_ex/WallpaperTypeSettings;->mLiveWallPaperLy:Landroid/widget/LinearLayout;

    .line 79
    const v5, 0x7f120417

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/settings_ex/WallpaperTypeSettings;->nubiaOfficeImg:Landroid/widget/ImageView;

    .line 82
    invoke-static {}, Lcom/android/settings_ex/Utils;->isZTEManufacturer()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "N940Sc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 83
    const v5, 0x7f120418

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 84
    .local v2, "nubiaOfficeInfo":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 85
    .local v1, "info":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 86
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "nubia"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .end local v1    # "info":Ljava/lang/CharSequence;
    .end local v2    # "nubiaOfficeInfo":Landroid/widget/TextView;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/settings_ex/WallpaperTypeSettings;->getDeviceDefaultThemePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/wallpaper/default_wallpaper.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "path":Ljava/lang/String;
    const-string v5, "asas"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    .local v0, "img":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 95
    iget-object v5, p0, Lcom/android/settings_ex/WallpaperTypeSettings;->nubiaOfficeImg:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_1
    const v5, 0x7f12041c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings_ex/WallpaperTypeSettings;->mOtherLinearLayout:Landroid/widget/LinearLayout;

    .line 100
    const v5, 0x7f12041b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/android/settings_ex/WallpaperTypeSettings;->mHorizonScrollView:Landroid/widget/HorizontalScrollView;

    .line 103
    iget-object v5, p0, Lcom/android/settings_ex/WallpaperTypeSettings;->mLiveWallPaperLy:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v5, p0, Lcom/android/settings_ex/WallpaperTypeSettings;->mNubiaOfficeLy:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-object v4
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 132
    invoke-direct {p0}, Lcom/android/settings_ex/WallpaperTypeSettings;->populateWallpaperTypes()V

    .line 133
    return-void
.end method
