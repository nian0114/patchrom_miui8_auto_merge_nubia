.class final Lcom/android/settings_ex/notification/NubiaNotificationAppList$2;
.super Ljava/lang/Object;
.source "NubiaNotificationAppList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NubiaNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$2;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method private getSection(Ljava/lang/CharSequence;)I
    .locals 4
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 218
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 221
    :cond_1
    :goto_0
    return v1

    .line 219
    :cond_2
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 220
    .local v0, "c":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-le v0, v3, :cond_1

    :cond_3
    move v1, v2

    .line 221
    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;
    .param p2, "rhs"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;

    .prologue
    .line 226
    iget-object v1, p1, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$2;->getSection(Ljava/lang/CharSequence;)I

    move-result v1

    iget-object v2, p2, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$2;->getSection(Ljava/lang/CharSequence;)I

    move-result v2

    sub-int v0, v1, v2

    .line 227
    .local v0, "compare":I
    if-eqz v0, :cond_0

    .line 228
    .end local v0    # "compare":I
    :goto_0
    return v0

    .restart local v0    # "compare":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$2;->sCollator:Ljava/text/Collator;

    iget-object v2, p1, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    iget-object v3, p2, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 212
    check-cast p1, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;

    check-cast p2, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$2;->compare(Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;)I

    move-result v0

    return v0
.end method
