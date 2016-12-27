.class Lcom/android/settings_ex/applications/DefaultAppManager$DisplayNameComparator;
.super Ljava/lang/Object;
.source "DefaultAppManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/DefaultAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private mPM:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/android/settings_ex/applications/DefaultAppManager;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/DefaultAppManager;Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayNameComparator;->this$0:Lcom/android/settings_ex/applications/DefaultAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayNameComparator;->mCollator:Ljava/text/Collator;

    .line 741
    iput-object p2, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    .line 742
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayNameComparator;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 743
    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;)I
    .locals 5
    .param p1, "a"    # Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    .param p2, "b"    # Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    .prologue
    const/4 v3, -0x2

    .line 748
    iget-object v2, p1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget v2, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    if-eq v2, v3, :cond_0

    .line 749
    const/4 v2, 0x1

    .line 761
    :goto_0
    return v2

    .line 751
    :cond_0
    iget-object v2, p2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget v2, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    if-eq v2, v3, :cond_1

    .line 752
    const/4 v2, -0x1

    goto :goto_0

    .line 754
    :cond_1
    iget-object v2, p1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 755
    .local v0, "sa":Ljava/lang/CharSequence;
    if-nez v0, :cond_2

    .line 756
    iget-object v2, p1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 757
    :cond_2
    iget-object v2, p2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 758
    .local v1, "sb":Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 759
    iget-object v2, p2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 761
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayNameComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 738
    check-cast p1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    check-cast p2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayNameComparator;->compare(Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;)I

    move-result v0

    return v0
.end method
