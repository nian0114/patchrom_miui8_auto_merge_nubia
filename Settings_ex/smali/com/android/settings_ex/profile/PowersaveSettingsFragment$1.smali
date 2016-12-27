.class Lcom/android/settings_ex/profile/PowersaveSettingsFragment$1;
.super Landroid/database/ContentObserver;
.source "PowersaveSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/PowersaveSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profile/PowersaveSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profile/PowersaveSettingsFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment$1;->this$0:Lcom/android/settings_ex/profile/PowersaveSettingsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment$1;->this$0:Lcom/android/settings_ex/profile/PowersaveSettingsFragment;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->updateUIifNeed(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->access$100(Lcom/android/settings_ex/profile/PowersaveSettingsFragment;Z)V

    .line 187
    return-void
.end method
