.class Lcom/android/settings_ex/notification/OtherSoundSettings$6;
.super Ljava/lang/Object;
.source "OtherSoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/OtherSoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/OtherSoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/OtherSoundSettings;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings_ex/notification/OtherSoundSettings$6;->this$0:Lcom/android/settings_ex/notification/OtherSoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 205
    const-string v1, "persist.sys.power.sound"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x1

    return v0

    .line 205
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
