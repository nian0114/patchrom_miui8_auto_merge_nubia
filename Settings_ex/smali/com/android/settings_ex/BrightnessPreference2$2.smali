.class Lcom/android/settings_ex/BrightnessPreference2$2;
.super Ljava/lang/Object;
.source "BrightnessPreference2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/BrightnessPreference2;->showWarningDialogIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/BrightnessPreference2;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/BrightnessPreference2;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/settings_ex/BrightnessPreference2$2;->this$0:Lcom/android/settings_ex/BrightnessPreference2;

    iput-object p2, p0, Lcom/android/settings_ex/BrightnessPreference2$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 549
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2$2;->this$0:Lcom/android/settings_ex/BrightnessPreference2;

    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/BrightnessPreference2;->setNoLongerRemindFlag(Z)V

    .line 550
    return-void

    .line 549
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
