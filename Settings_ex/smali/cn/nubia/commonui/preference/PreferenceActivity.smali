.class public abstract Lcn/nubia/commonui/preference/PreferenceActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/preference/PreferenceActivity$Header;,
        Lcn/nubia/commonui/preference/PreferenceActivity$HeaderAdapter;
    }
.end annotation


# instance fields
.field private mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/commonui/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceHeaderItemResId:I

.field private mPreferenceHeaderRemoveEmptyIcon:Z

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;-><init>()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 222
    iput v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 223
    iput-boolean v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 232
    new-instance v0, Lcn/nubia/commonui/preference/PreferenceActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/preference/PreferenceActivity$1;-><init>(Lcn/nubia/commonui/preference/PreferenceActivity;)V

    iput-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 337
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/preference/PreferenceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/preference/PreferenceActivity;

    .prologue
    .line 131
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/commonui/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/preference/PreferenceActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/preference/PreferenceActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/preference/PreferenceActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/preference/PreferenceActivity;)Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/preference/PreferenceActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 1530
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1531
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 1532
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1533
    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1534
    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1535
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1538
    :cond_0
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1525
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1527
    :goto_0
    return-void

    .line 1526
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 1553
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1554
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1555
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1557
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1560
    :cond_1
    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1325
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ":android:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1327
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1328
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1331
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1332
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1333
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1335
    const-string v2, "id"

    const-string v3, "prefs"

    invoke-static {v2, v3}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1336
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1337
    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 8
    .param p1, "preferencesResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1669
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1673
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const-string v1, "inflateFromResource"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    aput-object v5, v4, v7

    new-array v5, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    const-class v6, Landroid/preference/PreferenceScreen;

    aput-object v6, v5, v7

    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1676
    return-void
.end method

.method findBestMatchingHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .locals 9
    .param p1, "cur"    # Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/commonui/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/commonui/preference/PreferenceActivity$Header;",
            ">;)",
            "Lcn/nubia/commonui/preference/PreferenceActivity$Header;"
        }
    .end annotation

    .prologue
    .local p2, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/commonui/preference/PreferenceActivity$Header;>;"
    const/4 v8, 0x1

    .line 1380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1381
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/commonui/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1382
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 1383
    .local v3, "oh":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    if-eq p1, v3, :cond_0

    iget-wide v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1385
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1386
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1403
    .end local v3    # "oh":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1404
    .local v0, "NM":I
    if-ne v0, v8, :cond_7

    .line 1405
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-object v3, v4

    .line 1421
    :cond_2
    :goto_1
    return-object v3

    .line 1389
    .end local v0    # "NM":I
    .restart local v3    # "oh":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    :cond_3
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1390
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1391
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1393
    :cond_5
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 1394
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1395
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1397
    :cond_6
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 1398
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1399
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1406
    .end local v3    # "oh":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .restart local v0    # "NM":I
    :cond_7
    if-le v0, v8, :cond_b

    .line 1407
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1408
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 1409
    .restart local v3    # "oh":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1413
    :cond_8
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1416
    :cond_9
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1407
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1421
    .end local v3    # "oh":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    :cond_b
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 2
    .param p1, "key"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1691
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1692
    const/4 v0, 0x0

    .line 1695
    :goto_0
    return-object v0

    .line 1694
    :cond_0
    const-string v0, "denghm"

    const-string v1, " findPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1615
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v2, :cond_0

    .line 1617
    :try_start_0
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getPreferenceScreen"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1619
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1620
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1628
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 1621
    :catch_0
    move-exception v0

    .line 1622
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 1628
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1623
    :catch_1
    move-exception v0

    .line 1624
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 999
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1000
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subclasses of PreferenceActivity must override isValidFragment(String) to verify that the Fragment class is valid! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has not checked if fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1005
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1114
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1116
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_1

    .line 1118
    :try_start_0
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "dispatchActivityResult"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/content/Intent;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1121
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    .line 1122
    .local v1, "isAcc":Z
    if-nez v1, :cond_0

    .line 1123
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1125
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1133
    .end local v1    # "isAcc":Z
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1129
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 1130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/commonui/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 828
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/commonui/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .prologue
    .line 1202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1203
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1204
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1206
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1207
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1208
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1209
    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 1137
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onContentChanged()V

    .line 1139
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1140
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->postBindPreferences()V

    .line 1142
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 539
    invoke-super/range {p0 .. p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 546
    const/16 v23, 0x0

    const-string v21, "PreferenceActivity"

    invoke-static/range {v21 .. v21}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [I

    check-cast v21, [I

    const-string v22, "attr"

    const-string v24, "preferenceActivityStyle"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/commonui/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 554
    .local v19, "sa":Landroid/content/res/TypedArray;
    const-string v21, "PreferenceActivity_layout"

    invoke-static/range {v21 .. v21}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const-string v21, "layout"

    const-string v23, "preference_list_content"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 561
    .local v18, "layoutResId":I
    const-string v21, "PreferenceActivity_headerLayout"

    invoke-static/range {v21 .. v21}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const-string v21, "layout"

    const-string v23, "preference_header_item"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 568
    const-string v21, "PreferenceActivity_headerRemoveIconIfEmpty"

    invoke-static/range {v21 .. v21}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 572
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 574
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setContentView(I)V

    .line 578
    const-string v21, "id"

    const-string v22, "list_footer"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 579
    const-string v21, "id"

    const-string v22, "prefs_frame"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v10

    .line 582
    .local v10, "hidingHeaders":Z
    if-nez v10, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v21

    if-nez v21, :cond_6

    :cond_0
    const/16 v21, 0x1

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, ":android:show_fragment"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 584
    .local v12, "initialFragment":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, ":android:show_fragment_args"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 585
    .local v11, "initialArguments":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, ":android:show_fragment_title"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 586
    .local v15, "initialTitle":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, ":android:show_fragment_short_title"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 588
    .local v13, "initialShortTitle":I
    if-eqz p1, :cond_7

    .line 591
    const-string v21, ":android:headers"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 592
    .local v9, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/commonui/preference/PreferenceActivity$Header;>;"
    if-eqz v9, :cond_1

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 594
    const-string v21, ":android:cur_header"

    const/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 596
    .local v7, "curHeader":I
    if-ltz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_1

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setSelectedHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    .line 636
    .end local v7    # "curHeader":I
    .end local v9    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/commonui/preference/PreferenceActivity$Header;>;"
    :cond_1
    :goto_1
    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 639
    const-string v21, "id"

    const-string v22, "headers"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 641
    if-eqz v15, :cond_2

    .line 642
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcn/nubia/commonui/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 643
    .local v16, "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcn/nubia/commonui/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 645
    .local v14, "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcn/nubia/commonui/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 682
    .end local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 683
    .local v17, "intent":Landroid/content/Intent;
    const-string v21, "extra_prefs_show_button_bar"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 686
    const-string v21, "id"

    const-string v22, "button_bar"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 689
    const-string v21, "id"

    const-string v22, "back_button"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 690
    .local v5, "backButton":Landroid/widget/Button;
    new-instance v21, Lcn/nubia/commonui/preference/PreferenceActivity$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity$2;-><init>(Lcn/nubia/commonui/preference/PreferenceActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    const-string v21, "id"

    const-string v22, "skip_button"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    .line 698
    .local v20, "skipButton":Landroid/widget/Button;
    new-instance v21, Lcn/nubia/commonui/preference/PreferenceActivity$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity$3;-><init>(Lcn/nubia/commonui/preference/PreferenceActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    const-string v21, "id"

    const-string v22, "next_button"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    new-instance v22, Lcn/nubia/commonui/preference/PreferenceActivity$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity$4;-><init>(Lcn/nubia/commonui/preference/PreferenceActivity;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    const-string v21, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 715
    const-string v21, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 716
    .local v6, "buttonText":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 723
    .end local v6    # "buttonText":Ljava/lang/String;
    :cond_3
    :goto_4
    const-string v21, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 724
    const-string v21, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 725
    .restart local v6    # "buttonText":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 726
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 732
    .end local v6    # "buttonText":Ljava/lang/String;
    :cond_4
    :goto_5
    const-string v21, "extra_prefs_show_skip"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 733
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 736
    .end local v5    # "backButton":Landroid/widget/Button;
    .end local v20    # "skipButton":Landroid/widget/Button;
    :cond_5
    return-void

    .line 582
    .end local v11    # "initialArguments":Landroid/os/Bundle;
    .end local v12    # "initialFragment":Ljava/lang/String;
    .end local v13    # "initialShortTitle":I
    .end local v15    # "initialTitle":I
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 602
    .restart local v11    # "initialArguments":Landroid/os/Bundle;
    .restart local v12    # "initialFragment":Ljava/lang/String;
    .restart local v13    # "initialShortTitle":I
    .restart local v15    # "initialTitle":I
    :cond_7
    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 606
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 607
    if-eqz v15, :cond_1

    .line 608
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcn/nubia/commonui/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 609
    .restart local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcn/nubia/commonui/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 611
    .restart local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcn/nubia/commonui/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 609
    .end local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :cond_8
    const/4 v14, 0x0

    goto :goto_6

    .line 616
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_1

    .line 622
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 623
    if-nez v12, :cond_a

    .line 624
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->onGetInitialHeader()Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-result-object v8

    .line 625
    .local v8, "h":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    goto/16 :goto_1

    .line 627
    .end local v8    # "h":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 643
    .restart local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 647
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_e

    .line 648
    new-instance v21, Lcn/nubia/commonui/preference/PreferenceActivity$HeaderAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    move/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/commonui/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 650
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setSelectedHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    .line 656
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 667
    :cond_e
    const-string v21, "denghm"

    const-string v22, "layout"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    sget v21, Lcn/nubia/commonui/R$layout;->nubia_preference_list_content_single:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setContentView(I)V

    .line 673
    const-string v21, "id"

    const-string v22, "list_footer"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 674
    const-string v21, "id"

    const-string v22, "prefs"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 677
    const-string v21, "android.preference.PreferenceManager"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p0, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x64

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Landroid/app/Activity;

    aput-object v25, v23, v24

    const/16 v24, 0x1

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Lcn/nubia/commonui/ReflectUtils;->newInstanceByConstructor(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    goto/16 :goto_3

    .line 720
    .restart local v5    # "backButton":Landroid/widget/Button;
    .restart local v6    # "buttonText":Ljava/lang/String;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v20    # "skipButton":Landroid/widget/Button;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 729
    :cond_10
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1043
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1044
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1045
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onDestroy()V

    .line 1047
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_1

    .line 1049
    :try_start_0
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "dispatchActivityDestroy"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1051
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    .line 1052
    .local v1, "isAcc":Z
    if-nez v1, :cond_0

    .line 1053
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1055
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1063
    .end local v1    # "isAcc":Z
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1059
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onGetInitialHeader()Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .locals 4

    .prologue
    .line 794
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 795
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 796
    .local v0, "h":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    iget-object v2, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 797
    return-object v0

    .line 794
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 800
    .end local v0    # "h":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must have at least one header with a fragment"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onGetNewHeader()Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .locals 1

    .prologue
    .line 810
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Lcn/nubia/commonui/preference/PreferenceActivity$Header;I)V
    .locals 7
    .param p1, "header"    # Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 1168
    iget-object v0, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1169
    iget-boolean v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    .line 1170
    iget v5, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1171
    .local v5, "titleRes":I
    iget v6, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1172
    .local v6, "shortTitleRes":I
    if-nez v5, :cond_0

    .line 1173
    iget v5, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->titleRes:I

    .line 1174
    const/4 v6, 0x0

    .line 1176
    :cond_0
    iget-object v1, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/commonui/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1184
    .end local v5    # "titleRes":I
    .end local v6    # "shortTitleRes":I
    :cond_1
    :goto_0
    return-void

    .line 1179
    :cond_2
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 1181
    :cond_3
    iget-object v0, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1182
    iget-object v0, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    .prologue
    .line 783
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .locals 4

    .prologue
    .line 770
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v1, "bool"

    const-string v3, "preferences_prefer_dual_pane"

    invoke-static {v1, v3}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 772
    .local v0, "preferMultiPane":Z
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1147
    const-string v1, "isResumed"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    invoke-super/range {p0 .. p5}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1152
    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 1153
    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1154
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .end local v0    # "item":Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Lcn/nubia/commonui/preference/PreferenceActivity;->onHeaderClick(Lcn/nubia/commonui/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1700
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v2, :cond_0

    .line 1702
    :try_start_0
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "dispatchNewIntent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1704
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1705
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1713
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1706
    :catch_0
    move-exception v0

    .line 1707
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1708
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 1709
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 1513
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/commonui/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1515
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1091
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_0

    .line 1092
    const-string v3, ":android:preferences"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1093
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1094
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 1095
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 1097
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    :goto_0
    iput-object p1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1110
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :goto_1
    return-void

    .line 1098
    .restart local v0    # "container":Landroid/os/Bundle;
    .restart local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v1

    .line 1099
    .local v1, "e":Landroid/os/BadParcelableException;
    const-string v3, "PreferenceActivity"

    const-string v4, "OnResotoreInstanceState Exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1109
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "e":Landroid/os/BadParcelableException;
    .end local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1067
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1069
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1070
    const-string v3, ":android:headers"

    iget-object v4, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1071
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_0

    .line 1072
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1073
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 1074
    const-string v3, ":android:cur_header"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1079
    .end local v1    # "index":I
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_1

    .line 1080
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 1081
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_1

    .line 1082
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1083
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 1084
    const-string v3, ":android:preferences"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1087
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 6

    .prologue
    .line 1021
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onStop()V

    .line 1023
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_1

    .line 1025
    :try_start_0
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "dispatchActivityStop"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1027
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    .line 1028
    .local v1, "isAcc":Z
    if-nez v1, :cond_0

    .line 1029
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1031
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1039
    .end local v1    # "isAcc":Z
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1035
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1572
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1574
    :try_start_0
    iget-object v6, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setPreferences"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/preference/PreferenceScreen;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1576
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1577
    const-string v6, "denghm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preferenceScreen != null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget-object v4, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1579
    .local v1, "isSetPreference":Z
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1580
    const-string v4, "denghm"

    const-string v5, "setPreferences"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->postBindPreferences()V

    .line 1582
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1584
    .local v3, "title":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 1585
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1602
    .end local v1    # "isSetPreference":Z
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    move v4, v5

    .line 1577
    goto :goto_0

    .line 1588
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1589
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_1

    .line 1590
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 1591
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method setSelectedHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .prologue
    .line 1303
    iput-object p1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 1304
    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1305
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1306
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1310
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->showBreadCrumbs(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    .line 1311
    return-void

    .line 1308
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0
.end method

.method showBreadCrumbs(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .prologue
    .line 1314
    if-eqz p1, :cond_2

    .line 1315
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1316
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1317
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1318
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1322
    .end local v0    # "title":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1320
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcn/nubia/commonui/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1254
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v3, :cond_4

    .line 1255
    const v3, 0x1020016

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1258
    .local v1, "crumbs":Landroid/view/View;
    :try_start_0
    check-cast v1, Landroid/app/FragmentBreadCrumbs;

    .end local v1    # "crumbs":Landroid/view/View;
    iput-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v3, :cond_1

    .line 1264
    if-eqz p1, :cond_0

    .line 1265
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1259
    :catch_0
    move-exception v2

    .line 1260
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1269
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_1
    iget-boolean v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v3, :cond_3

    .line 1270
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, v6}, Landroid/app/FragmentBreadCrumbs;->setVisibility(I)V

    .line 1273
    const-string v3, "id"

    const-string v4, "breadcrumb_section"

    invoke-static {v3, v4}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1274
    .local v0, "bcSection":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1275
    :cond_2
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1277
    .end local v0    # "bcSection":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1278
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 1280
    :cond_4
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3}, Landroid/app/FragmentBreadCrumbs;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    .line 1281
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1283
    :cond_5
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1284
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, v5, v5, v5}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 9
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 1465
    iget-boolean v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 1466
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/commonui/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1484
    :goto_0
    return-void

    .line 1468
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v7

    .line 1469
    .local v7, "f":Landroid/app/Fragment;
    if-eqz p5, :cond_1

    .line 1470
    invoke-virtual {v7, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1472
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 1474
    .local v8, "transaction":Landroid/app/FragmentTransaction;
    const-string v0, "id"

    const-string v1, "prefs"

    invoke-static {v0, v1}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1475
    if-eqz p3, :cond_3

    .line 1476
    invoke-virtual {v8, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1480
    :cond_2
    :goto_1
    const/16 v0, 0x1001

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1481
    const-string v0, ":android:prefs"

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1482
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1477
    :cond_3
    if-eqz p4, :cond_2

    .line 1478
    invoke-virtual {v8, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .prologue
    .line 1240
    invoke-virtual {p0, p1, p2, p5, p6}, Lcn/nubia/commonui/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1241
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1242
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1246
    :goto_0
    return-void

    .line 1244
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public switchToHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .prologue
    .line 1365
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    if-ne v0, p1, :cond_0

    .line 1368
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":android:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1377
    :goto_0
    return-void

    .line 1371
    :cond_0
    iget-object v0, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1372
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t switch to header that has no fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1374
    :cond_1
    iget-object v0, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v1, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1375
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setSelectedHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    goto :goto_0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1347
    const/4 v1, 0x0

    .line 1348
    .local v1, "selectedHeader":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1349
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    iget-object v2, v2, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1350
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "selectedHeader":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    check-cast v1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 1354
    .restart local v1    # "selectedHeader":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    :cond_0
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setSelectedHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    .line 1355
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1356
    return-void

    .line 1348
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
