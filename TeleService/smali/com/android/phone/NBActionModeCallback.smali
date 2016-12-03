.class Lcom/android/phone/NBActionModeCallback;
.super Ljava/lang/Object;
.source "NBActionModeCallback.java"

# interfaces
.implements Lcn/nubia/commonui/phone/actionbar/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBActionModeCallback$CheckAllOnClickListener;,
        Lcom/android/phone/NBActionModeCallback$Listener;
    }
.end annotation


# instance fields
.field private deleteItem:Landroid/view/MenuItem;

.field private mBuilder:Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

.field private mCheckAllBox:Lcn/nubia/commonui/phone/widget/NubiaSelectAll;

.field private mContext:Landroid/content/Context;

.field private mCountTextView:Landroid/widget/TextView;

.field private mDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

.field private mListener:Lcom/android/phone/NBActionModeCallback$Listener;

.field private selectAll:Ljava/lang/String;

.field private unselectAll:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/NBActionModeCallback$Listener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/phone/NBActionModeCallback$Listener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/NBActionModeCallback;->mListener:Lcom/android/phone/NBActionModeCallback$Listener;

    iput-object p1, p0, Lcom/android/phone/NBActionModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBActionModeCallback;->selectAll:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBActionModeCallback;->unselectAll:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NBActionModeCallback;)Lcom/android/phone/NBActionModeCallback$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBActionModeCallback;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mListener:Lcom/android/phone/NBActionModeCallback$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/NBActionModeCallback;)Lcn/nubia/commonui/phone/widget/NubiaSelectAll;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBActionModeCallback;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mCheckAllBox:Lcn/nubia/commonui/phone/widget/NubiaSelectAll;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/NBActionModeCallback;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBActionModeCallback;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->unselectAll:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/NBActionModeCallback;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBActionModeCallback;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->selectAll:Ljava/lang/String;

    return-object v0
.end method

.method private changeDeleteItemEnabled(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->deleteItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->deleteItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private showDialog(Lcn/nubia/commonui/phone/actionbar/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Lcn/nubia/commonui/phone/actionbar/view/ActionMode;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mBuilder:Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    if-nez v0, :cond_0

    new-instance v0, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NBActionModeCallback;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mBuilder:Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mBuilder:Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mBuilder:Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NBActionModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mBuilder:Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NBActionModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/NBActionModeCallback$1;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/NBActionModeCallback$1;-><init>(Lcom/android/phone/NBActionModeCallback;Lcn/nubia/commonui/phone/actionbar/view/ActionMode;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mBuilder:Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NBActionModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/NBActionModeCallback$2;

    invoke-direct {v2, p0}, Lcom/android/phone/NBActionModeCallback$2;-><init>(Lcom/android/phone/NBActionModeCallback;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mBuilder:Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/phone/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcn/nubia/commonui/phone/actionbar/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Lcn/nubia/commonui/phone/actionbar/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/NBActionModeCallback;->showDialog(Lcn/nubia/commonui/phone/actionbar/view/ActionMode;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f10011c
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Lcn/nubia/commonui/phone/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1, "mode"    # Lcn/nubia/commonui/phone/actionbar/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/NBActionModeCallback;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .local v1, "menuInflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f130000

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v2, 0x7f10011c

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NBActionModeCallback;->deleteItem:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/phone/NBActionModeCallback;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04002b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "customView":Landroid/view/View;
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/phone/actionbar/view/ActionMode;->setCustomView(Landroid/view/View;)V

    const v2, 0x7f100078

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/phone/widget/NubiaSelectAll;

    iput-object v2, p0, Lcom/android/phone/NBActionModeCallback;->mCheckAllBox:Lcn/nubia/commonui/phone/widget/NubiaSelectAll;

    iget-object v2, p0, Lcom/android/phone/NBActionModeCallback;->mCheckAllBox:Lcn/nubia/commonui/phone/widget/NubiaSelectAll;

    new-instance v3, Lcom/android/phone/NBActionModeCallback$CheckAllOnClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/phone/NBActionModeCallback$CheckAllOnClickListener;-><init>(Lcom/android/phone/NBActionModeCallback;Lcom/android/phone/NBActionModeCallback$1;)V

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/phone/widget/NubiaSelectAll;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f100077

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/NBActionModeCallback;->mCountTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    return v2
.end method

.method public onDestroyActionMode(Lcn/nubia/commonui/phone/actionbar/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Lcn/nubia/commonui/phone/actionbar/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mListener:Lcom/android/phone/NBActionModeCallback$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mListener:Lcom/android/phone/NBActionModeCallback$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/phone/NBActionModeCallback$Listener;->onChangeMode(Z)V

    iput-object v2, p0, Lcom/android/phone/NBActionModeCallback;->mListener:Lcom/android/phone/NBActionModeCallback$Listener;

    :cond_0
    iput-object v2, p0, Lcom/android/phone/NBActionModeCallback;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onPrepareActionMode(Lcn/nubia/commonui/phone/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lcn/nubia/commonui/phone/actionbar/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckAllBoxStatus(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mCheckAllBox:Lcn/nubia/commonui/phone/widget/NubiaSelectAll;

    iget-object v1, p0, Lcom/android/phone/NBActionModeCallback;->unselectAll:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/widget/NubiaSelectAll;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mCheckAllBox:Lcn/nubia/commonui/phone/widget/NubiaSelectAll;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/phone/widget/NubiaSelectAll;->setChecked(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mCheckAllBox:Lcn/nubia/commonui/phone/widget/NubiaSelectAll;

    iget-object v1, p0, Lcom/android/phone/NBActionModeCallback;->selectAll:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/widget/NubiaSelectAll;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateCount(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback;->mCountTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/NBActionModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/android/phone/NBActionModeCallback;->changeDeleteItemEnabled(I)V

    return-void
.end method
