.class Lcom/android/internal/app/NubiaResolverComparator;
.super Ljava/lang/Object;
.source "NubiaResolverComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NubiaResolverComparator"


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mHttp:Z

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mReferrerPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrerPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/NubiaResolverComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/app/NubiaResolverComparator;->mHttp:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/NubiaResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/internal/app/NubiaResolverComparator;->mReferrerPackage:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isPersistentProcess(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Z
    .locals 2
    .param p0, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)I
    .locals 16
    .param p1, "ldri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .param p2, "rdri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .local v3, "lhs":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .local v7, "rhs":Landroid/content/pm/ResolveInfo;
    iget v13, v3, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v14, -0x2

    if-eq v13, v14, :cond_0

    const/4 v13, 0x1

    :goto_0
    return v13

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/app/NubiaResolverComparator;->mHttp:Z

    if-eqz v13, :cond_2

    iget v13, v3, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v13}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v6

    .local v6, "lhsSpecific":Z
    iget v13, v3, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v13}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v10

    .local v10, "rhsSpecific":Z
    if-eq v6, v10, :cond_2

    if-eqz v6, :cond_1

    const/4 v13, -0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x1

    goto :goto_0

    .end local v6    # "lhsSpecific":Z
    .end local v10    # "rhsSpecific":Z
    :cond_2
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->sort:I

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->sort:I

    sub-int v1, v13, v14

    .local v1, "diff":I
    if-eqz v1, :cond_4

    if-lez v1, :cond_3

    const/4 v13, 0x1

    goto :goto_0

    :cond_3
    const/4 v13, -0x1

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v13, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v5, "lhsPkgName":Ljava/lang/String;
    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v9, "rhsPkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/NubiaResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v5, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .local v4, "lhsPackageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/NubiaResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v9, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .local v8, "rhsPackageInfo":Landroid/content/pm/PackageInfo;
    iget-object v13, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-lez v13, :cond_5

    iget-object v13, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-gtz v13, :cond_5

    const/4 v13, -0x1

    goto :goto_0

    :cond_5
    iget-object v13, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-gtz v13, :cond_6

    iget-object v13, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v13, v13, 0x1

    if-lez v13, :cond_6

    const/4 v13, 0x1

    goto :goto_0

    .end local v4    # "lhsPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "lhsPkgName":Ljava/lang/String;
    .end local v8    # "rhsPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "rhsPkgName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/NubiaResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v13}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .local v11, "sa":Ljava/lang/CharSequence;
    if-nez v11, :cond_7

    iget-object v13, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/NubiaResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v13}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .local v12, "sb":Ljava/lang/CharSequence;
    if-nez v12, :cond_8

    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/NubiaResolverComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    check-cast p1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    check-cast p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/NubiaResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)I

    move-result v0

    return v0
.end method
