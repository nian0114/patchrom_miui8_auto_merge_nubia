.class public Lcom/android/phone/NBAutoRecordContactActivity;
.super Lcn/nubia/commonui/phone/actionbar/app/ActionBarListActivity;
.source "NBAutoRecordContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/phone/INBListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBAutoRecordContactActivity$1;,
        Lcom/android/phone/NBAutoRecordContactActivity$AdapterListener;,
        Lcom/android/phone/NBAutoRecordContactActivity$MyListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;

.field private mAdapterListener:Lcom/android/phone/NBAutoRecordContactActivity$AdapterListener;

.field private mCallback:Lcom/android/phone/NBActionModeCallback;

.field private mCount:I

.field private mIsActionMode:Z

.field private mPresenter:Lcom/android/phone/NBPresenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcn/nubia/commonui/phone/actionbar/app/ActionBarListActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mCount:I

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NBAutoRecordContactActivity;)Lcom/android/phone/NBAutoRecordContactAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBAutoRecordContactActivity;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/NBAutoRecordContactActivity;)Lcom/android/phone/NBPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBAutoRecordContactActivity;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mPresenter:Lcom/android/phone/NBPresenter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/NBAutoRecordContactActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBAutoRecordContactActivity;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBAutoRecordContactActivity;->updateCallbackState()V

    return-void
.end method

.method private getContactNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;

    invoke-virtual {v0, p1}, Lcom/android/phone/NBAutoRecordContactAdapter;->getItem(I)Lcom/android/phone/NBContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NBContact;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private launchMultiplePhonePicker()V
    .locals 4

    .prologue
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.GET_MULTIPLE_PHONES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/NBAutoRecordContactActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/phone/NBAutoRecordContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private notifyDataSetChanged(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBAutoRecordContactActivity;->getContactNumber(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "number":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;

    invoke-virtual {v2}, Lcom/android/phone/NBAutoRecordContactAdapter;->getSelectedContacts()Ljava/util/List;

    move-result-object v1

    .local v1, "selectedContacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;

    invoke-virtual {v2, v0}, Lcom/android/phone/NBAutoRecordContactAdapter;->selectContact(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/phone/NBAutoRecordContactActivity;->updateCallbackState()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;

    invoke-virtual {v2, v0}, Lcom/android/phone/NBAutoRecordContactAdapter;->unSelectContact(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/phone/NBAutoRecordContactActivity;->getSupportActionBar()Lcn/nubia/commonui/phone/actionbar/app/ActionBar;

    move-result-object v0

    .local v0, "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    const/16 v4, 0x1c

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->setDisplayOptions(I)V

    new-instance v3, Lcn/nubia/commonui/phone/actionbar/app/ActionBar$LayoutParams;

    invoke-direct {v3, v6, v6}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar$LayoutParams;-><init>(II)V

    .local v3, "layoutParams":Lcn/nubia/commonui/phone/actionbar/app/ActionBar$LayoutParams;
    invoke-virtual {v3, v5, v5, v5, v5}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar$LayoutParams;->setMargins(IIII)V

    const/16 v4, 0x15

    iput v4, v3, Lcn/nubia/commonui/phone/actionbar/app/ActionBar$LayoutParams;->gravity:I

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04002c

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "customView":Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->setCustomView(Landroid/view/View;Lcn/nubia/commonui/phone/actionbar/app/ActionBar$LayoutParams;)V

    .end local v1    # "customView":Landroid/view/View;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "layoutParams":Lcn/nubia/commonui/phone/actionbar/app/ActionBar$LayoutParams;
    :cond_0
    return-void
.end method

.method private updateCallbackState()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mCallback:Lcom/android/phone/NBActionModeCallback;

    iget-object v1, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;

    invoke-virtual {v1}, Lcom/android/phone/NBAutoRecordContactAdapter;->getSelectedSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/NBActionModeCallback;->updateCount(I)V

    iget-object v1, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mCallback:Lcom/android/phone/NBActionModeCallback;

    iget v0, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mCount:I

    iget-object v2, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;

    invoke-virtual {v2}, Lcom/android/phone/NBAutoRecordContactAdapter;->getSelectedSize()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/phone/NBActionModeCallback;->setCheckAllBoxStatus(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method isActionMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mIsActionMode:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v1, 0x65

    if-ne v1, p1, :cond_0

    if-eqz p3, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const-string v1, "com.android.contacts.extra.PHONE_URIS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .local v0, "uris":[Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mPresenter:Lcom/android/phone/NBPresenter;

    invoke-virtual {v1, v0}, Lcom/android/phone/NBPresenter;->addContactsByUris([Landroid/os/Parcelable;)V

    .end local v0    # "uris":[Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/NBAutoRecordContactActivity;->launchMultiplePhonePicker()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100079
        :pswitch_0
    .end packed-switch
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    invoke-super {p0}, Lcn/nubia/commonui/phone/actionbar/app/ActionBarListActivity;->onContentChanged()V

    invoke-virtual {p0}, Lcom/android/phone/NBAutoRecordContactActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v2, 0x1020004

    invoke-virtual {p0, v2}, Lcom/android/phone/NBAutoRecordContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "emptyView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/actionbar/app/ActionBarListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/android/phone/NBAutoRecordContactActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/phone/NBAutoRecordContactActivity;->setupActionBar()V

    new-instance v0, Lcom/android/phone/NBAutoRecordContactActivity$AdapterListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NBAutoRecordContactActivity$AdapterListener;-><init>(Lcom/android/phone/NBAutoRecordContactActivity;Lcom/android/phone/NBAutoRecordContactActivity$1;)V

    iput-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mAdapterListener:Lcom/android/phone/NBAutoRecordContactActivity$AdapterListener;

    new-instance v0, Lcom/android/phone/NBAutoRecordContactAdapter;

    iget-object v1, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mAdapterListener:Lcom/android/phone/NBAutoRecordContactActivity$AdapterListener;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NBAutoRecordContactAdapter;-><init>(Landroid/content/Context;Lcom/android/phone/NBActionModeListener;)V

    iput-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;

    new-instance v0, Lcom/android/phone/NBPresenter;

    iget-object v1, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/phone/NBPresenter;-><init>(Landroid/content/Context;Lcom/android/phone/INBListView;Lcom/android/phone/NBAutoRecordContactAdapter;)V

    iput-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mPresenter:Lcom/android/phone/NBPresenter;

    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;

    invoke-virtual {p0, v0}, Lcom/android/phone/NBAutoRecordContactActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcn/nubia/commonui/phone/actionbar/app/ActionBarListActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mPresenter:Lcom/android/phone/NBPresenter;

    invoke-virtual {v0}, Lcom/android/phone/NBPresenter;->close()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    iget-boolean v0, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mIsActionMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/android/phone/NBAutoRecordContactActivity;->notifyDataSetChanged(I)V

    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mIsActionMode:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/NBAutoRecordContactActivity;->setActionMode(Z)V

    new-instance v1, Lcom/android/phone/NBActionModeCallback;

    new-instance v2, Lcom/android/phone/NBAutoRecordContactActivity$MyListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/NBAutoRecordContactActivity$MyListener;-><init>(Lcom/android/phone/NBAutoRecordContactActivity;Lcom/android/phone/NBAutoRecordContactActivity$1;)V

    invoke-direct {v1, p0, v2}, Lcom/android/phone/NBActionModeCallback;-><init>(Landroid/content/Context;Lcom/android/phone/NBActionModeCallback$Listener;)V

    iput-object v1, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mCallback:Lcom/android/phone/NBActionModeCallback;

    iget-object v1, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mCallback:Lcom/android/phone/NBActionModeCallback;

    invoke-virtual {p0, v1}, Lcom/android/phone/NBAutoRecordContactActivity;->startSupportActionMode(Lcn/nubia/commonui/phone/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/phone/actionbar/view/ActionMode;

    invoke-direct {p0, p3}, Lcom/android/phone/NBAutoRecordContactActivity;->notifyDataSetChanged(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBAutoRecordContactActivity;->onBackPressed()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/actionbar/app/ActionBarListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcn/nubia/commonui/phone/actionbar/app/ActionBarListActivity;->onResume()V

    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mPresenter:Lcom/android/phone/NBPresenter;

    invoke-virtual {v0}, Lcom/android/phone/NBPresenter;->query()V

    return-void
.end method

.method public refresh(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/NBContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/NBContact;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;

    invoke-virtual {v0, p1}, Lcom/android/phone/NBAutoRecordContactAdapter;->setContacts(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mCount:I

    :cond_0
    return-void
.end method

.method setActionMode(Z)V
    .locals 0
    .param p1, "isActionMode"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/phone/NBAutoRecordContactActivity;->mIsActionMode:Z

    return-void
.end method
