.class Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$1;
.super Ljava/lang/Object;
.source "TurboManagementActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$1;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$1;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # invokes: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->updateUI()V
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$000(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)V

    .line 125
    return-void
.end method
