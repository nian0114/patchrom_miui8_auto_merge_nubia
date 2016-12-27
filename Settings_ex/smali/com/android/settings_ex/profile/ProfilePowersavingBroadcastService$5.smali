.class Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService$5;
.super Landroid/database/ContentObserver;
.source "ProfilePowersavingBroadcastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService$5;->this$0:Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService$5;->this$0:Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;

    # invokes: Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->refreshAutoRotateScreen()V
    invoke-static {v0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->access$400(Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;)V

    .line 140
    return-void
.end method
