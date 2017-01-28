.class public Lcom/android/internal/app/NubiaResolverController;
.super Ljava/lang/Object;
.source "NubiaResolverController.java"


# static fields
.field private static final CHECKED_POSTION_KEY:Ljava/lang/String; = "checked_postion_key_"

.field private static final DEBUG:Z = false

.field private static final RESOLVERACTIVITY_PRE_NAME:Ljava/lang/String; = "ResolverActivity_pre_name_"

.field private static final SHARED_SORT:Ljava/lang/String; = "com.android.internal.app.ResolverActivity.sort"

.field private static final TAG:Ljava/lang/String; = "NubiaResolverController"


# instance fields
.field private mAlwaysUseOption:Z

.field private mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/app/Activity;

.field mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterLastUsed:Z

.field private mHasExtendedInfo:Z

.field private mIconDpi:I

.field private mInitialIntents:[Landroid/content/Intent;

.field private mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private mLastChosenPosition:I

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResolverComparator:Lcom/android/internal/app/NubiaResolverComparator;

.field private mResolvingHome:Z

.field private mSafeForwardingMode:Z

.field private mWithOutAppClone:Z

.field private mWithOutVirtualBox:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/app/NubiaResolverController;->mLastSelected:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/NubiaResolverController;->mResolvingHome:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mIntents:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/internal/app/NubiaResolverController;->mLastChosenPosition:I

    return-void
.end method

.method private getConfig(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    const-string v1, "com.cmx.cmplus.SmartContainerConfig"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/app/NubiaResolverController;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "config":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "config":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .end local p2    # "def":Z
    :cond_0
    return p2
.end method

.method private getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "configClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "configClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "NubiaResolverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to getField "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private invoke(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .local v2, "smartClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v2, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "smartClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NubiaResolverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to invoke "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "()\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p0, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p1, "rhs"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 1
    .param p1, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 11
    .param p1, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "extraInfo"    # Ljava/lang/CharSequence;
    .param p3, "roLabel"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v9

    .local v9, "count":I
    invoke-virtual {p1, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .local v2, "add":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/app/NubiaResolverController;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    .local v5, "replaceIntent":Landroid/content/Intent;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/NubiaResolverController;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/NubiaResolverController;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .local v6, "rpIntent":Landroid/content/Intent;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/content/Intent;)V

    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/NubiaResolverController;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    if-ne v5, v1, :cond_0

    const/4 v10, 0x1

    .local v10, "i":I
    move v7, v9

    .local v7, "N":I
    :goto_0
    if-ge v10, v7, :cond_0

    invoke-virtual {p1, v10}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v8

    .local v8, "altIntent":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->addAlternateSourceIntent(Landroid/content/Intent;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .end local v7    # "N":I
    .end local v8    # "altIntent":Landroid/content/Intent;
    .end local v10    # "i":I
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/app/NubiaResolverController;->updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method public addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V
    .locals 11
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "into":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local p3, "from":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "fromCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "intoCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .local v5, "newInfo":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .local v0, "found":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .local v6, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/app/NubiaResolverController;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v6, p2, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .end local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_0
    if-nez v0, :cond_1

    new-instance v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8, p2, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "found":Z
    .end local v4    # "j":I
    .end local v5    # "newInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_3
    return-void
.end method

.method public display(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "t":Ljava/lang/Object;, "TT;"
    const-string v2, "Zero"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method

.method public display(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":[Ljava/lang/Object;, "[TT;"
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "t":Ljava/lang/Object;, "TT;"
    const-string v4, "Zero"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method

.method public fillDisplayListSort(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "displayList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    iget-object v4, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    const-string v5, "com.android.internal.app.ResolverActivity.sort"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .local v3, "shared":Landroid/content/SharedPreferences;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .local v2, "key":Ljava/lang/String;
    const v4, 0x7fffffff

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->sort:I

    goto :goto_0

    .end local v0    # "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getDisplayInfoCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDisplayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getDisplayResolveInfoCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/NubiaResolverController;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/NubiaResolverController;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/NubiaResolverController;->mLastChosenPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilteredPosition()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/app/NubiaResolverController;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/NubiaResolverController;->mLastChosenPosition:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/NubiaResolverController;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getReferrerPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_0

    const-string v1, "android-app"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    return-object p2
.end method

.method public getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0
.end method

.method public getUnfilteredCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWithOutAppClone()Z
    .locals 2

    .prologue
    new-instance v0, Lcom/android/internal/app/NubiaResolverController;

    invoke-direct {v0}, Lcom/android/internal/app/NubiaResolverController;-><init>()V

    .local v0, "mNubiaResolverController":Lcom/android/internal/app/NubiaResolverController;
    iget-boolean v1, v0, Lcom/android/internal/app/NubiaResolverController;->mWithOutAppClone:Z

    return v1
.end method

.method public hasExtendedInfo()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/NubiaResolverController;->mHasExtendedInfo:Z

    return v0
.end method

.method public hasFilteredItem()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/NubiaResolverController;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/NubiaResolverController;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasManagedProfile()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .local v4, "userManager":Landroid/os/UserManager;
    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/app/NubiaResolverController;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public init(Landroid/app/Activity;Ljava/util/ArrayList;[Landroid/content/Intent;I)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p4, "launchedFromUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p2, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/4 v3, 0x1

    iput-object p1, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/internal/app/NubiaResolverController;->mIntents:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/internal/app/NubiaResolverController;->mInitialIntents:[Landroid/content/Intent;

    iput p4, p0, Lcom/android/internal/app/NubiaResolverController;->mLaunchedFromUid:I

    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/NubiaResolverController;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "WITH_OUT_VIRTUAL_BOX"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/NubiaResolverController;->getConfig(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/NubiaResolverController;->mWithOutVirtualBox:Z

    const-string v2, "WITH_OUT_APP_CLONE"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/NubiaResolverController;->getConfig(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/NubiaResolverController;->mWithOutAppClone:Z

    iget-boolean v2, p0, Lcom/android/internal/app/NubiaResolverController;->mWithOutAppClone:Z

    if-nez v2, :cond_0

    const-string v2, "com.android.internal.app.ResolverActivity"

    const-string v3, "getReferrerPackageNameSafely"

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/app/NubiaResolverController;->invoke(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "referrerPackage":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/NubiaResolverController;->mIconDpi:I

    new-instance v2, Lcom/android/internal/app/NubiaResolverComparator;

    iget-object v3, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/internal/app/NubiaResolverController;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/app/NubiaResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/app/NubiaResolverController;->mResolverComparator:Lcom/android/internal/app/NubiaResolverComparator;

    return-void

    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "referrerPackage":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/NubiaResolverController;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "referrerPackage":Ljava/lang/String;
    goto :goto_0
.end method

.method public isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 3
    .param p1, "a"    # Landroid/content/pm/ResolveInfo;
    .param p2, "b"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .prologue
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/NubiaResolverController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/NubiaResolverController;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/app/NubiaResolverController;->mWithOutVirtualBox:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/NubiaResolverController;->mPm:Landroid/content/pm/PackageManager;

    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .local v2, "iconRes":I
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/NubiaResolverController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/NubiaResolverController;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/app/NubiaResolverController;->mWithOutVirtualBox:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/NubiaResolverController;->mPm:Landroid/content/pm/PackageManager;

    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconRes":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "NubiaResolverController"

    const-string v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/NubiaResolverController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    return-void
.end method

.method public onListRebuilt()V
    .locals 0

    .prologue
    return-void
.end method

.method public onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 38
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    .prologue
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v34

    .local v34, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v4

    .local v4, "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/NubiaResolverController;->mAlwaysUseOption:Z

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/NubiaResolverController;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mOrigResolveList:Ljava/util/List;

    if-eqz v3, :cond_f

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .local v13, "action":Ljava/lang/String;
    if-eqz v13, :cond_1

    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v15

    .local v15, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v15, :cond_3

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .local v14, "cat":Ljava/lang/String;
    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "cat":Ljava/lang/String;
    .end local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v13    # "action":Ljava/lang/String;
    .restart local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v0, v34

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v5, 0xfff0000

    and-int v14, v3, v5

    .local v14, "cat":I
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .local v17, "data":Landroid/net/Uri;
    const/high16 v3, 0x600000

    if-ne v14, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    .local v25, "mimeType":Ljava/lang/String;
    if-eqz v25, :cond_4

    :try_start_0
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v25    # "mimeType":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    const/high16 v3, 0x600000

    if-ne v14, v3, :cond_5

    const-string v3, "file"

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "content"

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v27, :cond_7

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v36

    .local v36, "ssp":Ljava/lang/String;
    :cond_6
    if-eqz v36, :cond_7

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/PatternMatcher;

    .local v26, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {v26 .. v26}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v7, v3, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .end local v26    # "p":Landroid/os/PatternMatcher;
    .end local v36    # "ssp":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v12, :cond_9

    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/IntentFilter$AuthorityEntry;

    .local v11, "a":Landroid/content/IntentFilter$AuthorityEntry;
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v3

    if-ltz v3, :cond_8

    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v31

    .local v31, "port":I
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-ltz v31, :cond_d

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v7, v5, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .end local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v31    # "port":I
    :cond_9
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v27

    if-eqz v27, :cond_b

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v29

    .local v29, "path":Ljava/lang/String;
    :cond_a
    if-eqz v29, :cond_b

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/PatternMatcher;

    .restart local v26    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {v26 .. v26}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v7, v3, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .end local v12    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v26    # "p":Landroid/os/PatternMatcher;
    .end local v27    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v29    # "path":Ljava/lang/String;
    :cond_b
    if-eqz v7, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mOrigResolveList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "N":I
    new-array v0, v10, [Landroid/content/ComponentName;

    move-object/from16 v35, v0

    .local v35, "set":[Landroid/content/ComponentName;
    const/4 v8, 0x0

    .local v8, "bestMatch":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_4
    move/from16 v0, v21

    if-ge v0, v10, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mOrigResolveList:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v32

    .local v32, "r":Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v35, v21

    move-object/from16 v0, v32

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v3, v8, :cond_c

    move-object/from16 v0, v32

    iget v8, v0, Landroid/content/pm/ResolveInfo;->match:I

    :cond_c
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .end local v8    # "bestMatch":I
    .end local v10    # "N":I
    .end local v21    # "i":I
    .end local v32    # "r":Landroid/content/pm/ResolveInfo;
    .end local v35    # "set":[Landroid/content/ComponentName;
    .restart local v25    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v19

    .local v19, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v3, "ResolverActivity"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    goto/16 :goto_2

    .end local v19    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v25    # "mimeType":Ljava/lang/String;
    .restart local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v12    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v27    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v31    # "port":I
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_3

    .end local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v12    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v27    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v31    # "port":I
    .restart local v8    # "bestMatch":I
    .restart local v10    # "N":I
    .restart local v21    # "i":I
    .restart local v35    # "set":[Landroid/content/ComponentName;
    :cond_e
    if-eqz p2, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getUserId()I

    move-result v37

    .local v37, "userId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    .local v30, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v7, v8, v1, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    move-object/from16 v0, v34

    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v3, :cond_11

    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "bestMatch":I
    .end local v10    # "N":I
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "cat":I
    .end local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "data":Landroid/net/Uri;
    .end local v21    # "i":I
    .end local v30    # "pm":Landroid/content/pm/PackageManager;
    .end local v35    # "set":[Landroid/content/ComponentName;
    .end local v37    # "userId":I
    :cond_f
    :goto_5
    if-eqz p1, :cond_10

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/NubiaResolverController;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    :cond_10
    const/4 v3, 0x1

    return v3

    .restart local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v8    # "bestMatch":I
    .restart local v10    # "N":I
    .restart local v13    # "action":Ljava/lang/String;
    .restart local v14    # "cat":I
    .restart local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "data":Landroid/net/Uri;
    .restart local v21    # "i":I
    .restart local v30    # "pm":Landroid/content/pm/PackageManager;
    .restart local v35    # "set":[Landroid/content/ComponentName;
    .restart local v37    # "userId":I
    :cond_11
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    .local v16, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    .local v28, "packageName":Ljava/lang/String;
    if-eqz v17, :cond_13

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    .local v18, "dataScheme":Ljava/lang/String;
    :goto_6
    if-eqz v18, :cond_14

    const-string v3, "http"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "https"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_12
    const/16 v23, 0x1

    .local v23, "isHttpOrHttps":Z
    :goto_7
    if-eqz v13, :cond_15

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v24, 0x1

    .local v24, "isViewAction":Z
    :goto_8
    if-eqz v15, :cond_16

    const-string v3, "android.intent.category.BROWSABLE"

    invoke-interface {v15, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/16 v20, 0x1

    .local v20, "hasCategoryBrowsable":Z
    :goto_9
    if-eqz v23, :cond_f

    if-eqz v24, :cond_f

    if-eqz v20, :cond_f

    const/4 v3, 0x2

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move/from16 v2, v37

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    goto :goto_5

    .end local v18    # "dataScheme":Ljava/lang/String;
    .end local v20    # "hasCategoryBrowsable":Z
    .end local v23    # "isHttpOrHttps":Z
    .end local v24    # "isViewAction":Z
    :cond_13
    const/16 v18, 0x0

    goto :goto_6

    .restart local v18    # "dataScheme":Ljava/lang/String;
    :cond_14
    const/16 v23, 0x0

    goto :goto_7

    .restart local v23    # "isHttpOrHttps":Z
    :cond_15
    const/16 v24, 0x0

    goto :goto_8

    .restart local v24    # "isViewAction":Z
    :cond_16
    const/16 v20, 0x0

    goto :goto_9

    .end local v16    # "cn":Landroid/content/ComponentName;
    .end local v18    # "dataScheme":Ljava/lang/String;
    .end local v23    # "isHttpOrHttps":Z
    .end local v24    # "isViewAction":Z
    .end local v28    # "packageName":Ljava/lang/String;
    .end local v30    # "pm":Landroid/content/pm/PackageManager;
    .end local v37    # "userId":I
    :cond_17
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v33

    .local v33, "re":Landroid/os/RemoteException;
    const-string v3, "NubiaResolverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error calling setLastChosenActivity\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public processCustomGroup()V
    .locals 10

    .prologue
    iget-object v8, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v6, "systemAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    const/4 v8, 0x4

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "cn.nubia.neoshare"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "cn.nubia.gallery3d"

    aput-object v9, v5, v8

    const/4 v8, 0x2

    const-string v9, "cn.nubia.myfile"

    aput-object v9, v5, v8

    const/4 v8, 0x3

    const-string v9, "com.android.server.telecom"

    aput-object v9, v5, v8

    .local v5, "pkgNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v5

    if-ge v1, v8, :cond_4

    aget-object v3, v5, v1

    .local v3, "key":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "tmp":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v8, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "tmp":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    check-cast v7, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .restart local v7    # "tmp":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    iget-object v8, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    const-string v8, "com.android.server.telecom"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v2    # "j":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v7    # "tmp":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :cond_4
    iget-object v8, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v8, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    iget-object v8, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    return-void
.end method

.method public processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V
    .locals 15
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;II",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    sub-int v13, p3, p2

    add-int/lit8 v9, v13, 0x1

    .local v9, "num":I
    const/4 v13, 0x1

    if-ne v9, v13, :cond_1

    const/4 v13, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v0, v13, v1}, Lcom/android/internal/app/NubiaResolverController;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/internal/app/NubiaResolverController;->mHasExtendedInfo:Z

    const/4 v12, 0x0

    .local v12, "usePkg":Z
    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, p0, Lcom/android/internal/app/NubiaResolverController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .local v11, "startApp":Ljava/lang/CharSequence;
    if-nez v11, :cond_2

    const/4 v12, 0x1

    :cond_2
    if-nez v12, :cond_5

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .local v3, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, p2, 0x1

    .local v5, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v5, v0, :cond_4

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .local v7, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, p0, Lcom/android/internal/app/NubiaResolverController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "jApp":Ljava/lang/CharSequence;
    if-eqz v6, :cond_3

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_3
    const/4 v12, 0x1

    .end local v6    # "jApp":Ljava/lang/CharSequence;
    .end local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .end local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v5    # "j":I
    :cond_5
    move/from16 v8, p2

    .local v8, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v8, v0, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .local v10, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .local v2, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v12, :cond_7

    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v4, "extraInfo":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p5

    invoke-virtual {p0, v10, v4, v0}, Lcom/android/internal/app/NubiaResolverController;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v2    # "add":Landroid/content/pm/ResolveInfo;
    .end local v4    # "extraInfo":Ljava/lang/CharSequence;
    .end local v8    # "k":I
    .end local v10    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v5    # "j":I
    .restart local v6    # "jApp":Ljava/lang/CharSequence;
    .restart local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v5    # "j":I
    .end local v6    # "jApp":Ljava/lang/CharSequence;
    .end local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "k":I
    .restart local v10    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_7
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, p0, Lcom/android/internal/app/NubiaResolverController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "extraInfo":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method public processIntentForClone(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v1, "com.cmx.cmplus.SmartContainerManagerNative"

    const-string v2, "processIntentForClone"

    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/app/NubiaResolverController;->invoke(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "smartMethod":Ljava/lang/Object;
    return-void
.end method

.method public rebuildList(Ljava/util/ArrayList;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 31
    .param p2, "initialIntents"    # [Landroid/content/Intent;
    .param p4, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
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
    .local p1, "payloadIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .local p3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/NubiaResolverController;->mIntents:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/NubiaResolverController;->mInitialIntents:[Landroid/content/Intent;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/NubiaResolverController;->mBaseResolveList:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/NubiaResolverController;->mFilterLastUsed:Z

    const/4 v11, 0x0

    .local v11, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/NubiaResolverController;->getTargetIntent()Landroid/content/Intent;

    move-result-object v23

    .local v23, "primaryIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/NubiaResolverController;->mWithOutAppClone:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NubiaResolverController;->processIntentForClone(Landroid/content/Intent;)V

    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x10000

    move-object/from16 v0, v23

    invoke-interface {v3, v0, v6, v7}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v23    # "primaryIntent":Landroid/content/Intent;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mBaseResolveList:Ljava/util/List;

    if-eqz v3, :cond_4

    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/NubiaResolverController;->mOrigResolveList:Ljava/util/List;

    .restart local v11    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/NubiaResolverController;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/NubiaResolverController;->mBaseResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3, v6}, Lcom/android/internal/app/NubiaResolverController;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    :cond_1
    if-eqz v11, :cond_19

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v16

    .local v16, "N":I
    if-lez v16, :cond_19

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .local v14, "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v24

    .local v24, "r0":Landroid/content/pm/ResolveInfo;
    const/16 v19, 0x1

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_e

    move/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v24

    iget v3, v0, Landroid/content/pm/ResolveInfo;->priority:I

    iget v6, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v3, v6, :cond_2

    move-object/from16 v0, v24

    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v6, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v3, v6, :cond_d

    :cond_2
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mOrigResolveList:Ljava/util/List;

    if-ne v3, v11, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/NubiaResolverController;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mOrigResolveList:Ljava/util/List;

    :cond_3
    move/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v16, v16, -0x1

    goto :goto_2

    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v14    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v16    # "N":I
    .end local v19    # "i":I
    .end local v24    # "r0":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v26

    .local v26, "re":Landroid/os/RemoteException;
    const-string v3, "NubiaResolverController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error calling setLastChosenActivity\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v26    # "re":Landroid/os/RemoteException;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/NubiaResolverController;->shouldGetResolvedFilter()Z

    move-result v29

    .local v29, "shouldGetResolvedFilter":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/NubiaResolverController;->shouldGetActivityMetadata()Z

    move-result v28

    .local v28, "shouldGetActivityMetadata":Z
    const/16 v19, 0x0

    .restart local v19    # "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .restart local v16    # "N":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mIntents:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Intent;

    .local v21, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/NubiaResolverController;->mWithOutAppClone:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NubiaResolverController;->processIntentForClone(Landroid/content/Intent;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/NubiaResolverController;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v7, 0x10000

    if-eqz v29, :cond_8

    const/16 v3, 0x40

    :goto_4
    or-int/2addr v7, v3

    if-eqz v28, :cond_9

    const/16 v3, 0x80

    :goto_5
    or-int/2addr v3, v7

    move-object/from16 v0, v21

    invoke-virtual {v6, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    .local v20, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v20, :cond_7

    if-nez v11, :cond_6

    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/NubiaResolverController;->mOrigResolveList:Ljava/util/List;

    .restart local v11    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/internal/app/NubiaResolverController;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .end local v20    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    .end local v21    # "intent":Landroid/content/Intent;
    :cond_a
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    :goto_6
    if-ltz v19, :cond_1

    move/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    .local v17, "ai":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/app/NubiaResolverController;->mLaunchedFromUid:I

    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v17

    iget-boolean v8, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v3, v6, v7, v8}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v18

    .local v18, "granted":I
    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mOrigResolveList:Ljava/util/List;

    if-ne v3, v11, :cond_b

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/NubiaResolverController;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mOrigResolveList:Ljava/util/List;

    :cond_b
    move/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v19, v19, -0x1

    goto :goto_6

    .end local v17    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v18    # "granted":I
    .end local v28    # "shouldGetActivityMetadata":Z
    .end local v29    # "shouldGetResolvedFilter":Z
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v24    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_d
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v3, :cond_13

    const/16 v19, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mInitialIntents:[Landroid/content/Intent;

    array-length v3, v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mInitialIntents:[Landroid/content/Intent;

    aget-object v4, v3, v19

    .local v4, "ii":Landroid/content/Intent;
    if-nez v4, :cond_f

    :goto_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v17

    .restart local v17    # "ai":Landroid/content/pm/ActivityInfo;
    if-nez v17, :cond_10

    const-string v3, "NubiaResolverController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No activity found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_10
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    const-string v6, "user"

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/UserManager;

    .local v30, "userManager":Landroid/os/UserManager;
    instance-of v3, v4, Landroid/content/pm/LabeledIntent;

    if-eqz v3, :cond_11

    move-object/from16 v22, v4

    check-cast v22, Landroid/content/pm/LabeledIntent;

    .local v22, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v3

    iput v3, v5, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v5, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v3

    iput v3, v5, Landroid/content/pm/ResolveInfo;->icon:I

    iget v3, v5, Landroid/content/pm/ResolveInfo;->icon:I

    iput v3, v5, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .end local v22    # "li":Landroid/content/pm/LabeledIntent;
    :cond_11
    invoke-virtual/range {v30 .. v30}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    iput-boolean v3, v5, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    const/4 v3, 0x0

    iput v3, v5, Landroid/content/pm/ResolveInfo;->icon:I

    :cond_12
    iget-object v3, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/NubiaResolverController;->getTargetIntent()Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/android/internal/app/NubiaResolverController;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    .local v9, "rpIntent":Landroid/content/Intent;
    new-instance v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v4

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/NubiaResolverController;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    goto/16 :goto_8

    .end local v4    # "ii":Landroid/content/Intent;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rpIntent":Landroid/content/Intent;
    .end local v17    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v30    # "userManager":Landroid/os/UserManager;
    :cond_13
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    check-cast v14, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .restart local v14    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v24

    const/4 v12, 0x0

    .local v12, "start":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    .local v15, "r0Label":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/app/NubiaResolverController;->mHasExtendedInfo:Z

    const/16 v19, 0x1

    :goto_9
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_17

    if-nez v15, :cond_14

    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_14
    move/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .local v25, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v27

    .local v27, "riLabel":Ljava/lang/CharSequence;
    if-nez v27, :cond_15

    iget-object v3, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    :cond_15
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    :goto_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    :cond_16
    add-int/lit8 v13, v19, -0x1

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/app/NubiaResolverController;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    move-object/from16 v14, v25

    move-object/from16 v24, v5

    move-object/from16 v15, v27

    move/from16 v12, v19

    goto :goto_a

    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v25    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v27    # "riLabel":Ljava/lang/CharSequence;
    :cond_17
    add-int/lit8 v13, v16, -0x1

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/app/NubiaResolverController;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/NubiaResolverController;->fillDisplayListSort(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/NubiaResolverController;->mResolverComparator:Lcom/android/internal/app/NubiaResolverComparator;

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/NubiaResolverController;->processCustomGroup()V

    .end local v12    # "start":I
    .end local v14    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v15    # "r0Label":Ljava/lang/CharSequence;
    .end local v16    # "N":I
    .end local v19    # "i":I
    .end local v24    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_19
    return-void
.end method

.method public resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 8
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    const/4 v6, 0x0

    iget-boolean v5, p0, Lcom/android/internal/app/NubiaResolverController;->mSafeForwardingMode:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-interface {p1, v5, v6}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/NubiaResolverController;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v4, -0x2710

    .local v4, "targetUserId":I
    :try_start_0
    iget-boolean v5, p0, Lcom/android/internal/app/NubiaResolverController;->mWithOutVirtualBox:Z

    if-nez v5, :cond_2

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6, v4}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/NubiaResolverController;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_1
    const-string v5, "NubiaResolverController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to launch as uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/app/NubiaResolverController;->mLaunchedFromUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", while running in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1
.end method

.method public saveDisplayListSort(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "displayList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    iget-object v5, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    const-string v6, "com.android.internal.app.ResolverActivity.sort"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .local v4, "shared":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .local v0, "displayResolveInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "displayResolveInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setAdditionalTargets([Landroid/content/Intent;)V
    .locals 5
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "arr$":[Landroid/content/Intent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/app/NubiaResolverController;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Landroid/content/Intent;
    .end local v1    # "i$":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

.method public setAlwaysUseOption(Z)V
    .locals 0
    .param p1, "alwaysUseOption"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/NubiaResolverController;->mAlwaysUseOption:Z

    return-void
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/NubiaResolverController;->mSafeForwardingMode:Z

    return-void
.end method

.method public shouldGetActivityMetadata()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public shouldGetResolvedFilter()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/NubiaResolverController;->mFilterLastUsed:Z

    return v0
.end method

.method public showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .local v0, "in":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startSelected(IZZ)V
    .locals 9
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    const v4, 0x10404c1

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/app/NubiaResolverController;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-boolean v2, p0, Lcom/android/internal/app/NubiaResolverController;->mResolvingHome:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/app/NubiaResolverController;->hasManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/internal/app/NubiaResolverController;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/app/NubiaResolverController;->mWithOutVirtualBox:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/app/NubiaResolverController;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    .local v1, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/NubiaResolverController;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/app/NubiaResolverController;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v0
.end method

.method public updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverController;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/NubiaResolverController;->mLastChosenPosition:I

    :cond_0
    return-void
.end method
