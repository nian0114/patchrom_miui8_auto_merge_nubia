.class public Lcn/nubia/commonui/app/AlertDialog;
.super Lcn/nubia/commonui/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/app/AlertDialog$Builder;
    }
.end annotation


# instance fields
.field private mAlert:Lcn/nubia/commonui/app/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/commonui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 85
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 97
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "createThemeContextWrapper"    # Z

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-static {p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcn/nubia/commonui/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 103
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "alwaysReadCloseOnTouchAttr"

    invoke-static {v0, v1, v2, v2}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    .line 104
    new-instance v0, Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcn/nubia/commonui/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertDialog;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    return-object v0
.end method

.method private resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 8
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 346
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 347
    .local v1, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 349
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 350
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 351
    .local v4, "width":I
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 352
    .local v0, "height":I
    if-ge v4, v0, :cond_0

    move v2, v4

    .line 353
    .local v2, "min":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 354
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 355
    const/4 v6, -0x2

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 356
    const/16 v6, 0x51

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 357
    invoke-virtual {p1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 358
    return-void

    .end local v2    # "min":I
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    move v2, v0

    .line 352
    goto :goto_0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 117
    const/high16 v1, 0x1000000

    if-lt p1, v1, :cond_0

    .line 123
    .end local p1    # "resid":I
    :goto_0
    return p1

    .line 120
    .restart local p1    # "resid":I
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 121
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 123
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 322
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 323
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertController;->installContent()V

    .line 324
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 328
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 329
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 334
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 335
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 222
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcn/nubia/commonui/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 223
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 263
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 264
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 277
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 289
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 290
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 317
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setInverseBackgroundForced(Z)V

    .line 318
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 164
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertController;->setView(Landroid/view/View;)V

    .line 172
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 340
    invoke-super {p0}, Lcn/nubia/commonui/app/Dialog;->show()V

    .line 341
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertDialog;->resetShowWindowAttributes(Landroid/view/Window;)V

    .line 342
    return-void
.end method
