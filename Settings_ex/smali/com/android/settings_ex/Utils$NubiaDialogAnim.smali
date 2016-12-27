.class public Lcom/android/settings_ex/Utils$NubiaDialogAnim;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NubiaDialogAnim"
.end annotation


# static fields
.field private static enterAnim:I

.field private static exitAnim:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 345
    sput v0, Lcom/android/settings_ex/Utils$NubiaDialogAnim;->enterAnim:I

    .line 346
    sput v0, Lcom/android/settings_ex/Utils$NubiaDialogAnim;->exitAnim:I

    return-void
.end method

.method public static overridePendingTransition(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 349
    sget v1, Lcom/android/settings_ex/Utils$NubiaDialogAnim;->enterAnim:I

    if-eq v1, v3, :cond_0

    sget v1, Lcom/android/settings_ex/Utils$NubiaDialogAnim;->exitAnim:I

    if-ne v1, v3, :cond_1

    .line 350
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 351
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sput v1, Lcom/android/settings_ex/Utils$NubiaDialogAnim;->enterAnim:I

    .line 352
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sput v1, Lcom/android/settings_ex/Utils$NubiaDialogAnim;->exitAnim:I

    .line 353
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 355
    .end local v0    # "ta":Landroid/content/res/TypedArray;
    :cond_1
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 356
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    sget v1, Lcom/android/settings_ex/Utils$NubiaDialogAnim;->enterAnim:I

    sget v2, Lcom/android/settings_ex/Utils$NubiaDialogAnim;->exitAnim:I

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 358
    :cond_2
    return-void

    .line 350
    :array_0
    .array-data 4
        0x7f01007b
        0x7f01007c
    .end array-data
.end method
