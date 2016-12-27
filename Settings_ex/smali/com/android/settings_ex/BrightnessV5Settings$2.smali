.class Lcom/android/settings_ex/BrightnessV5Settings$2;
.super Landroid/database/ContentObserver;
.source "BrightnessV5Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/BrightnessV5Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/BrightnessV5Settings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/BrightnessV5Settings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings_ex/BrightnessV5Settings$2;->this$0:Lcom/android/settings_ex/BrightnessV5Settings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessV5Settings$2;->this$0:Lcom/android/settings_ex/BrightnessV5Settings;

    # getter for: Lcom/android/settings_ex/BrightnessV5Settings;->mBrightnessV5:Lcom/android/settings_ex/BrightnessPreference2;
    invoke-static {v0}, Lcom/android/settings_ex/BrightnessV5Settings;->access$000(Lcom/android/settings_ex/BrightnessV5Settings;)Lcom/android/settings_ex/BrightnessPreference2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/BrightnessPreference2;->doBrightnessModeChange()V

    .line 34
    return-void
.end method
