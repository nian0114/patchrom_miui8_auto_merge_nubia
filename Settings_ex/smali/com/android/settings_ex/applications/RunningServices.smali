.class public Lcom/android/settings_ex/applications/RunningServices;
.super Landroid/app/Fragment;
.source "RunningServices.java"


# instance fields
.field private mLoadingContainer:Landroid/view/View;

.field private mOptionsMenu:Landroid/view/Menu;

.field private final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 106
    new-instance v0, Lcom/android/settings_ex/applications/RunningServices$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/RunningServices$1;-><init>(Lcom/android/settings_ex/applications/RunningServices;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesAvail:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/RunningServices;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/RunningServices;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServices;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/RunningServices;)Lcom/android/settings_ex/applications/RunningProcessesView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/RunningServices;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    return-object v0
.end method

.method private updateOptionsMenu()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 101
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 102
    .local v0, "showingBackground":Z
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServices;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 103
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServices;->mOptionsMenu:Landroid/view/Menu;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_0

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 104
    return-void

    .line 103
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningServices;->setHasOptionsMenu(Z)V

    .line 44
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningServices;->mOptionsMenu:Landroid/view/Menu;

    .line 61
    const v0, 0x7f0c0534

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 62
    const v0, 0x7f0c0535

    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningServices;->updateOptionsMenu()V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 49
    const v1, 0x7f0400c8

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f12020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/RunningProcessesView;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    .line 52
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f120200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServices;->mLoadingContainer:Landroid/view/View;

    .line 55
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 92
    :goto_0
    return v0

    .line 83
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 91
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningServices;->updateOptionsMenu()V

    move v0, v1

    .line 92
    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_1

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->doPause()V

    .line 77
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningServices;->updateOptionsMenu()V

    .line 98
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 69
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 70
    .local v0, "haveData":Z
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServices;->mLoadingContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/android/settings_ex/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 71
    return-void
.end method
