.class public Lcom/android/internal/app/NubiaResolverListActivity;
.super Landroid/app/Activity;
.source "NubiaResolverListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/NubiaResolverListActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/NubiaResolverListActivity$LoadAdapterIconTask;,
        Lcom/android/internal/app/NubiaResolverListActivity$LoadIconTask;,
        Lcom/android/internal/app/NubiaResolverListActivity$ItemClickListener;,
        Lcom/android/internal/app/NubiaResolverListActivity$ViewHolder;,
        Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaResolverListActivity"


# instance fields
.field private mIconDpi:I

.field private mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchedFromUid:I

.field private mListView:Landroid/widget/ListView;

.field mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRegistered:Z

.field private mResolvingHome:Z

.field mShareListApater:Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mIntents:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mResolvingHome:Z

    .line 58
    new-instance v0, Lcom/android/internal/app/NubiaResolverController;

    invoke-direct {v0}, Lcom/android/internal/app/NubiaResolverController;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    .line 193
    new-instance v0, Lcom/android/internal/app/NubiaResolverListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/NubiaResolverListActivity$1;-><init>(Lcom/android/internal/app/NubiaResolverListActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 392
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/NubiaResolverListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/NubiaResolverListActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mIntents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/app/NubiaResolverListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/NubiaResolverListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mIntents:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/app/NubiaResolverListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/NubiaResolverListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mLaunchedFromUid:I

    return p1
.end method

.method private getIntentField()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 152
    :try_start_0
    const-string v3, "Intent"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 153
    .local v0, "configClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "mCloneExtras"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 154
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 155
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "configClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "NubiaResolverListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to getField Intent.mCloneExtras\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 159
    goto :goto_0
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/internal/app/NubiaResolverListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 187
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/16 v1, 0xc

    .line 189
    .local v1, "options":I
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 190
    const v2, 0x30c0054

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 191
    return-void
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/NubiaResolverListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 204
    .local v1, "targetParcelable":Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/content/Intent;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 205
    check-cast v0, Landroid/content/Intent;

    .line 207
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 210
    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v2}, Lcom/android/internal/app/NubiaResolverController;->getWithOutAppClone()Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/NubiaResolverController;->processIntentForClone(Landroid/content/Intent;)V

    .line 215
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x800001

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    return-object v0
.end method

.method private modifyTargetIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "in"    # Landroid/content/Intent;

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    :cond_0
    const/high16 v1, 0x8080000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    :cond_1
    return-void
.end method


# virtual methods
.method public configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 9
    .param p2, "initialIntents"    # [Landroid/content/Intent;
    .param p4, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v0, 0x3030026

    invoke-virtual {p0, v0}, Lcom/android/internal/app/NubiaResolverListActivity;->setContentView(I)V

    .line 175
    const v0, 0x30d0062

    invoke-virtual {p0, v0}, Lcom/android/internal/app/NubiaResolverListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mListView:Landroid/widget/ListView;

    .line 176
    new-instance v8, Lcom/android/internal/app/NubiaResolverListActivity$ItemClickListener;

    invoke-direct {v8, p0}, Lcom/android/internal/app/NubiaResolverListActivity$ItemClickListener;-><init>(Lcom/android/internal/app/NubiaResolverListActivity;)V

    .line 177
    .local v8, "listener":Lcom/android/internal/app/NubiaResolverListActivity$ItemClickListener;
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 179
    new-instance v0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;

    iget v6, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;-><init>(Lcom/android/internal/app/NubiaResolverListActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V

    iput-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mShareListApater:Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;

    .line 181
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mShareListApater:Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    invoke-direct {p0}, Lcom/android/internal/app/NubiaResolverListActivity;->initActionBar()V

    .line 183
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Lcom/android/internal/app/NubiaResolverListActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 65
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v11

    .line 67
    .local v11, "pa":[Landroid/os/Parcelable;
    const/4 v5, 0x0

    .line 68
    .local v5, "initialIntents":[Landroid/content/Intent;
    if-eqz v11, :cond_1

    .line 69
    array-length v0, v11

    new-array v5, v0, [Landroid/content/Intent;

    .line 70
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v11

    if-ge v9, v0, :cond_1

    .line 71
    aget-object v0, v11, v9

    instance-of v0, v0, Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/app/NubiaResolverListActivity;->finish()V

    .line 73
    invoke-super {p0, v3}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    .end local v9    # "i":I
    :goto_1
    return-void

    .line 76
    .restart local v9    # "i":I
    :cond_0
    aget-object v10, v11, v9

    check-cast v10, Landroid/content/Intent;

    .line 77
    .local v10, "in":Landroid/content/Intent;
    invoke-direct {p0, v10}, Lcom/android/internal/app/NubiaResolverListActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 78
    aput-object v10, v5, v9

    .line 70
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 81
    .end local v9    # "i":I
    .end local v10    # "in":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 82
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_2

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iput-boolean v7, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mResolvingHome:Z

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0, v7}, Lcom/android/internal/app/NubiaResolverController;->setSafeForwardingMode(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0}, Lcom/android/internal/app/NubiaResolverController;->getWithOutAppClone()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/app/NubiaResolverListActivity;->getIntentField()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v6, v3

    move v7, v4

    .line 95
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/NubiaResolverListActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    goto :goto_1

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v6, v3

    .line 98
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/NubiaResolverListActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .line 118
    const v2, 0x30e0005

    invoke-virtual {p0, v2}, Lcom/android/internal/app/NubiaResolverListActivity;->setTheme(I)V

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/NubiaResolverListActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    iget v2, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mLaunchedFromUid:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mLaunchedFromUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/NubiaResolverListActivity;->finish()V

    .line 148
    :goto_1
    return-void

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mLaunchedFromUid:I

    goto :goto_0

    .line 133
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/NubiaResolverListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 135
    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/NubiaResolverListActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 136
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mRegistered:Z

    .line 138
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/internal/app/NubiaResolverListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 139
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mIconDpi:I

    .line 143
    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mIntents:Ljava/util/List;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-interface {v2, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 145
    iget-object v3, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mIntents:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mLaunchedFromUid:I

    invoke-virtual {v3, p0, v2, p5, v4}, Lcom/android/internal/app/NubiaResolverController;->init(Landroid/app/Activity;Ljava/util/ArrayList;[Landroid/content/Intent;I)V

    .line 147
    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mIntents:Ljava/util/List;

    invoke-virtual {p0, v2, p5, p6, p7}, Lcom/android/internal/app/NubiaResolverListActivity;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/NubiaResolverListActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 113
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 231
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 236
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 233
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/app/NubiaResolverListActivity;->finish()V

    .line 234
    const/4 v0, 0x1

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 165
    iget-boolean v0, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/NubiaResolverListActivity;->mRegistered:Z

    .line 169
    :cond_0
    return-void
.end method
