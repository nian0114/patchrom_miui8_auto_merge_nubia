.class Lcom/android/server/policy/NubiaGlobalActions$8;
.super Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;
.source "NubiaGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NubiaGlobalActions;->createDialog()Lcom/android/server/policy/NubiaShutdownRebootDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaGlobalActions;II)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/NubiaGlobalActions$8;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$8;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/server/policy/NubiaGlobalActions;->access$000(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    return v1
.end method

.method public onPress()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$8;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/server/policy/NubiaGlobalActions;->access$000(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method
