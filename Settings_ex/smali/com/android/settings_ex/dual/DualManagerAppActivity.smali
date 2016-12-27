.class public Lcom/android/settings_ex/dual/DualManagerAppActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "DualManagerAppActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dual/DualManagerAppActivity$1;,
        Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDualAdapter:Lcom/android/settings_ex/dual/DualSuppportAppAdpater;

.field private mDualAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/dual/DualApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDualInstance:Lcom/android/settings_ex/dual/DualInstanceUtils;

.field private mListView:Landroid/widget/ListView;

.field private mUid:I

.field private newDualAPPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/dual/DualApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field toast:Lcom/android/settings_ex/dual/ToastShowUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/android/settings_ex/dual/ToastShowUtils;

    invoke-direct {v0}, Lcom/android/settings_ex/dual/ToastShowUtils;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->toast:Lcom/android/settings_ex/dual/ToastShowUtils;

    .line 102
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/dual/DualManagerAppActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dual/DualManagerAppActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/dual/DualManagerAppActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dual/DualManagerAppActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualAppList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/dual/DualManagerAppActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dual/DualManagerAppActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/dual/DualManagerAppActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dual/DualManagerAppActivity;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mUid:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/dual/DualManagerAppActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dual/DualManagerAppActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->newDualAPPList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/dual/DualManagerAppActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dual/DualManagerAppActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->newDualAPPList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/dual/DualManagerAppActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dual/DualManagerAppActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->initListView()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/dual/DualManagerAppActivity;)Lcom/android/settings_ex/dual/DualSuppportAppAdpater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dual/DualManagerAppActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualAdapter:Lcom/android/settings_ex/dual/DualSuppportAppAdpater;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/dual/DualManagerAppActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dual/DualManagerAppActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->initEmptyListView()V

    return-void
.end method

.method private initEmptyListView()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mListView:Landroid/widget/ListView;

    const v1, 0x7f120140

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method private initListView()V
    .locals 4

    .prologue
    .line 79
    new-instance v0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;

    iget-object v1, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->newDualAPPList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mUid:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualAdapter:Lcom/android/settings_ex/dual/DualSuppportAppAdpater;

    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualAdapter:Lcom/android/settings_ex/dual/DualSuppportAppAdpater;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 71
    iput-object p0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "app_uid"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, "origUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mUid:I

    .line 74
    const v1, 0x7f12018b

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mListView:Landroid/widget/ListView;

    .line 75
    new-instance v1, Lcom/android/settings_ex/dual/DualInstanceUtils;

    invoke-direct {v1}, Lcom/android/settings_ex/dual/DualInstanceUtils;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualInstance:Lcom/android/settings_ex/dual/DualInstanceUtils;

    .line 76
    return-void
.end method

.method private setMultiProcessEnable()V
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_process_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_process_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 156
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualAdapter:Lcom/android/settings_ex/dual/DualSuppportAppAdpater;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualAdapter:Lcom/android/settings_ex/dual/DualSuppportAppAdpater;

    invoke-virtual {v0}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->notifyDataSetChanged()V

    .line 161
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 50
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow;

    const v2, 0x7f0e0065

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 52
    const v1, 0x7f040092

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->initView()V

    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->setMultiProcessEnable()V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 57
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 139
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualAdapter:Lcom/android/settings_ex/dual/DualSuppportAppAdpater;

    invoke-virtual {v3, p3}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, "pkg":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "package_name"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v3, "is_remove"

    iget-object v4, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualInstance:Lcom/android/settings_ex/dual/DualInstanceUtils;

    iget-object v5, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v5}, Lcom/android/settings_ex/dual/DualInstanceUtils;->isPackageCloned(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/settings_ex/dual/DualShowAppActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 146
    iget-object v3, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualInstance:Lcom/android/settings_ex/dual/DualInstanceUtils;

    iget-object v4, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v4}, Lcom/android/settings_ex/dual/DualInstanceUtils;->isPackageCloned(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->toast:Lcom/android/settings_ex/dual/ToastShowUtils;

    iget-object v4, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0d8e

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings_ex/dual/ToastShowUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 167
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->finish()V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 63
    new-instance v0, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;-><init>(Lcom/android/settings_ex/dual/DualManagerAppActivity;Lcom/android/settings_ex/dual/DualManagerAppActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    return-void
.end method
