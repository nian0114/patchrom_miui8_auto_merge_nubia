.class public Lcom/android/settings_ex/applications/RunningServiceDetails;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;,
        Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    }
.end annotation


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field mProcessName:Ljava/lang/String;

.field mProcessesHeader:Landroid/view/View;

.field mRootView:Landroid/view/View;

.field mServicesHeader:Landroid/view/View;

.field mShowBackground:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/android/settings_ex/applications/RunningState;

.field mUid:I

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 580
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/RunningServiceDetails;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/RunningServiceDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/RunningServiceDetails;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 495
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings_ex/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$1;-><init>(Lcom/android/settings_ex/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 504
    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 571
    const/4 v2, 0x1

    invoke-static {v2, p1}, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v1

    .line 573
    .local v1, "newFragment":Landroid/app/DialogFragment;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 575
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 576
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 577
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 578
    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 559
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 560
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    .line 561
    .local v0, "ad":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    .end local v0    # "ad":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    :goto_1
    return-object v0

    .line 559
    .restart local v0    # "ad":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    .end local v0    # "ad":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method addDetailViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 434
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 435
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 434
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 437
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 439
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 440
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 441
    iput-object v6, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/view/View;

    .line 444
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 445
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 446
    iput-object v6, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/view/View;

    .line 449
    :cond_2
    iput v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    iput v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    .line 451
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eqz v2, :cond_6

    .line 452
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUser:Lcom/android/settings_ex/applications/RunningState$UserState;

    if-eqz v2, :cond_5

    .line 454
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v2, :cond_3

    .line 455
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 456
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 460
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 461
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 458
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v1, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    .restart local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    goto :goto_1

    .line 463
    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 464
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v5, v4}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 467
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 470
    :cond_6
    return-void
.end method

.method addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V
    .locals 7
    .param p1, "item"    # Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .param p2, "inclServices"    # Z
    .param p3, "inclProcesses"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 403
    if-eqz p1, :cond_1

    .line 404
    if-eqz p2, :cond_0

    .line 405
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 406
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings_ex/applications/RunningState$ServiceItem;Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    .end local v0    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    .line 411
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 415
    const/4 v5, 0x0

    iget v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eq v2, v6, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, p1, v4, v2}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings_ex/applications/RunningState$ServiceItem;Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 431
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 415
    goto :goto_1

    .line 419
    :cond_3
    const/4 v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 420
    if-gez v0, :cond_4

    iget-object v1, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 422
    .local v1, "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :goto_3
    if-eqz v1, :cond_5

    iget v2, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_5

    .line 419
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 420
    .end local v1    # "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_4
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    move-object v1, v2

    goto :goto_3

    .line 426
    .restart local v1    # "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_5
    if-gez v0, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addProcessDetailsView(Lcom/android/settings_ex/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_5
.end method

.method addProcessDetailsView(Lcom/android/settings_ex/applications/RunningState$ProcessItem;Z)V
    .locals 13
    .param p1, "pi"    # Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .param p2, "isMain"    # Z

    .prologue
    const/4 v12, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addProcessesHeader()V

    .line 345
    new-instance v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings_ex/applications/RunningServiceDetails;)V

    .line 346
    .local v2, "detail":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040166

    iget-object v11, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 348
    .local v5, "root":Landroid/view/View;
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 349
    iput-object v5, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 350
    new-instance v9, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v9, v5}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v9, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 351
    iget-object v9, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v11, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, p1, v11}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 353
    const v9, 0x7f120359

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 354
    .local v1, "description":Landroid/widget/TextView;
    iget v9, p1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 357
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    return-void

    .line 358
    :cond_1
    if-eqz p2, :cond_2

    .line 359
    const v9, 0x7f0c05a0

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 361
    :cond_2
    const/4 v8, 0x0

    .line 362
    .local v8, "textid":I
    const/4 v3, 0x0

    .line 363
    .local v3, "label":Ljava/lang/CharSequence;
    iget-object v6, p1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 364
    .local v6, "rpi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 367
    .local v0, "comp":Landroid/content/ComponentName;
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v9, :pswitch_data_0

    .line 393
    :cond_3
    :goto_1
    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v12

    invoke-virtual {v9, v8, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 369
    :pswitch_0
    const v8, 0x7f0c05a2

    .line 370
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 374
    .local v4, "prov":Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v4}, Lcom/android/settings_ex/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 381
    .end local v4    # "prov":Landroid/content/pm/ProviderInfo;
    :pswitch_1
    const v8, 0x7f0c05a1

    .line 382
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 384
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 386
    .local v7, "serv":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lcom/android/settings_ex/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 388
    .end local v7    # "serv":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 376
    :catch_1
    move-exception v9

    goto :goto_1

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method addProcessesHeader()V
    .locals 5

    .prologue
    .line 239
    iget v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040175

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/view/View;

    .line 242
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/view/View;

    const v2, 0x7f12004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 243
    .local v0, "v":Landroid/widget/TextView;
    const v1, 0x7f0c0599

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 246
    .end local v0    # "v":Landroid/widget/TextView;
    :cond_0
    iget v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    .line 247
    return-void
.end method

.method addServiceDetailsView(Lcom/android/settings_ex/applications/RunningState$ServiceItem;Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V
    .locals 12
    .param p1, "si"    # Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    .param p2, "mi"    # Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .param p3, "isService"    # Z
    .param p4, "inclDetails"    # Z

    .prologue
    .line 251
    if-eqz p3, :cond_4

    .line 252
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addServicesHeader()V

    .line 261
    :cond_0
    :goto_0
    if-eqz p1, :cond_5

    move-object v0, p1

    .line 263
    .local v0, "bi":Lcom/android/settings_ex/applications/RunningState$BaseItem;
    :goto_1
    new-instance v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings_ex/applications/RunningServiceDetails;)V

    .line 264
    .local v3, "detail":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040167

    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 266
    .local v6, "root":Landroid/view/View;
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 267
    iput-object v6, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 268
    iput-object p1, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    .line 269
    new-instance v8, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v8, v6}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 270
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v0, v10}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 272
    if-nez p4, :cond_1

    .line 273
    const v8, 0x7f120358

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_1
    if-eqz p1, :cond_2

    iget-object v8, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v8, :cond_2

    .line 277
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v9, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    .line 281
    :cond_2
    const v8, 0x7f120359

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 282
    .local v2, "description":Landroid/widget/TextView;
    const v8, 0x7f1201c1

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    .line 283
    const v8, 0x7f1201c2

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    .line 284
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/settings_ex/applications/ApplicationProcessWhiteInfo;->mProcessPkg:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 286
    sget-object v8, Lcom/android/settings_ex/applications/ApplicationProcessWhiteInfo;->mProcessPkg:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 287
    .local v7, "stopBtnkey":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_3

    .line 288
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 291
    .end local v7    # "stopBtnkey":Ljava/lang/Integer;
    :cond_3
    if-eqz p3, :cond_6

    iget v8, p2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eq v8, v9, :cond_6

    .line 295
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    const v8, 0x7f1201c0

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 339
    :goto_2
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    return-void

    .line 253
    .end local v0    # "bi":Lcom/android/settings_ex/applications/RunningState$BaseItem;
    .end local v2    # "description":Landroid/widget/TextView;
    .end local v3    # "detail":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    .end local v6    # "root":Landroid/view/View;
    :cond_4
    iget v8, p2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addProcessesHeader()V

    goto/16 :goto_0

    :cond_5
    move-object v0, p2

    .line 261
    goto/16 :goto_1

    .line 298
    .restart local v0    # "bi":Lcom/android/settings_ex/applications/RunningState$BaseItem;
    .restart local v2    # "description":Landroid/widget/TextView;
    .restart local v3    # "detail":Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    .restart local v6    # "root":Landroid/view/View;
    :cond_6
    if-eqz p1, :cond_7

    iget-object v8, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v8, v8, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v8, :cond_7

    .line 299
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v10, v10, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v11, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :goto_3
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_b

    const v8, 0x7f0c059b

    :goto_4
    invoke-virtual {v10, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v9, 0x1040373

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 327
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "send_action_app_error"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 329
    .local v4, "enabled":I
    if-eqz v4, :cond_d

    if-eqz p1, :cond_d

    .line 330
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v8, v9, v10}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    .line 333
    iget-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    :goto_5
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 303
    .end local v4    # "enabled":I
    :cond_7
    iget-boolean v8, p2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mBackground:Z

    if-eqz v8, :cond_8

    .line 304
    const v8, 0x7f0c059e

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 305
    :cond_8
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_9

    .line 307
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 309
    .local v1, "clientr":Landroid/content/res/Resources;
    iget-object v8, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0c059f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 312
    .end local v1    # "clientr":Landroid/content/res/Resources;
    .end local v5    # "label":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto/16 :goto_3

    .line 315
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz p1, :cond_a

    const v8, 0x7f0c059c

    :goto_6
    invoke-virtual {v9, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_a
    const v8, 0x7f0c059d

    goto :goto_6

    .line 322
    :cond_b
    const v8, 0x7f0c059a

    goto/16 :goto_4

    .line 333
    .restart local v4    # "enabled":I
    :cond_c
    const/4 v8, 0x0

    goto :goto_5

    .line 335
    :cond_d
    iget-object v8, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method addServicesHeader()V
    .locals 5

    .prologue
    .line 228
    iget v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040175

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/view/View;

    .line 231
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/view/View;

    const v2, 0x7f12004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 232
    .local v0, "v":Landroid/widget/TextView;
    const v1, 0x7f0c0598

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 233
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 235
    .end local v0    # "v":Landroid/widget/TextView;
    :cond_0
    iget v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    .line 236
    return-void
.end method

.method ensureData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 626
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 627
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mHaveData:Z

    .line 628
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/applications/RunningState;->resume(Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;)V

    .line 633
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->waitForData()V

    .line 637
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 639
    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 6

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "item":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget-boolean v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 203
    .local v3, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :goto_0
    if-eqz v3, :cond_5

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 205
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 206
    .local v2, "mi":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    iget v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUserId:I

    if-eq v4, v5, :cond_2

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    .end local v0    # "i":I
    .end local v2    # "mi":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v3    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 209
    .restart local v0    # "i":I
    .restart local v2    # "mi":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .restart local v3    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_2
    iget v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUid:I

    if-ltz v4, :cond_3

    iget-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUid:I

    iget v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUid:I

    if-ne v4, v5, :cond_0

    .line 212
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    :cond_4
    move-object v1, v2

    .line 220
    .end local v0    # "i":I
    .end local v2    # "mi":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eq v4, v1, :cond_6

    .line 221
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 222
    const/4 v4, 0x1

    .line 224
    :goto_2
    return v4

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 548
    const/16 v0, 0x55

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 508
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 510
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUid:I

    .line 511
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUserId:I

    .line 512
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 513
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mShowBackground:Z

    .line 515
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 516
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 518
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    .line 519
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 524
    const v1, 0x7f040165

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 525
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 527
    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 528
    const v1, 0x7f1200ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 529
    const v1, 0x7f120357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    .line 530
    new-instance v1, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 534
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->ensureData()V

    .line 536
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 541
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mHaveData:Z

    .line 543
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->pause()V

    .line 544
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 666
    :goto_0
    return-void

    .line 653
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 655
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 658
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 659
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 662
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 663
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 554
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 555
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->ensureData()V

    .line 556
    return-void
.end method

.method refreshUi(Z)V
    .locals 4
    .param p1, "dataChanged"    # Z

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const/4 p1, 0x1

    .line 476
    :cond_0
    if-eqz p1, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 490
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailViews()V

    .line 492
    :cond_1
    :goto_1
    return-void

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f0c0597

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 487
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 642
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    if-eqz v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 645
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 648
    :cond_1
    return-void
.end method
