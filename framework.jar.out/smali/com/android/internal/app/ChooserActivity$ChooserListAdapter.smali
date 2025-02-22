.class public Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
.super Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChooserListAdapter"
.end annotation


# static fields
.field private static final MAX_SERVICE_TARGETS:I = 0x8

.field public static final TARGET_BAD:I = -0x1

.field public static final TARGET_CALLER:I = 0x0

.field public static final TARGET_SERVICE:I = 0x1

.field public static final TARGET_STANDARD:I = 0x2


# instance fields
.field private final mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

.field private final mCallerTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$TargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLateFee:F

.field private final mServiceTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V
    .locals 14
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    new-instance v1, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-direct {v1}, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    if-eqz p4, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p4

    array-length v1, v0

    if-ge v9, v1, :cond_4

    aget-object v2, p4, v9

    .local v2, "ii":Landroid/content/Intent;
    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v11, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .local v8, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v8, :cond_1

    const-string v1, "ChooserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string v1, "user"

    invoke-virtual {p1, v1}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    .local v12, "userManager":Landroid/os/UserManager;
    instance-of v1, v2, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_2

    move-object v10, v2

    check-cast v10, Landroid/content/pm/LabeledIntent;

    .local v10, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v10}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual {v10}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->icon:I

    iget v1, v3, Landroid/content/pm/ResolveInfo;->icon:I

    iput v1, v3, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .end local v10    # "li":Landroid/content/pm/LabeledIntent;
    :cond_2
    invoke-virtual {v12}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, v3, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    const/4 v1, 0x0

    iput v1, v3, Landroid/content/pm/ResolveInfo;->icon:I

    :cond_3
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/android/internal/app/ChooserActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    .local v7, "rpIntent":Landroid/content/Intent;
    iget-object v13, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v3, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v2

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "ii":Landroid/content/Intent;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v7    # "rpIntent":Landroid/content/Intent;
    .end local v8    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v9    # "i":I
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "userManager":Landroid/os/UserManager;
    :cond_4
    return-void
.end method

.method private insertServiceTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)V
    .locals 5
    .param p1, "chooserTargetInfo"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getModifiedScore()F

    move-result v2

    .local v2, "newScore":F
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    .local v3, "serviceTarget":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getModifiedScore()F

    move-result v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v4, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .end local v3    # "serviceTarget":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    :goto_1
    return-void

    .restart local v3    # "serviceTarget":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "serviceTarget":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private pruneServiceTargets()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    .local v0, "cti":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/NubiaResolverController;->hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "cti":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method public addServiceResults(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;)V
    .locals 9
    .param p1, "origTarget"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    const v8, 0x3f733333    # 0.95f

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v6, v6, Lcom/android/internal/app/ChooserActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v6, p1}, Lcom/android/internal/app/NubiaResolverController;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v3

    .local v3, "parentScore":F
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-static {p2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    .local v2, "lastScore":F
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/chooser/ChooserTarget;

    .local v4, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v5

    .local v5, "targetScore":F
    mul-float/2addr v5, v3

    iget v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    mul-float/2addr v5, v6

    if-lez v1, :cond_0

    cmpl-float v6, v5, v2

    if-ltz v6, :cond_0

    mul-float v5, v2, v8

    :cond_0
    new-instance v6, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v6, v7, p1, v4, v5}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;F)V

    invoke-direct {p0, v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->insertServiceTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)V

    move v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v5    # "targetScore":F
    :cond_1
    iget v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    mul-float/2addr v6, v8

    iput v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public getCallerTargetCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 2
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/NubiaResolverController;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPositionTargetType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "offset":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .local v0, "callerTargetCount":I
    if-ge p1, v0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    .local v2, "serviceTargetCount":I
    sub-int v4, p1, v1

    if-ge v4, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v1, v2

    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->getCount()I

    move-result v3

    .local v3, "standardTargetCount":I
    sub-int v4, p1, v1

    if-ge v4, v3, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public getServiceTargetCount()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getStandardTargetCount()I
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getUnfilteredCount()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0}, Lcom/android/internal/app/NubiaResolverController;->getUnfilteredCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getViewPagerHeight()I
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->getViewPagerHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic handlePackagesChanged()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->handlePackagesChanged()V

    return-void
.end method

.method public bridge synthetic hasExtendedInfo()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->hasExtendedInfo()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onListRebuilt()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->pruneServiceTargets()V

    :cond_0
    return-void
.end method

.method public shouldGetResolvedFilter()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method
