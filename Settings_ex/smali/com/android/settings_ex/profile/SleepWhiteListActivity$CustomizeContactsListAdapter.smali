.class Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SleepWhiteListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/SleepWhiteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomizeContactsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCustomizeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p3, "customizeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 447
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 448
    iput-object p3, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->mCustomizeList:Ljava/util/ArrayList;

    .line 449
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->mCustomizeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->mCustomizeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 479
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, "holder":Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 486
    new-instance v0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;-><init>(Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;)V

    .line 487
    .restart local v0    # "holder":Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040193

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 488
    const v1, 0x7f12008f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 489
    const v1, 0x7f120389

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    .line 490
    const v1, 0x7f120388

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 491
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 495
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mIsInActionMode:Z
    invoke-static {v1}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$800(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, v0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 500
    :goto_1
    iget-object v2, v0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->mCustomizeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "name"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v2, v0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->mCustomizeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "tel"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mIsInActionMode:Z
    invoke-static {v1}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$800(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectedId:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$200(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 503
    iget-object v1, v0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 507
    :goto_2
    return-object p2

    .line 493
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;
    check-cast v0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;
    goto :goto_0

    .line 498
    :cond_1
    iget-object v1, v0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 505
    :cond_2
    iget-object v1, v0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method public refreshData()V
    .locals 7

    .prologue
    .line 452
    iget-object v4, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->showCustomizeContacts:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$300(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 454
    iget-object v4, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->newConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v4}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$400(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->customizeContacts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 455
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 456
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 457
    .local v3, "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v5, "tel"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v4, "id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v4, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->showCustomizeContacts:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$300(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 462
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v3    # "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->showCustomizeContacts:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$300(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->mCustomizeList:Ljava/util/ArrayList;

    .line 463
    iget-object v4, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;
    invoke-static {v4}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$600(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->notifyDataSetChanged()V

    .line 464
    return-void
.end method
