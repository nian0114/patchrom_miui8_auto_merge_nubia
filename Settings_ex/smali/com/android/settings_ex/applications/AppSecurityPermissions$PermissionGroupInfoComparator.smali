.class Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionGroupInfoComparator;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionGroupInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionGroupInfoComparator;->sCollator:Ljava/text/Collator;

    .line 593
    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;)I
    .locals 4
    .param p1, "a"    # Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "b"    # Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 595
    iget v2, p1, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;->flags:I

    iget v3, p2, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;->flags:I

    xor-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 596
    iget v2, p1, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 601
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 596
    goto :goto_0

    .line 598
    :cond_2
    iget v2, p1, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;->priority:I

    iget v3, p2, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;->priority:I

    if-eq v2, v3, :cond_3

    .line 599
    iget v2, p1, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;->priority:I

    iget v3, p2, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;->priority:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 601
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionGroupInfoComparator;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 590
    check-cast p1, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    check-cast p2, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionGroupInfoComparator;->compare(Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;)I

    move-result v0

    return v0
.end method
