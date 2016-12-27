.class Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$5;
.super Landroid/database/ContentObserver;
.source "TurboManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;


# direct methods
.method constructor <init>(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$5;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 613
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$5;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # invokes: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->updateUI()V
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$000(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)V

    .line 614
    return-void
.end method
