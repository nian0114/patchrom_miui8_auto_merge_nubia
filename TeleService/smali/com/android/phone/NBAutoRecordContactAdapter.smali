.class public Lcom/android/phone/NBAutoRecordContactAdapter;
.super Landroid/widget/BaseAdapter;
.source "NBAutoRecordContactAdapter.java"


# instance fields
.field private mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/NBContact;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/phone/NBActionModeListener;

.field private mSelectedNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/NBActionModeListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/phone/NBActionModeListener;

    .prologue
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mSelectedNumbers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mContacts:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mListener:Lcom/android/phone/NBActionModeListener;

    return-void
.end method

.method private updateCheckBoxStatus(Ljava/lang/String;Landroid/widget/CheckBox;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mListener:Lcom/android/phone/NBActionModeListener;

    invoke-interface {v0}, Lcom/android/phone/NBActionModeListener;->getActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/android/phone/NBAutoRecordContactAdapter;->updateStatusForActionMode(Landroid/widget/CheckBox;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/phone/NBAutoRecordContactAdapter;->updateStatusForNormal(Landroid/widget/CheckBox;)V

    goto :goto_0
.end method

.method private updateStatusForActionMode(Landroid/widget/CheckBox;Ljava/lang/String;)V
    .locals 1
    .param p1, "cb"    # Landroid/widget/CheckBox;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mSelectedNumbers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private updateStatusForNormal(Landroid/widget/CheckBox;)V
    .locals 1
    .param p1, "cb"    # Landroid/widget/CheckBox;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/phone/NBContact;
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NBContact;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBAutoRecordContactAdapter;->getItem(I)Lcom/android/phone/NBContact;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedContacts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mSelectedNumbers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSelectedSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mSelectedNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040031

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/android/phone/NBListViewHolder;

    invoke-direct {v2, p2}, Lcom/android/phone/NBListViewHolder;-><init>(Landroid/view/View;)V

    .local v2, "viewHolder":Lcom/android/phone/NBListViewHolder;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/phone/NBAutoRecordContactAdapter;->getItem(I)Lcom/android/phone/NBContact;

    move-result-object v1

    .local v1, "contact":Lcom/android/phone/NBContact;
    const v3, 0x7f100058

    invoke-virtual {v1}, Lcom/android/phone/NBContact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/NBListViewHolder;->setText(ILjava/lang/String;)Lcom/android/phone/NBListViewHolder;

    const v3, 0x7f10008b

    invoke-virtual {v1}, Lcom/android/phone/NBContact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/NBListViewHolder;->setText(ILjava/lang/String;)Lcom/android/phone/NBListViewHolder;

    const v3, 0x7f100043

    invoke-virtual {v2, v3}, Lcom/android/phone/NBListViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Lcom/android/phone/NBContact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/phone/NBAutoRecordContactAdapter;->updateCheckBoxStatus(Ljava/lang/String;Landroid/widget/CheckBox;)V

    return-object p2

    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "contact":Lcom/android/phone/NBContact;
    .end local v2    # "viewHolder":Lcom/android/phone/NBListViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/NBListViewHolder;

    .restart local v2    # "viewHolder":Lcom/android/phone/NBListViewHolder;
    goto :goto_0
.end method

.method public selectAllContacts()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mSelectedNumbers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mContacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NBContact;

    .local v0, "contact":Lcom/android/phone/NBContact;
    iget-object v2, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mSelectedNumbers:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/phone/NBContact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "contact":Lcom/android/phone/NBContact;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NBAutoRecordContactAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public selectContact(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mSelectedNumbers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/phone/NBAutoRecordContactAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setContacts(Ljava/util/List;)V
    .locals 0
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
    iput-object p1, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mContacts:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/phone/NBAutoRecordContactAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public unSelectAllContacts()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mSelectedNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/phone/NBAutoRecordContactAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public unSelectContact(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactAdapter;->mSelectedNumbers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/phone/NBAutoRecordContactAdapter;->notifyDataSetChanged()V

    return-void
.end method
