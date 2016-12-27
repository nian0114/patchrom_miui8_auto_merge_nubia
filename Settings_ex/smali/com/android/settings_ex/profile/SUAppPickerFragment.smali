.class public Lcom/android/settings_ex/profile/SUAppPickerFragment;
.super Landroid/app/ListFragment;
.source "SUAppPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;,
        Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;,
        Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final APPS_NEED_TO_HIDDEN_LIST:[Ljava/lang/String;

.field private static final DEFAULT_ALL_APPS_PKG:[Ljava/lang/String;

.field private static final DEFAULT_SU_BLACK_LIST:[Ljava/lang/String;

.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllInstalledApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsListFromDB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mSpinnerDlg:Lcn/nubia/commonui/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.android.camera"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->DEFAULT_SU_BLACK_LIST:[Ljava/lang/String;

    .line 54
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.uei.quicksetsdk.zteitwo"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->APPS_NEED_TO_HIDDEN_LIST:[Ljava/lang/String;

    .line 57
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.timemanager"

    aput-object v1, v0, v2

    const-string v1, "com.android.settings"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cn.nubia.myfile"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.strengthenmusic"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.calendar2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cn.nubia.thememanager"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cn.nubia.powermanage"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cn.nubia.neoshare"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cn.nubia.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cn.nubia.quicksearchbox"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "cn.nubia.wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cn.nubia.control"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "cn.nubia.phonemanualintegrate.preset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->DEFAULT_ALL_APPS_PKG:[Ljava/lang/String;

    .line 286
    new-instance v0, Lcom/android/settings_ex/profile/SUAppPickerFragment$1;

    invoke-direct {v0}, Lcom/android/settings_ex/profile/SUAppPickerFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 148
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/profile/SUAppPickerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SUAppPickerFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->initProgressDialog()V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->sDisplayNameComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/profile/SUAppPickerFragment;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SUAppPickerFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->initCheckedApps(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/profile/SUAppPickerFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SUAppPickerFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAppsListFromDB:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/profile/SUAppPickerFragment;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SUAppPickerFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->list2string(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/profile/SUAppPickerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SUAppPickerFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->showLoadAppListView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/profile/SUAppPickerFragment;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SUAppPickerFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mSpinnerDlg:Lcn/nubia/commonui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/profile/SUAppPickerFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SUAppPickerFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAllAppsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/profile/SUAppPickerFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SUAppPickerFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAllAppsList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->DEFAULT_ALL_APPS_PKG:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->strArr2list([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->APPS_NEED_TO_HIDDEN_LIST:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/profile/SUAppPickerFragment;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SUAppPickerFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->ensureAllApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/profile/SUAppPickerFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SUAppPickerFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAllInstalledApps:Ljava/util/List;

    return-object v0
.end method

.method private diffPkgListBetweenDBandApps(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blackListStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->ensureAllApps(Landroid/content/Context;)Ljava/util/List;

    .line 257
    iget-object v6, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAllInstalledApps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 258
    .local v2, "listSize":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    .local v0, "allPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 260
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 261
    iget-object v6, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAllInstalledApps:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->string2list(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 264
    .local v4, "pkgsFromDB":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 265
    .local v5, "size":I
    const/4 v1, 0x0

    .line 266
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v3, "mDeletePkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-ge v1, v5, :cond_2

    .line 268
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 269
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 272
    :cond_2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 273
    return-object v4
.end method

.method private ensureAllApps(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAllInstalledApps:Ljava/util/List;

    if-nez v0, :cond_0

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAllInstalledApps:Ljava/util/List;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAllInstalledApps:Ljava/util/List;

    return-object v0
.end method

.method private initCheckedApps(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_black_list"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "data":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->initDefaultCheckedList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAppsListFromDB:Ljava/util/ArrayList;

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->diffPkgListBetweenDBandApps(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAppsListFromDB:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private initDefaultCheckedList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    sget-object v3, Lcom/android/settings_ex/profile/SUAppPickerFragment;->DEFAULT_SU_BLACK_LIST:[Ljava/lang/String;

    array-length v2, v3

    .line 278
    .local v2, "length":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    .local v0, "defCheckedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 280
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 281
    sget-object v3, Lcom/android/settings_ex/profile/SUAppPickerFragment;->DEFAULT_SU_BLACK_LIST:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_0
    return-object v0
.end method

.method private initProgressDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 130
    const v4, 0x7f0c0cb9

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 131
    .local v1, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v1, v6, v7}, Lcn/nubia/commonui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v2

    .line 132
    .local v2, "pd":Lcn/nubia/commonui/app/ProgressDialog;
    invoke-virtual {v2, v7}, Lcn/nubia/commonui/app/ProgressDialog;->setProgressStyle(I)V

    .line 133
    invoke-virtual {v2}, Lcn/nubia/commonui/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 134
    .local v3, "wd":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 135
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 136
    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 137
    iput-object v2, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mSpinnerDlg:Lcn/nubia/commonui/app/ProgressDialog;

    .line 138
    return-void
.end method

.method private list2string(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 321
    .local v1, "length":I
    const/4 v0, 0x0

    .line 322
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 323
    if-eqz v0, :cond_0

    .line 324
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private showLoadAppListView()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 146
    :cond_0
    return-void
.end method

.method private static strArr2list([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "strArr"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    array-length v1, p0

    .line 299
    .local v1, "length":I
    const/4 v0, 0x0

    .line 300
    .local v0, "i":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 301
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-ge v0, v1, :cond_0

    .line 302
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_0
    return-object v2
.end method

.method private string2list(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "array":[Ljava/lang/String;
    array-length v2, v0

    .line 310
    .local v2, "length":I
    const/4 v1, 0x0

    .line 311
    .local v1, "i":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 312
    .local v3, "outputArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-ge v1, v2, :cond_0

    .line 313
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_0
    return-object v3
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    new-instance v0, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;-><init>(Lcom/android/settings_ex/profile/SUAppPickerFragment;Lcom/android/settings_ex/profile/SUAppPickerFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    const v1, 0x7f0401ab

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "v":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment;->mListView:Landroid/widget/ListView;

    .line 84
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v1, 0x7f1200b7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 342
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
