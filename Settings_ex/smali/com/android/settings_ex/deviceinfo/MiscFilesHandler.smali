.class public Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;
.super Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;,
        Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;
    }
.end annotation


# instance fields
.field private mActionMode:Z

.field private mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNumBytesSelectedFormat:Ljava/lang/String;

.field private mNumSelectedFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;-><init>()V

    .line 311
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mActionMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mActionMode:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 75
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->setFinishOnTouchOutside(Z)V

    .line 77
    const v2, 0x7f0c0814

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->setTitle(I)V

    .line 78
    const v2, 0x7f0c0815

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    .line 79
    const v2, 0x7f0c0816

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    .line 80
    new-instance v2, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-direct {v2, p0, p0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;-><init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    .line 81
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    const v2, 0x7f04017e

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 84
    .local v1, "lv":Landroid/widget/ListView;
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 85
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 86
    new-instance v2, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-direct {v2, p0, p0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;-><init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 87
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 89
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 110
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 107
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->finish()V

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->notifyDataSetChanged()V

    .line 100
    :cond_0
    return-void
.end method
