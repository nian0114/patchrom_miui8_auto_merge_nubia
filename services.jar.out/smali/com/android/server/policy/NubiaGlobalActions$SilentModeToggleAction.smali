.class Lcom/android/server/policy/NubiaGlobalActions$SilentModeToggleAction;
.super Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;
.source "NubiaGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/NubiaGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/NubiaGlobalActions;)V
    .locals 6

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/NubiaGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    const v1, 0x1080301

    const v2, 0x1080300

    const v3, 0x1040121

    const v4, 0x1040122

    const v5, 0x1040123

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/policy/NubiaGlobalActions;->access$200(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/policy/NubiaGlobalActions;->access$200(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method
