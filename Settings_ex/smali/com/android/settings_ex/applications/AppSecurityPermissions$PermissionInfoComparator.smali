.class Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionInfoComparator;
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
    name = "PermissionInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionInfoComparator;->sCollator:Ljava/text/Collator;

    .line 608
    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;)I
    .locals 3
    .param p1, "a"    # Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;
    .param p2, "b"    # Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionInfoComparator;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 605
    check-cast p1, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;

    check-cast p2, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionInfoComparator;->compare(Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;)I

    move-result v0

    return v0
.end method
