.class public Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;
.super Lnubia/widget/NubiaDialogActivity;
.source "SleepWhiteListSelectActivity.java"


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;


# instance fields
.field private listView:Landroid/widget/ListView;

.field private mCheckedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyTextView:Landroid/widget/TextView;

.field private mIsOrientationChanged:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListAdapter:Lcom/android/settings_ex/profile/SleepWhitelistAdapter;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSelectedContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove_duplicate_entries"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lnubia/widget/NubiaDialogActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mSelectedContacts:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mCheckedMap:Ljava/util/HashMap;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mIsOrientationChanged:Z

    .line 104
    new-instance v0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$2;-><init>(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mSelectedContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mCheckedMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;)Lcom/android/settings_ex/profile/SleepWhitelistAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhitelistAdapter;

    return-object v0
.end method

.method private initEmptyView()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->listView:Landroid/widget/ListView;

    const v1, 0x7f120140

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 101
    const v0, 0x7f120141

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mEmptyTextView:Landroid/widget/TextView;

    .line 102
    return-void
.end method

.method private initQueryHandler()V
    .locals 2

    .prologue
    .line 149
    new-instance v0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$3;

    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$3;-><init>(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 159
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 62
    invoke-super {p0, p1}, Lnubia/widget/NubiaDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f040195

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->setContentView(I)V

    .line 65
    new-instance v0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$1;-><init>(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->setOnButtonClickListener(Lnubia/widget/NubiaDialogActivity$OnButtonClickListener;)V

    .line 80
    const v0, 0x7f0c0ca3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->setTitle(I)V

    .line 81
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->listView:Landroid/widget/ListView;

    .line 82
    new-instance v0, Lcom/android/settings_ex/profile/SleepWhitelistAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mCheckedMap:Ljava/util/HashMap;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings_ex/profile/SleepWhitelistAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhitelistAdapter;

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhitelistAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->initEmptyView()V

    .line 90
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->initQueryHandler()V

    .line 91
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lnubia/widget/NubiaDialogActivity;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mCheckedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 147
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    invoke-super {p0, p1}, Lnubia/widget/NubiaDialogActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 166
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->finish()V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-super {p0}, Lnubia/widget/NubiaDialogActivity;->onStart()V

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    sget-object v3, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const-string v7, "display_name COLLATE LOCALIZED"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Lnubia/widget/NubiaDialogActivity;->onStop()V

    .line 141
    return-void
.end method
