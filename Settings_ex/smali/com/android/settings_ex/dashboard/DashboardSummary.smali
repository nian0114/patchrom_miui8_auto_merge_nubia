.class public Lcom/android/settings_ex/dashboard/DashboardSummary;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;,
        Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;
    }
.end annotation


# instance fields
.field private mDashboard:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSettingsObserver:Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 74
    new-instance v0, Lcom/android/settings_ex/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;Lcom/android/settings_ex/dashboard/DashboardSummary$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/DashboardSummary;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/dashboard/DashboardSummary;Lcom/android/settings_ex/dashboard/DashboardTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/DashboardSummary;
    .param p1, "x1"    # Lcom/android/settings_ex/dashboard/DashboardTile;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/DashboardSummary;->onItemClick(Lcom/android/settings_ex/dashboard/DashboardTile;)V

    return-void
.end method

.method private isAppExist(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 274
    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isNubiaCloudAppExist()Z
    .locals 1

    .prologue
    .line 263
    const-string v0, "cn.nubia.cloud"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->isAppExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isSystmUpdateAppExist()Z
    .locals 1

    .prologue
    .line 278
    const-string v0, "cn.nubia.systemupdate"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->isAppExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private onItemClick(Lcom/android/settings_ex/dashboard/DashboardTile;)V
    .locals 10
    .param p1, "mTile"    # Lcom/android/settings_ex/dashboard/DashboardTile;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 293
    iget-object v0, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    iget v5, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/settings_ex/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 305
    iget-wide v0, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    const-wide/32 v2, 0x7f1204ad

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 306
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-class v1, Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 311
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_2
    iget-wide v0, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    const-wide/32 v2, 0x7f1204b0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 312
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 316
    :cond_3
    iget-object v0, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 317
    .local v9, "numUserHandles":I
    if-le v9, v5, :cond_4

    .line 318
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings_ex/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Lcom/android/settings_ex/dashboard/DashboardTile;)V

    goto :goto_0

    .line 320
    :cond_4
    if-ne v9, v5, :cond_5

    .line 321
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 325
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v7

    .line 327
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private rebuildUI(Landroid/content/Context;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    const-string v2, "DashboardSummary"

    const-string v3, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 166
    .local v22, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 168
    .local v4, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v2, p1

    .line 170
    check-cast v2, Lcom/android/settings_ex/SettingsActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/SettingsActivity;->getDashboardCategories(Z)Ljava/util/List;

    move-result-object v9

    .line 173
    .local v9, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    .line 175
    .local v14, "count":I
    const/16 v19, 0x0

    .local v19, "n":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v14, :cond_7

    .line 176
    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/dashboard/DashboardCategory;

    .line 178
    .local v10, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040068

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 181
    .local v13, "categoryView":Landroid/view/View;
    if-nez v19, :cond_1

    .line 182
    const v2, 0x7f120123

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 184
    .local v12, "categoryLabel":Landroid/widget/TextView;
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    .end local v12    # "categoryLabel":Landroid/widget/TextView;
    :cond_1
    const v2, 0x7f120124

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 190
    .local v11, "categoryContent":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v24

    .line 191
    .local v24, "tilesCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move/from16 v0, v24

    if-ge v15, v0, :cond_6

    .line 192
    invoke-virtual {v10, v15}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings_ex/dashboard/DashboardTile;

    move-result-object v5

    .line 193
    .local v5, "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    iget-wide v2, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    const-wide/32 v6, 0x7f1204b0

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->isNubiaCloudAppExist()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    const/4 v2, 0x0

    iput-object v2, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 196
    const/4 v2, 0x0

    iput-object v2, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 197
    const v2, 0x7f0c0de4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    .line 198
    const v2, 0x7f0c0de4

    iput v2, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    .line 199
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v18, "intent":Landroid/content/Intent;
    const-string v2, "cn.nubia.cloud"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v2, "nubia.cloud.action.UserCenter"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 211
    .end local v18    # "intent":Landroid/content/Intent;
    :cond_2
    iget-wide v2, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    const-wide/32 v6, 0x7f120166

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    .line 212
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->isSystmUpdateAppExist()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 213
    const/4 v2, 0x0

    iput-object v2, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 214
    const/4 v2, 0x0

    iput-object v2, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 215
    const v2, 0x7f0c0e65

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    .line 216
    const v2, 0x7f0c0e65

    iput v2, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    .line 217
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 218
    .restart local v18    # "intent":Landroid/content/Intent;
    const-string v2, "cn.nubia.systemupdate"

    const-string v3, "cn.nubia.systemupdate.SystemUpdateActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 223
    .end local v18    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v21, Lcom/android/settings_ex/dashboard/DashboardTileView;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/dashboard/DashboardTileView;-><init>(Landroid/content/Context;)V

    .line 224
    .local v21, "tileView":Lcom/android/settings_ex/dashboard/DashboardTileView;
    invoke-virtual/range {v21 .. v21}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getStatusTextView()Landroid/widget/TextView;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings_ex/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings_ex/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 228
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setTile(Lcom/android/settings_ex/dashboard/DashboardTile;)V

    .line 229
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setSystemUpdateNumberVisibility(Z)V

    .line 230
    iget-wide v2, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    const-wide/32 v6, 0x7f120166

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->isSystmUpdateAppExist()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "system_update_unreadnumber"

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 235
    .local v20, "notificationCount":I
    const-string v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "system update notificationCount is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    .line 237
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setSystemUpdateNumberVisibility(Z)V

    .line 243
    .end local v20    # "notificationCount":I
    :cond_4
    :goto_3
    new-instance v2, Lcom/android/settings_ex/dashboard/DashboardSummary$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/android/settings_ex/dashboard/DashboardSummary$2;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;Lcom/android/settings_ex/dashboard/DashboardTile;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 191
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 239
    .restart local v20    # "notificationCount":I
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setSystemUpdateNumberVisibility(Z)V

    goto :goto_3

    .line 256
    .end local v5    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    .end local v20    # "notificationCount":I
    .end local v21    # "tileView":Lcom/android/settings_ex/dashboard/DashboardTileView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 175
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 258
    .end local v10    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v11    # "categoryContent":Landroid/view/ViewGroup;
    .end local v13    # "categoryView":Landroid/view/View;
    .end local v15    # "i":I
    .end local v24    # "tilesCount":I
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v22

    .line 259
    .local v16, "delta":J
    const-string v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebuildUI took: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendRebuildUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 371
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 374
    :cond_0
    return-void
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings_ex/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/settings_ex/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;
    .param p6, "statusTextView"    # Landroid/widget/TextView;

    .prologue
    const/4 v7, 0x0

    .line 336
    iget-object v4, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 338
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 340
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 342
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 343
    .local v3, "tintColor":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010435

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 345
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 347
    .end local v3    # "tintColor":Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 359
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p3, p2}, Lcom/android/settings_ex/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {p3, p2}, Lcom/android/settings_ex/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 362
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 363
    const/4 v4, 0x0

    invoke-virtual {p6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    invoke-virtual {p6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :goto_1
    return-void

    .line 348
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 352
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget v4, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    if-lez v4, :cond_2

    .line 353
    iget v4, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 355
    :cond_2
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 366
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {p6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 348
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :catch_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x23

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    new-instance v0, Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSettingsObserver:Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSettingsObserver:Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;->registObserver(Z)V

    .line 106
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/dashboard/DashboardSummary;->setHasOptionsMenu(Z)V

    .line 107
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c093f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/settings_ex/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 150
    const v1, 0x7f040067

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f120121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    .line 155
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDestroy()V

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSettingsObserver:Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;->registObserver(Z)V

    .line 142
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 120
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->sendRebuildUI()V

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    return-void
.end method
