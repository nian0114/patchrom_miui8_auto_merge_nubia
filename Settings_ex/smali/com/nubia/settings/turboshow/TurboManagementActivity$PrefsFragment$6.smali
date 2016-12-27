.class Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$6;
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
    .line 633
    iput-object p1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$6;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 636
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$6;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAccelerationSpeedSwitch:Landroid/preference/nubia/CheckBoxPreference;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$100(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$6;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # invokes: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isAllowAccSpeedPreferClick()Z
    invoke-static {v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$2400(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 637
    return-void
.end method
