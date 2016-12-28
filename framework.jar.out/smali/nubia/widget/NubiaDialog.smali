.class public Lnubia/widget/NubiaDialog;
.super Ljava/lang/Object;
.source "NubiaDialog.java"

# interfaces
.implements Lnubia/widget/IDialog;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnubia/widget/NubiaDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "styleId"    # I
    .param p3, "defaultId"    # I

    .prologue
    const v0, 0x30200af

    return v0
.end method

.method public getAlertTitleId()I
    .locals 1

    .prologue
    const v0, 0x30d002d

    return v0
.end method

.method public getButtonPanelId()I
    .locals 1

    .prologue
    const v0, 0x30d0033

    return v0
.end method

.method public getContentPanelId()I
    .locals 1

    .prologue
    const v0, 0x30d002e

    return v0
.end method

.method public getCustomId()I
    .locals 1

    .prologue
    const v0, 0x30d0032

    return v0
.end method

.method public getCustomPanelId()I
    .locals 1

    .prologue
    const v0, 0x30d0031

    return v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    const v0, 0x30d0030

    return v0
.end method

.method public getParentPanelId()I
    .locals 1

    .prologue
    const v0, 0x30d000b

    return v0
.end method

.method public getScrollViewId()I
    .locals 1

    .prologue
    const v0, 0x30d002f

    return v0
.end method

.method public getTitleTemplateId()I
    .locals 1

    .prologue
    const v0, 0x30d002c

    return v0
.end method

.method public getTopPanelId()I
    .locals 1

    .prologue
    const v0, 0x30d002b

    return v0
.end method

.method public isResetDialogButtonStyle()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public resetAlertDialogLayout()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 8
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .local v1, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v4, "width":I
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v0, "height":I
    if-ge v4, v0, :cond_0

    move v2, v4

    .local v2, "min":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v6, -0x2

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v6, 0x51

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    .end local v2    # "min":I
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    move v2, v0

    goto :goto_0
.end method

.method public setBlankViewOnClickEvent()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public setCanceledOnTouchOutside(Lcom/android/internal/app/AlertController;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "alert"    # Lcom/android/internal/app/AlertController;
    .param p2, "flag"    # Ljava/lang/Boolean;

    .prologue
    return-void
.end method

.method public setExitAnimation(Landroid/app/Activity;II)V
    .locals 0
    .param p1, "actv"    # Landroid/app/Activity;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I

    .prologue
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
