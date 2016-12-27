.class Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$4;
.super Ljava/lang/Object;
.source "NubiaShutdownRebootDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$4;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$4;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$500(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$4;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$600(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->startEnterIntoAnimator(I)V

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$4;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$500(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->startEnterIntoAnimator(I)V

    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$4;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # invokes: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->startEnterAnimator()V
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1700(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V

    .line 208
    const/4 v0, 0x1

    return v0
.end method
