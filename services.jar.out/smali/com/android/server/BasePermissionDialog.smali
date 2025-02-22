.class public Lcom/android/server/BasePermissionDialog;
.super Landroid/app/AlertDialog;
.source "BasePermissionDialog.java"


# instance fields
.field private mConsuming:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v9, 0x20000

    const/4 v8, 0x2

    const v6, 0x30e0005

    invoke-direct {p0, p1, v6}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v6, Lcom/android/server/BasePermissionDialog$1;

    invoke-direct {v6, p0}, Lcom/android/server/BasePermissionDialog$1;-><init>(Lcom/android/server/BasePermissionDialog;)V

    iput-object v6, p0, Lcom/android/server/BasePermissionDialog;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/BasePermissionDialog;->mConsuming:Z

    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Landroid/view/Window;->setFlags(II)V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .local v2, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v4, "width":I
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v1, "height":I
    if-ge v4, v1, :cond_0

    move v3, v4

    .local v3, "min":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v6, "Permission Dialog"

    invoke-virtual {v0, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v6, -0x2

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v6, 0x51

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v6, 0x3f19999a    # 0.6f

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "min":I
    :cond_0
    move v3, v1

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/server/BasePermissionDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BasePermissionDialog;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/BasePermissionDialog;->mConsuming:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/BasePermissionDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BasePermissionDialog;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BasePermissionDialog;->setEnabled(Z)V

    return-void
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const v1, 0x1020019

    invoke-virtual {p0, v1}, Lcom/android/server/BasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .local v0, "b":Landroid/widget/Button;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    const v1, 0x102001a

    invoke-virtual {p0, v1}, Lcom/android/server/BasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "b":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .restart local v0    # "b":Landroid/widget/Button;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    const v1, 0x102001b

    invoke-virtual {p0, v1}, Lcom/android/server/BasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "b":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .restart local v0    # "b":Landroid/widget/Button;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/BasePermissionDialog;->mConsuming:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    invoke-direct {p0, v2}, Lcom/android/server/BasePermissionDialog;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/BasePermissionDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BasePermissionDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
