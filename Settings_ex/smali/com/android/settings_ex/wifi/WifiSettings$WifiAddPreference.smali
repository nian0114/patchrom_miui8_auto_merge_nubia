.class Lcom/android/settings_ex/wifi/WifiSettings$WifiAddPreference;
.super Landroid/preference/Preference;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiAddPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiAddPreference;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    .line 1304
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1305
    const v0, 0x7f0c0285

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings$WifiAddPreference;->setTitle(I)V

    .line 1306
    return-void
.end method
