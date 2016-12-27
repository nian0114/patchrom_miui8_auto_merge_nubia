.class final Lcom/android/settings_ex/notification/OtherSoundSettings$3;
.super Lcom/android/settings_ex/notification/SettingPref;
.source "OtherSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/OtherSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # [I

    .prologue
    .line 124
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected setSetting(Landroid/content/Context;I)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    .line 127
    new-instance v0, Landroid/os/Handler;

    # getter for: Lcom/android/settings_ex/notification/OtherSoundSettings;->mThandlerThread:Landroid/os/HandlerThread;
    invoke-static {}, Lcom/android/settings_ex/notification/OtherSoundSettings;->access$100()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/settings_ex/notification/OtherSoundSettings$SoundEffectsThread;

    invoke-direct {v1, p1, p2}, Lcom/android/settings_ex/notification/OtherSoundSettings$SoundEffectsThread;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method
