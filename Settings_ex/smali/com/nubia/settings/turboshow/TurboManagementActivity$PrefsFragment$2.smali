.class Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$2;
.super Ljava/lang/Object;
.source "TurboManagementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->dealOneEnvBefStartService()Z
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
    .line 182
    iput-object p1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$2;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$2;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAccelerationSpeedSwitch:Landroid/preference/nubia/CheckBoxPreference;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$100(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 188
    return-void
.end method
