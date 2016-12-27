.class Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$3;
.super Ljava/lang/Object;
.source "TurboManagementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->dealTwoEnvBefStartService()Z
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
    .line 235
    iput-object p1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$3;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$3;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAccelerationSpeedSwitch:Landroid/preference/nubia/CheckBoxPreference;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$100(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 242
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$3;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # invokes: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->closeService()V
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$200(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)V

    .line 243
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$3;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # setter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mIsRunning:Z
    invoke-static {v0, v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$302(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;Z)Z

    .line 244
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$3;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # invokes: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->updateAccelerationSpeedSwitchEnable(I)V
    invoke-static {v0, v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$400(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;I)V

    .line 245
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$3;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # invokes: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->updateUI()V
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$000(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)V

    .line 246
    return-void
.end method
