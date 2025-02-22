.class public Lcom/android/settings_ex/ResetNetworkConfirm;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ResetNetworkConfirm.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mSubId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I

    .line 62
    new-instance v0, Lcom/android/settings_ex/ResetNetworkConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ResetNetworkConfirm$1;-><init>(Lcom/android/settings_ex/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ResetNetworkConfirm;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ResetNetworkConfirm;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I

    return v0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f12034d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 141
    const/16 v0, 0x54

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 134
    const-string v1, "subscription"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I

    .line 137
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const v0, 0x7f0400de

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 123
    :cond_0
    const v0, 0x7f040161

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    .line 124
    invoke-direct {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->establishFinalConfirmationState()V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    goto :goto_0
.end method
