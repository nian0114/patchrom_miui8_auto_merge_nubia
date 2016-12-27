.class public Lcom/android/settings_ex/profile/SleepWhiteListActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;
.source "SleepWhiteListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;,
        Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;
    }
.end annotation


# instance fields
.field private isClearSeletedId:Z

.field private mAddMenuItem:Landroid/view/MenuItem;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mDelMenuItem:Landroid/view/MenuItem;

.field private mEmptyTextView:Landroid/widget/TextView;

.field private mIsInActionMode:Z

.field private mListAdapter:Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;

.field private mProfileManager:Lztemt/profile/ProfileManager;

.field private mProfileSleepImpl:Lztemt/profile/ProfileSleepImpl;

.field private mSelectAllMenuItem:Landroid/view/MenuItem;

.field private mSelectAllView:Landroid/widget/TextView;

.field private mSelectedCountView:Landroid/widget/TextView;

.field private mSelectedId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZenModeModel:Lcom/android/settings_ex/notification/ZenModeSettingsModel;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private newConfig:Landroid/service/notification/ZenModeConfig;

.field private showCustomizeContacts:Ljava/util/ArrayList;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mIsInActionMode:Z

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectedId:Ljava/util/HashSet;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->map:Ljava/util/HashMap;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->isClearSeletedId:Z

    .line 441
    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;
    .param p1, "x1"    # Landroid/view/MenuItem;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mDelMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;
    .param p1, "x1"    # Landroid/view/MenuItem;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectAllMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectedCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectedCountView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectAllView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectAllView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->selectAllChangeOrientationChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectedId:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->showCustomizeContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->newConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Lcom/android/settings_ex/notification/ZenModeSettingsModel;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mZenModeModel:Lcom/android/settings_ex/notification/ZenModeSettingsModel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->isClearSeletedId:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->isClearSeletedId:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mIsInActionMode:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mIsInActionMode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mAddMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method private initCustomizeContacts()V
    .locals 7

    .prologue
    .line 125
    iget-object v4, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mZenModeModel:Lcom/android/settings_ex/notification/ZenModeSettingsModel;

    invoke-virtual {v4}, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 126
    iget-object v4, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->newConfig:Landroid/service/notification/ZenModeConfig;

    .line 127
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->showCustomizeContacts:Ljava/util/ArrayList;

    .line 128
    iget-object v4, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->newConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->customizeContacts:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 129
    iget-object v4, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->newConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->customizeContacts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 130
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

    .line 131
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v5, "tel"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v4, "id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v4, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->showCustomizeContacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private initEmptyView()V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f120140

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 143
    const v0, 0x7f120141

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mEmptyTextView:Landroid/widget/TextView;

    .line 144
    return-void
.end method

.method private isLandscape()Z
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectAllChangeOrientationChange()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectAllView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectAllView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectAllMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectAllMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 286
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectAllView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectAllMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectAllMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 13
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    if-nez p3, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 196
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 199
    const-string v9, "selected_contacts"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 200
    .local v3, "contactsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_2

    .line 201
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    .local v2, "contacts":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 204
    .local v8, "name_number":[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v8, v10

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget-object v10, v8, v10

    aput-object v10, v1, v9

    .line 206
    .local v1, "contact":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->newConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-virtual {v9, v10, v1}, Landroid/service/notification/ZenModeConfig;->addArrayList(Ljava/lang/String;[Ljava/lang/String;)V

    .line 200
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 211
    .end local v1    # "contact":[Ljava/lang/String;
    .end local v2    # "contacts":Ljava/lang/String;
    .end local v8    # "name_number":[Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->newConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v9, v9, Landroid/service/notification/ZenModeConfig;->customizeContacts:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 212
    .local v5, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    iget-object v9, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->showCustomizeContacts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 213
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 214
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->map:Ljava/util/HashMap;

    const-string v11, "name"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v9, v9, v12

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v10, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->map:Ljava/util/HashMap;

    const-string v11, "tel"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v9, v9, v12

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v9, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->map:Ljava/util/HashMap;

    const-string v10, "id"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v9, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->showCustomizeContacts:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->map:Ljava/util/HashMap;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 219
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mZenModeModel:Lcom/android/settings_ex/notification/ZenModeSettingsModel;

    iget-object v10, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->newConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 220
    iget-object v9, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;

    invoke-virtual {v9}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->refreshData()V

    .line 221
    iget-object v9, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;

    if-eqz v9, :cond_0

    .line 222
    iget-object v9, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;

    invoke-virtual {v9}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 265
    const-string v0, "SleepWhiteListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->selectAllChangeOrientationChange()V

    .line 268
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 97
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/PhoneWindow;

    const v3, 0x7f0e0065

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 99
    const v2, 0x7f040192

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->setContentView(I)V

    .line 101
    invoke-static {p0}, Lztemt/profile/ProfileManagerImpl;->getInstance(Landroid/content/Context;)Lztemt/profile/ProfileManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mProfileManager:Lztemt/profile/ProfileManager;

    .line 102
    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v3, Lztemt/profile/Profile$Scenario;->SLEEP:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v2, v3}, Lztemt/profile/ProfileManager;->getProfile(Lztemt/profile/Profile$Scenario;)Lztemt/profile/Profile;

    move-result-object v2

    check-cast v2, Lztemt/profile/ProfileSleepImpl;

    iput-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mProfileSleepImpl:Lztemt/profile/ProfileSleepImpl;

    .line 103
    new-instance v2, Lcom/android/settings_ex/notification/ZenModeSettingsModel;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/notification/ZenModeSettingsModel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mZenModeModel:Lcom/android/settings_ex/notification/ZenModeSettingsModel;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 106
    .local v1, "listView":Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->initCustomizeContacts()V

    .line 107
    new-instance v2, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->showCustomizeContacts:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v3}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;-><init>(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;

    .line 109
    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 111
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setClickable(Z)V

    .line 112
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 113
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 114
    new-instance v2, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;-><init>(Lcom/android/settings_ex/profile/SleepWhiteListActivity;Lcom/android/settings_ex/profile/SleepWhiteListActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 116
    const v2, 0x7f0c0b73

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->setTitle(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 118
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 119
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->initEmptyView()V

    .line 120
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 163
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f140006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 165
    const v1, 0x7f1204d9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mAddMenuItem:Landroid/view/MenuItem;

    .line 166
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mAddMenuItem:Landroid/view/MenuItem;

    new-instance v2, Lcom/android/settings_ex/profile/SleepWhiteListActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$1;-><init>(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 176
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 155
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->finish()V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mIsInActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mAddMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 186
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mAddMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onStart()V

    .line 148
    return-void
.end method
