.class public Lcom/android/settings_ex/smartkey/SmartkeyUtils;
.super Ljava/lang/Object;
.source "SmartkeyUtils.java"


# static fields
.field public static sHasSmartKey:Z

.field public static sHasVolumeSmartKey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/android/settings_ex/smartkey/SmartkeyUtils;->hasSmartKeyFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/smartkey/SmartkeyUtils;->sHasSmartKey:Z

    .line 81
    invoke-static {}, Lcom/android/settings_ex/smartkey/SmartkeyUtils;->hasVolumeSmartKeyFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/smartkey/SmartkeyUtils;->sHasVolumeSmartKey:Z

    return-void
.end method

.method public static enableWakeup(Z)Z
    .locals 4
    .param p0, "enable"    # Z

    .prologue
    .line 94
    const/4 v1, 0x1

    .line 96
    .local v1, "result":Z
    if-eqz p0, :cond_0

    :try_start_0
    const-string v2, "1"

    .line 97
    .local v2, "value":Ljava/lang/String;
    :goto_0
    const-string v3, "sys/class/pressure_device/pressure_device/enable_smart_key"

    invoke-static {v3, v2}, Lcom/android/settings_ex/smartkey/SmartkeyUtils;->writeNodeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .end local v2    # "value":Ljava/lang/String;
    :goto_1
    return v1

    .line 96
    :cond_0
    const-string v2, "0"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static hasSmartKeyFeature()Z
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/io/File;

    const-string v1, "sys/class/pressure_device/pressure_device/enable_smart_key"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static hasVolumeSmartKeyFeature()Z
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/io/File;

    const-string v1, "sys/class/pressure_device/pressure_device/fw_info"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static setSensitivityLevel(I)V
    .locals 3
    .param p0, "level"    # I

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, "value":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 108
    const-string v1, "0"

    .line 115
    :cond_0
    :goto_0
    :try_start_0
    const-string v2, "sys/class/pressure_device/pressure_device/sensitivity_attr"

    invoke-static {v2, v1}, Lcom/android/settings_ex/smartkey/SmartkeyUtils;->writeNodeValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    return-void

    .line 109
    :cond_1
    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    .line 110
    const-string v1, "1"

    goto :goto_0

    .line 111
    :cond_2
    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    .line 112
    const-string v1, "2"

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static writeNodeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "nodePath"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 88
    .local v0, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 90
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 91
    return-void
.end method
