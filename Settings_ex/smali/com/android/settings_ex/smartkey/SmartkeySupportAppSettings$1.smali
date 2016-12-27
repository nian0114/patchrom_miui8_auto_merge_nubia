.class Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$1;
.super Ljava/lang/Object;
.source "SmartkeySupportAppSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private collator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)V
    .locals 1

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$1;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$1;->collator:Ljava/text/Collator;

    return-void
.end method

.method private getPriority(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 261
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v1

    .line 263
    :cond_1
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 264
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    .line 265
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 4
    .param p1, "arg0"    # Landroid/content/pm/ResolveInfo;
    .param p2, "arg1"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$1;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$000(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$1;->getPriority(Ljava/lang/CharSequence;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$1;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$000(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$1;->getPriority(Ljava/lang/CharSequence;)I

    move-result v2

    sub-int v0, v1, v2

    .line 273
    .local v0, "compareResult":I
    if-eqz v0, :cond_0

    .line 275
    .end local v0    # "compareResult":I
    :goto_0
    return v0

    .restart local v0    # "compareResult":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$1;->collator:Ljava/text/Collator;

    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$1;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$000(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$1;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$000(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 255
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$1;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
