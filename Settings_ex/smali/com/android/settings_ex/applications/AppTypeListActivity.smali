.class public Lcom/android/settings_ex/applications/AppTypeListActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;
.source "AppTypeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;,
        Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;,
        Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;

.field private mAppEntityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLabelTask:Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;

.field private mConfirmDialg:Lcn/nubia/commonui/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private resetBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "AppTypeListActivity"

    sput-object v0, Lcom/android/settings_ex/applications/AppTypeListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;-><init>()V

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/AppTypeListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppTypeListActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mAppEntityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/applications/AppTypeListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppTypeListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mAppEntityList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/AppTypeListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppTypeListActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->showConfirmDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/AppTypeListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppTypeListActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->refreshUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/applications/AppTypeListActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppTypeListActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->resetBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/applications/AppTypeListActivity;)Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppTypeListActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mAdapter:Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/applications/AppTypeListActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppTypeListActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/applications/AppTypeListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppTypeListActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->resetToDefaults()V

    return-void
.end method

.method private buildAppTypeListFast([Ljava/lang/String;)V
    .locals 6
    .param p1, "appTypeArray"    # [Ljava/lang/String;

    .prologue
    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v1, "fastList":Ljava/util/ArrayList;
    new-instance v3, Lcom/android/settings_ex/applications/DefaultAppManager;

    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/applications/DefaultAppManager;-><init>(Landroid/content/Context;Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 192
    .local v3, "manager":Lcom/android/settings_ex/applications/DefaultAppManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 193
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/applications/DefaultAppManager;->setType(Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 194
    new-instance v0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;-><init>(Lcom/android/settings_ex/applications/AppTypeListActivity;)V

    .line 195
    .local v0, "entity":Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;
    aget-object v4, p1, v2

    iput-object v4, v0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;->defaultAppType:Ljava/lang/String;

    .line 196
    invoke-virtual {v3}, Lcom/android/settings_ex/applications/DefaultAppManager;->getDefaultAppLabelFast()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;->defaultAppSummary:Ljava/lang/String;

    .line 197
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "entity":Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;
    :cond_0
    iput-object v1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mAppEntityList:Ljava/util/ArrayList;

    .line 200
    return-void
.end method

.method private createIntent(I)Landroid/content/Intent;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 184
    sget-object v1, Lcom/android/settings_ex/applications/DefaultAppManager;->APP_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    return-object v0
.end method

.method private refreshUI()V
    .locals 4

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 252
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0a008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "appTypeArray":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->buildAppTypeListFast([Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mAdapter:Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/AppTypeListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mAdapter:Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;->notifyDataSetChanged()V

    .line 256
    new-instance v2, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;-><init>(Lcom/android/settings_ex/applications/AppTypeListActivity;Lcom/android/settings_ex/applications/AppTypeListActivity$1;)V

    iput-object v2, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mAppLabelTask:Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;

    .line 257
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mAppLabelTask:Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 258
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 268
    return-void
.end method

.method private resetToDefaults()V
    .locals 3

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->resetBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 276
    new-instance v0, Lcom/android/settings_ex/applications/AppTypeListActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/AppTypeListActivity$4;-><init>(Lcom/android/settings_ex/applications/AppTypeListActivity;)V

    .line 295
    .local v0, "callback":Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils;->startThread(Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;)V

    .line 296
    return-void
.end method

.method private showConfirmDialog()V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mConfirmDialg:Lcn/nubia/commonui/app/AlertDialog;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0e66

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0c11

    new-instance v2, Lcom/android/settings_ex/applications/AppTypeListActivity$6;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/AppTypeListActivity$6;-><init>(Lcom/android/settings_ex/applications/AppTypeListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0137

    new-instance v2, Lcom/android/settings_ex/applications/AppTypeListActivity$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/AppTypeListActivity$5;-><init>(Lcom/android/settings_ex/applications/AppTypeListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mConfirmDialg:Lcn/nubia/commonui/app/AlertDialog;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mConfirmDialg:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mConfirmDialg:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 321
    :cond_1
    return-void
.end method

.method private unRegisterReceiver()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 272
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 113
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow;

    const v2, 0x7f0e0065

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 116
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 118
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 119
    const v1, 0x7f0c0e2e

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setTitle(I)V

    .line 121
    :cond_0
    const v1, 0x7f040036

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/AppTypeListActivity;->setContentView(I)V

    .line 122
    const v1, 0x7f1200ca

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/AppTypeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->resetBtn:Landroid/widget/Button;

    .line 123
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->resetBtn:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings_ex/applications/AppTypeListActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/AppTypeListActivity$1;-><init>(Lcom/android/settings_ex/applications/AppTypeListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v1, Lcom/android/settings_ex/applications/AppTypeListActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/AppTypeListActivity$2;-><init>(Lcom/android/settings_ex/applications/AppTypeListActivity;)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v1, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;-><init>(Lcom/android/settings_ex/applications/AppTypeListActivity;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mAdapter:Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;

    .line 142
    new-instance v1, Lcom/android/settings_ex/applications/AppTypeListActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/AppTypeListActivity$3;-><init>(Lcom/android/settings_ex/applications/AppTypeListActivity;)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 166
    invoke-super/range {p0 .. p5}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 167
    invoke-direct {p0, p3}, Lcom/android/settings_ex/applications/AppTypeListActivity;->createIntent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->startActivity(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 174
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->onBackPressed()V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onPause()V

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mAppLabelTask:Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mAppLabelTask:Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;->cancel(Z)Z

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->unRegisterReceiver()V

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onResume()V

    .line 152
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->registerReceiver()V

    .line 153
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->refreshUI()V

    .line 154
    return-void
.end method
