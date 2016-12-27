.class public Lcom/android/settings_ex/LauncherModeFragment;
.super Landroid/app/Fragment;
.source "LauncherModeFragment.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSimpleCheck:Landroid/widget/CheckBox;

.field private mSimpleConfirmDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mSimpleMode:Landroid/view/View;

.field private mStandardCheck:Landroid/widget/CheckBox;

.field private mStandardConfirmDialg:Lcn/nubia/commonui/app/AlertDialog;

.field private mStandardMode:Landroid/view/View;

.field private manager:Lcom/android/settings_ex/applications/DefaultAppManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 36
    new-instance v0, Lcom/android/settings_ex/LauncherModeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/LauncherModeFragment$1;-><init>(Lcom/android/settings_ex/LauncherModeFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/LauncherModeFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/LauncherModeFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment;->mStandardCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/LauncherModeFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/LauncherModeFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment;->mSimpleCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/LauncherModeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/LauncherModeFragment;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings_ex/LauncherModeFragment;->refreshView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/LauncherModeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/LauncherModeFragment;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings_ex/LauncherModeFragment;->showStandardConfirmDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/LauncherModeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/LauncherModeFragment;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings_ex/LauncherModeFragment;->showSimpleConfirmDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/LauncherModeFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/LauncherModeFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/LauncherModeFragment;)Lcom/android/settings_ex/applications/DefaultAppManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/LauncherModeFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment;->manager:Lcom/android/settings_ex/applications/DefaultAppManager;

    return-object v0
.end method

.method private refreshView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 88
    iget-object v2, p0, Lcom/android/settings_ex/LauncherModeFragment;->manager:Lcom/android/settings_ex/applications/DefaultAppManager;

    if-nez v2, :cond_0

    .line 89
    new-instance v2, Lcom/android/settings_ex/applications/DefaultAppManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/LauncherModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->home:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-direct {v2, v3, v4}, Lcom/android/settings_ex/applications/DefaultAppManager;-><init>(Landroid/content/Context;Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    iput-object v2, p0, Lcom/android/settings_ex/LauncherModeFragment;->manager:Lcom/android/settings_ex/applications/DefaultAppManager;

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/LauncherModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "cn.nubia.zbiglauncher.preset"

    invoke-static {v2, v3}, Lcom/android/settings_ex/Utils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/android/settings_ex/LauncherModeFragment;->mSimpleMode:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/LauncherModeFragment;->mStandardCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    iget-object v2, p0, Lcom/android/settings_ex/LauncherModeFragment;->mSimpleCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    iget-object v2, p0, Lcom/android/settings_ex/LauncherModeFragment;->manager:Lcom/android/settings_ex/applications/DefaultAppManager;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/DefaultAppManager;->getDefaultAppComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 98
    .local v0, "name":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "cn.nubia.zbiglauncher.preset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    iget-object v2, p0, Lcom/android/settings_ex/LauncherModeFragment;->mSimpleCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 107
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 104
    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/LauncherModeFragment;->mStandardCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private showSimpleConfirmDialog()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment;->mSimpleConfirmDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/LauncherModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0e75

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0c11

    new-instance v2, Lcom/android/settings_ex/LauncherModeFragment$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/LauncherModeFragment$7;-><init>(Lcom/android/settings_ex/LauncherModeFragment;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0137

    new-instance v2, Lcom/android/settings_ex/LauncherModeFragment$6;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/LauncherModeFragment$6;-><init>(Lcom/android/settings_ex/LauncherModeFragment;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment;->mSimpleConfirmDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment;->mSimpleConfirmDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment;->mSimpleConfirmDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 183
    :cond_1
    return-void
.end method

.method private showStandardConfirmDialog()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment;->mStandardConfirmDialg:Lcn/nubia/commonui/app/AlertDialog;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/LauncherModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0e75

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0c11

    new-instance v2, Lcom/android/settings_ex/LauncherModeFragment$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/LauncherModeFragment$5;-><init>(Lcom/android/settings_ex/LauncherModeFragment;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0137

    new-instance v2, Lcom/android/settings_ex/LauncherModeFragment$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/LauncherModeFragment$4;-><init>(Lcom/android/settings_ex/LauncherModeFragment;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment;->mStandardConfirmDialg:Lcn/nubia/commonui/app/AlertDialog;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment;->mStandardConfirmDialg:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment;->mStandardConfirmDialg:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 145
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    const v1, 0x7f0400bf

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/settings_ex/applications/DefaultAppManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/LauncherModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->home:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppManager;-><init>(Landroid/content/Context;Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    iput-object v1, p0, Lcom/android/settings_ex/LauncherModeFragment;->manager:Lcom/android/settings_ex/applications/DefaultAppManager;

    .line 55
    const v1, 0x7f1201fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings_ex/LauncherModeFragment;->mStandardCheck:Landroid/widget/CheckBox;

    .line 56
    const v1, 0x7f1201fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings_ex/LauncherModeFragment;->mSimpleCheck:Landroid/widget/CheckBox;

    .line 57
    const v1, 0x7f1201f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/LauncherModeFragment;->mStandardMode:Landroid/view/View;

    .line 58
    const v1, 0x7f1201fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/LauncherModeFragment;->mSimpleMode:Landroid/view/View;

    .line 59
    iget-object v1, p0, Lcom/android/settings_ex/LauncherModeFragment;->mStandardMode:Landroid/view/View;

    new-instance v2, Lcom/android/settings_ex/LauncherModeFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/LauncherModeFragment$2;-><init>(Lcom/android/settings_ex/LauncherModeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, p0, Lcom/android/settings_ex/LauncherModeFragment;->mSimpleMode:Landroid/view/View;

    new-instance v2, Lcom/android/settings_ex/LauncherModeFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/LauncherModeFragment$3;-><init>(Lcom/android/settings_ex/LauncherModeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/LauncherModeFragment;->refreshView()V

    .line 78
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    return-void
.end method
