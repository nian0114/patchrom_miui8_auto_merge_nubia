.class Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 648
    return-void
.end method
