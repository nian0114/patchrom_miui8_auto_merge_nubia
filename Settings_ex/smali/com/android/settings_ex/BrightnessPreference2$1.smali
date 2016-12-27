.class Lcom/android/settings_ex/BrightnessPreference2$1;
.super Ljava/lang/Object;
.source "BrightnessPreference2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/BrightnessPreference2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/BrightnessPreference2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/BrightnessPreference2;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/settings_ex/BrightnessPreference2$1;->this$0:Lcom/android/settings_ex/BrightnessPreference2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2$1;->this$0:Lcom/android/settings_ex/BrightnessPreference2;

    # getter for: Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;
    invoke-static {v0}, Lcom/android/settings_ex/BrightnessPreference2;->access$100(Lcom/android/settings_ex/BrightnessPreference2;)Lcom/android/settings_ex/LightSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2$1;->this$0:Lcom/android/settings_ex/BrightnessPreference2;

    # getter for: Lcom/android/settings_ex/BrightnessPreference2;->mScreenBrightnessDefaultValue:I
    invoke-static {v1}, Lcom/android/settings_ex/BrightnessPreference2;->access$000(Lcom/android/settings_ex/BrightnessPreference2;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/LightSeekBar;->setProgress(I)V

    .line 216
    return-void
.end method
