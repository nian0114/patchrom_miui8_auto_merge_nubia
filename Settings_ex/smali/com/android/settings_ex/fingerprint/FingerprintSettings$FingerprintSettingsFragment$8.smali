.class final Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$8;
.super Ljava/util/HashSet;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 619
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 621
    const-string v0, "cn.nubia.splitscreen.home"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$8;->add(Ljava/lang/Object;)Z

    .line 622
    const-string v0, "com.powermo.SmartBar"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$8;->add(Ljava/lang/Object;)Z

    .line 623
    const-string v0, "cn.nubia.minilauncher"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$8;->add(Ljava/lang/Object;)Z

    .line 624
    return-void
.end method
