.class Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;
.super Ljava/lang/Object;
.source "SleepWhiteListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/SleepWhiteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mDelDiaglogPositiveListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMode:Landroid/view/ActionMode;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)V
    .locals 1

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance v0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$1;-><init>(Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->mDelDiaglogPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Lcom/android/settings_ex/profile/SleepWhiteListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;
    .param p2, "x1"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity$1;

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;-><init>(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->mMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->selectAll()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->unSelectAll()V

    return-void
.end method

.method private selectAll()V
    .locals 4

    .prologue
    .line 395
    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    invoke-virtual {v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 396
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;
    invoke-static {v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$600(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectedId:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$200(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 398
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->updateSelectedCount()V

    .line 401
    return-void
.end method

.method private unSelectAll()V
    .locals 4

    .prologue
    .line 412
    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    invoke-virtual {v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 413
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    .line 414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;
    invoke-static {v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$600(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectedId:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$200(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 416
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->updateSelectedCount()V

    .line 419
    return-void
.end method

.method private updateSelectedCount()V
    .locals 4

    .prologue
    .line 405
    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    invoke-virtual {v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 406
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    .line 407
    .local v0, "checkedCount":I
    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectedCountView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$1200(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    .line 333
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 354
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 335
    :sswitch_0
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0b81

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    const v3, 0x7f0c0b82

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    iget-object v3, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->mDelDiaglogPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 342
    .local v0, "delDialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 343
    iput-object p1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->mMode:Landroid/view/ActionMode;

    .line 344
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # setter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->isClearSeletedId:Z
    invoke-static {v1, v4}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$702(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Z)Z

    goto :goto_0

    .line 347
    .end local v0    # "delDialog":Lcn/nubia/commonui/app/AlertDialog;
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectedId:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$200(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;
    invoke-static {v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$600(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->selectAll()V

    goto :goto_0

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->unSelectAll()V

    goto :goto_0

    .line 333
    :sswitch_data_0
    .sparse-switch
        0x7f1204d4 -> :sswitch_1
        0x7f1204da -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    .line 360
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # setter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mIsInActionMode:Z
    invoke-static {v1, v4}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$802(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Z)Z

    .line 361
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mAddMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$900(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 362
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 363
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f140007

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 364
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    const v2, 0x7f1204da

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    # setter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mDelMenuItem:Landroid/view/MenuItem;
    invoke-static {v1, v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$1002(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 365
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    const v2, 0x7f1204d4

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    # setter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectAllMenuItem:Landroid/view/MenuItem;
    invoke-static {v1, v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$1102(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 367
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040194

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 371
    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f12038b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectedCountView:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$1202(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 373
    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f120362

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectAllView:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$1302(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 374
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectAllView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$1300(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$2;-><init>(Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 388
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f12004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0b8f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 390
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # invokes: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->selectAllChangeOrientationChange()V
    invoke-static {v1}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$1600(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)V

    .line 391
    return v4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x1

    .line 424
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mIsInActionMode:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$802(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Z)Z

    .line 425
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mAddMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$900(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 426
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->isClearSeletedId:Z
    invoke-static {v0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$700(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectedId:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$200(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # setter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->isClearSeletedId:Z
    invoke-static {v0, v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$702(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Z)Z

    .line 430
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 319
    if-eqz p5, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectedId:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$200(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 325
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->updateSelectedCount()V

    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$600(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->refreshData()V

    .line 328
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectedId:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$200(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 435
    const/4 v0, 0x1

    return v0
.end method
