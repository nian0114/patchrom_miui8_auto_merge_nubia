.class public Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "SmartkeySupportAppSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;,
        Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field allAppInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/smartkey/SmartKeyAppItem;",
            ">;"
        }
    .end annotation
.end field

.field final currentAppInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/smartkey/SmartKeyAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private emptyView:Landroid/view/View;

.field private isClearRadioRoup:Z

.field private isLongSmartKey:Z

.field private mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private mAdapter:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;

.field private mCr:Landroid/content/ContentResolver;

.field private mFastUseGroup:Landroid/widget/RadioGroup;

.field private mListView:Landroid/widget/ListView;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPosition:I

.field private mRadioFlashLight:Landroid/widget/RadioButton;

.field private mRadioNoneUse:Landroid/widget/RadioButton;

.field private mRadioPhoto:Landroid/widget/RadioButton;

.field private mRadioRecord:Landroid/widget/RadioButton;

.field private mTabTitles:[Ljava/lang/String;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;

.field private mViewPagerTabs:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

.field private sAppListComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private selectLongPressIndex:I

.field private selectShortPressIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 57
    const-string v0, "SmartkeySupportAppSettings"

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->TAG:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->emptyView:Landroid/view/View;

    .line 77
    iput-boolean v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isLongSmartKey:Z

    .line 78
    iput v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->selectLongPressIndex:I

    .line 79
    iput v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->selectShortPressIndex:I

    .line 80
    iput v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mPosition:I

    .line 81
    iput-boolean v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isClearRadioRoup:Z

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->currentAppInfo:Ljava/util/List;

    .line 255
    new-instance v0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$1;-><init>(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->sAppListComparator:Ljava/util/Comparator;

    .line 469
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->updateRadioStatus()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/widget/RadioGroup;)Landroid/widget/RadioGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;
    .param p1, "x1"    # Landroid/widget/RadioGroup;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mFastUseGroup:Landroid/widget/RadioGroup;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mTabTitles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mPosition:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->setHasClearCheckRadioGroup()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isClearRadioRoup:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isClearRadioRoup:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isLongSmartKey:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->getSelectPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;
    .param p1, "x1"    # Landroid/widget/RadioButton;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioNoneUse:Landroid/widget/RadioButton;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;
    .param p1, "x1"    # Landroid/widget/RadioButton;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioPhoto:Landroid/widget/RadioButton;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;
    .param p1, "x1"    # Landroid/widget/RadioButton;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioRecord:Landroid/widget/RadioButton;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;
    .param p1, "x1"    # Landroid/widget/RadioButton;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioFlashLight:Landroid/widget/RadioButton;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mAdapter:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;)Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;
    .param p1, "x1"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mAdapter:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->emptyView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->initRadioStatus()V

    return-void
.end method

.method private clearRadioGroupStatus()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isClearRadioRoup:Z

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mFastUseGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isClearRadioRoup:Z

    .line 192
    return-void
.end method

.method private getAllApps()V
    .locals 8

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 239
    .local v4, "mPk":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v5, "queryIntent":Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 243
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->sAppListComparator:Ljava/util/Comparator;

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 244
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->allAppInfo:Ljava/util/List;

    .line 245
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 246
    .local v2, "item":Landroid/content/pm/ResolveInfo;
    new-instance v0, Lcom/android/settings_ex/smartkey/SmartKeyAppItem;

    invoke-direct {v0}, Lcom/android/settings_ex/smartkey/SmartKeyAppItem;-><init>()V

    .line 247
    .local v0, "appItem":Lcom/android/settings_ex/smartkey/SmartKeyAppItem;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/settings_ex/smartkey/SmartKeyAppItem;->activityName:Ljava/lang/String;

    .line 248
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/settings_ex/smartkey/SmartKeyAppItem;->packageName:Ljava/lang/String;

    .line 249
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings_ex/smartkey/SmartKeyAppItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 250
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings_ex/smartkey/SmartKeyAppItem;->label:Ljava/lang/CharSequence;

    .line 251
    iget-object v6, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->allAppInfo:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    .end local v0    # "appItem":Lcom/android/settings_ex/smartkey/SmartKeyAppItem;
    .end local v2    # "item":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method private getCheckedIndex(I)I
    .locals 1
    .param p1, "checkedId"    # I

    .prologue
    .line 441
    const/4 v0, -0x1

    .line 442
    .local v0, "id":I
    packed-switch p1, :pswitch_data_0

    .line 456
    :goto_0
    return v0

    .line 444
    :pswitch_0
    const/4 v0, 0x0

    .line 445
    goto :goto_0

    .line 447
    :pswitch_1
    const/4 v0, 0x1

    .line 448
    goto :goto_0

    .line 450
    :pswitch_2
    const/4 v0, 0x2

    .line 451
    goto :goto_0

    .line 453
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x7f120392
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSelectPosition()I
    .locals 4

    .prologue
    .line 563
    const/4 v0, -0x1

    .line 564
    .local v0, "selectIndex":I
    iget-boolean v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isLongSmartKey:Z

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    const-string v2, "long_smartkey_select_app_position"

    iget v3, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->selectLongPressIndex:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 571
    :goto_0
    return v0

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    const-string v2, "short_smartkey_select_app_position"

    iget v3, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->selectShortPressIndex:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 4

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 102
    iget-boolean v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isLongSmartKey:Z

    if-eqz v1, :cond_0

    .line 103
    const v1, 0x7f0c0dfd

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 110
    .local v0, "mDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-eqz v1, :cond_2

    .line 112
    if-eqz v0, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :goto_1
    return-void

    .line 105
    .end local v0    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const v1, 0x7f0c0dfe

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    .restart local v0    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->TAG:Ljava/lang/String;

    const-string v2, "Errors: getDrawable() is null !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->TAG:Ljava/lang/String;

    const-string v2, "Errors: getSupportActionBar() is null !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initActionBarSettings()V
    .locals 2

    .prologue
    .line 123
    const v0, 0x7f120390

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 124
    new-instance v0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;-><init>(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mViewPagerAdapter:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mViewPagerAdapter:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 126
    const v0, 0x7f12038c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mViewPagerTabs:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mViewPagerTabs:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mViewPagerTabs:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 129
    return-void
.end method

.method private initRadioStatus()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 132
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    const-string v3, "smartkey_short_press"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 134
    .local v1, "radioShortIndex":I
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    const-string v3, "smartkey_long_press"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 136
    .local v0, "radioLongIndex":I
    iget-boolean v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isLongSmartKey:Z

    if-nez v2, :cond_6

    .line 137
    if-nez v1, :cond_2

    .line 138
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioNoneUse:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 148
    :cond_0
    :goto_0
    if-eq v1, v6, :cond_1

    .line 150
    iput-boolean v5, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isClearRadioRoup:Z

    .line 169
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->radioButtonLog()V

    .line 170
    return-void

    .line 139
    :cond_2
    if-ne v1, v4, :cond_3

    .line 140
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioPhoto:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 141
    :cond_3
    if-ne v1, v7, :cond_4

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioRecord:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 143
    :cond_4
    if-ne v1, v8, :cond_5

    .line 144
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioFlashLight:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 145
    :cond_5
    if-ne v1, v6, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->clearRadioGroupStatus()V

    goto :goto_0

    .line 153
    :cond_6
    if-nez v0, :cond_8

    .line 154
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioNoneUse:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 164
    :cond_7
    :goto_2
    if-eq v0, v6, :cond_1

    .line 165
    iput-boolean v5, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isClearRadioRoup:Z

    goto :goto_1

    .line 155
    :cond_8
    if-ne v0, v4, :cond_9

    .line 156
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioPhoto:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 157
    :cond_9
    if-ne v0, v7, :cond_a

    .line 158
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioRecord:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 159
    :cond_a
    if-ne v0, v8, :cond_b

    .line 160
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioFlashLight:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 161
    :cond_b
    if-ne v0, v6, :cond_7

    .line 162
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->clearRadioGroupStatus()V

    goto :goto_2
.end method

.method private radioButtonLog()V
    .locals 4

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    const-string v2, "smartkey_short_press"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 207
    .local v0, "radioShortIndex":I
    const-string v1, "shijian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioShortIndex KEY_SHORT_PRESS is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v1, "shijian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCheckedRadioButtonId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mFastUseGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->getCheckedIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v1, "shijian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRadioNoneUse.isChecked is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioNoneUse:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v1, "shijian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRadioPhoto.isChecked is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioPhoto:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v1, "shijian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRadioRecord.isChecked is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioRecord:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v1, "shijian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRadioFlashLight.isChecked is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioFlashLight:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method private setDefaultRadioStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 173
    iget-boolean v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isLongSmartKey:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    const-string v1, "smartkey_long_press"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->clearRadioGroupStatus()V

    .line 186
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->initRadioStatus()V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    const-string v1, "smartkey_short_press"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 181
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->clearRadioGroupStatus()V

    goto :goto_0

    .line 183
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->initRadioStatus()V

    goto :goto_0
.end method

.method private setHasClearCheckRadioGroup()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 425
    iget-boolean v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isLongSmartKey:Z

    if-nez v1, :cond_1

    .line 426
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    const-string v2, "smartkey_short_press"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 428
    .local v0, "index":I
    if-eq v0, v4, :cond_0

    .line 429
    iput-boolean v3, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isClearRadioRoup:Z

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 432
    .end local v0    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    const-string v2, "smartkey_long_press"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 434
    .restart local v0    # "index":I
    if-eq v0, v4, :cond_0

    .line 435
    iput-boolean v3, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isClearRadioRoup:Z

    goto :goto_0
.end method

.method private updateRadioStatus()V
    .locals 2

    .prologue
    .line 195
    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mPosition:I

    if-nez v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->setDefaultRadioStatus()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mAdapter:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mAdapter:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;

    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->getSelectPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;->setSelectIndex(I)V

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mAdapter:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;

    invoke-virtual {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;->notifyDataSetChanged()V

    .line 202
    :cond_1
    return-void
.end method


# virtual methods
.method public initTabTitles()V
    .locals 4

    .prologue
    .line 217
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mTabTitles:[Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mTabTitles:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0dfb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mTabTitles:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0dfc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 221
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v2, 0x7f040198

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->setContentView(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .local v0, "bunle":Landroid/os/Bundle;
    const-string v2, "is_long_smartkey_press"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isLongSmartKey:Z

    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->initActionBar()V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->initTabTitles()V

    .line 95
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->getAllApps()V

    .line 96
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->initActionBarSettings()V

    .line 97
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x4

    .line 541
    iget-boolean v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isLongSmartKey:Z

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    const-string v1, "smartkey_long_press"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 547
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isLongSmartKey:Z

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    const-string v1, "long_smartkey_select_app_position"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 549
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    const-string v2, "smartkey_long_start_app"

    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->allAppInfo:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/smartkey/SmartKeyAppItem;

    iget-object v0, v0, Lcom/android/settings_ex/smartkey/SmartKeyAppItem;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 556
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mAdapter:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mAdapter:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;

    invoke-virtual {v0, p3}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;->setSelectIndex(I)V

    .line 558
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mAdapter:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;

    invoke-virtual {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;->notifyDataSetChanged()V

    .line 560
    :cond_0
    return-void

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    const-string v1, "smartkey_short_press"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    const-string v1, "short_smartkey_select_app_position"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 553
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;

    const-string v2, "smartkey_short_start_app"

    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->allAppInfo:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/smartkey/SmartKeyAppItem;

    iget-object v0, v0, Lcom/android/settings_ex/smartkey/SmartKeyAppItem;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 461
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 466
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 463
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->finish()V

    goto :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
