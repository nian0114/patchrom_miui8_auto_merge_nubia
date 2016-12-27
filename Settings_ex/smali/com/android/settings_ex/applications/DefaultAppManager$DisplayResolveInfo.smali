.class public final Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "DefaultAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/DefaultAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field public classNames:[Ljava/lang/String;

.field public displayIcon:Landroid/graphics/drawable/Drawable;

.field public displayLabel:Ljava/lang/CharSequence;

.field public intentResolveInfoMap:Ljava/util/Map;

.field public packageName:Ljava/lang/CharSequence;

.field public ri:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->intentResolveInfoMap:Ljava/util/Map;

    .line 70
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 71
    iput-object p2, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 72
    iput-object p3, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 73
    iput-object p4, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->packageName:Ljava/lang/CharSequence;

    .line 74
    return-void
.end method


# virtual methods
.method public isIncomplete()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->classNames:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->classNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 81
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->classNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->classNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->classNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 85
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 89
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "class size("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->classNames:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "   classNames:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->classNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 93
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->classNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 100
    :goto_1
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
